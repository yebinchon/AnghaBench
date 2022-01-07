; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pcx.c_pcx_rle_decode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pcx.c_pcx_rle_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i32)* @pcx_rle_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcx_rle_decode(i32* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @bytestream2_get_bytes_left(i32* %13)
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %17, i32* %5, align 4
  br label %76

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %70

21:                                               ; preds = %18
  br label %22

22:                                               ; preds = %68, %21
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @bytestream2_get_bytes_left(i32* %27)
  %29 = icmp sgt i32 %28, 0
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi i1 [ false, %22 ], [ %29, %26 ]
  br i1 %31, label %32, label %69

32:                                               ; preds = %30
  store i8 1, i8* %11, align 1
  %33 = load i32*, i32** %6, align 8
  %34 = call zeroext i8 @bytestream2_get_byte(i32* %33)
  store i8 %34, i8* %12, align 1
  %35 = load i8, i8* %12, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp sge i32 %36, 192
  br i1 %37, label %38, label %49

38:                                               ; preds = %32
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @bytestream2_get_bytes_left(i32* %39)
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load i8, i8* %12, align 1
  %44 = zext i8 %43 to i32
  %45 = and i32 %44, 63
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %11, align 1
  %47 = load i32*, i32** %6, align 8
  %48 = call zeroext i8 @bytestream2_get_byte(i32* %47)
  store i8 %48, i8* %12, align 1
  br label %49

49:                                               ; preds = %42, %38, %32
  br label %50

50:                                               ; preds = %61, %49
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i8, i8* %11, align 1
  %56 = add i8 %55, -1
  store i8 %56, i8* %11, align 1
  %57 = zext i8 %55 to i32
  %58 = icmp ne i32 %57, 0
  br label %59

59:                                               ; preds = %54, %50
  %60 = phi i1 [ false, %50 ], [ %58, %54 ]
  br i1 %60, label %61, label %68

61:                                               ; preds = %59
  %62 = load i8, i8* %12, align 1
  %63 = load i8*, i8** %7, align 8
  %64 = load i32, i32* %10, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %10, align 4
  %66 = zext i32 %64 to i64
  %67 = getelementptr inbounds i8, i8* %63, i64 %66
  store i8 %62, i8* %67, align 1
  br label %50

68:                                               ; preds = %59
  br label %22

69:                                               ; preds = %30
  br label %75

70:                                               ; preds = %18
  %71 = load i32*, i32** %6, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @bytestream2_get_buffer(i32* %71, i8* %72, i32 %73)
  br label %75

75:                                               ; preds = %70, %69
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %75, %16
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local zeroext i8 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @bytestream2_get_buffer(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
