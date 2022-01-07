; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_smartblur.c_alloc_sws_context.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_smartblur.c_alloc_sws_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_10__ = type { i32*, i32, %struct.TYPE_9__*, %struct.TYPE_9__* }

@EINVAL = common dso_local global i32 0, align 4
@AV_PIX_FMT_GRAY8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32, i32, i32)* @alloc_sws_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_sws_context(%struct.TYPE_11__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_10__, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.TYPE_9__* @sws_getGaussianVec(i32 %14, i32 %17)
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %10, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %20 = icmp ne %struct.TYPE_9__* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = call i32 @AVERROR(i32 %22)
  store i32 %23, i32* %5, align 4
  br label %73

24:                                               ; preds = %4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @sws_scaleVec(%struct.TYPE_9__* %25, i32 %28)
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sitofp i32 %32 to double
  %34 = fsub double 1.000000e+00, %33
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sdiv i32 %40, 2
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %37, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = sitofp i32 %44 to double
  %46 = fadd double %45, %34
  %47 = fptosi double %46 to i32
  store i32 %47, i32* %43, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 2
  store %struct.TYPE_9__* %48, %struct.TYPE_9__** %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 3
  store %struct.TYPE_9__* %48, %struct.TYPE_9__** %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  store i32* null, i32** %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  store i32 0, i32* %52, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @AV_PIX_FMT_GRAY8, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @AV_PIX_FMT_GRAY8, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @sws_getCachedContext(i32* null, i32 %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58, i32 %59, %struct.TYPE_10__* %11, i32* null, i32* null)
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %64 = call i32 @sws_freeVec(%struct.TYPE_9__* %63)
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %24
  %70 = load i32, i32* @EINVAL, align 4
  %71 = call i32 @AVERROR(i32 %70)
  store i32 %71, i32* %5, align 4
  br label %73

72:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %72, %69, %21
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local %struct.TYPE_9__* @sws_getGaussianVec(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @sws_scaleVec(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @sws_getCachedContext(i32*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__*, i32*, i32*) #1

declare dso_local i32 @sws_freeVec(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
