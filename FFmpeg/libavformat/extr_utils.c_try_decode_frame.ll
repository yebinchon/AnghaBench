; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_try_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_try_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i8* }
%struct.TYPE_27__ = type { i32, i32, %struct.TYPE_26__*, %struct.TYPE_25__*, %struct.TYPE_24__* }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i32, i32, i64, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_28__ = type { i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"threads\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"codec_whitelist\00", align 1
@AVDISCARD_ALL = common dso_local global i32 0, align 4
@AV_CODEC_CAP_CHANNEL_CONF = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@AVMEDIA_TYPE_AUDIO = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_SUBTITLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_29__*, %struct.TYPE_27__*, %struct.TYPE_28__*, i32**)* @try_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_decode_frame(%struct.TYPE_29__* %0, %struct.TYPE_27__* %1, %struct.TYPE_28__* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca %struct.TYPE_30__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_28__, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %6, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %7, align 8
  store %struct.TYPE_28__* %2, %struct.TYPE_28__** %8, align 8
  store i32** %3, i32*** %9, align 8
  %20 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 4
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_30__*, %struct.TYPE_30__** %23, align 8
  store %struct.TYPE_30__* %24, %struct.TYPE_30__** %10, align 8
  store i32 1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %25 = call i32* (...) @av_frame_alloc()
  store i32* %25, i32** %14, align 8
  %26 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %27 = bitcast %struct.TYPE_28__* %16 to i8*
  %28 = bitcast %struct.TYPE_28__* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 16, i1 false)
  store i32 0, i32* %17, align 4
  %29 = load i32*, i32** %14, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %4
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = call i32 @AVERROR(i32 %32)
  store i32 %33, i32* %5, align 4
  br label %319

34:                                               ; preds = %4
  %35 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %36 = call i32 @avcodec_is_open(%struct.TYPE_30__* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %144, label %38

38:                                               ; preds = %34
  %39 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_26__*, %struct.TYPE_26__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp sle i32 %43, 0
  br i1 %44, label %45, label %144

45:                                               ; preds = %38
  %46 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_26__*, %struct.TYPE_26__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 0, %55
  %57 = icmp ne i32 %50, %56
  br i1 %57, label %65, label %58

58:                                               ; preds = %45
  %59 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %144, label %65

65:                                               ; preds = %58, %45
  store i32* null, i32** %19, align 8
  %66 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %68 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32* @find_probe_decoder(%struct.TYPE_29__* %66, %struct.TYPE_27__* %67, i32 %72)
  store i32* %73, i32** %11, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %87, label %76

76:                                               ; preds = %65
  %77 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %77, i32 0, i32 3
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 0, %81
  %83 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_26__*, %struct.TYPE_26__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %85, i32 0, i32 0
  store i32 %82, i32* %86, align 4
  store i32 -1, i32* %13, align 4
  br label %309

87:                                               ; preds = %65
  %88 = load i32**, i32*** %9, align 8
  %89 = icmp ne i32** %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = load i32**, i32*** %9, align 8
  br label %93

92:                                               ; preds = %87
  br label %93

93:                                               ; preds = %92, %90
  %94 = phi i32** [ %91, %90 ], [ %19, %92 ]
  %95 = call i32 @av_dict_set(i32** %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %96 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %112

100:                                              ; preds = %93
  %101 = load i32**, i32*** %9, align 8
  %102 = icmp ne i32** %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = load i32**, i32*** %9, align 8
  br label %106

105:                                              ; preds = %100
  br label %106

106:                                              ; preds = %105, %103
  %107 = phi i32** [ %104, %103 ], [ %19, %105 ]
  %108 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @av_dict_set(i32** %107, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %110, i32 0)
  br label %112

112:                                              ; preds = %106, %93
  %113 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %114 = load i32*, i32** %11, align 8
  %115 = load i32**, i32*** %9, align 8
  %116 = icmp ne i32** %115, null
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  %118 = load i32**, i32*** %9, align 8
  br label %120

119:                                              ; preds = %112
  br label %120

120:                                              ; preds = %119, %117
  %121 = phi i32** [ %118, %117 ], [ %19, %119 ]
  %122 = call i32 @avcodec_open2(%struct.TYPE_30__* %113, i32* %114, i32** %121)
  store i32 %122, i32* %13, align 4
  %123 = load i32**, i32*** %9, align 8
  %124 = icmp ne i32** %123, null
  br i1 %124, label %127, label %125

125:                                              ; preds = %120
  %126 = call i32 @av_dict_free(i32** %19)
  br label %127

127:                                              ; preds = %125, %120
  %128 = load i32, i32* %13, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %127
  %131 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sub nsw i32 0, %133
  %135 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %137, i32 0, i32 0
  store i32 %134, i32* %138, align 4
  br label %309

139:                                              ; preds = %127
  %140 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_26__*, %struct.TYPE_26__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %142, i32 0, i32 0
  store i32 1, i32* %143, align 4
  br label %157

144:                                              ; preds = %58, %38, %34
  %145 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_26__*, %struct.TYPE_26__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %156, label %151

151:                                              ; preds = %144
  %152 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %152, i32 0, i32 2
  %154 = load %struct.TYPE_26__*, %struct.TYPE_26__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %154, i32 0, i32 0
  store i32 1, i32* %155, align 4
  br label %156

156:                                              ; preds = %151, %144
  br label %157

157:                                              ; preds = %156, %139
  %158 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %158, i32 0, i32 2
  %160 = load %struct.TYPE_26__*, %struct.TYPE_26__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %157
  store i32 -1, i32* %13, align 4
  br label %309

165:                                              ; preds = %157
  %166 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %166, i32 0, i32 3
  %168 = load %struct.TYPE_23__*, %struct.TYPE_23__** %167, align 8
  %169 = call i64 @avpriv_codec_get_cap_skip_frame_fill_param(%struct.TYPE_23__* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %165
  store i32 1, i32* %17, align 4
  %172 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  store i32 %174, i32* %18, align 4
  %175 = load i32, i32* @AVDISCARD_ALL, align 4
  %176 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 4
  br label %178

178:                                              ; preds = %171, %165
  br label %179

179:                                              ; preds = %299, %178
  %180 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %16, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = icmp sgt i64 %181, 0
  br i1 %182, label %190, label %183

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %16, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %219, label %187

187:                                              ; preds = %183
  %188 = load i32, i32* %12, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %219

190:                                              ; preds = %187, %179
  %191 = load i32, i32* %13, align 4
  %192 = icmp sge i32 %191, 0
  br i1 %192, label %193, label %219

193:                                              ; preds = %190
  %194 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %195 = call i32 @has_codec_parameters(%struct.TYPE_27__* %194, i32* null)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %217

197:                                              ; preds = %193
  %198 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %199 = call i32 @has_decode_delay_been_guessed(%struct.TYPE_27__* %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %217

201:                                              ; preds = %197
  %202 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %215, label %206

206:                                              ; preds = %201
  %207 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %208 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %207, i32 0, i32 3
  %209 = load %struct.TYPE_23__*, %struct.TYPE_23__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @AV_CODEC_CAP_CHANNEL_CONF, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br label %215

215:                                              ; preds = %206, %201
  %216 = phi i1 [ false, %201 ], [ %214, %206 ]
  br label %217

217:                                              ; preds = %215, %197, %193
  %218 = phi i1 [ true, %197 ], [ true, %193 ], [ %216, %215 ]
  br label %219

219:                                              ; preds = %217, %190, %187, %183
  %220 = phi i1 [ false, %190 ], [ false, %187 ], [ false, %183 ], [ %218, %217 ]
  br i1 %220, label %221, label %300

221:                                              ; preds = %219
  store i32 0, i32* %12, align 4
  %222 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %223 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %222, i32 0, i32 2
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %233, label %227

227:                                              ; preds = %221
  %228 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %229 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %228, i32 0, i32 2
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %271

233:                                              ; preds = %227, %221
  %234 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %235 = call i32 @avcodec_send_packet(%struct.TYPE_30__* %234, %struct.TYPE_28__* %16)
  store i32 %235, i32* %13, align 4
  %236 = load i32, i32* %13, align 4
  %237 = icmp slt i32 %236, 0
  br i1 %237, label %238, label %248

238:                                              ; preds = %233
  %239 = load i32, i32* %13, align 4
  %240 = load i32, i32* @EAGAIN, align 4
  %241 = call i32 @AVERROR(i32 %240)
  %242 = icmp ne i32 %239, %241
  br i1 %242, label %243, label %248

243:                                              ; preds = %238
  %244 = load i32, i32* %13, align 4
  %245 = load i32, i32* @AVERROR_EOF, align 4
  %246 = icmp ne i32 %244, %245
  br i1 %246, label %247, label %248

247:                                              ; preds = %243
  br label %300

248:                                              ; preds = %243, %238, %233
  %249 = load i32, i32* %13, align 4
  %250 = icmp sge i32 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %248
  %252 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %16, i32 0, i32 0
  store i64 0, i64* %252, align 8
  br label %253

253:                                              ; preds = %251, %248
  %254 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %255 = load i32*, i32** %14, align 8
  %256 = call i32 @avcodec_receive_frame(%struct.TYPE_30__* %254, i32* %255)
  store i32 %256, i32* %13, align 4
  %257 = load i32, i32* %13, align 4
  %258 = icmp sge i32 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %253
  store i32 1, i32* %12, align 4
  br label %260

260:                                              ; preds = %259, %253
  %261 = load i32, i32* %13, align 4
  %262 = load i32, i32* @EAGAIN, align 4
  %263 = call i32 @AVERROR(i32 %262)
  %264 = icmp eq i32 %261, %263
  br i1 %264, label %269, label %265

265:                                              ; preds = %260
  %266 = load i32, i32* %13, align 4
  %267 = load i32, i32* @AVERROR_EOF, align 4
  %268 = icmp eq i32 %266, %267
  br i1 %268, label %269, label %270

269:                                              ; preds = %265, %260
  store i32 0, i32* %13, align 4
  br label %270

270:                                              ; preds = %269, %265
  br label %286

271:                                              ; preds = %227
  %272 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %273 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %272, i32 0, i32 2
  %274 = load i64, i64* %273, align 8
  %275 = load i64, i64* @AVMEDIA_TYPE_SUBTITLE, align 8
  %276 = icmp eq i64 %274, %275
  br i1 %276, label %277, label %285

277:                                              ; preds = %271
  %278 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %279 = call i32 @avcodec_decode_subtitle2(%struct.TYPE_30__* %278, i32* %15, i32* %12, %struct.TYPE_28__* %16)
  store i32 %279, i32* %13, align 4
  %280 = load i32, i32* %13, align 4
  %281 = icmp sge i32 %280, 0
  br i1 %281, label %282, label %284

282:                                              ; preds = %277
  %283 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %16, i32 0, i32 0
  store i64 0, i64* %283, align 8
  br label %284

284:                                              ; preds = %282, %277
  br label %285

285:                                              ; preds = %284, %271
  br label %286

286:                                              ; preds = %285, %270
  %287 = load i32, i32* %13, align 4
  %288 = icmp sge i32 %287, 0
  br i1 %288, label %289, label %299

289:                                              ; preds = %286
  %290 = load i32, i32* %12, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %297

292:                                              ; preds = %289
  %293 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %294 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %294, align 8
  br label %297

297:                                              ; preds = %292, %289
  %298 = load i32, i32* %12, align 4
  store i32 %298, i32* %13, align 4
  br label %299

299:                                              ; preds = %297, %286
  br label %179

300:                                              ; preds = %247, %219
  %301 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %16, i32 0, i32 1
  %302 = load i32, i32* %301, align 8
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %308, label %304

304:                                              ; preds = %300
  %305 = load i32, i32* %12, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %308, label %307

307:                                              ; preds = %304
  store i32 -1, i32* %13, align 4
  br label %308

308:                                              ; preds = %307, %304, %300
  br label %309

309:                                              ; preds = %308, %164, %130, %76
  %310 = load i32, i32* %17, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %316

312:                                              ; preds = %309
  %313 = load i32, i32* %18, align 4
  %314 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %315 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %314, i32 0, i32 1
  store i32 %313, i32* %315, align 4
  br label %316

316:                                              ; preds = %312, %309
  %317 = call i32 @av_frame_free(i32** %14)
  %318 = load i32, i32* %13, align 4
  store i32 %318, i32* %5, align 4
  br label %319

319:                                              ; preds = %316, %31
  %320 = load i32, i32* %5, align 4
  ret i32 %320
}

declare dso_local i32* @av_frame_alloc(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avcodec_is_open(%struct.TYPE_30__*) #1

declare dso_local i32* @find_probe_decoder(%struct.TYPE_29__*, %struct.TYPE_27__*, i32) #1

declare dso_local i32 @av_dict_set(i32**, i8*, i8*, i32) #1

declare dso_local i32 @avcodec_open2(%struct.TYPE_30__*, i32*, i32**) #1

declare dso_local i32 @av_dict_free(i32**) #1

declare dso_local i64 @avpriv_codec_get_cap_skip_frame_fill_param(%struct.TYPE_23__*) #1

declare dso_local i32 @has_codec_parameters(%struct.TYPE_27__*, i32*) #1

declare dso_local i32 @has_decode_delay_been_guessed(%struct.TYPE_27__*) #1

declare dso_local i32 @avcodec_send_packet(%struct.TYPE_30__*, %struct.TYPE_28__*) #1

declare dso_local i32 @avcodec_receive_frame(%struct.TYPE_30__*, i32*) #1

declare dso_local i32 @avcodec_decode_subtitle2(%struct.TYPE_30__*, i32*, i32*, %struct.TYPE_28__*) #1

declare dso_local i32 @av_frame_free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
