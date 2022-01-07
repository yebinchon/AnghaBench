; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_esds_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_esds_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i64, i32, i64, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"esds\00", align 1
@AV_CODEC_ID_MP2 = common dso_local global i64 0, align 8
@AV_CODEC_ID_MP3 = common dso_local global i64 0, align 8
@ff_mp4_obj_type = common dso_local global i32 0, align 4
@AV_CODEC_ID_DVD_SUBTITLE = common dso_local global i64 0, align 8
@AVMEDIA_TYPE_AUDIO = common dso_local global i64 0, align 8
@AV_PKT_DATA_CPB_PROPERTIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*)* @mov_write_esds_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_write_esds_tag(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @avio_tell(i32* %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 5, %18
  br label %21

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %20, %15
  %22 = phi i32 [ %19, %15 ], [ 0, %20 ]
  store i32 %22, i32* %7, align 4
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @avio_wb32(i32* %23, i32 0)
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @ffio_wfourcc(i32* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @avio_wb32(i32* %27, i32 0)
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 21, %30
  %32 = add nsw i32 %31, 5
  %33 = add nsw i32 %32, 1
  %34 = call i32 @put_descr(i32* %29, i32 3, i32 %33)
  %35 = load i32*, i32** %3, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @avio_wb16(i32* %35, i32 %38)
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @avio_w8(i32* %40, i32 0)
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 13, %43
  %45 = call i32 @put_descr(i32* %42, i32 4, i32 %44)
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @AV_CODEC_ID_MP2, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %61, label %53

53:                                               ; preds = %21
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @AV_CODEC_ID_MP3, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %53, %21
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp sgt i32 %66, 24000
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load i32*, i32** %3, align 8
  %70 = call i32 @avio_w8(i32* %69, i32 107)
  br label %81

71:                                               ; preds = %61, %53
  %72 = load i32*, i32** %3, align 8
  %73 = load i32, i32* @ff_mp4_obj_type, align 4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @ff_codec_get_tag(i32 %73, i64 %78)
  %80 = call i32 @avio_w8(i32* %72, i32 %79)
  br label %81

81:                                               ; preds = %71, %68
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @AV_CODEC_ID_DVD_SUBTITLE, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %81
  %90 = load i32*, i32** %3, align 8
  %91 = call i32 @avio_w8(i32* %90, i32 225)
  br label %107

92:                                               ; preds = %81
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %92
  %101 = load i32*, i32** %3, align 8
  %102 = call i32 @avio_w8(i32* %101, i32 21)
  br label %106

103:                                              ; preds = %92
  %104 = load i32*, i32** %3, align 8
  %105 = call i32 @avio_w8(i32* %104, i32 17)
  br label %106

106:                                              ; preds = %103, %100
  br label %107

107:                                              ; preds = %106, %89
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @AV_PKT_DATA_CPB_PROPERTIES, align 4
  %112 = call i64 @av_stream_get_side_data(i32 %110, i32 %111, i32* null)
  %113 = inttoptr i64 %112 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %113, %struct.TYPE_8__** %5, align 8
  %114 = load i32*, i32** %3, align 8
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %116 = icmp ne %struct.TYPE_8__* %115, null
  br i1 %116, label %117, label %122

117:                                              ; preds = %107
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = sdiv i32 %120, 8
  br label %123

122:                                              ; preds = %107
  br label %123

123:                                              ; preds = %122, %117
  %124 = phi i32 [ %121, %117 ], [ 0, %122 ]
  %125 = call i32 @avio_wb24(i32* %114, i32 %124)
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %127 = call i32 @compute_avg_bitrate(%struct.TYPE_7__* %126)
  store i32 %127, i32* %8, align 4
  %128 = load i32*, i32** %3, align 8
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %130 = icmp ne %struct.TYPE_8__* %129, null
  br i1 %130, label %131, label %140

131:                                              ; preds = %123
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @FFMAX3(i32 %134, i32 %137, i32 %138)
  br label %148

140:                                              ; preds = %123
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @FFMAX(i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %140, %131
  %149 = phi i32 [ %139, %131 ], [ %147, %140 ]
  %150 = call i32 @avio_wb32(i32* %128, i32 %149)
  %151 = load i32*, i32** %3, align 8
  %152 = load i32, i32* %8, align 4
  %153 = call i32 @avio_wb32(i32* %151, i32 %152)
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %172

158:                                              ; preds = %148
  %159 = load i32*, i32** %3, align 8
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @put_descr(i32* %159, i32 5, i32 %162)
  %164 = load i32*, i32** %3, align 8
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @avio_write(i32* %164, i32 %167, i32 %170)
  br label %172

172:                                              ; preds = %158, %148
  %173 = load i32*, i32** %3, align 8
  %174 = call i32 @put_descr(i32* %173, i32 6, i32 1)
  %175 = load i32*, i32** %3, align 8
  %176 = call i32 @avio_w8(i32* %175, i32 2)
  %177 = load i32*, i32** %3, align 8
  %178 = load i32, i32* %6, align 4
  %179 = call i32 @update_size(i32* %177, i32 %178)
  ret i32 %179
}

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @ffio_wfourcc(i32*, i8*) #1

declare dso_local i32 @put_descr(i32*, i32, i32) #1

declare dso_local i32 @avio_wb16(i32*, i32) #1

declare dso_local i32 @avio_w8(i32*, i32) #1

declare dso_local i32 @ff_codec_get_tag(i32, i64) #1

declare dso_local i64 @av_stream_get_side_data(i32, i32, i32*) #1

declare dso_local i32 @avio_wb24(i32*, i32) #1

declare dso_local i32 @compute_avg_bitrate(%struct.TYPE_7__*) #1

declare dso_local i32 @FFMAX3(i32, i32, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @avio_write(i32*, i32, i32) #1

declare dso_local i32 @update_size(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
