; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskadec.c_webm_clusters_start_with_keyframe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskadec.c_webm_clusters_start_with_keyframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_14__**, %struct.TYPE_18__* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__*, %struct.TYPE_16__*, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*)* @webm_clusters_start_with_keyframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @webm_clusters_start_with_keyframe(%struct.TYPE_20__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  store %struct.TYPE_18__* %16, %struct.TYPE_18__** %4, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %5, align 4
  store i32 1, i32* %9, align 4
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %22, i64 0
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sle i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %127

29:                                               ; preds = %1
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %32, i64 0
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  %35 = call i32 @av_index_search_timestamp(%struct.TYPE_14__* %34, i32 0, i32 0)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %127

39:                                               ; preds = %29
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %42, i64 0
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %6, align 4
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @avio_tell(i32 %54)
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %39, %120
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @SEEK_SET, align 4
  %62 = call i32 @avio_seek(i32 %59, i32 %60, i32 %61)
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ebml_read_num(%struct.TYPE_18__* %63, i32 %68, i32 4, i32* %10, i32 1)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %56
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 256095861
  br i1 %74, label %75, label %76

75:                                               ; preds = %72, %56
  br label %121

76:                                               ; preds = %72
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ebml_read_length(%struct.TYPE_18__* %77, i32 %82, i32* %11)
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %76
  br label %121

87:                                               ; preds = %76
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @matroska_reset_status(%struct.TYPE_18__* %88, i32 0, i32 %89)
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %92 = call i32 @matroska_clear_queue(%struct.TYPE_18__* %91)
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %94 = call i64 @matroska_parse_cluster(%struct.TYPE_18__* %93)
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %87
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %98, align 8
  %100 = icmp ne %struct.TYPE_17__* %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %96, %87
  br label %121

102:                                              ; preds = %96
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 0
  store %struct.TYPE_19__* %106, %struct.TYPE_19__** %13, align 8
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 4, %107
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %108, %109
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %6, align 4
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %102
  store i32 0, i32* %9, align 4
  br label %121

120:                                              ; preds = %102
  br label %56

121:                                              ; preds = %119, %101, %86, %75
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @matroska_reset_status(%struct.TYPE_18__* %122, i32 %123, i32 %124)
  %126 = load i32, i32* %9, align 4
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %121, %38, %28
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i32 @av_index_search_timestamp(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @avio_tell(i32) #1

declare dso_local i32 @avio_seek(i32, i32, i32) #1

declare dso_local i32 @ebml_read_num(%struct.TYPE_18__*, i32, i32, i32*, i32) #1

declare dso_local i32 @ebml_read_length(%struct.TYPE_18__*, i32, i32*) #1

declare dso_local i32 @matroska_reset_status(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @matroska_clear_queue(%struct.TYPE_18__*) #1

declare dso_local i64 @matroska_parse_cluster(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
