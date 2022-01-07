; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/avi/extr_avi_writer.c_avi_write_legacy_index_chunk.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/avi/extr_avi_writer.c_avi_write_legacy_index_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_18__, i32, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i64 }

@ULONG_MAX = common dso_local global i64 0, align 8
@AVI_INDEX_ENTRY_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"Chunk ID\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Chunk Size\00", align 1
@VC_CONTAINER_SUCCESS = common dso_local global i32 0, align 4
@AVI_INDEX_DELTAFRAME = common dso_local global i32 0, align 4
@AVIIF_KEYFRAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"dwFlags\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"dwOffset\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"dwSize\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, i32)* @avi_write_legacy_index_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avi_write_legacy_index_chunk(%struct.TYPE_19__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  store %struct.TYPE_20__* %17, %struct.TYPE_20__** %6, align 8
  store i32 4, i32* %8, align 4
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %19 = call i32 @avi_num_chunks(%struct.TYPE_19__* %18)
  %20 = call i32 @INT64_C(i32 16)
  %21 = mul nsw i32 %19, %20
  %22 = add nsw i32 8, %21
  %23 = load i64, i64* @ULONG_MAX, align 8
  %24 = trunc i64 %23 to i32
  %25 = icmp sle i32 %22, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @vc_container_assert(i32 %26)
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %2
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %36 = call i32 @avi_num_chunks(%struct.TYPE_19__* %35)
  %37 = load i64, i64* @AVI_INDEX_ENTRY_SIZE, align 8
  %38 = trunc i64 %37 to i32
  %39 = mul nsw i32 %36, %38
  %40 = add nsw i32 8, %39
  %41 = call i32 @WRITE_BYTES(%struct.TYPE_19__* %34, i32* null, i32 %40)
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %43 = call i32 @STREAM_STATUS(%struct.TYPE_19__* %42)
  store i32 %43, i32* %3, align 4
  br label %113

44:                                               ; preds = %2
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %46 = call i32 @STREAM_POSITION(%struct.TYPE_19__* %45)
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %50 = call i32 @VC_FOURCC(i8 signext 105, i8 signext 100, i8 signext 120, i8 signext 49)
  %51 = call i32 @WRITE_FOURCC(%struct.TYPE_19__* %49, i32 %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @WRITE_U32(%struct.TYPE_19__* %52, i32 %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @INT64_C(i32 0)
  %60 = call i32 @vc_container_io_seek(i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %84, %44
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %63 = call i32 @STREAM_STATUS(%struct.TYPE_19__* %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %108

66:                                               ; preds = %61
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %68 = call i32 @avi_read_index_entry(%struct.TYPE_19__* %67, i32* %9, i32* %11)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %108

73:                                               ; preds = %66
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @avi_chunk_id_from_track_num(%struct.TYPE_19__* %74, i32* %10, i32 %75)
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @AVI_INDEX_DELTAFRAME, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  br label %84

82:                                               ; preds = %73
  %83 = load i32, i32* @AVIIF_KEYFRAME, align 4
  br label %84

84:                                               ; preds = %82, %81
  %85 = phi i32 [ 0, %81 ], [ %83, %82 ]
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* @AVI_INDEX_DELTAFRAME, align 4
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %11, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %11, align 4
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @WRITE_FOURCC(%struct.TYPE_19__* %90, i32 %91, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @WRITE_U32(%struct.TYPE_19__* %93, i32 %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @WRITE_U32(%struct.TYPE_19__* %96, i32 %97, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @WRITE_U32(%struct.TYPE_19__* %99, i32 %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %102, 1
  %104 = and i32 %103, -2
  %105 = add nsw i32 %104, 8
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, %105
  store i32 %107, i32* %8, align 4
  br label %61

108:                                              ; preds = %72, %61
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %110 = call i32 @AVI_END_CHUNK(%struct.TYPE_19__* %109)
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %112 = call i32 @STREAM_STATUS(%struct.TYPE_19__* %111)
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %108, %33
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @vc_container_assert(i32) #1

declare dso_local i32 @avi_num_chunks(%struct.TYPE_19__*) #1

declare dso_local i32 @INT64_C(i32) #1

declare dso_local i32 @WRITE_BYTES(%struct.TYPE_19__*, i32*, i32) #1

declare dso_local i32 @STREAM_STATUS(%struct.TYPE_19__*) #1

declare dso_local i32 @STREAM_POSITION(%struct.TYPE_19__*) #1

declare dso_local i32 @WRITE_FOURCC(%struct.TYPE_19__*, i32, i8*) #1

declare dso_local i32 @VC_FOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @WRITE_U32(%struct.TYPE_19__*, i32, i8*) #1

declare dso_local i32 @vc_container_io_seek(i32, i32) #1

declare dso_local i32 @avi_read_index_entry(%struct.TYPE_19__*, i32*, i32*) #1

declare dso_local i32 @avi_chunk_id_from_track_num(%struct.TYPE_19__*, i32*, i32) #1

declare dso_local i32 @AVI_END_CHUNK(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
