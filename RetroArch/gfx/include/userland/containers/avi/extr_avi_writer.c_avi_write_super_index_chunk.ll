; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/avi/extr_avi_writer.c_avi_write_super_index_chunk.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/avi/extr_avi_writer.c_avi_write_super_index_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_20__**, %struct.TYPE_18__* }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32, i32, i64, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64 }

@AVI_SUPER_INDEX_ENTRY_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"Chunk ID\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Chunk Size\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"wLongsPerEntry\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"bIndexSubType\00", align 1
@AVI_INDEX_OF_INDEXES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"bIndexType\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"nEntriesInUse\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"dwChunkId\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"dwReserved0\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"dwReserved1\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"dwReserved2\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"qwOffset\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"dwSize\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"dwDuration\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, i32, i32)* @avi_write_super_index_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avi_write_super_index_chunk(%struct.TYPE_23__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  store %struct.TYPE_24__* %20, %struct.TYPE_24__** %8, align 8
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %23, i64 %25
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %30, align 8
  store %struct.TYPE_22__* %31, %struct.TYPE_22__** %9, align 8
  store i32 1, i32* %11, align 4
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %3
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load i64, i64* @AVI_SUPER_INDEX_ENTRY_SIZE, align 8
  %41 = trunc i64 %40 to i32
  %42 = mul nsw i32 %39, %41
  %43 = add nsw i32 32, %42
  %44 = call i32 @WRITE_BYTES(%struct.TYPE_23__* %38, i32* null, i32 %43)
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %46 = call i32 @STREAM_STATUS(%struct.TYPE_23__* %45)
  store i32 %46, i32* %4, align 4
  br label %128

47:                                               ; preds = %3
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %54 = call i32 @VC_FOURCC(i8 signext 105, i8 zeroext 110, i8 signext 100, i8 signext 120)
  %55 = call i32 @WRITE_FOURCC(%struct.TYPE_23__* %53, i32 %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %60

56:                                               ; preds = %47
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %58 = call i32 @VC_FOURCC(i8 signext 74, i8 zeroext 85, i8 signext 78, i8 signext 75)
  %59 = call i32 @WRITE_FOURCC(%struct.TYPE_23__* %57, i32 %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %56, %52
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @WRITE_U32(%struct.TYPE_23__* %61, i32 %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @avi_chunk_id_from_track_num(%struct.TYPE_23__* %64, i32* %10, i32 %65)
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %68 = call i32 @WRITE_U16(%struct.TYPE_23__* %67, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %70 = call i32 @WRITE_U8(%struct.TYPE_23__* %69, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %72 = load i32, i32* @AVI_INDEX_OF_INDEXES, align 4
  %73 = call i32 @WRITE_U8(%struct.TYPE_23__* %71, i32 %72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @WRITE_U32(%struct.TYPE_23__* %74, i32 %75, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @WRITE_FOURCC(%struct.TYPE_23__* %77, i32 %78, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %81 = call i32 @WRITE_U32(%struct.TYPE_23__* %80, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %83 = call i32 @WRITE_U32(%struct.TYPE_23__* %82, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %85 = call i32 @WRITE_U32(%struct.TYPE_23__* %84, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %86

86:                                               ; preds = %120, %60
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp ult i32 %87, %88
  br i1 %89, label %90, label %123

90:                                               ; preds = %86
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %13, align 8
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %14, align 4
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %90
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  br label %109

105:                                              ; preds = %90
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  br label %109

109:                                              ; preds = %105, %101
  %110 = phi i32 [ %104, %101 ], [ %108, %105 ]
  store i32 %110, i32* %15, align 4
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %112 = load i64, i64* %13, align 8
  %113 = call i32 @WRITE_U64(%struct.TYPE_23__* %111, i64 %112, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %115 = load i32, i32* %14, align 4
  %116 = call i32 @WRITE_U32(%struct.TYPE_23__* %114, i32 %115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %118 = load i32, i32* %15, align 4
  %119 = call i32 @WRITE_U32(%struct.TYPE_23__* %117, i32 %118, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  br label %120

120:                                              ; preds = %109
  %121 = load i32, i32* %12, align 4
  %122 = add i32 %121, 1
  store i32 %122, i32* %12, align 4
  br label %86

123:                                              ; preds = %86
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %125 = call i32 @AVI_END_CHUNK(%struct.TYPE_23__* %124)
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %127 = call i32 @STREAM_STATUS(%struct.TYPE_23__* %126)
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %123, %37
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i32 @WRITE_BYTES(%struct.TYPE_23__*, i32*, i32) #1

declare dso_local i32 @STREAM_STATUS(%struct.TYPE_23__*) #1

declare dso_local i32 @WRITE_FOURCC(%struct.TYPE_23__*, i32, i8*) #1

declare dso_local i32 @VC_FOURCC(i8 signext, i8 zeroext, i8 signext, i8 signext) #1

declare dso_local i32 @WRITE_U32(%struct.TYPE_23__*, i32, i8*) #1

declare dso_local i32 @avi_chunk_id_from_track_num(%struct.TYPE_23__*, i32*, i32) #1

declare dso_local i32 @WRITE_U16(%struct.TYPE_23__*, i32, i8*) #1

declare dso_local i32 @WRITE_U8(%struct.TYPE_23__*, i32, i8*) #1

declare dso_local i32 @WRITE_U64(%struct.TYPE_23__*, i64, i8*) #1

declare dso_local i32 @AVI_END_CHUNK(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
