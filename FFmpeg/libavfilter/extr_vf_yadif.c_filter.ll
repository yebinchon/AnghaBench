; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_yadif.c_filter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_yadif.c_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_13__*, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_17__*, i32, %struct.TYPE_15__*, i32*, i32)* }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, %struct.TYPE_16__* }
%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }

@filter_slice = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.TYPE_16__*, i32, i32)* @filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filter(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_15__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 2
  store i32 0, i32* %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 3
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 4
  store i32 0, i32* %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 5
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_16__* %25, %struct.TYPE_16__** %24, align 8
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %80, %4
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %27, %32
  br i1 %33, label %34, label %83

34:                                               ; preds = %26
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %12, align 4
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %46, label %43

43:                                               ; preds = %34
  %44 = load i32, i32* %11, align 4
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %61

46:                                               ; preds = %43, %34
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @AV_CEIL_RSHIFT(i32 %47, i32 %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @AV_CEIL_RSHIFT(i32 %54, i32 %59)
  store i32 %60, i32* %13, align 4
  br label %61

61:                                               ; preds = %46, %43
  %62 = load i32, i32* %12, align 4
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 2
  store i32 %62, i32* %63, align 8
  %64 = load i32, i32* %13, align 4
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 3
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* %11, align 4
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 4
  store i32 %66, i32* %67, align 8
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i32 (%struct.TYPE_17__*, i32, %struct.TYPE_15__*, i32*, i32)*, i32 (%struct.TYPE_17__*, i32, %struct.TYPE_15__*, i32*, i32)** %71, align 8
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %74 = load i32, i32* @filter_slice, align 4
  %75 = load i32, i32* %13, align 4
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %77 = call i32 @ff_filter_get_nb_threads(%struct.TYPE_17__* %76)
  %78 = call i32 @FFMIN(i32 %75, i32 %77)
  %79 = call i32 %72(%struct.TYPE_17__* %73, i32 %74, %struct.TYPE_15__* %10, i32* null, i32 %78)
  br label %80

80:                                               ; preds = %61
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %11, align 4
  br label %26

83:                                               ; preds = %26
  %84 = call i32 (...) @emms_c()
  ret void
}

declare dso_local i32 @AV_CEIL_RSHIFT(i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @ff_filter_get_nb_threads(%struct.TYPE_17__*) #1

declare dso_local i32 @emms_c(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
