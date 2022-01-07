; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegvideo_motion.c_obmc_motion.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegvideo_motion.c_obmc_motion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@MID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*, i32*, i32, i32, i32*, [2 x i64]*)* @obmc_motion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @obmc_motion(%struct.TYPE_6__* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32* %5, [2 x i64]* %6) #0 {
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca [2 x i64]*, align 8
  %15 = alloca i32, align 4
  %16 = alloca [5 x i32*], align 16
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store [2 x i64]* %6, [2 x i64]** %14, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @av_assert2(i32 %21)
  store i32 0, i32* %15, align 4
  br label %23

23:                                               ; preds = %104, %7
  %24 = load i32, i32* %15, align 4
  %25 = icmp slt i32 %24, 5
  br i1 %25, label %26, label %107

26:                                               ; preds = %23
  %27 = load i32, i32* %15, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %59

29:                                               ; preds = %26
  %30 = load [2 x i64]*, [2 x i64]** %14, align 8
  %31 = load i32, i32* %15, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [2 x i64], [2 x i64]* %30, i64 %32
  %34 = getelementptr inbounds [2 x i64], [2 x i64]* %33, i64 0, i64 0
  %35 = load i64, i64* %34, align 8
  %36 = load [2 x i64]*, [2 x i64]** %14, align 8
  %37 = getelementptr inbounds [2 x i64], [2 x i64]* %36, i64 0
  %38 = getelementptr inbounds [2 x i64], [2 x i64]* %37, i64 0, i64 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %35, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %29
  %42 = load [2 x i64]*, [2 x i64]** %14, align 8
  %43 = load i32, i32* %15, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [2 x i64], [2 x i64]* %42, i64 %44
  %46 = getelementptr inbounds [2 x i64], [2 x i64]* %45, i64 0, i64 1
  %47 = load i64, i64* %46, align 8
  %48 = load [2 x i64]*, [2 x i64]** %14, align 8
  %49 = getelementptr inbounds [2 x i64], [2 x i64]* %48, i64 0
  %50 = getelementptr inbounds [2 x i64], [2 x i64]* %49, i64 0, i64 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %47, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %41
  %54 = getelementptr inbounds [5 x i32*], [5 x i32*]* %16, i64 0, i64 0
  %55 = load i32*, i32** %54, align 16
  %56 = load i32, i32* %15, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [5 x i32*], [5 x i32*]* %16, i64 0, i64 %57
  store i32* %55, i32** %58, align 8
  br label %103

59:                                               ; preds = %41, %29, %26
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %15, align 4
  %65 = and i32 %64, 1
  %66 = mul nsw i32 8, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %63, i64 %67
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = mul nsw i32 %71, 8
  %73 = load i32, i32* %15, align 4
  %74 = ashr i32 %73, 1
  %75 = mul nsw i32 %72, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %68, i64 %76
  %78 = load i32, i32* %15, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [5 x i32*], [5 x i32*]* %16, i64 0, i64 %79
  store i32* %77, i32** %80, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %82 = load i32, i32* %15, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [5 x i32*], [5 x i32*]* %16, i64 0, i64 %83
  %85 = load i32*, i32** %84, align 8
  %86 = load i32*, i32** %10, align 8
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load i32*, i32** %13, align 8
  %90 = load [2 x i64]*, [2 x i64]** %14, align 8
  %91 = load i32, i32* %15, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [2 x i64], [2 x i64]* %90, i64 %92
  %94 = getelementptr inbounds [2 x i64], [2 x i64]* %93, i64 0, i64 0
  %95 = load i64, i64* %94, align 8
  %96 = load [2 x i64]*, [2 x i64]** %14, align 8
  %97 = load i32, i32* %15, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [2 x i64], [2 x i64]* %96, i64 %98
  %100 = getelementptr inbounds [2 x i64], [2 x i64]* %99, i64 0, i64 1
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @hpel_motion(%struct.TYPE_6__* %81, i32* %85, i32* %86, i32 %87, i32 %88, i32* %89, i64 %95, i64 %101)
  br label %103

103:                                              ; preds = %59, %53
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %15, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %15, align 4
  br label %23

107:                                              ; preds = %23
  %108 = load i32*, i32** %9, align 8
  %109 = getelementptr inbounds [5 x i32*], [5 x i32*]* %16, i64 0, i64 0
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @put_obmc(i32* %108, i32** %109, i32 %112)
  ret void
}

declare dso_local i32 @av_assert2(i32) #1

declare dso_local i32 @hpel_motion(%struct.TYPE_6__*, i32*, i32*, i32, i32, i32*, i64, i64) #1

declare dso_local i32 @put_obmc(i32*, i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
