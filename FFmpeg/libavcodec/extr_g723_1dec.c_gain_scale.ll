; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g723_1dec.c_gain_scale.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g723_1dec.c_gain_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SUBFRAME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i32)* @gain_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gain_scale(%struct.TYPE_3__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %12, align 4
  br label %15

15:                                               ; preds = %32, %3
  %16 = load i32, i32* %12, align 4
  %17 = load i32, i32* @SUBFRAME_LEN, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %15
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %12, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 2
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = mul nsw i32 %27, %26
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %13, align 4
  %31 = call i32 @av_sat_dadd32(i32 %29, i32 %30)
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %19
  %33 = load i32, i32* %12, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %12, align 4
  br label %15

35:                                               ; preds = %15
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %69

38:                                               ; preds = %35
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %69

41:                                               ; preds = %38
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @ff_g723_1_normalize_bits(i32 %42, i32 31)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @ff_g723_1_normalize_bits(i32 %44, i32 31)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %10, align 4
  %48 = shl i32 %46, %47
  %49 = ashr i32 %48, 1
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %8, align 4
  %52 = shl i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 5, %53
  %55 = load i32, i32* %11, align 4
  %56 = sub nsw i32 %54, %55
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @av_clip_uintp2(i32 %57, i32 5)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %7, align 4
  %60 = ashr i32 %59, 1
  %61 = load i32, i32* %8, align 4
  %62 = ashr i32 %61, 16
  %63 = sdiv i32 %60, %62
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = shl i32 %64, 16
  %66 = load i32, i32* %11, align 4
  %67 = ashr i32 %65, %66
  %68 = call i32 @square_root(i32 %67)
  store i32 %68, i32* %9, align 4
  br label %70

69:                                               ; preds = %38, %35
  store i32 4096, i32* %9, align 4
  br label %70

70:                                               ; preds = %69, %41
  store i32 0, i32* %12, align 4
  br label %71

71:                                               ; preds = %107, %70
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* @SUBFRAME_LEN, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %110

75:                                               ; preds = %71
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 15, %78
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %79, %80
  %82 = add nsw i32 %81, 8
  %83 = ashr i32 %82, 4
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load i32*, i32** %5, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = ashr i32 %96, 4
  %98 = add nsw i32 %93, %97
  %99 = mul nsw i32 %90, %98
  %100 = add nsw i32 %99, 1024
  %101 = ashr i32 %100, 11
  %102 = call i32 @av_clip_int16(i32 %101)
  %103 = load i32*, i32** %5, align 8
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32 %102, i32* %106, align 4
  br label %107

107:                                              ; preds = %75
  %108 = load i32, i32* %12, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %12, align 4
  br label %71

110:                                              ; preds = %71
  ret void
}

declare dso_local i32 @av_sat_dadd32(i32, i32) #1

declare dso_local i32 @ff_g723_1_normalize_bits(i32, i32) #1

declare dso_local i32 @av_clip_uintp2(i32, i32) #1

declare dso_local i32 @square_root(i32) #1

declare dso_local i32 @av_clip_int16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
