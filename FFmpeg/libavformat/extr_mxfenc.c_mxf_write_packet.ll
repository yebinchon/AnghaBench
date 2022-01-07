; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfenc.c_mxf_write_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfenc.c_mxf_write_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_47__ = type { i32*, %struct.TYPE_45__**, i32*, %struct.TYPE_44__* }
%struct.TYPE_45__ = type { i32, %struct.TYPE_40__*, %struct.TYPE_41__* }
%struct.TYPE_40__ = type { i64, i64 }
%struct.TYPE_41__ = type { i32, i32 }
%struct.TYPE_44__ = type { i32, i32, i32, %struct.TYPE_42__*, i64, i64 }
%struct.TYPE_42__ = type { i32, i32, i32, i32 }
%struct.TYPE_46__ = type { i64, i32, i32 }
%struct.TYPE_43__ = type { i32, i32, i32 }

@EDIT_UNITS_PER_BODY = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"could not allocate index entries\0A\00", align 1
@AV_CODEC_ID_MPEG2VIDEO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"could not get mpeg2 profile and level\0A\00", align 1
@AV_CODEC_ID_DNXHD = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"could not get dnxhd profile\0A\00", align 1
@AV_CODEC_ID_PRORES = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"could not get prores profile\0A\00", align 1
@AV_CODEC_ID_DVVIDEO = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"could not get dv profile\0A\00", align 1
@AV_CODEC_ID_H264 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [28 x i8] c"could not get h264 profile\0A\00", align 1
@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [63 x i8] c"track %d: frame size does not match index unit size, %d != %d\0A\00", align 1
@ff_mxf_opatom_muxer = common dso_local global i32 0, align 4
@header_open_partition_key = common dso_local global i32 0, align 4
@body_partition_key = common dso_local global i32 0, align 4
@KAG_SIZE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"No packets in first stream\0A\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@ff_mxf_d10_muxer = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_47__*, %struct.TYPE_46__*)* @mxf_write_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxf_write_packet(%struct.TYPE_47__* %0, %struct.TYPE_46__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_47__*, align 8
  %5 = alloca %struct.TYPE_46__*, align 8
  %6 = alloca %struct.TYPE_44__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_45__*, align 8
  %9 = alloca %struct.TYPE_41__*, align 8
  %10 = alloca %struct.TYPE_43__, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_47__* %0, %struct.TYPE_47__** %4, align 8
  store %struct.TYPE_46__* %1, %struct.TYPE_46__** %5, align 8
  %12 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %12, i32 0, i32 3
  %14 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  store %struct.TYPE_44__* %14, %struct.TYPE_44__** %6, align 8
  %15 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %7, align 8
  %18 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_45__**, %struct.TYPE_45__*** %19, align 8
  %21 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_45__*, %struct.TYPE_45__** %20, i64 %23
  %25 = load %struct.TYPE_45__*, %struct.TYPE_45__** %24, align 8
  store %struct.TYPE_45__* %25, %struct.TYPE_45__** %8, align 8
  %26 = load %struct.TYPE_45__*, %struct.TYPE_45__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_41__*, %struct.TYPE_41__** %27, align 8
  store %struct.TYPE_41__* %28, %struct.TYPE_41__** %9, align 8
  %29 = bitcast %struct.TYPE_43__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %29, i8 0, i64 12, i1 false)
  %30 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %64, label %34

34:                                               ; preds = %2
  %35 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %64, label %39

39:                                               ; preds = %34
  %40 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @EDIT_UNITS_PER_BODY, align 4
  %44 = srem i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %64, label %46

46:                                               ; preds = %39
  %47 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @EDIT_UNITS_PER_BODY, align 4
  %53 = add nsw i32 %51, %52
  %54 = call i32 @av_reallocp_array(%struct.TYPE_42__** %48, i32 %53, i32 16)
  store i32 %54, i32* %11, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %46
  %57 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  %59 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %60 = load i32, i32* @AV_LOG_ERROR, align 4
  %61 = call i32 (%struct.TYPE_47__*, i32, i8*, ...) @av_log(%struct.TYPE_47__* %59, i32 %60, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %3, align 4
  br label %445

63:                                               ; preds = %46
  br label %64

64:                                               ; preds = %63, %39, %34, %2
  %65 = load %struct.TYPE_45__*, %struct.TYPE_45__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_40__*, %struct.TYPE_40__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @AV_CODEC_ID_MPEG2VIDEO, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %64
  %73 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %74 = load %struct.TYPE_45__*, %struct.TYPE_45__** %8, align 8
  %75 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %76 = call i32 @mxf_parse_mpeg2_frame(%struct.TYPE_47__* %73, %struct.TYPE_45__* %74, %struct.TYPE_46__* %75, %struct.TYPE_43__* %10)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %72
  %79 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %80 = load i32, i32* @AV_LOG_ERROR, align 4
  %81 = call i32 (%struct.TYPE_47__*, i32, i8*, ...) @av_log(%struct.TYPE_47__* %79, i32 %80, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %445

82:                                               ; preds = %72
  br label %163

83:                                               ; preds = %64
  %84 = load %struct.TYPE_45__*, %struct.TYPE_45__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_40__*, %struct.TYPE_40__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @AV_CODEC_ID_DNXHD, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %102

91:                                               ; preds = %83
  %92 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %93 = load %struct.TYPE_45__*, %struct.TYPE_45__** %8, align 8
  %94 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %95 = call i32 @mxf_parse_dnxhd_frame(%struct.TYPE_47__* %92, %struct.TYPE_45__* %93, %struct.TYPE_46__* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %91
  %98 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %99 = load i32, i32* @AV_LOG_ERROR, align 4
  %100 = call i32 (%struct.TYPE_47__*, i32, i8*, ...) @av_log(%struct.TYPE_47__* %98, i32 %99, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %445

101:                                              ; preds = %91
  br label %162

102:                                              ; preds = %83
  %103 = load %struct.TYPE_45__*, %struct.TYPE_45__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_40__*, %struct.TYPE_40__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @AV_CODEC_ID_PRORES, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %121

110:                                              ; preds = %102
  %111 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %112 = load %struct.TYPE_45__*, %struct.TYPE_45__** %8, align 8
  %113 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %114 = call i32 @mxf_parse_prores_frame(%struct.TYPE_47__* %111, %struct.TYPE_45__* %112, %struct.TYPE_46__* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %110
  %117 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %118 = load i32, i32* @AV_LOG_ERROR, align 4
  %119 = call i32 (%struct.TYPE_47__*, i32, i8*, ...) @av_log(%struct.TYPE_47__* %117, i32 %118, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %445

120:                                              ; preds = %110
  br label %161

121:                                              ; preds = %102
  %122 = load %struct.TYPE_45__*, %struct.TYPE_45__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_40__*, %struct.TYPE_40__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @AV_CODEC_ID_DVVIDEO, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %140

129:                                              ; preds = %121
  %130 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %131 = load %struct.TYPE_45__*, %struct.TYPE_45__** %8, align 8
  %132 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %133 = call i32 @mxf_parse_dv_frame(%struct.TYPE_47__* %130, %struct.TYPE_45__* %131, %struct.TYPE_46__* %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %129
  %136 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %137 = load i32, i32* @AV_LOG_ERROR, align 4
  %138 = call i32 (%struct.TYPE_47__*, i32, i8*, ...) @av_log(%struct.TYPE_47__* %136, i32 %137, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %445

139:                                              ; preds = %129
  br label %160

140:                                              ; preds = %121
  %141 = load %struct.TYPE_45__*, %struct.TYPE_45__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_40__*, %struct.TYPE_40__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @AV_CODEC_ID_H264, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %159

148:                                              ; preds = %140
  %149 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %150 = load %struct.TYPE_45__*, %struct.TYPE_45__** %8, align 8
  %151 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %152 = call i32 @mxf_parse_h264_frame(%struct.TYPE_47__* %149, %struct.TYPE_45__* %150, %struct.TYPE_46__* %151, %struct.TYPE_43__* %10)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %148
  %155 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %156 = load i32, i32* @AV_LOG_ERROR, align 4
  %157 = call i32 (%struct.TYPE_47__*, i32, i8*, ...) @av_log(%struct.TYPE_47__* %155, i32 %156, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %445

158:                                              ; preds = %148
  br label %159

159:                                              ; preds = %158, %140
  br label %160

160:                                              ; preds = %159, %139
  br label %161

161:                                              ; preds = %160, %120
  br label %162

162:                                              ; preds = %161, %101
  br label %163

163:                                              ; preds = %162, %82
  %164 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %164, i32 0, i32 5
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %206

168:                                              ; preds = %163
  %169 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %171, %174
  br i1 %175, label %176, label %197

176:                                              ; preds = %168
  %177 = load %struct.TYPE_45__*, %struct.TYPE_45__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_40__*, %struct.TYPE_40__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %197

184:                                              ; preds = %176
  %185 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %186 = load i32, i32* @AV_LOG_ERROR, align 4
  %187 = load %struct.TYPE_45__*, %struct.TYPE_45__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 (%struct.TYPE_47__*, i32, i8*, ...) @av_log(%struct.TYPE_47__* %185, i32 %186, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0), i32 %189, i32 %192, i32 %195)
  store i32 -1, i32* %3, align 4
  br label %445

197:                                              ; preds = %176, %168
  %198 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %205, label %202

202:                                              ; preds = %197
  %203 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %204 = call i32 @mxf_compute_edit_unit_byte_count(%struct.TYPE_47__* %203)
  br label %205

205:                                              ; preds = %202, %197
  br label %206

206:                                              ; preds = %205, %163
  %207 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = icmp eq i32* %209, @ff_mxf_opatom_muxer
  br i1 %210, label %211, label %215

211:                                              ; preds = %206
  %212 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %213 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %214 = call i32 @mxf_write_opatom_packet(%struct.TYPE_47__* %212, %struct.TYPE_46__* %213, %struct.TYPE_43__* %10)
  store i32 %214, i32* %3, align 4
  br label %445

215:                                              ; preds = %206
  %216 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %248, label %220

220:                                              ; preds = %215
  %221 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %221, i32 0, i32 4
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %237

225:                                              ; preds = %220
  %226 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %227 = load i32, i32* @header_open_partition_key, align 4
  %228 = call i32 @mxf_write_partition(%struct.TYPE_47__* %226, i32 1, i32 2, i32 %227, i32 1)
  store i32 %228, i32* %11, align 4
  %229 = icmp slt i32 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %225
  %231 = load i32, i32* %11, align 4
  store i32 %231, i32* %3, align 4
  br label %445

232:                                              ; preds = %225
  %233 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %234 = call i32 @mxf_write_klv_fill(%struct.TYPE_47__* %233)
  %235 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %236 = call i32 @mxf_write_index_table_segment(%struct.TYPE_47__* %235)
  br label %245

237:                                              ; preds = %220
  %238 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %239 = load i32, i32* @header_open_partition_key, align 4
  %240 = call i32 @mxf_write_partition(%struct.TYPE_47__* %238, i32 0, i32 0, i32 %239, i32 1)
  store i32 %240, i32* %11, align 4
  %241 = icmp slt i32 %240, 0
  br i1 %241, label %242, label %244

242:                                              ; preds = %237
  %243 = load i32, i32* %11, align 4
  store i32 %243, i32* %3, align 4
  br label %445

244:                                              ; preds = %237
  br label %245

245:                                              ; preds = %244, %232
  %246 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %246, i32 0, i32 1
  store i32 1, i32* %247, align 4
  br label %248

248:                                              ; preds = %245, %215
  %249 = load %struct.TYPE_45__*, %struct.TYPE_45__** %8, align 8
  %250 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %342

253:                                              ; preds = %248
  %254 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %254, i32 0, i32 4
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %288, label %258

258:                                              ; preds = %253
  %259 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %260 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %269

263:                                              ; preds = %258
  %264 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* @EDIT_UNITS_PER_BODY, align 4
  %268 = icmp sgt i32 %266, %267
  br i1 %268, label %269, label %288

269:                                              ; preds = %263, %258
  %270 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %10, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = and i32 %271, 51
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %288, label %274

274:                                              ; preds = %269
  %275 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %276 = call i32 @mxf_write_klv_fill(%struct.TYPE_47__* %275)
  %277 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %278 = load i32, i32* @body_partition_key, align 4
  %279 = call i32 @mxf_write_partition(%struct.TYPE_47__* %277, i32 1, i32 2, i32 %278, i32 0)
  store i32 %279, i32* %11, align 4
  %280 = icmp slt i32 %279, 0
  br i1 %280, label %281, label %283

281:                                              ; preds = %274
  %282 = load i32, i32* %11, align 4
  store i32 %282, i32* %3, align 4
  br label %445

283:                                              ; preds = %274
  %284 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %285 = call i32 @mxf_write_klv_fill(%struct.TYPE_47__* %284)
  %286 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %287 = call i32 @mxf_write_index_table_segment(%struct.TYPE_47__* %286)
  br label %288

288:                                              ; preds = %283, %269, %263, %253
  %289 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %290 = call i32 @mxf_write_klv_fill(%struct.TYPE_47__* %289)
  %291 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %292 = call i32 @mxf_write_system_item(%struct.TYPE_47__* %291)
  %293 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %294 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %293, i32 0, i32 4
  %295 = load i64, i64* %294, align 8
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %337, label %297

297:                                              ; preds = %288
  %298 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %299 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 8
  %301 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %302 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %301, i32 0, i32 3
  %303 = load %struct.TYPE_42__*, %struct.TYPE_42__** %302, align 8
  %304 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %305 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %303, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %308, i32 0, i32 0
  store i32 %300, i32* %309, align 4
  %310 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %10, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %313 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %312, i32 0, i32 3
  %314 = load %struct.TYPE_42__*, %struct.TYPE_42__** %313, align 8
  %315 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %316 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %314, i64 %318
  %320 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %319, i32 0, i32 1
  store i32 %311, i32* %320, align 4
  %321 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %10, i32 0, i32 1
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %324 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %323, i32 0, i32 3
  %325 = load %struct.TYPE_42__*, %struct.TYPE_42__** %324, align 8
  %326 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %327 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %325, i64 %329
  %331 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %330, i32 0, i32 3
  store i32 %322, i32* %331, align 4
  %332 = load i32, i32* @KAG_SIZE, align 4
  %333 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %334 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 8
  %336 = add nsw i32 %335, %332
  store i32 %336, i32* %334, align 8
  br label %337

337:                                              ; preds = %297, %288
  %338 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %339 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %339, align 8
  br label %389

342:                                              ; preds = %248
  %343 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %344 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %343, i32 0, i32 4
  %345 = load i64, i64* %344, align 8
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %388, label %347

347:                                              ; preds = %342
  %348 = load %struct.TYPE_45__*, %struct.TYPE_45__** %8, align 8
  %349 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = icmp eq i32 %350, 1
  br i1 %351, label %352, label %388

352:                                              ; preds = %347
  %353 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %354 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %362, label %357

357:                                              ; preds = %352
  %358 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %359 = load i32, i32* @AV_LOG_ERROR, align 4
  %360 = call i32 (%struct.TYPE_47__*, i32, i8*, ...) @av_log(%struct.TYPE_47__* %358, i32 %359, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %361 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %361, i32* %3, align 4
  br label %445

362:                                              ; preds = %352
  %363 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %364 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %363, i32 0, i32 2
  %365 = load i32, i32* %364, align 8
  %366 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %367 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %366, i32 0, i32 3
  %368 = load %struct.TYPE_42__*, %struct.TYPE_42__** %367, align 8
  %369 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %370 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = sub nsw i32 %371, 1
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %368, i64 %373
  %375 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 4
  %377 = sub nsw i32 %365, %376
  %378 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %379 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %378, i32 0, i32 3
  %380 = load %struct.TYPE_42__*, %struct.TYPE_42__** %379, align 8
  %381 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %382 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = sub nsw i32 %383, 1
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %380, i64 %385
  %387 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %386, i32 0, i32 2
  store i32 %377, i32* %387, align 4
  br label %388

388:                                              ; preds = %362, %347, %342
  br label %389

389:                                              ; preds = %388, %337
  %390 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %391 = call i32 @mxf_write_klv_fill(%struct.TYPE_47__* %390)
  %392 = load i32*, i32** %7, align 8
  %393 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %394 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %393, i32 0, i32 1
  %395 = load i32, i32* %394, align 4
  %396 = call i32 @avio_write(i32* %392, i32 %395, i32 16)
  %397 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %398 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %397, i32 0, i32 0
  %399 = load i32*, i32** %398, align 8
  %400 = icmp eq i32* %399, @ff_mxf_d10_muxer
  br i1 %400, label %401, label %414

401:                                              ; preds = %389
  %402 = load %struct.TYPE_45__*, %struct.TYPE_45__** %8, align 8
  %403 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %402, i32 0, i32 1
  %404 = load %struct.TYPE_40__*, %struct.TYPE_40__** %403, align 8
  %405 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %404, i32 0, i32 1
  %406 = load i64, i64* %405, align 8
  %407 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %408 = icmp eq i64 %406, %407
  br i1 %408, label %409, label %414

409:                                              ; preds = %401
  %410 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %411 = load %struct.TYPE_45__*, %struct.TYPE_45__** %8, align 8
  %412 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %413 = call i32 @mxf_write_d10_audio_packet(%struct.TYPE_47__* %410, %struct.TYPE_45__* %411, %struct.TYPE_46__* %412)
  br label %442

414:                                              ; preds = %401, %389
  %415 = load i32*, i32** %7, align 8
  %416 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %417 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %416, i32 0, i32 1
  %418 = load i32, i32* %417, align 8
  %419 = call i32 @klv_encode_ber4_length(i32* %415, i32 %418)
  %420 = load i32*, i32** %7, align 8
  %421 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %422 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %421, i32 0, i32 2
  %423 = load i32, i32* %422, align 4
  %424 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %425 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %424, i32 0, i32 1
  %426 = load i32, i32* %425, align 8
  %427 = call i32 @avio_write(i32* %420, i32 %423, i32 %426)
  %428 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %429 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %428, i32 0, i32 1
  %430 = load i32, i32* %429, align 8
  %431 = add nsw i32 20, %430
  %432 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %433 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %432, i32 0, i32 1
  %434 = load i32, i32* %433, align 8
  %435 = add nsw i32 20, %434
  %436 = call i32 @klv_fill_size(i32 %435)
  %437 = add nsw i32 %431, %436
  %438 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %439 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %438, i32 0, i32 2
  %440 = load i32, i32* %439, align 8
  %441 = add nsw i32 %440, %437
  store i32 %441, i32* %439, align 8
  br label %442

442:                                              ; preds = %414, %409
  %443 = load i32*, i32** %7, align 8
  %444 = call i32 @avio_flush(i32* %443)
  store i32 0, i32* %3, align 4
  br label %445

445:                                              ; preds = %442, %357, %281, %242, %230, %211, %184, %154, %135, %116, %97, %78, %56
  %446 = load i32, i32* %3, align 4
  ret i32 %446
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @av_reallocp_array(%struct.TYPE_42__**, i32, i32) #2

declare dso_local i32 @av_log(%struct.TYPE_47__*, i32, i8*, ...) #2

declare dso_local i32 @mxf_parse_mpeg2_frame(%struct.TYPE_47__*, %struct.TYPE_45__*, %struct.TYPE_46__*, %struct.TYPE_43__*) #2

declare dso_local i32 @mxf_parse_dnxhd_frame(%struct.TYPE_47__*, %struct.TYPE_45__*, %struct.TYPE_46__*) #2

declare dso_local i32 @mxf_parse_prores_frame(%struct.TYPE_47__*, %struct.TYPE_45__*, %struct.TYPE_46__*) #2

declare dso_local i32 @mxf_parse_dv_frame(%struct.TYPE_47__*, %struct.TYPE_45__*, %struct.TYPE_46__*) #2

declare dso_local i32 @mxf_parse_h264_frame(%struct.TYPE_47__*, %struct.TYPE_45__*, %struct.TYPE_46__*, %struct.TYPE_43__*) #2

declare dso_local i32 @mxf_compute_edit_unit_byte_count(%struct.TYPE_47__*) #2

declare dso_local i32 @mxf_write_opatom_packet(%struct.TYPE_47__*, %struct.TYPE_46__*, %struct.TYPE_43__*) #2

declare dso_local i32 @mxf_write_partition(%struct.TYPE_47__*, i32, i32, i32, i32) #2

declare dso_local i32 @mxf_write_klv_fill(%struct.TYPE_47__*) #2

declare dso_local i32 @mxf_write_index_table_segment(%struct.TYPE_47__*) #2

declare dso_local i32 @mxf_write_system_item(%struct.TYPE_47__*) #2

declare dso_local i32 @avio_write(i32*, i32, i32) #2

declare dso_local i32 @mxf_write_d10_audio_packet(%struct.TYPE_47__*, %struct.TYPE_45__*, %struct.TYPE_46__*) #2

declare dso_local i32 @klv_encode_ber4_length(i32*, i32) #2

declare dso_local i32 @klv_fill_size(i32) #2

declare dso_local i32 @avio_flush(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
