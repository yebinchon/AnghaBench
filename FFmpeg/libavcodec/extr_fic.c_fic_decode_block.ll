; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_fic.c_fic_decode_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_fic.c_fic_decode_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ff_zigzag_direct = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32*, i32, i32*, i32*)* @fic_decode_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fic_decode_block(%struct.TYPE_3__* %0, i32* %1, i32* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = call i32 @get_bits_left(i32* %17)
  %19 = icmp slt i32 %18, 8
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %21, i32* %7, align 4
  br label %80

22:                                               ; preds = %6
  %23 = load i32*, i32** %9, align 8
  %24 = call i64 @get_bits1(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32*, i32** %13, align 8
  store i32 1, i32* %27, align 4
  store i32 0, i32* %7, align 4
  br label %80

28:                                               ; preds = %22
  %29 = load i32*, i32** %12, align 8
  %30 = call i32 @memset(i32* %29, i32 0, i32 256)
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @get_bits(i32* %31, i32 7)
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %15, align 4
  %34 = icmp sgt i32 %33, 64
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %36, i32* %7, align 4
  br label %80

37:                                               ; preds = %28
  store i32 0, i32* %14, align 4
  br label %38

38:                                               ; preds = %72, %37
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %15, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %75

42:                                               ; preds = %38
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @get_se_golomb(i32* %43)
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %16, align 4
  %46 = icmp slt i32 %45, -2048
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %16, align 4
  %49 = icmp sgt i32 %48, 2048
  br i1 %49, label %50, label %52

50:                                               ; preds = %47, %42
  %51 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %51, i32* %7, align 4
  br label %80

52:                                               ; preds = %47
  %53 = load i32, i32* %16, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i64*, i64** @ff_zigzag_direct, align 8
  %58 = load i32, i32* %14, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i32, i32* %56, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %53, %63
  %65 = load i32*, i32** %12, align 8
  %66 = load i64*, i64** @ff_zigzag_direct, align 8
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i32, i32* %65, i64 %70
  store i32 %64, i32* %71, align 4
  br label %72

72:                                               ; preds = %52
  %73 = load i32, i32* %14, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %14, align 4
  br label %38

75:                                               ; preds = %38
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* %11, align 4
  %78 = load i32*, i32** %12, align 8
  %79 = call i32 @fic_idct_put(i32* %76, i32 %77, i32* %78)
  store i32 0, i32* %7, align 4
  br label %80

80:                                               ; preds = %75, %50, %35, %26, %20
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @get_se_golomb(i32*) #1

declare dso_local i32 @fic_idct_put(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
