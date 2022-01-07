; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfdec.c_mxf_free_metadataset.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfdec.c_mxf_free_metadataset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_15__* }
%struct.TYPE_18__ = type { %struct.TYPE_15__*, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { %struct.TYPE_15__* }
%struct.TYPE_17__ = type { %struct.TYPE_15__* }
%struct.TYPE_14__ = type { %struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_15__* }
%struct.TYPE_12__ = type { %struct.TYPE_15__*, %struct.TYPE_15__* }
%struct.TYPE_11__ = type { %struct.TYPE_15__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__**, i32)* @mxf_free_metadataset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxf_free_metadataset(%struct.TYPE_15__** %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_15__**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__** %0, %struct.TYPE_15__*** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %3, align 8
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %80 [
    i32 136, label %10
    i32 132, label %16
    i32 131, label %22
    i32 135, label %28
    i32 130, label %34
    i32 133, label %34
    i32 129, label %50
    i32 128, label %61
    i32 134, label %67
  ]

10:                                               ; preds = %2
  %11 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %3, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %13 = bitcast %struct.TYPE_15__* %12 to %struct.TYPE_18__*
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  %15 = call i32 @av_freep(%struct.TYPE_15__** %14)
  br label %81

16:                                               ; preds = %2
  %17 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %3, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %19 = bitcast %struct.TYPE_15__* %18 to %struct.TYPE_18__*
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = call i32 @av_freep(%struct.TYPE_15__** %20)
  br label %81

22:                                               ; preds = %2
  %23 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %3, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %25 = bitcast %struct.TYPE_15__* %24 to %struct.TYPE_13__*
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = call i32 @av_freep(%struct.TYPE_15__** %26)
  br label %81

28:                                               ; preds = %2
  %29 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %3, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %29, align 8
  %31 = bitcast %struct.TYPE_15__* %30 to %struct.TYPE_17__*
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = call i32 @av_freep(%struct.TYPE_15__** %32)
  br label %81

34:                                               ; preds = %2, %2
  %35 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %3, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  %37 = bitcast %struct.TYPE_15__* %36 to %struct.TYPE_14__*
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 2
  %39 = call i32 @av_freep(%struct.TYPE_15__** %38)
  %40 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %3, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %40, align 8
  %42 = bitcast %struct.TYPE_15__* %41 to %struct.TYPE_14__*
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 1
  %44 = call i32 @av_freep(%struct.TYPE_15__** %43)
  %45 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %3, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %45, align 8
  %47 = bitcast %struct.TYPE_15__* %46 to %struct.TYPE_14__*
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = call i32 @av_freep(%struct.TYPE_15__** %48)
  br label %81

50:                                               ; preds = %2
  %51 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %3, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %51, align 8
  %53 = bitcast %struct.TYPE_15__* %52 to %struct.TYPE_12__*
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = call i32 @av_freep(%struct.TYPE_15__** %54)
  %56 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %3, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %56, align 8
  %58 = bitcast %struct.TYPE_15__* %57 to %struct.TYPE_12__*
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = call i32 @av_freep(%struct.TYPE_15__** %59)
  br label %81

61:                                               ; preds = %2
  %62 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %3, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %62, align 8
  %64 = bitcast %struct.TYPE_15__* %63 to %struct.TYPE_11__*
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = call i32 @av_freep(%struct.TYPE_15__** %65)
  br label %81

67:                                               ; preds = %2
  %68 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %3, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %68, align 8
  %70 = bitcast %struct.TYPE_15__* %69 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %70, %struct.TYPE_16__** %5, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 2
  %73 = call i32 @av_freep(%struct.TYPE_15__** %72)
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 1
  %76 = call i32 @av_freep(%struct.TYPE_15__** %75)
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = call i32 @av_freep(%struct.TYPE_15__** %78)
  br label %80

80:                                               ; preds = %2, %67
  br label %81

81:                                               ; preds = %80, %61, %50, %34, %28, %22, %16, %10
  %82 = load i32, i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %3, align 8
  %86 = call i32 @av_freep(%struct.TYPE_15__** %85)
  br label %87

87:                                               ; preds = %84, %81
  ret void
}

declare dso_local i32 @av_freep(%struct.TYPE_15__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
