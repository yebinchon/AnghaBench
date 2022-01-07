; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32, %struct.TYPE_28__**, i64, i32, %struct.TYPE_27__*, i32* }
%struct.TYPE_28__ = type { i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64, i64, i32, i64 }
%struct.TYPE_27__ = type { i32, i32, i64, i32, i8*, i64, i64, i64, i32, i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i64, i64, i32, %struct.TYPE_25__*, i64, i64 }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_30__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"timecode\00", align 1
@MODE_MP4 = common dso_local global i32 0, align 4
@MODE_MOV = common dso_local global i32 0, align 4
@MODE_IPOD = common dso_local global i32 0, align 4
@FF_MOV_FLAG_RTP_HINT = common dso_local global i32 0, align 4
@AV_CODEC_ID_DVD_SUBTITLE = common dso_local global i64 0, align 8
@AV_CODEC_ID_DNXHD = common dso_local global i64 0, align 8
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i64 0, align 8
@AV_CH_LAYOUT_MONO = common dso_local global i64 0, align 8
@FF_MOV_FLAG_DELAY_MOOV = common dso_local global i32 0, align 4
@FF_MOV_FLAG_FRAGMENT = common dso_local global i32 0, align 4
@FF_MOV_FLAG_FRAG_KEYFRAME = common dso_local global i32 0, align 4
@FF_MOV_FLAG_FRAG_CUSTOM = common dso_local global i32 0, align 4
@FF_MOV_FLAG_FRAG_EVERY_FRAME = common dso_local global i32 0, align 4
@FF_MOV_FLAG_FASTSTART = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@FF_MOV_FLAG_ISML = common dso_local global i32 0, align 4
@FF_MOV_FLAG_EMPTY_MOOV = common dso_local global i32 0, align 4
@FF_MOV_FLAG_GLOBAL_SIDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_29__*)* @mov_write_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_write_header(%struct.TYPE_29__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_29__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_28__*, align 8
  %15 = alloca %struct.TYPE_26__*, align 8
  %16 = alloca %struct.TYPE_28__*, align 8
  %17 = alloca %struct.TYPE_26__*, align 8
  %18 = alloca %struct.TYPE_28__*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %3, align 8
  %20 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %20, i32 0, i32 5
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %4, align 8
  %23 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %23, i32 0, i32 4
  %25 = load %struct.TYPE_27__*, %struct.TYPE_27__** %24, align 8
  store %struct.TYPE_27__* %25, %struct.TYPE_27__** %5, align 8
  %26 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.TYPE_30__* @av_dict_get(i32 %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* null, i32 0)
  store %struct.TYPE_30__* %29, %struct.TYPE_30__** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %30 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %12, align 4
  %33 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @MODE_MP4, align 4
  %37 = load i32, i32* @MODE_MOV, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @MODE_IPOD, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %35, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %1
  %44 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* %12, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %12, align 4
  br label %51

51:                                               ; preds = %48, %43, %1
  %52 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @FF_MOV_FLAG_RTP_HINT, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %84

58:                                               ; preds = %51
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %80, %58
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %83

66:                                               ; preds = %60
  %67 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %69, i64 %71
  %73 = load %struct.TYPE_28__*, %struct.TYPE_28__** %72, align 8
  %74 = call i64 @rtp_hinting_needed(%struct.TYPE_28__* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %66
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %12, align 4
  br label %79

79:                                               ; preds = %76, %66
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %60

83:                                               ; preds = %60
  br label %84

84:                                               ; preds = %83, %51
  %85 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %85, i32 0, i32 5
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = load i32, i32* %12, align 4
  store i32 %90, i32* %11, align 4
  br label %91

91:                                               ; preds = %89, %84
  store i32 0, i32* %8, align 4
  br label %92

92:                                               ; preds = %275, %91
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp slt i32 %93, %96
  br i1 %97, label %98, label %278

98:                                               ; preds = %92
  %99 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %101, i64 %103
  %105 = load %struct.TYPE_28__*, %struct.TYPE_28__** %104, align 8
  store %struct.TYPE_28__* %105, %struct.TYPE_28__** %14, align 8
  %106 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %106, i32 0, i32 10
  %108 = load %struct.TYPE_26__*, %struct.TYPE_26__** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %108, i64 %110
  store %struct.TYPE_26__* %111, %struct.TYPE_26__** %15, align 8
  %112 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %113 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %191

118:                                              ; preds = %98
  %119 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %120 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @AV_CODEC_ID_DVD_SUBTITLE, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %118
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %128 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %129 = call i32 @mov_create_dvd_sub_decoder_specific_info(%struct.TYPE_26__* %127, %struct.TYPE_28__* %128)
  br label %190

130:                                              ; preds = %118
  %131 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %132 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @TAG_IS_AVCI(i64 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %189, label %136

136:                                              ; preds = %130
  %137 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %138 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_24__*, %struct.TYPE_24__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @AV_CODEC_ID_DNXHD, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %189

144:                                              ; preds = %136
  %145 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %146 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %151 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %150, i32 0, i32 4
  store i64 %149, i64* %151, align 8
  %152 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %153 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %152, i32 0, i32 4
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %156 = add nsw i64 %154, %155
  %157 = call i64 @av_malloc(i64 %156)
  %158 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %159 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %158, i32 0, i32 5
  store i64 %157, i64* %159, align 8
  %160 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %161 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %160, i32 0, i32 5
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %144
  %165 = load i32, i32* @ENOMEM, align 4
  %166 = call i32 @AVERROR(i32 %165)
  store i32 %166, i32* %2, align 4
  br label %554

167:                                              ; preds = %144
  %168 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %169 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %168, i32 0, i32 5
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %172 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_24__*, %struct.TYPE_24__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %177 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %176, i32 0, i32 4
  %178 = load i64, i64* %177, align 8
  %179 = call i32 @memcpy(i64 %170, i32 %175, i64 %178)
  %180 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %181 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %180, i32 0, i32 5
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %184 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %183, i32 0, i32 4
  %185 = load i64, i64* %184, align 8
  %186 = add nsw i64 %182, %185
  %187 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %188 = call i32 @memset(i64 %186, i32 0, i64 %187)
  br label %189

189:                                              ; preds = %167, %136, %130
  br label %190

190:                                              ; preds = %189, %126
  br label %191

191:                                              ; preds = %190, %98
  %192 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %193 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_24__*, %struct.TYPE_24__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %198 = icmp ne i64 %196, %197
  br i1 %198, label %207, label %199

199:                                              ; preds = %191
  %200 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %201 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %200, i32 0, i32 3
  %202 = load %struct.TYPE_25__*, %struct.TYPE_25__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @AV_CH_LAYOUT_MONO, align 8
  %206 = icmp ne i64 %204, %205
  br i1 %206, label %207, label %208

207:                                              ; preds = %199, %191
  br label %275

208:                                              ; preds = %199
  store i32 0, i32* %13, align 4
  br label %209

209:                                              ; preds = %271, %208
  %210 = load i32, i32* %13, align 4
  %211 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = icmp slt i32 %210, %213
  br i1 %214, label %215, label %274

215:                                              ; preds = %209
  %216 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %216, i32 0, i32 1
  %218 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %217, align 8
  %219 = load i32, i32* %13, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %218, i64 %220
  %222 = load %struct.TYPE_28__*, %struct.TYPE_28__** %221, align 8
  store %struct.TYPE_28__* %222, %struct.TYPE_28__** %16, align 8
  %223 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %223, i32 0, i32 10
  %225 = load %struct.TYPE_26__*, %struct.TYPE_26__** %224, align 8
  %226 = load i32, i32* %13, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %225, i64 %227
  store %struct.TYPE_26__* %228, %struct.TYPE_26__** %17, align 8
  %229 = load i32, i32* %13, align 4
  %230 = load i32, i32* %8, align 4
  %231 = icmp eq i32 %229, %230
  br i1 %231, label %232, label %233

232:                                              ; preds = %215
  br label %271

233:                                              ; preds = %215
  %234 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %235 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %234, i32 0, i32 1
  %236 = load %struct.TYPE_24__*, %struct.TYPE_24__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %240 = icmp ne i64 %238, %239
  br i1 %240, label %265, label %241

241:                                              ; preds = %233
  %242 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %243 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %242, i32 0, i32 3
  %244 = load %struct.TYPE_25__*, %struct.TYPE_25__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* @AV_CH_LAYOUT_MONO, align 8
  %248 = icmp ne i64 %246, %247
  br i1 %248, label %265, label %249

249:                                              ; preds = %241
  %250 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %251 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %254 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %252, %255
  br i1 %256, label %265, label %257

257:                                              ; preds = %249
  %258 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %259 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %262 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = icmp ne i64 %260, %263
  br i1 %264, label %265, label %266

265:                                              ; preds = %257, %249, %241, %233
  br label %271

266:                                              ; preds = %257
  %267 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %268 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %268, align 8
  br label %271

271:                                              ; preds = %266, %265, %232
  %272 = load i32, i32* %13, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %13, align 4
  br label %209

274:                                              ; preds = %209
  br label %275

275:                                              ; preds = %274, %207
  %276 = load i32, i32* %8, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %8, align 4
  br label %92

278:                                              ; preds = %92
  %279 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* @FF_MOV_FLAG_DELAY_MOOV, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %293, label %285

285:                                              ; preds = %278
  %286 = load i32*, i32** %4, align 8
  %287 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %288 = call i32 @mov_write_identification(i32* %286, %struct.TYPE_29__* %287)
  store i32 %288, i32* %9, align 4
  %289 = icmp slt i32 %288, 0
  br i1 %289, label %290, label %292

290:                                              ; preds = %285
  %291 = load i32, i32* %9, align 4
  store i32 %291, i32* %2, align 4
  br label %554

292:                                              ; preds = %285
  br label %293

293:                                              ; preds = %292, %278
  %294 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %294, i32 0, i32 2
  %296 = load i64, i64* %295, align 8
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %314

298:                                              ; preds = %293
  %299 = load i32*, i32** %4, align 8
  %300 = call i8* @avio_tell(i32* %299)
  %301 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %302 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %301, i32 0, i32 4
  store i8* %300, i8** %302, align 8
  %303 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %304 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %303, i32 0, i32 2
  %305 = load i64, i64* %304, align 8
  %306 = icmp sgt i64 %305, 0
  br i1 %306, label %307, label %313

307:                                              ; preds = %298
  %308 = load i32*, i32** %4, align 8
  %309 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %309, i32 0, i32 2
  %311 = load i64, i64* %310, align 8
  %312 = call i32 @avio_skip(i32* %308, i64 %311)
  br label %313

313:                                              ; preds = %307, %298
  br label %314

314:                                              ; preds = %313, %293
  %315 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %316 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* @FF_MOV_FLAG_FRAGMENT, align 4
  %319 = and i32 %317, %318
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %349

321:                                              ; preds = %314
  %322 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %323 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = load i32, i32* @FF_MOV_FLAG_FRAG_KEYFRAME, align 4
  %326 = load i32, i32* @FF_MOV_FLAG_FRAG_CUSTOM, align 4
  %327 = or i32 %325, %326
  %328 = load i32, i32* @FF_MOV_FLAG_FRAG_EVERY_FRAME, align 4
  %329 = or i32 %327, %328
  %330 = and i32 %324, %329
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %348, label %332

332:                                              ; preds = %321
  %333 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %334 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %333, i32 0, i32 9
  %335 = load i32, i32* %334, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %348, label %337

337:                                              ; preds = %332
  %338 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %339 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %338, i32 0, i32 8
  %340 = load i32, i32* %339, align 8
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %348, label %342

342:                                              ; preds = %337
  %343 = load i32, i32* @FF_MOV_FLAG_FRAG_KEYFRAME, align 4
  %344 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %345 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 4
  %347 = or i32 %346, %343
  store i32 %347, i32* %345, align 4
  br label %348

348:                                              ; preds = %342, %337, %332, %321
  br label %365

349:                                              ; preds = %314
  %350 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %351 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 4
  %353 = load i32, i32* @FF_MOV_FLAG_FASTSTART, align 4
  %354 = and i32 %352, %353
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %361

356:                                              ; preds = %349
  %357 = load i32*, i32** %4, align 8
  %358 = call i8* @avio_tell(i32* %357)
  %359 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %360 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %359, i32 0, i32 4
  store i8* %358, i8** %360, align 8
  br label %361

361:                                              ; preds = %356, %349
  %362 = load i32*, i32** %4, align 8
  %363 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %364 = call i32 @mov_write_mdat_tag(i32* %362, %struct.TYPE_27__* %363)
  br label %365

365:                                              ; preds = %361, %348
  %366 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %367 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %368 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %367, i32 0, i32 7
  %369 = call i32 @ff_parse_creation_time_metadata(%struct.TYPE_29__* %366, i64* %368, i32 1)
  %370 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %371 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %370, i32 0, i32 7
  %372 = load i64, i64* %371, align 8
  %373 = icmp ne i64 %372, 0
  br i1 %373, label %374, label %379

374:                                              ; preds = %365
  %375 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %376 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %375, i32 0, i32 7
  %377 = load i64, i64* %376, align 8
  %378 = add nsw i64 %377, 2082844800
  store i64 %378, i64* %376, align 8
  br label %379

379:                                              ; preds = %374, %365
  %380 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %381 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %380, i32 0, i32 6
  %382 = load i64, i64* %381, align 8
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %384, label %394

384:                                              ; preds = %379
  %385 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %386 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %387 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %386, i32 0, i32 6
  %388 = load i64, i64* %387, align 8
  %389 = call i32 @mov_create_chapter_track(%struct.TYPE_29__* %385, i64 %388)
  store i32 %389, i32* %9, align 4
  %390 = icmp slt i32 %389, 0
  br i1 %390, label %391, label %393

391:                                              ; preds = %384
  %392 = load i32, i32* %9, align 4
  store i32 %392, i32* %2, align 4
  br label %554

393:                                              ; preds = %384
  br label %394

394:                                              ; preds = %393, %379
  %395 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %396 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %395, i32 0, i32 1
  %397 = load i32, i32* %396, align 4
  %398 = load i32, i32* @FF_MOV_FLAG_RTP_HINT, align 4
  %399 = and i32 %397, %398
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %434

401:                                              ; preds = %394
  store i32 0, i32* %8, align 4
  br label %402

402:                                              ; preds = %430, %401
  %403 = load i32, i32* %8, align 4
  %404 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %405 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 8
  %407 = icmp slt i32 %403, %406
  br i1 %407, label %408, label %433

408:                                              ; preds = %402
  %409 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %410 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %409, i32 0, i32 1
  %411 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %410, align 8
  %412 = load i32, i32* %8, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %411, i64 %413
  %415 = load %struct.TYPE_28__*, %struct.TYPE_28__** %414, align 8
  %416 = call i64 @rtp_hinting_needed(%struct.TYPE_28__* %415)
  %417 = icmp ne i64 %416, 0
  br i1 %417, label %418, label %429

418:                                              ; preds = %408
  %419 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %420 = load i32, i32* %10, align 4
  %421 = load i32, i32* %8, align 4
  %422 = call i32 @ff_mov_init_hinting(%struct.TYPE_29__* %419, i32 %420, i32 %421)
  store i32 %422, i32* %9, align 4
  %423 = icmp slt i32 %422, 0
  br i1 %423, label %424, label %426

424:                                              ; preds = %418
  %425 = load i32, i32* %9, align 4
  store i32 %425, i32* %2, align 4
  br label %554

426:                                              ; preds = %418
  %427 = load i32, i32* %10, align 4
  %428 = add nsw i32 %427, 1
  store i32 %428, i32* %10, align 4
  br label %429

429:                                              ; preds = %426, %408
  br label %430

430:                                              ; preds = %429
  %431 = load i32, i32* %8, align 4
  %432 = add nsw i32 %431, 1
  store i32 %432, i32* %8, align 4
  br label %402

433:                                              ; preds = %402
  br label %434

434:                                              ; preds = %433, %394
  %435 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %436 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %435, i32 0, i32 5
  %437 = load i64, i64* %436, align 8
  %438 = icmp ne i64 %437, 0
  br i1 %438, label %439, label %500

439:                                              ; preds = %434
  store i32 0, i32* %8, align 4
  br label %440

440:                                              ; preds = %496, %439
  %441 = load i32, i32* %8, align 4
  %442 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %443 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %442, i32 0, i32 0
  %444 = load i32, i32* %443, align 8
  %445 = icmp slt i32 %441, %444
  br i1 %445, label %446, label %499

446:                                              ; preds = %440
  %447 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %448 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %447, i32 0, i32 1
  %449 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %448, align 8
  %450 = load i32, i32* %8, align 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %449, i64 %451
  %453 = load %struct.TYPE_28__*, %struct.TYPE_28__** %452, align 8
  store %struct.TYPE_28__* %453, %struct.TYPE_28__** %18, align 8
  %454 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  store %struct.TYPE_30__* %454, %struct.TYPE_30__** %6, align 8
  %455 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %456 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %455, i32 0, i32 1
  %457 = load %struct.TYPE_24__*, %struct.TYPE_24__** %456, align 8
  %458 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %457, i32 0, i32 1
  %459 = load i64, i64* %458, align 8
  %460 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %461 = icmp eq i64 %459, %460
  br i1 %461, label %462, label %495

462:                                              ; preds = %446
  %463 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %464 = icmp ne %struct.TYPE_30__* %463, null
  br i1 %464, label %470, label %465

465:                                              ; preds = %462
  %466 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %467 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %466, i32 0, i32 0
  %468 = load i32, i32* %467, align 8
  %469 = call %struct.TYPE_30__* @av_dict_get(i32 %468, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* null, i32 0)
  store %struct.TYPE_30__* %469, %struct.TYPE_30__** %6, align 8
  br label %470

470:                                              ; preds = %465, %462
  %471 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %472 = icmp ne %struct.TYPE_30__* %471, null
  br i1 %472, label %474, label %473

473:                                              ; preds = %470
  br label %496

474:                                              ; preds = %470
  %475 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %476 = load i32, i32* %8, align 4
  %477 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %478 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %477, i32 0, i32 0
  %479 = load i32, i32* %478, align 4
  %480 = call i64 @mov_check_timecode_track(%struct.TYPE_29__* %475, i32* %19, i32 %476, i32 %479)
  %481 = icmp slt i64 %480, 0
  br i1 %481, label %482, label %483

482:                                              ; preds = %474
  br label %496

483:                                              ; preds = %474
  %484 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %485 = load i32, i32* %11, align 4
  %486 = load i32, i32* %8, align 4
  %487 = load i32, i32* %19, align 4
  %488 = call i32 @mov_create_timecode_track(%struct.TYPE_29__* %484, i32 %485, i32 %486, i32 %487)
  store i32 %488, i32* %9, align 4
  %489 = icmp slt i32 %488, 0
  br i1 %489, label %490, label %492

490:                                              ; preds = %483
  %491 = load i32, i32* %9, align 4
  store i32 %491, i32* %2, align 4
  br label %554

492:                                              ; preds = %483
  %493 = load i32, i32* %11, align 4
  %494 = add nsw i32 %493, 1
  store i32 %494, i32* %11, align 4
  br label %495

495:                                              ; preds = %492, %446
  br label %496

496:                                              ; preds = %495, %482, %473
  %497 = load i32, i32* %8, align 4
  %498 = add nsw i32 %497, 1
  store i32 %498, i32* %8, align 4
  br label %440

499:                                              ; preds = %440
  br label %500

500:                                              ; preds = %499, %434
  %501 = load i32*, i32** %4, align 8
  %502 = call i32 @avio_flush(i32* %501)
  %503 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %504 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %503, i32 0, i32 1
  %505 = load i32, i32* %504, align 4
  %506 = load i32, i32* @FF_MOV_FLAG_ISML, align 4
  %507 = and i32 %505, %506
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %509, label %514

509:                                              ; preds = %500
  %510 = load i32*, i32** %4, align 8
  %511 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %512 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %513 = call i32 @mov_write_isml_manifest(i32* %510, %struct.TYPE_27__* %511, %struct.TYPE_29__* %512)
  br label %514

514:                                              ; preds = %509, %500
  %515 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %516 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %515, i32 0, i32 1
  %517 = load i32, i32* %516, align 4
  %518 = load i32, i32* @FF_MOV_FLAG_EMPTY_MOOV, align 4
  %519 = and i32 %517, %518
  %520 = icmp ne i32 %519, 0
  br i1 %520, label %521, label %553

521:                                              ; preds = %514
  %522 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %523 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %522, i32 0, i32 1
  %524 = load i32, i32* %523, align 4
  %525 = load i32, i32* @FF_MOV_FLAG_DELAY_MOOV, align 4
  %526 = and i32 %524, %525
  %527 = icmp ne i32 %526, 0
  br i1 %527, label %553, label %528

528:                                              ; preds = %521
  %529 = load i32*, i32** %4, align 8
  %530 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %531 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %532 = call i32 @mov_write_moov_tag(i32* %529, %struct.TYPE_27__* %530, %struct.TYPE_29__* %531)
  store i32 %532, i32* %9, align 4
  %533 = icmp slt i32 %532, 0
  br i1 %533, label %534, label %536

534:                                              ; preds = %528
  %535 = load i32, i32* %9, align 4
  store i32 %535, i32* %2, align 4
  br label %554

536:                                              ; preds = %528
  %537 = load i32*, i32** %4, align 8
  %538 = call i32 @avio_flush(i32* %537)
  %539 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %540 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %539, i32 0, i32 3
  store i32 1, i32* %540, align 8
  %541 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %542 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %541, i32 0, i32 1
  %543 = load i32, i32* %542, align 4
  %544 = load i32, i32* @FF_MOV_FLAG_GLOBAL_SIDX, align 4
  %545 = and i32 %543, %544
  %546 = icmp ne i32 %545, 0
  br i1 %546, label %547, label %552

547:                                              ; preds = %536
  %548 = load i32*, i32** %4, align 8
  %549 = call i8* @avio_tell(i32* %548)
  %550 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %551 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %550, i32 0, i32 4
  store i8* %549, i8** %551, align 8
  br label %552

552:                                              ; preds = %547, %536
  br label %553

553:                                              ; preds = %552, %521, %514
  store i32 0, i32* %2, align 4
  br label %554

554:                                              ; preds = %553, %534, %490, %424, %391, %290, %164
  %555 = load i32, i32* %2, align 4
  ret i32 %555
}

declare dso_local %struct.TYPE_30__* @av_dict_get(i32, i8*, i32*, i32) #1

declare dso_local i64 @rtp_hinting_needed(%struct.TYPE_28__*) #1

declare dso_local i32 @mov_create_dvd_sub_decoder_specific_info(%struct.TYPE_26__*, %struct.TYPE_28__*) #1

declare dso_local i32 @TAG_IS_AVCI(i64) #1

declare dso_local i64 @av_malloc(i64) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memcpy(i64, i32, i64) #1

declare dso_local i32 @memset(i64, i32, i64) #1

declare dso_local i32 @mov_write_identification(i32*, %struct.TYPE_29__*) #1

declare dso_local i8* @avio_tell(i32*) #1

declare dso_local i32 @avio_skip(i32*, i64) #1

declare dso_local i32 @mov_write_mdat_tag(i32*, %struct.TYPE_27__*) #1

declare dso_local i32 @ff_parse_creation_time_metadata(%struct.TYPE_29__*, i64*, i32) #1

declare dso_local i32 @mov_create_chapter_track(%struct.TYPE_29__*, i64) #1

declare dso_local i32 @ff_mov_init_hinting(%struct.TYPE_29__*, i32, i32) #1

declare dso_local i64 @mov_check_timecode_track(%struct.TYPE_29__*, i32*, i32, i32) #1

declare dso_local i32 @mov_create_timecode_track(%struct.TYPE_29__*, i32, i32, i32) #1

declare dso_local i32 @avio_flush(i32*) #1

declare dso_local i32 @mov_write_isml_manifest(i32*, %struct.TYPE_27__*, %struct.TYPE_29__*) #1

declare dso_local i32 @mov_write_moov_tag(i32*, %struct.TYPE_27__*, %struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
