; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_dynaudnorm.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_dynaudnorm.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__**, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_10__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %5, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %6, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %21, i64 0
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %7, align 8
  store i32 1, i32* %8, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @cqueue_empty(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %48, label %31

31:                                               ; preds = %2
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = call i32* @ff_bufqueue_get(i32* %33)
  store i32* %34, i32** %10, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @cqueue_dequeue(i32 %37, double* %9)
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = load double, double* %9, align 8
  %42 = fcmp ogt double %41, 0.000000e+00
  %43 = zext i1 %42 to i32
  %44 = call i32 @amplify_frame(%struct.TYPE_9__* %39, i32* %40, i32 %43)
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @ff_filter_frame(%struct.TYPE_10__* %45, i32* %46)
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %31, %2
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @av_frame_make_writable(i32* %49)
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i32 @cqueue_enqueue(i32 %53, i32 %59)
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @analyze_frame(%struct.TYPE_9__* %61, i32* %62)
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32*, i32** %4, align 8
  %68 = call i32 @ff_bufqueue_add(%struct.TYPE_11__* %64, i32* %66, i32* %67)
  %69 = load i32, i32* %8, align 4
  ret i32 %69
}

declare dso_local i32 @cqueue_empty(i32) #1

declare dso_local i32* @ff_bufqueue_get(i32*) #1

declare dso_local i32 @cqueue_dequeue(i32, double*) #1

declare dso_local i32 @amplify_frame(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @av_frame_make_writable(i32*) #1

declare dso_local i32 @cqueue_enqueue(i32, i32) #1

declare dso_local i32 @analyze_frame(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @ff_bufqueue_add(%struct.TYPE_11__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
