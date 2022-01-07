; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_vorbisfile.c__fetch_headers.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_vorbisfile.c__fetch_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32 }

@CHUNKSIZE = common dso_local global i32 0, align 4
@OV_EREAD = common dso_local global i64 0, align 8
@OV_ENOTVORBIS = common dso_local global i32 0, align 4
@STREAMSET = common dso_local global i32 0, align 4
@OV_EBADHEADER = common dso_local global i32 0, align 4
@OPENED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, i32*, i32*, i32*, %struct.TYPE_17__*)* @_fetch_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_fetch_headers(%struct.TYPE_19__* %0, i32* %1, i32* %2, i32* %3, %struct.TYPE_17__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.TYPE_17__, align 4
  %13 = alloca %struct.TYPE_18__, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.TYPE_17__* %4, %struct.TYPE_17__** %11, align 8
  %18 = bitcast %struct.TYPE_17__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 16, i1 false)
  %19 = bitcast %struct.TYPE_18__* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 24, i1 false)
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %21 = icmp ne %struct.TYPE_17__* %20, null
  br i1 %21, label %38, label %22

22:                                               ; preds = %5
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %24 = load i32, i32* @CHUNKSIZE, align 4
  %25 = call i64 @_get_next_page(%struct.TYPE_19__* %23, %struct.TYPE_17__* %12, i32 %24)
  store i64 %25, i64* %16, align 8
  %26 = load i64, i64* %16, align 8
  %27 = load i64, i64* @OV_EREAD, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i64, i64* @OV_EREAD, align 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %6, align 4
  br label %123

32:                                               ; preds = %22
  %33 = load i64, i64* %16, align 8
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* @OV_ENOTVORBIS, align 4
  store i32 %36, i32* %6, align 4
  br label %123

37:                                               ; preds = %32
  store %struct.TYPE_17__* %12, %struct.TYPE_17__** %11, align 8
  br label %38

38:                                               ; preds = %37, %5
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %40, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %43 = call i32 @ogg_page_serialno(%struct.TYPE_17__* %42)
  %44 = call i32 @ogg_stream_reset_serialno(%struct.TYPE_20__* %41, i32 %43)
  %45 = load i32*, i32** %10, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %38
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %10, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %47, %38
  %55 = load i32, i32* @STREAMSET, align 4
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 @vorbis_info_init(i32* %58)
  %60 = load i32*, i32** %9, align 8
  %61 = call i32 @vorbis_comment_init(i32* %60)
  store i32 0, i32* %14, align 4
  br label %62

62:                                               ; preds = %108, %54
  %63 = load i32, i32* %14, align 4
  %64 = icmp slt i32 %63, 3
  br i1 %64, label %65, label %109

65:                                               ; preds = %62
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %67, align 8
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %70 = call i32 @ogg_stream_pagein(%struct.TYPE_20__* %68, %struct.TYPE_17__* %69)
  br label %71

71:                                               ; preds = %93, %65
  %72 = load i32, i32* %14, align 4
  %73 = icmp slt i32 %72, 3
  br i1 %73, label %74, label %96

74:                                               ; preds = %71
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %76, align 8
  %78 = call i32 @ogg_stream_packetout(%struct.TYPE_20__* %77, %struct.TYPE_18__* %13)
  store i32 %78, i32* %17, align 4
  %79 = load i32, i32* %17, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %96

82:                                               ; preds = %74
  %83 = load i32, i32* %17, align 4
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load i32, i32* @OV_EBADHEADER, align 4
  store i32 %86, i32* %15, align 4
  br label %112

87:                                               ; preds = %82
  %88 = load i32*, i32** %8, align 8
  %89 = load i32*, i32** %9, align 8
  %90 = call i32 @vorbis_synthesis_headerin(i32* %88, i32* %89, %struct.TYPE_18__* %13)
  store i32 %90, i32* %15, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %112

93:                                               ; preds = %87
  %94 = load i32, i32* %14, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %14, align 4
  br label %71

96:                                               ; preds = %81, %71
  %97 = load i32, i32* %14, align 4
  %98 = icmp slt i32 %97, 3
  br i1 %98, label %99, label %108

99:                                               ; preds = %96
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %102 = load i32, i32* @CHUNKSIZE, align 4
  %103 = call i64 @_get_next_page(%struct.TYPE_19__* %100, %struct.TYPE_17__* %101, i32 %102)
  %104 = icmp slt i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %99
  %106 = load i32, i32* @OV_EBADHEADER, align 4
  store i32 %106, i32* %15, align 4
  br label %112

107:                                              ; preds = %99
  br label %108

108:                                              ; preds = %107, %96
  br label %62

109:                                              ; preds = %62
  %110 = call i32 @ogg_packet_release(%struct.TYPE_18__* %13)
  %111 = call i32 @ogg_page_release(%struct.TYPE_17__* %12)
  store i32 0, i32* %6, align 4
  br label %123

112:                                              ; preds = %105, %92, %85
  %113 = call i32 @ogg_packet_release(%struct.TYPE_18__* %13)
  %114 = call i32 @ogg_page_release(%struct.TYPE_17__* %12)
  %115 = load i32*, i32** %8, align 8
  %116 = call i32 @vorbis_info_clear(i32* %115)
  %117 = load i32*, i32** %9, align 8
  %118 = call i32 @vorbis_comment_clear(i32* %117)
  %119 = load i32, i32* @OPENED, align 4
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = load i32, i32* %15, align 4
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %112, %109, %35, %29
  %124 = load i32, i32* %6, align 4
  ret i32 %124
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @_get_next_page(%struct.TYPE_19__*, %struct.TYPE_17__*, i32) #2

declare dso_local i32 @ogg_stream_reset_serialno(%struct.TYPE_20__*, i32) #2

declare dso_local i32 @ogg_page_serialno(%struct.TYPE_17__*) #2

declare dso_local i32 @vorbis_info_init(i32*) #2

declare dso_local i32 @vorbis_comment_init(i32*) #2

declare dso_local i32 @ogg_stream_pagein(%struct.TYPE_20__*, %struct.TYPE_17__*) #2

declare dso_local i32 @ogg_stream_packetout(%struct.TYPE_20__*, %struct.TYPE_18__*) #2

declare dso_local i32 @vorbis_synthesis_headerin(i32*, i32*, %struct.TYPE_18__*) #2

declare dso_local i32 @ogg_packet_release(%struct.TYPE_18__*) #2

declare dso_local i32 @ogg_page_release(%struct.TYPE_17__*) #2

declare dso_local i32 @vorbis_info_clear(i32*) #2

declare dso_local i32 @vorbis_comment_clear(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
