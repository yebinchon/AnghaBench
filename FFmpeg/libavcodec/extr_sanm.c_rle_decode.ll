; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sanm.c_rle_decode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sanm.c_rle_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32)* @rle_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rle_decode(%struct.TYPE_3__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  store i32 %12, i32* %11, align 4
  br label %13

13:                                               ; preds = %59, %3
  %14 = load i32, i32* %11, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %67

16:                                               ; preds = %13
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = call i32 @bytestream2_get_byte(i32* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = ashr i32 %20, 1
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %31, label %26

26:                                               ; preds = %16
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = call i32 @bytestream2_get_bytes_left(i32* %28)
  %30 = icmp sle i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26, %16
  %32 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %32, i32* %4, align 4
  br label %68

33:                                               ; preds = %26
  %34 = load i32, i32* %8, align 4
  %35 = and i32 %34, 1
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = call i32 @bytestream2_get_byte(i32* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @memset(i32* %41, i32 %42, i32 %43)
  br label %59

45:                                               ; preds = %33
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = call i32 @bytestream2_get_bytes_left(i32* %47)
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %52, i32* %4, align 4
  br label %68

53:                                               ; preds = %45
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @bytestream2_get_bufferu(i32* %55, i32* %56, i32 %57)
  br label %59

59:                                               ; preds = %53, %37
  %60 = load i32, i32* %10, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32* %63, i32** %6, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %11, align 4
  %66 = sub nsw i32 %65, %64
  store i32 %66, i32* %11, align 4
  br label %13

67:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %51, %31
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @bytestream2_get_bufferu(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
