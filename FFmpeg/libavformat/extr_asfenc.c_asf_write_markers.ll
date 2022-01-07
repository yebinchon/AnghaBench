; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_asfenc.c_asf_write_markers.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_asfenc.c_asf_write_markers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_11__**, i32*, i32* }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@__const.asf_write_markers.scale = private unnamed_addr constant %struct.TYPE_8__ { i32 1, i32 10000000 }, align 4
@ff_asf_marker_header = common dso_local global i32 0, align 4
@ff_asf_reserved_4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"title\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PREROLL_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @asf_write_markers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asf_write_markers(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %4, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %5, align 8
  %23 = bitcast %struct.TYPE_8__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 bitcast (%struct.TYPE_8__* @__const.asf_write_markers.scale to i8*), i64 8, i1 false)
  %24 = load i32*, i32** %5, align 8
  %25 = call i64 @put_header(i32* %24, i32* @ff_asf_marker_header)
  store i64 %25, i64* %8, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @ff_put_guid(i32* %26, i32* @ff_asf_reserved_4)
  %28 = load i32*, i32** %5, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @avio_wl32(i32* %28, i32 %31)
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @avio_wl16(i32* %33, i32 0)
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @avio_wl16(i32* %35, i32 0)
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %116, %1
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %119

43:                                               ; preds = %37
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %46, i64 %48
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  store %struct.TYPE_11__* %50, %struct.TYPE_11__** %9, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.TYPE_10__* @av_dict_get(i32 %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* null, i32 0)
  store %struct.TYPE_10__* %54, %struct.TYPE_10__** %10, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = bitcast %struct.TYPE_8__* %7 to i64*
  %62 = load i64, i64* %61, align 4
  %63 = call i64 @av_rescale_q(i32 %57, i32 %60, i64 %62)
  store i64 %63, i64* %11, align 8
  %64 = load i32*, i32** %4, align 8
  %65 = load i64, i64* %11, align 8
  %66 = call i32 @get_send_time(i32* %64, i64 %65, i64* %12)
  store i32 %66, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %68 = icmp ne %struct.TYPE_10__* %67, null
  br i1 %68, label %69, label %83

69:                                               ; preds = %43
  %70 = call i64 @avio_open_dyn_buf(i32** %16)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = call i32 @AVERROR(i32 %73)
  store i32 %74, i32* %2, align 4
  br label %123

75:                                               ; preds = %69
  %76 = load i32*, i32** %16, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @avio_put_str16le(i32* %76, i32 %79)
  %81 = load i32*, i32** %16, align 8
  %82 = call i32 @avio_close_dyn_buf(i32* %81, i32** %15)
  store i32 %82, i32* %14, align 4
  br label %83

83:                                               ; preds = %75, %43
  %84 = load i32*, i32** %5, align 8
  %85 = load i64, i64* %12, align 8
  %86 = call i32 @avio_wl64(i32* %84, i64 %85)
  %87 = load i32*, i32** %5, align 8
  %88 = load i64, i64* %11, align 8
  %89 = load i32, i32* @PREROLL_TIME, align 4
  %90 = mul nsw i32 %89, 10000
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %88, %91
  %93 = call i32 @avio_wl64(i32* %87, i64 %92)
  %94 = load i32*, i32** %5, align 8
  %95 = load i32, i32* %14, align 4
  %96 = add nsw i32 12, %95
  %97 = call i32 @avio_wl16(i32* %94, i32 %96)
  %98 = load i32*, i32** %5, align 8
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @avio_wl32(i32* %98, i32 %99)
  %101 = load i32*, i32** %5, align 8
  %102 = call i32 @avio_wl32(i32* %101, i32 0)
  %103 = load i32*, i32** %5, align 8
  %104 = load i32, i32* %14, align 4
  %105 = sdiv i32 %104, 2
  %106 = call i32 @avio_wl32(i32* %103, i32 %105)
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %108 = icmp ne %struct.TYPE_10__* %107, null
  br i1 %108, label %109, label %115

109:                                              ; preds = %83
  %110 = load i32*, i32** %5, align 8
  %111 = load i32*, i32** %15, align 8
  %112 = load i32, i32* %14, align 4
  %113 = call i32 @avio_write(i32* %110, i32* %111, i32 %112)
  %114 = call i32 @av_freep(i32** %15)
  br label %115

115:                                              ; preds = %109, %83
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %6, align 4
  br label %37

119:                                              ; preds = %37
  %120 = load i32*, i32** %5, align 8
  %121 = load i64, i64* %8, align 8
  %122 = call i32 @end_header(i32* %120, i64 %121)
  store i32 0, i32* %2, align 4
  br label %123

123:                                              ; preds = %119, %72
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @put_header(i32*, i32*) #2

declare dso_local i32 @ff_put_guid(i32*, i32*) #2

declare dso_local i32 @avio_wl32(i32*, i32) #2

declare dso_local i32 @avio_wl16(i32*, i32) #2

declare dso_local %struct.TYPE_10__* @av_dict_get(i32, i8*, i32*, i32) #2

declare dso_local i64 @av_rescale_q(i32, i32, i64) #2

declare dso_local i32 @get_send_time(i32*, i64, i64*) #2

declare dso_local i64 @avio_open_dyn_buf(i32**) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @avio_put_str16le(i32*, i32) #2

declare dso_local i32 @avio_close_dyn_buf(i32*, i32**) #2

declare dso_local i32 @avio_wl64(i32*, i64) #2

declare dso_local i32 @avio_write(i32*, i32*, i32) #2

declare dso_local i32 @av_freep(i32**) #2

declare dso_local i32 @end_header(i32*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
