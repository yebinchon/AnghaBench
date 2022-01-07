; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/avi/extr_avi_reader.c_avi_scan_super_index_chunk.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/avi/extr_avi_reader.c_avi_scan_super_index_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_19__** }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i32 }

@VC_CONTAINER_ERROR_NOT_FOUND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"wLongsPerEntry\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"bIndexSubType\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"bIndexType\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"nEntriesInUse\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"dwChunkId\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"dwReserved0\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"dwReserved1\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"dwReserved2\00", align 1
@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@AVI_INDEX_OF_INDEXES = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_FORMAT_INVALID = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"qwOffset\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"dwSize\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"dwDuration\00", align 1
@AVI_INDEX_OF_CHUNKS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_20__*, i32, i32*, i32, i64*)* @avi_scan_super_index_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @avi_scan_super_index_chunk(%struct.TYPE_20__* %0, i32 %1, i32* %2, i32 %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %25 = load i64, i64* @VC_CONTAINER_ERROR_NOT_FOUND, align 8
  store i64 %25, i64* %12, align 8
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %28, i64 %30
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %14, align 8
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %41, i64 %43
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %15, align 4
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %53 = load i64, i64* %14, align 8
  %54 = call i32 @SEEK(%struct.TYPE_20__* %52, i64 %53)
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %56 = call i32 @READ_U16(%struct.TYPE_20__* %55, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %56, i32* %20, align 4
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %58 = call i64 @READ_U8(%struct.TYPE_20__* %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i64 %58, i64* %21, align 8
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %60 = call i64 @READ_U8(%struct.TYPE_20__* %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i64 %60, i64* %22, align 8
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %62 = call i32 @READ_U32(%struct.TYPE_20__* %61, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i32 %62, i32* %19, align 4
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %64 = call i32 @READ_FOURCC(%struct.TYPE_20__* %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i32 %64, i32* %13, align 4
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %66 = call i32 @SKIP_U32(%struct.TYPE_20__* %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %68 = call i32 @SKIP_U32(%struct.TYPE_20__* %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %70 = call i32 @SKIP_U32(%struct.TYPE_20__* %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %72 = call i64 @STREAM_STATUS(%struct.TYPE_20__* %71)
  store i64 %72, i64* %12, align 8
  %73 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %5
  %76 = load i64, i64* %12, align 8
  store i64 %76, i64* %6, align 8
  br label %175

77:                                               ; preds = %5
  %78 = load i64, i64* %22, align 8
  %79 = load i64, i64* @AVI_INDEX_OF_INDEXES, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %158

81:                                               ; preds = %77
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @avi_track_from_chunk_id(i32 %82, i32* %16, i32* %17)
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %85 = load i32, i32* %16, align 4
  %86 = load i32, i32* %17, align 4
  %87 = call i64 @avi_check_track(%struct.TYPE_20__* %84, i32 %85, i32 %86)
  store i64 %87, i64* %12, align 8
  %88 = load i64, i64* %12, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %81
  %91 = load i32, i32* %15, align 4
  %92 = icmp slt i32 %91, 24
  br i1 %92, label %97, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %17, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %93, %90, %81
  %98 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_INVALID, align 8
  store i64 %98, i64* %6, align 8
  br label %175

99:                                               ; preds = %93
  %100 = load i32, i32* %20, align 4
  %101 = icmp ne i32 %100, 4
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = load i64, i64* %21, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %102, %99
  %106 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 8
  store i64 %106, i64* %6, align 8
  br label %175

107:                                              ; preds = %102
  %108 = load i32, i32* %19, align 4
  %109 = load i32, i32* %15, align 4
  %110 = sub nsw i32 %109, 24
  %111 = load i32, i32* %20, align 4
  %112 = udiv i32 %110, %111
  %113 = call i32 @MIN(i32 %108, i32 %112)
  store i32 %113, i32* %19, align 4
  store i32 0, i32* %18, align 4
  br label %114

114:                                              ; preds = %154, %107
  %115 = load i32, i32* %18, align 4
  %116 = load i32, i32* %19, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %157

118:                                              ; preds = %114
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %120 = call i64 @READ_U64(%struct.TYPE_20__* %119, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  store i64 %120, i64* %24, align 8
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %122 = call i32 @SKIP_U32(%struct.TYPE_20__* %121, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %124 = call i32 @SKIP_U32(%struct.TYPE_20__* %123, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %126 = call i64 @STREAM_STATUS(%struct.TYPE_20__* %125)
  store i64 %126, i64* %12, align 8
  %127 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %118
  br label %157

130:                                              ; preds = %118
  %131 = load i64, i64* %24, align 8
  %132 = call i64 @UINT64_C(i32 0)
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 8
  store i64 %135, i64* %12, align 8
  br label %157

136:                                              ; preds = %130
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %138 = call i64 @STREAM_POSITION(%struct.TYPE_20__* %137)
  store i64 %138, i64* %23, align 8
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %140 = load i64, i64* %24, align 8
  %141 = load i32, i32* %8, align 4
  %142 = load i32*, i32** %9, align 8
  %143 = load i32, i32* %10, align 4
  %144 = load i64*, i64** %11, align 8
  %145 = call i64 @avi_scan_standard_index_chunk(%struct.TYPE_20__* %139, i64 %140, i32 %141, i32* %142, i32 %143, i64* %144)
  store i64 %145, i64* %12, align 8
  %146 = load i64, i64* %12, align 8
  %147 = load i64, i64* @VC_CONTAINER_ERROR_NOT_FOUND, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %136
  br label %157

150:                                              ; preds = %136
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %152 = load i64, i64* %23, align 8
  %153 = call i32 @SEEK(%struct.TYPE_20__* %151, i64 %152)
  br label %154

154:                                              ; preds = %150
  %155 = load i32, i32* %18, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %18, align 4
  br label %114

157:                                              ; preds = %149, %134, %129, %114
  br label %173

158:                                              ; preds = %77
  %159 = load i64, i64* %22, align 8
  %160 = load i64, i64* @AVI_INDEX_OF_CHUNKS, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %170

162:                                              ; preds = %158
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %164 = load i64, i64* %14, align 8
  %165 = load i32, i32* %8, align 4
  %166 = load i32*, i32** %9, align 8
  %167 = load i32, i32* %10, align 4
  %168 = load i64*, i64** %11, align 8
  %169 = call i64 @avi_scan_standard_index_chunk(%struct.TYPE_20__* %163, i64 %164, i32 %165, i32* %166, i32 %167, i64* %168)
  store i64 %169, i64* %12, align 8
  br label %172

170:                                              ; preds = %158
  %171 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 8
  store i64 %171, i64* %12, align 8
  br label %172

172:                                              ; preds = %170, %162
  br label %173

173:                                              ; preds = %172, %157
  %174 = load i64, i64* %12, align 8
  store i64 %174, i64* %6, align 8
  br label %175

175:                                              ; preds = %173, %105, %97, %75
  %176 = load i64, i64* %6, align 8
  ret i64 %176
}

declare dso_local i32 @SEEK(%struct.TYPE_20__*, i64) #1

declare dso_local i32 @READ_U16(%struct.TYPE_20__*, i8*) #1

declare dso_local i64 @READ_U8(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @READ_U32(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @READ_FOURCC(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @SKIP_U32(%struct.TYPE_20__*, i8*) #1

declare dso_local i64 @STREAM_STATUS(%struct.TYPE_20__*) #1

declare dso_local i32 @avi_track_from_chunk_id(i32, i32*, i32*) #1

declare dso_local i64 @avi_check_track(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i64 @READ_U64(%struct.TYPE_20__*, i8*) #1

declare dso_local i64 @UINT64_C(i32) #1

declare dso_local i64 @STREAM_POSITION(%struct.TYPE_20__*) #1

declare dso_local i64 @avi_scan_standard_index_chunk(%struct.TYPE_20__*, i64, i32, i32*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
