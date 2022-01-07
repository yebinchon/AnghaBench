; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/avi/extr_avi_writer.c_avi_write_standard_index_chunk.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/avi/extr_avi_writer.c_avi_write_standard_index_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_23__**, %struct.TYPE_21__* }
%struct.TYPE_23__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32, %struct.TYPE_25__, %struct.TYPE_24__ }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i64 }

@AVI_STD_INDEX_ENTRY_SIZE = common dso_local global i64 0, align 8
@ULONG_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"Chunk ID\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Chunk Size\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"wLongsPerEntry\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"bIndexSubType\00", align 1
@AVI_INDEX_OF_CHUNKS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"bIndexType\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"nEntriesInUse\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"dwChunkId\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"qwBaseOffset\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"dwReserved\00", align 1
@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [9 x i8] c"dwOffset\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"dwSize\00", align 1
@AVI_INDEX_DELTAFRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_27__*, i32, i32)* @avi_write_standard_index_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @avi_write_standard_index_chunk(%struct.TYPE_27__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  store %struct.TYPE_28__* %21, %struct.TYPE_28__** %8, align 8
  %22 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %24, i64 %26
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_26__*, %struct.TYPE_26__** %31, align 8
  store %struct.TYPE_26__* %32, %struct.TYPE_26__** %9, align 8
  %33 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 12
  store i32 %36, i32* %12, align 4
  %37 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %13, align 4
  store i32 4, i32* %14, align 4
  %40 = load i32, i32* %13, align 4
  %41 = load i64, i64* @AVI_STD_INDEX_ENTRY_SIZE, align 8
  %42 = trunc i64 %41 to i32
  %43 = mul nsw i32 %40, %42
  %44 = add nsw i32 32, %43
  %45 = load i64, i64* @ULONG_MAX, align 8
  %46 = trunc i64 %45 to i32
  %47 = icmp sle i32 %44, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @vc_container_assert(i32 %48)
  %50 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %3
  %56 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @INT64_C(i32 8)
  %59 = mul nsw i32 %57, %58
  %60 = add nsw i32 32, %59
  %61 = call i32 @WRITE_BYTES(%struct.TYPE_27__* %56, i32* null, i32 %60)
  %62 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %63 = call i64 @STREAM_STATUS(%struct.TYPE_27__* %62)
  store i64 %63, i64* %4, align 8
  br label %152

64:                                               ; preds = %3
  %65 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %66 = call i32 @STREAM_POSITION(%struct.TYPE_27__* %65)
  %67 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load i32, i32* %7, align 4
  %73 = sub nsw i32 %72, 8
  br label %75

74:                                               ; preds = %64
  br label %75

75:                                               ; preds = %74, %71
  %76 = phi i32 [ %73, %71 ], [ 0, %74 ]
  %77 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @avi_index_chunk_id_from_track_num(i32* %11, i32 %79)
  %81 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @WRITE_FOURCC(%struct.TYPE_27__* %81, i32 %82, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %84 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @WRITE_U32(%struct.TYPE_27__* %84, i32 %85, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %87 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @avi_chunk_id_from_track_num(%struct.TYPE_27__* %87, i32* %11, i32 %88)
  %90 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %91 = call i32 @WRITE_U16(%struct.TYPE_27__* %90, i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %92 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %93 = call i32 @WRITE_U8(%struct.TYPE_27__* %92, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %94 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %95 = load i32, i32* @AVI_INDEX_OF_CHUNKS, align 4
  %96 = call i32 @WRITE_U8(%struct.TYPE_27__* %94, i32 %95, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %97 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %98 = load i32, i32* %13, align 4
  %99 = call i32 @WRITE_U32(%struct.TYPE_27__* %97, i32 %98, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %100 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @WRITE_FOURCC(%struct.TYPE_27__* %100, i32 %101, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %103 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %104 = load i32, i32* %12, align 4
  %105 = call i32 @WRITE_U64(%struct.TYPE_27__* %103, i32 %104, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %106 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %107 = call i32 @WRITE_U32(%struct.TYPE_27__* %106, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %108 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @INT64_C(i32 0)
  %113 = call i32 @vc_container_io_seek(i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %131, %130, %75
  %115 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %116 = call i64 @STREAM_STATUS(%struct.TYPE_27__* %115)
  %117 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %147

119:                                              ; preds = %114
  %120 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %121 = call i64 @avi_read_index_entry(%struct.TYPE_27__* %120, i32* %16, i32* %15)
  store i64 %121, i64* %10, align 8
  %122 = load i64, i64* %10, align 8
  %123 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %119
  br label %147

126:                                              ; preds = %119
  %127 = load i32, i32* %16, align 4
  %128 = load i32, i32* %6, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %126
  br label %114

131:                                              ; preds = %126
  %132 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %133 = load i32, i32* %14, align 4
  %134 = call i32 @WRITE_U32(%struct.TYPE_27__* %132, i32 %133, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %135 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %136 = load i32, i32* %15, align 4
  %137 = call i32 @WRITE_U32(%struct.TYPE_27__* %135, i32 %136, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %138 = load i32, i32* %15, align 4
  %139 = add nsw i32 %138, 1
  %140 = load i32, i32* @AVI_INDEX_DELTAFRAME, align 4
  %141 = or i32 1, %140
  %142 = xor i32 %141, -1
  %143 = and i32 %139, %142
  %144 = add nsw i32 %143, 12
  %145 = load i32, i32* %14, align 4
  %146 = add nsw i32 %145, %144
  store i32 %146, i32* %14, align 4
  br label %114

147:                                              ; preds = %125, %114
  %148 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %149 = call i32 @AVI_END_CHUNK(%struct.TYPE_27__* %148)
  %150 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %151 = call i64 @STREAM_STATUS(%struct.TYPE_27__* %150)
  store i64 %151, i64* %4, align 8
  br label %152

152:                                              ; preds = %147, %55
  %153 = load i64, i64* %4, align 8
  ret i64 %153
}

declare dso_local i32 @vc_container_assert(i32) #1

declare dso_local i32 @WRITE_BYTES(%struct.TYPE_27__*, i32*, i32) #1

declare dso_local i32 @INT64_C(i32) #1

declare dso_local i64 @STREAM_STATUS(%struct.TYPE_27__*) #1

declare dso_local i32 @STREAM_POSITION(%struct.TYPE_27__*) #1

declare dso_local i32 @avi_index_chunk_id_from_track_num(i32*, i32) #1

declare dso_local i32 @WRITE_FOURCC(%struct.TYPE_27__*, i32, i8*) #1

declare dso_local i32 @WRITE_U32(%struct.TYPE_27__*, i32, i8*) #1

declare dso_local i32 @avi_chunk_id_from_track_num(%struct.TYPE_27__*, i32*, i32) #1

declare dso_local i32 @WRITE_U16(%struct.TYPE_27__*, i32, i8*) #1

declare dso_local i32 @WRITE_U8(%struct.TYPE_27__*, i32, i8*) #1

declare dso_local i32 @WRITE_U64(%struct.TYPE_27__*, i32, i8*) #1

declare dso_local i32 @vc_container_io_seek(i32, i32) #1

declare dso_local i64 @avi_read_index_entry(%struct.TYPE_27__*, i32*, i32*) #1

declare dso_local i32 @AVI_END_CHUNK(%struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
