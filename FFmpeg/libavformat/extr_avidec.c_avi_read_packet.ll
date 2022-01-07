; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_avidec.c_avi_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_avidec.c_avi_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { %struct.TYPE_27__**, i32*, %struct.TYPE_31__* }
%struct.TYPE_27__ = type { i32, i32, %struct.TYPE_26__*, %struct.TYPE_29__*, %struct.TYPE_30__* }
%struct.TYPE_26__ = type { i64, i64, i32 }
%struct.TYPE_29__ = type { i64, i32 }
%struct.TYPE_30__ = type { i32, i32, i64, i64, i64, i64, i32 }
%struct.TYPE_31__ = type { i32, i64, i32, i32, i64, i32 }
%struct.TYPE_28__ = type { i32, i32*, i64, i64, i32, i32, i32* }

@CONFIG_DV_DEMUXER = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i32 0, align 4
@AV_PKT_DATA_PALETTE = common dso_local global i32 0, align 4
@AVPALETTE_SIZE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to allocate data for palette\0A\00", align 1
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_SUBTITLE = common dso_local global i64 0, align 8
@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@AVSEEK_FLAG_ANY = common dso_local global i32 0, align 4
@AV_CODEC_ID_MPEG4 = common dso_local global i64 0, align 8
@AVINDEX_KEYFRAME = common dso_local global i32 0, align 4
@AV_TIME_BASE_Q = common dso_local global i32 0, align 4
@AV_TIME_BASE = common dso_local global i32 0, align 4
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Switching to NI mode, due to poor interleaving\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_32__*, %struct.TYPE_28__*)* @avi_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avi_read_packet(%struct.TYPE_32__* %0, %struct.TYPE_28__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_32__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca %struct.TYPE_31__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_27__*, align 8
  %11 = alloca %struct.TYPE_30__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_29__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %4, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %5, align 8
  %23 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_31__*, %struct.TYPE_31__** %24, align 8
  store %struct.TYPE_31__* %25, %struct.TYPE_31__** %6, align 8
  %26 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %7, align 8
  %29 = load i64, i64* @CONFIG_DV_DEMUXER, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %2
  %32 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %41 = call i32 @avpriv_dv_get_packet(i64 %39, %struct.TYPE_28__* %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %3, align 4
  br label %481

46:                                               ; preds = %36
  br label %61

47:                                               ; preds = %31, %2
  %48 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %54 = call i32 @ni_prepare_read(%struct.TYPE_32__* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %3, align 4
  br label %481

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59, %47
  br label %61

61:                                               ; preds = %480, %417, %224, %60, %46
  %62 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp uge i64 %64, 0
  br i1 %65, label %66, label %474

66:                                               ; preds = %61
  %67 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %68, align 8
  %70 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %69, i64 %72
  %74 = load %struct.TYPE_27__*, %struct.TYPE_27__** %73, align 8
  store %struct.TYPE_27__* %74, %struct.TYPE_27__** %10, align 8
  %75 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %75, i32 0, i32 4
  %77 = load %struct.TYPE_30__*, %struct.TYPE_30__** %76, align 8
  store %struct.TYPE_30__* %77, %struct.TYPE_30__** %11, align 8
  %78 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %79 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %80 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %81 = call i64 @get_subtitle_pkt(%struct.TYPE_32__* %78, %struct.TYPE_27__* %79, %struct.TYPE_28__* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %481

84:                                               ; preds = %66
  %85 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp sle i32 %87, 1
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = load i32, i32* @INT_MAX, align 4
  store i32 %90, i32* %12, align 4
  br label %106

91:                                               ; preds = %84
  %92 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %94, 32
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = mul nsw i32 1024, %99
  store i32 %100, i32* %12, align 4
  br label %105

101:                                              ; preds = %91
  %102 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  store i32 %104, i32* %12, align 4
  br label %105

105:                                              ; preds = %101, %96
  br label %106

106:                                              ; preds = %105, %89
  %107 = load i32, i32* %12, align 4
  %108 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp sgt i32 %107, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %106
  %113 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %12, align 4
  br label %116

116:                                              ; preds = %112, %106
  %117 = load i32*, i32** %7, align 8
  %118 = call i32 @avio_tell(i32* %117)
  %119 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %119, i32 0, i32 5
  store i32 %118, i32* %120, align 8
  %121 = load i32*, i32** %7, align 8
  %122 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @av_get_packet(i32* %121, %struct.TYPE_28__* %122, i32 %123)
  store i32 %124, i32* %13, align 4
  %125 = load i32, i32* %13, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %116
  %128 = load i32, i32* %13, align 4
  store i32 %128, i32* %3, align 4
  br label %481

129:                                              ; preds = %116
  %130 = load i32, i32* %13, align 4
  store i32 %130, i32* %12, align 4
  %131 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %131, i32 0, i32 5
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %163

135:                                              ; preds = %129
  %136 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @INT_MAX, align 4
  %140 = udiv i32 %139, 2
  %141 = icmp ult i32 %138, %140
  br i1 %141, label %142, label %163

142:                                              ; preds = %135
  %143 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %144 = load i32, i32* @AV_PKT_DATA_PALETTE, align 4
  %145 = load i32, i32* @AVPALETTE_SIZE, align 4
  %146 = call i32* @av_packet_new_side_data(%struct.TYPE_28__* %143, i32 %144, i32 %145)
  store i32* %146, i32** %14, align 8
  %147 = load i32*, i32** %14, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %153, label %149

149:                                              ; preds = %142
  %150 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %151 = load i32, i32* @AV_LOG_ERROR, align 4
  %152 = call i32 @av_log(%struct.TYPE_32__* %150, i32 %151, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %162

153:                                              ; preds = %142
  %154 = load i32*, i32** %14, align 8
  %155 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %155, i32 0, i32 6
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @AVPALETTE_SIZE, align 4
  %159 = call i32 @memcpy(i32* %154, i32 %157, i32 %158)
  %160 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %161 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %160, i32 0, i32 5
  store i64 0, i64* %161, align 8
  br label %162

162:                                              ; preds = %153, %149
  br label %163

163:                                              ; preds = %162, %135, %129
  %164 = load i64, i64* @CONFIG_DV_DEMUXER, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %203

166:                                              ; preds = %163
  %167 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %167, i32 0, i32 4
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %203

171:                                              ; preds = %166
  %172 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %172, i32 0, i32 6
  %174 = load i32*, i32** %173, align 8
  store i32* %174, i32** %15, align 8
  %175 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %175, i32 0, i32 4
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %179 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %179, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = call i32 @avpriv_dv_produce_packet(i64 %177, %struct.TYPE_28__* %178, i32* %181, i32 %184, i64 %187)
  store i32 %188, i32* %12, align 4
  %189 = load i32*, i32** %15, align 8
  %190 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %190, i32 0, i32 6
  store i32* %189, i32** %191, align 8
  %192 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %193 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %193, i32 0, i32 5
  %195 = load i32, i32* %194, align 4
  %196 = or i32 %195, %192
  store i32 %196, i32* %194, align 4
  %197 = load i32, i32* %12, align 4
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %171
  %200 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %201 = call i32 @av_packet_unref(%struct.TYPE_28__* %200)
  br label %202

202:                                              ; preds = %199, %171
  br label %384

203:                                              ; preds = %166, %163
  %204 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %204, i32 0, i32 2
  %206 = load %struct.TYPE_26__*, %struct.TYPE_26__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @AVMEDIA_TYPE_SUBTITLE, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %233

211:                                              ; preds = %203
  %212 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %213 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %212, i32 0, i32 2
  %214 = load %struct.TYPE_26__*, %struct.TYPE_26__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %233, label %218

218:                                              ; preds = %211
  %219 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %220 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %221 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %222 = call i64 @read_gab2_sub(%struct.TYPE_32__* %219, %struct.TYPE_27__* %220, %struct.TYPE_28__* %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %233

224:                                              ; preds = %218
  %225 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %226 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %225, i32 0, i32 2
  %227 = load i64, i64* %226, align 8
  %228 = add nsw i64 %227, 1
  store i64 %228, i64* %226, align 8
  %229 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %229, i32 0, i32 1
  store i64 -1, i64* %230, align 8
  %231 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %232 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %231, i32 0, i32 1
  store i32 0, i32* %232, align 4
  br label %61

233:                                              ; preds = %218, %211, %203
  %234 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %235 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %234, i32 0, i32 2
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %237, i32 0, i32 3
  store i64 %236, i64* %238, align 8
  %239 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %240 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %252

243:                                              ; preds = %233
  %244 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %245 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = sext i32 %246 to i64
  %248 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %248, i32 0, i32 3
  %250 = load i64, i64* %249, align 8
  %251 = sdiv i64 %250, %247
  store i64 %251, i64* %249, align 8
  br label %252

252:                                              ; preds = %243, %233
  %253 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = trunc i64 %255 to i32
  %257 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %257, i32 0, i32 4
  store i32 %256, i32* %258, align 8
  %259 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %260 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %259, i32 0, i32 2
  %261 = load %struct.TYPE_26__*, %struct.TYPE_26__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %266, label %367

266:                                              ; preds = %252
  %267 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %268 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %267, i32 0, i32 3
  %269 = load %struct.TYPE_29__*, %struct.TYPE_29__** %268, align 8
  %270 = icmp ne %struct.TYPE_29__* %269, null
  br i1 %270, label %271, label %367

271:                                              ; preds = %266
  %272 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %273 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %274 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %273, i32 0, i32 2
  %275 = load i64, i64* %274, align 8
  %276 = load i32, i32* @AVSEEK_FLAG_ANY, align 4
  %277 = call i32 @av_index_search_timestamp(%struct.TYPE_27__* %272, i64 %275, i32 %276)
  store i32 %277, i32* %17, align 4
  %278 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %279 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %278, i32 0, i32 3
  %280 = load %struct.TYPE_29__*, %struct.TYPE_29__** %279, align 8
  %281 = load i32, i32* %17, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %280, i64 %282
  store %struct.TYPE_29__* %283, %struct.TYPE_29__** %16, align 8
  %284 = load i32, i32* %17, align 4
  %285 = icmp sge i32 %284, 0
  br i1 %285, label %286, label %366

286:                                              ; preds = %271
  %287 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %288 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %291 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %290, i32 0, i32 2
  %292 = load i64, i64* %291, align 8
  %293 = icmp eq i64 %289, %292
  br i1 %293, label %294, label %366

294:                                              ; preds = %286
  %295 = load i32, i32* %17, align 4
  %296 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %297 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = sub nsw i32 %298, 1
  %300 = icmp eq i32 %295, %299
  br i1 %300, label %301, label %352

301:                                              ; preds = %294
  store i32 1, i32* %18, align 4
  store i32 -1, i32* %19, align 4
  %302 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %303 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %302, i32 0, i32 2
  %304 = load %struct.TYPE_26__*, %struct.TYPE_26__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %304, i32 0, i32 1
  %306 = load i64, i64* %305, align 8
  %307 = load i64, i64* @AV_CODEC_ID_MPEG4, align 8
  %308 = icmp eq i64 %306, %307
  br i1 %308, label %309, label %341

309:                                              ; preds = %301
  %310 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %311 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %310, i32 0, i32 1
  %312 = load i32*, i32** %311, align 8
  store i32* %312, i32** %20, align 8
  %313 = load i32*, i32** %20, align 8
  %314 = load i32, i32* %12, align 4
  %315 = call i32 @FFMIN(i32 %314, i32 256)
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32, i32* %313, i64 %316
  store i32* %317, i32** %21, align 8
  br label %318

318:                                              ; preds = %339, %309
  %319 = load i32*, i32** %20, align 8
  %320 = load i32*, i32** %21, align 8
  %321 = icmp ult i32* %319, %320
  br i1 %321, label %322, label %340

322:                                              ; preds = %318
  %323 = load i32*, i32** %20, align 8
  %324 = load i32*, i32** %21, align 8
  %325 = call i32* @avpriv_find_start_code(i32* %323, i32* %324, i32* %19)
  store i32* %325, i32** %20, align 8
  %326 = load i32, i32* %19, align 4
  %327 = icmp eq i32 %326, 438
  br i1 %327, label %328, label %339

328:                                              ; preds = %322
  %329 = load i32*, i32** %20, align 8
  %330 = load i32*, i32** %21, align 8
  %331 = icmp ult i32* %329, %330
  br i1 %331, label %332, label %339

332:                                              ; preds = %328
  %333 = load i32*, i32** %20, align 8
  %334 = load i32, i32* %333, align 4
  %335 = and i32 %334, 192
  %336 = icmp ne i32 %335, 0
  %337 = xor i1 %336, true
  %338 = zext i1 %337 to i32
  store i32 %338, i32* %18, align 4
  br label %340

339:                                              ; preds = %328, %322
  br label %318

340:                                              ; preds = %332, %318
  br label %341

341:                                              ; preds = %340, %301
  %342 = load i32, i32* %18, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %351, label %344

344:                                              ; preds = %341
  %345 = load i32, i32* @AVINDEX_KEYFRAME, align 4
  %346 = xor i32 %345, -1
  %347 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %348 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 8
  %350 = and i32 %349, %346
  store i32 %350, i32* %348, align 8
  br label %351

351:                                              ; preds = %344, %341
  br label %352

352:                                              ; preds = %351, %294
  %353 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %354 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 8
  %356 = load i32, i32* @AVINDEX_KEYFRAME, align 4
  %357 = and i32 %355, %356
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %365

359:                                              ; preds = %352
  %360 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %361 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %362 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %361, i32 0, i32 5
  %363 = load i32, i32* %362, align 4
  %364 = or i32 %363, %360
  store i32 %364, i32* %362, align 4
  br label %365

365:                                              ; preds = %359, %352
  br label %366

366:                                              ; preds = %365, %286, %271
  br label %373

367:                                              ; preds = %266, %252
  %368 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %369 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %370 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %369, i32 0, i32 5
  %371 = load i32, i32* %370, align 4
  %372 = or i32 %371, %368
  store i32 %372, i32* %370, align 4
  br label %373

373:                                              ; preds = %367, %366
  %374 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %375 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %376 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 8
  %378 = call i64 @get_duration(%struct.TYPE_30__* %374, i32 %377)
  %379 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %380 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %379, i32 0, i32 2
  %381 = load i64, i64* %380, align 8
  %382 = add nsw i64 %381, %378
  store i64 %382, i64* %380, align 8
  br label %383

383:                                              ; preds = %373
  br label %384

384:                                              ; preds = %383, %202
  %385 = load i32, i32* %13, align 4
  %386 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %387 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %386, i32 0, i32 1
  %388 = load i32, i32* %387, align 4
  %389 = sub nsw i32 %388, %385
  store i32 %389, i32* %387, align 4
  %390 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %391 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %399, label %394

394:                                              ; preds = %384
  %395 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %396 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %395, i32 0, i32 1
  store i64 -1, i64* %396, align 8
  %397 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %398 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %397, i32 0, i32 4
  store i64 0, i64* %398, align 8
  br label %399

399:                                              ; preds = %394, %384
  %400 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %401 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 8
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %420, label %404

404:                                              ; preds = %399
  %405 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %406 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %405, i32 0, i32 2
  %407 = load i64, i64* %406, align 8
  %408 = icmp sge i64 %407, 0
  br i1 %408, label %409, label %420

409:                                              ; preds = %404
  %410 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %411 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %410, i32 0, i32 3
  %412 = load i64, i64* %411, align 8
  %413 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %414 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %413, i32 0, i32 2
  %415 = load i64, i64* %414, align 8
  %416 = icmp sgt i64 %412, %415
  br i1 %416, label %417, label %420

417:                                              ; preds = %409
  %418 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %419 = call i32 @av_packet_unref(%struct.TYPE_28__* %418)
  br label %61

420:                                              ; preds = %409, %404, %399
  %421 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %422 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %421, i32 0, i32 3
  store i64 0, i64* %422, align 8
  %423 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %424 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 8
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %473, label %427

427:                                              ; preds = %420
  %428 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %429 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 8
  %431 = icmp sgt i32 %430, 1
  br i1 %431, label %432, label %473

432:                                              ; preds = %427
  %433 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %434 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %433, i32 0, i32 2
  %435 = load i32, i32* %434, align 8
  %436 = icmp sgt i32 %435, 1
  br i1 %436, label %437, label %473

437:                                              ; preds = %432
  %438 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %439 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %438, i32 0, i32 3
  %440 = load i64, i64* %439, align 8
  %441 = trunc i64 %440 to i32
  %442 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %443 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %442, i32 0, i32 1
  %444 = load i32, i32* %443, align 4
  %445 = load i32, i32* @AV_TIME_BASE_Q, align 4
  %446 = call i32 @av_rescale_q(i32 %441, i32 %444, i32 %445)
  store i32 %446, i32* %22, align 4
  %447 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %448 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %447, i32 0, i32 3
  %449 = load i32, i32* %448, align 4
  %450 = load i32, i32* %22, align 4
  %451 = sub nsw i32 %449, %450
  %452 = load i32, i32* @AV_TIME_BASE, align 4
  %453 = mul nsw i32 2, %452
  %454 = icmp sgt i32 %451, %453
  br i1 %454, label %455, label %461

455:                                              ; preds = %437
  %456 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %457 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %456, i32 0, i32 0
  store i32 1, i32* %457, align 8
  %458 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %459 = load i32, i32* @AV_LOG_INFO, align 4
  %460 = call i32 @av_log(%struct.TYPE_32__* %458, i32 %459, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %472

461:                                              ; preds = %437
  %462 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %463 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %462, i32 0, i32 3
  %464 = load i32, i32* %463, align 4
  %465 = load i32, i32* %22, align 4
  %466 = icmp slt i32 %464, %465
  br i1 %466, label %467, label %471

467:                                              ; preds = %461
  %468 = load i32, i32* %22, align 4
  %469 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %470 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %469, i32 0, i32 3
  store i32 %468, i32* %470, align 4
  br label %471

471:                                              ; preds = %467, %461
  br label %472

472:                                              ; preds = %471, %455
  br label %473

473:                                              ; preds = %472, %432, %427, %420
  store i32 0, i32* %3, align 4
  br label %481

474:                                              ; preds = %61
  %475 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %476 = call i32 @avi_sync(%struct.TYPE_32__* %475, i32 0)
  store i32 %476, i32* %8, align 4
  %477 = icmp slt i32 %476, 0
  br i1 %477, label %478, label %480

478:                                              ; preds = %474
  %479 = load i32, i32* %8, align 4
  store i32 %479, i32* %3, align 4
  br label %481

480:                                              ; preds = %474
  br label %61

481:                                              ; preds = %478, %473, %127, %83, %57, %44
  %482 = load i32, i32* %3, align 4
  ret i32 %482
}

declare dso_local i32 @avpriv_dv_get_packet(i64, %struct.TYPE_28__*) #1

declare dso_local i32 @ni_prepare_read(%struct.TYPE_32__*) #1

declare dso_local i64 @get_subtitle_pkt(%struct.TYPE_32__*, %struct.TYPE_27__*, %struct.TYPE_28__*) #1

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32 @av_get_packet(i32*, %struct.TYPE_28__*, i32) #1

declare dso_local i32* @av_packet_new_side_data(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_32__*, i32, i8*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @avpriv_dv_produce_packet(i64, %struct.TYPE_28__*, i32*, i32, i64) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_28__*) #1

declare dso_local i64 @read_gab2_sub(%struct.TYPE_32__*, %struct.TYPE_27__*, %struct.TYPE_28__*) #1

declare dso_local i32 @av_index_search_timestamp(%struct.TYPE_27__*, i64, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32* @avpriv_find_start_code(i32*, i32*, i32*) #1

declare dso_local i64 @get_duration(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @av_rescale_q(i32, i32, i32) #1

declare dso_local i32 @avi_sync(%struct.TYPE_32__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
