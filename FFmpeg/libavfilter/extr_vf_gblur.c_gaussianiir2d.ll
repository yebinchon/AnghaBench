; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_gblur.c_gaussianiir2d.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_gblur.c_gaussianiir2d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_13__*, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_16__*, i32, %struct.TYPE_14__*, i32*, i32)* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32*, i32*, i64, i64 }

@filter_horizontally = common dso_local global i32 0, align 4
@filter_vertically = common dso_local global i32 0, align 4
@filter_postscale = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, i32)* @gaussianiir2d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gaussianiir2d(%struct.TYPE_16__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  store %struct.TYPE_15__* %12, %struct.TYPE_15__** %5, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %7, align 4
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %28 = call i32 @ff_filter_get_nb_threads(%struct.TYPE_16__* %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp sle i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %2
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33, %2
  br label %79

39:                                               ; preds = %33
  %40 = load i32, i32* %6, align 4
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* %7, align 4
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  store i32 %42, i32* %43, align 4
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i32 (%struct.TYPE_16__*, i32, %struct.TYPE_14__*, i32*, i32)*, i32 (%struct.TYPE_16__*, i32, %struct.TYPE_14__*, i32*, i32)** %47, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %50 = load i32, i32* @filter_horizontally, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @FFMIN(i32 %51, i32 %52)
  %54 = call i32 %48(%struct.TYPE_16__* %49, i32 %50, %struct.TYPE_14__* %9, i32* null, i32 %53)
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i32 (%struct.TYPE_16__*, i32, %struct.TYPE_14__*, i32*, i32)*, i32 (%struct.TYPE_16__*, i32, %struct.TYPE_14__*, i32*, i32)** %58, align 8
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %61 = load i32, i32* @filter_vertically, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @FFMIN(i32 %62, i32 %63)
  %65 = call i32 %59(%struct.TYPE_16__* %60, i32 %61, %struct.TYPE_14__* %9, i32* null, i32 %64)
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load i32 (%struct.TYPE_16__*, i32, %struct.TYPE_14__*, i32*, i32)*, i32 (%struct.TYPE_16__*, i32, %struct.TYPE_14__*, i32*, i32)** %69, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %72 = load i32, i32* @filter_postscale, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %7, align 4
  %75 = mul nsw i32 %73, %74
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @FFMIN(i32 %75, i32 %76)
  %78 = call i32 %70(%struct.TYPE_16__* %71, i32 %72, %struct.TYPE_14__* %9, i32* null, i32 %77)
  br label %79

79:                                               ; preds = %39, %38
  ret void
}

declare dso_local i32 @ff_filter_get_nb_threads(%struct.TYPE_16__*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
