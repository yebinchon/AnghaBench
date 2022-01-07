; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_avgblur.c_averageiir2d.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_avgblur.c_averageiir2d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_14__*, %struct.TYPE_16__* }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_18__*, i32, %struct.TYPE_15__*, i32*, i32)* }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32*, i32*, i32, i32 }
%struct.TYPE_17__ = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, %struct.TYPE_17__*, %struct.TYPE_17__*, i32)* @averageiir2d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @averageiir2d(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1, %struct.TYPE_17__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_15__, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  store %struct.TYPE_16__* %16, %struct.TYPE_16__** %9, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %11, align 4
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %32 = call i32 @ff_filter_get_nb_threads(%struct.TYPE_18__* %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %10, align 4
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %11, align 4
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 3
  store i32 %43, i32* %44, align 4
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 2
  store i32 %51, i32* %52, align 4
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i32 (%struct.TYPE_18__*, i32, %struct.TYPE_15__*, i32*, i32)*, i32 (%struct.TYPE_18__*, i32, %struct.TYPE_15__*, i32*, i32)** %56, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @FFMIN(i32 %62, i32 %63)
  %65 = call i32 %57(%struct.TYPE_18__* %58, i32 %61, %struct.TYPE_15__* %13, i32* null, i32 %64)
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 3
  store i32 %72, i32* %73, align 4
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 2
  store i32 %80, i32* %81, align 4
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load i32 (%struct.TYPE_18__*, i32, %struct.TYPE_15__*, i32*, i32)*, i32 (%struct.TYPE_18__*, i32, %struct.TYPE_15__*, i32*, i32)** %85, align 8
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @FFMIN(i32 %91, i32 %92)
  %94 = call i32 %86(%struct.TYPE_18__* %87, i32 %90, %struct.TYPE_15__* %13, i32* null, i32 %93)
  ret void
}

declare dso_local i32 @ff_filter_get_nb_threads(%struct.TYPE_18__*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
