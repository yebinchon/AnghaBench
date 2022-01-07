; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggdec.c_ogg_read_page.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggdec.c_ogg_read_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.ogg*, %struct.TYPE_15__* }
%struct.ogg = type { i32, %struct.ogg_stream* }
%struct.ogg_stream = type { i32, i64, i8*, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i64 }
%struct.TYPE_15__ = type { i32 }

@AVERROR_EOF = common dso_local global i32 0, align 4
@AVIO_SEEKABLE_NORMAL = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@MAX_PAGE_SIZE = common dso_local global i32 0, align 4
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"cannot find sync word\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"ogg page, unsupported version\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"failed to create or replace stream\0A\00", align 1
@OGG_FLAG_BOS = common dso_local global i32 0, align 4
@OGG_FLAG_CONT = common dso_local global i32 0, align 4
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32*)* @ogg_read_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ogg_read_page(%struct.TYPE_16__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.ogg*, align 8
  %8 = alloca %struct.ogg_stream*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [4 x i8], align 1
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32* %1, i32** %5, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  store %struct.TYPE_15__* %24, %struct.TYPE_15__** %6, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load %struct.ogg*, %struct.ogg** %26, align 8
  store %struct.ogg* %27, %struct.ogg** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %18, align 4
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %29 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 0
  %30 = call i32 @avio_read(%struct.TYPE_15__* %28, i8* %29, i32 4)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 4
  br i1 %32, label %33, label %42

33:                                               ; preds = %2
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* %9, align 4
  br label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @AVERROR_EOF, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  store i32 %41, i32* %3, align 4
  br label %412

42:                                               ; preds = %2
  br label %43

43:                                               ; preds = %122, %42
  %44 = load i32, i32* %18, align 4
  %45 = and i32 %44, 3
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 79
  br i1 %50, label %51, label %79

51:                                               ; preds = %43
  %52 = load i32, i32* %18, align 4
  %53 = add nsw i32 %52, 1
  %54 = and i32 %53, 3
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 103
  br i1 %59, label %60, label %79

60:                                               ; preds = %51
  %61 = load i32, i32* %18, align 4
  %62 = add nsw i32 %61, 2
  %63 = and i32 %62, 3
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 103
  br i1 %68, label %69, label %79

69:                                               ; preds = %60
  %70 = load i32, i32* %18, align 4
  %71 = add nsw i32 %70, 3
  %72 = and i32 %71, 3
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 83
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  br label %127

79:                                               ; preds = %69, %60, %51, %43
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %106, label %82

82:                                               ; preds = %79
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @AVIO_SEEKABLE_NORMAL, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %106

89:                                               ; preds = %82
  %90 = load %struct.ogg*, %struct.ogg** %7, align 8
  %91 = getelementptr inbounds %struct.ogg, %struct.ogg* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %89
  %95 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 0
  %96 = call i32 @memset(i8* %95, i32 0, i32 4)
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %98 = load %struct.ogg*, %struct.ogg** %7, align 8
  %99 = getelementptr inbounds %struct.ogg, %struct.ogg* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = add nsw i32 %100, 4
  %102 = load i32, i32* @SEEK_SET, align 4
  %103 = call i32 @avio_seek(%struct.TYPE_15__* %97, i32 %101, i32 %102)
  %104 = load %struct.ogg*, %struct.ogg** %7, align 8
  %105 = getelementptr inbounds %struct.ogg, %struct.ogg* %104, i32 0, i32 0
  store i32 -1, i32* %105, align 8
  br label %106

106:                                              ; preds = %94, %89, %82, %79
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %108 = call i32 @avio_r8(%struct.TYPE_15__* %107)
  store i32 %108, i32* %19, align 4
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %110 = call i64 @avio_feof(%struct.TYPE_15__* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %113, i32* %3, align 4
  br label %412

114:                                              ; preds = %106
  %115 = load i32, i32* %19, align 4
  %116 = trunc i32 %115 to i8
  %117 = load i32, i32* %18, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %18, align 4
  %119 = and i32 %117, 3
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 %120
  store i8 %116, i8* %121, align 1
  br label %122

122:                                              ; preds = %114
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* @MAX_PAGE_SIZE, align 4
  %126 = icmp slt i32 %123, %125
  br i1 %126, label %43, label %127

127:                                              ; preds = %122, %78
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* @MAX_PAGE_SIZE, align 4
  %130 = icmp sge i32 %128, %129
  br i1 %130, label %131, label %136

131:                                              ; preds = %127
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %133 = load i32, i32* @AV_LOG_INFO, align 4
  %134 = call i32 @av_log(%struct.TYPE_16__* %132, i32 %133, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %135 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %135, i32* %3, align 4
  br label %412

136:                                              ; preds = %127
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %138 = call i32 @avio_r8(%struct.TYPE_15__* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %136
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %142 = load i32, i32* @AV_LOG_ERROR, align 4
  %143 = call i32 @av_log(%struct.TYPE_16__* %141, i32 %142, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %144 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %144, i32* %3, align 4
  br label %412

145:                                              ; preds = %136
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %147 = call i32 @avio_r8(%struct.TYPE_15__* %146)
  store i32 %147, i32* %11, align 4
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %149 = call i32 @avio_rl64(%struct.TYPE_15__* %148)
  store i32 %149, i32* %13, align 4
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %151 = call i32 @avio_rl32(%struct.TYPE_15__* %150)
  store i32 %151, i32* %14, align 4
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %153 = call i32 @avio_skip(%struct.TYPE_15__* %152, i32 8)
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %155 = call i32 @avio_r8(%struct.TYPE_15__* %154)
  store i32 %155, i32* %12, align 4
  %156 = load %struct.ogg*, %struct.ogg** %7, align 8
  %157 = load i32, i32* %14, align 4
  %158 = call i32 @ogg_find_stream(%struct.ogg* %156, i32 %157)
  store i32 %158, i32* %16, align 4
  %159 = load i32, i32* %16, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %183

161:                                              ; preds = %145
  %162 = load %struct.ogg*, %struct.ogg** %7, align 8
  %163 = call i64 @data_packets_seen(%struct.ogg* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %161
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %167 = load i32, i32* %14, align 4
  %168 = load i32, i32* %12, align 4
  %169 = call i32 @ogg_replace_stream(%struct.TYPE_16__* %166, i32 %167, i32 %168)
  store i32 %169, i32* %16, align 4
  br label %174

170:                                              ; preds = %161
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %172 = load i32, i32* %14, align 4
  %173 = call i32 @ogg_new_stream(%struct.TYPE_16__* %171, i32 %172)
  store i32 %173, i32* %16, align 4
  br label %174

174:                                              ; preds = %170, %165
  %175 = load i32, i32* %16, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %174
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %179 = load i32, i32* @AV_LOG_ERROR, align 4
  %180 = call i32 @av_log(%struct.TYPE_16__* %178, i32 %179, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %181 = load i32, i32* %16, align 4
  store i32 %181, i32* %3, align 4
  br label %412

182:                                              ; preds = %174
  br label %183

183:                                              ; preds = %182, %145
  %184 = load %struct.ogg*, %struct.ogg** %7, align 8
  %185 = getelementptr inbounds %struct.ogg, %struct.ogg* %184, i32 0, i32 1
  %186 = load %struct.ogg_stream*, %struct.ogg_stream** %185, align 8
  %187 = load i32, i32* %16, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %186, i64 %188
  store %struct.ogg_stream* %189, %struct.ogg_stream** %8, align 8
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %191 = call i32 @avio_tell(%struct.TYPE_15__* %190)
  %192 = sub nsw i32 %191, 27
  %193 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %194 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %193, i32 0, i32 0
  store i32 %192, i32* %194, align 8
  %195 = load %struct.ogg*, %struct.ogg** %7, align 8
  %196 = getelementptr inbounds %struct.ogg, %struct.ogg* %195, i32 0, i32 0
  store i32 %192, i32* %196, align 8
  %197 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %198 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = icmp sgt i64 %199, 0
  br i1 %200, label %201, label %210

201:                                              ; preds = %183
  %202 = load %struct.ogg*, %struct.ogg** %7, align 8
  %203 = load i32, i32* %16, align 4
  %204 = call i32 @ogg_new_buf(%struct.ogg* %202, i32 %203)
  store i32 %204, i32* %9, align 4
  %205 = load i32, i32* %9, align 4
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %201
  %208 = load i32, i32* %9, align 4
  store i32 %208, i32* %3, align 4
  br label %412

209:                                              ; preds = %201
  br label %210

210:                                              ; preds = %209, %183
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %212 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %213 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %212, i32 0, i32 2
  %214 = load i8*, i8** %213, align 8
  %215 = load i32, i32* %12, align 4
  %216 = call i32 @avio_read(%struct.TYPE_15__* %211, i8* %214, i32 %215)
  store i32 %216, i32* %9, align 4
  %217 = load i32, i32* %9, align 4
  %218 = load i32, i32* %12, align 4
  %219 = icmp slt i32 %217, %218
  br i1 %219, label %220, label %229

220:                                              ; preds = %210
  %221 = load i32, i32* %9, align 4
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %220
  %224 = load i32, i32* %9, align 4
  br label %227

225:                                              ; preds = %220
  %226 = load i32, i32* @AVERROR_EOF, align 4
  br label %227

227:                                              ; preds = %225, %223
  %228 = phi i32 [ %224, %223 ], [ %226, %225 ]
  store i32 %228, i32* %3, align 4
  br label %412

229:                                              ; preds = %210
  %230 = load i32, i32* %12, align 4
  %231 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %232 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %231, i32 0, i32 3
  store i32 %230, i32* %232, align 8
  %233 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %234 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %233, i32 0, i32 4
  store i32 0, i32* %234, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %10, align 4
  br label %235

235:                                              ; preds = %250, %229
  %236 = load i32, i32* %10, align 4
  %237 = load i32, i32* %12, align 4
  %238 = icmp slt i32 %236, %237
  br i1 %238, label %239, label %253

239:                                              ; preds = %235
  %240 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %241 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %240, i32 0, i32 2
  %242 = load i8*, i8** %241, align 8
  %243 = load i32, i32* %10, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i8, i8* %242, i64 %244
  %246 = load i8, i8* %245, align 1
  %247 = sext i8 %246 to i32
  %248 = load i32, i32* %15, align 4
  %249 = add nsw i32 %248, %247
  store i32 %249, i32* %15, align 4
  br label %250

250:                                              ; preds = %239
  %251 = load i32, i32* %10, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %10, align 4
  br label %235

253:                                              ; preds = %235
  %254 = load i32, i32* %11, align 4
  %255 = load i32, i32* @OGG_FLAG_BOS, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %261, label %258

258:                                              ; preds = %253
  %259 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %260 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %259, i32 0, i32 5
  store i32 1, i32* %260, align 8
  br label %261

261:                                              ; preds = %258, %253
  %262 = load i32, i32* %11, align 4
  %263 = load i32, i32* @OGG_FLAG_CONT, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %271, label %266

266:                                              ; preds = %261
  %267 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %268 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %267, i32 0, i32 13
  %269 = load i64, i64* %268, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %313

271:                                              ; preds = %266, %261
  %272 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %273 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %272, i32 0, i32 1
  %274 = load i64, i64* %273, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %312, label %276

276:                                              ; preds = %271
  br label %277

277:                                              ; preds = %305, %276
  %278 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %279 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %278, i32 0, i32 4
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %282 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %281, i32 0, i32 3
  %283 = load i32, i32* %282, align 8
  %284 = icmp slt i32 %280, %283
  br i1 %284, label %285, label %306

285:                                              ; preds = %277
  %286 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %287 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %286, i32 0, i32 2
  %288 = load i8*, i8** %287, align 8
  %289 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %290 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %289, i32 0, i32 4
  %291 = load i32, i32* %290, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %290, align 4
  %293 = sext i32 %291 to i64
  %294 = getelementptr inbounds i8, i8* %288, i64 %293
  %295 = load i8, i8* %294, align 1
  %296 = sext i8 %295 to i32
  store i32 %296, i32* %20, align 4
  %297 = load i32, i32* %20, align 4
  %298 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %299 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %298, i32 0, i32 6
  %300 = load i32, i32* %299, align 4
  %301 = add nsw i32 %300, %297
  store i32 %301, i32* %299, align 4
  %302 = load i32, i32* %20, align 4
  %303 = icmp slt i32 %302, 255
  br i1 %303, label %304, label %305

304:                                              ; preds = %285
  br label %306

305:                                              ; preds = %285
  br label %277

306:                                              ; preds = %304, %277
  %307 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %308 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %311 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %310, i32 0, i32 7
  store i32 %309, i32* %311, align 8
  br label %312

312:                                              ; preds = %306, %271
  br label %321

313:                                              ; preds = %266
  %314 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %315 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %314, i32 0, i32 1
  store i64 0, i64* %315, align 8
  %316 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %317 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %320 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %319, i32 0, i32 7
  store i32 %318, i32* %320, align 8
  br label %321

321:                                              ; preds = %313, %312
  %322 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %323 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %322, i32 0, i32 8
  %324 = load i32, i32* %323, align 4
  %325 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %326 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %325, i32 0, i32 9
  %327 = load i32, i32* %326, align 8
  %328 = sub nsw i32 %324, %327
  %329 = load i32, i32* %15, align 4
  %330 = icmp slt i32 %328, %329
  br i1 %330, label %331, label %360

331:                                              ; preds = %321
  %332 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %333 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %332, i32 0, i32 8
  %334 = load i32, i32* %333, align 4
  %335 = mul nsw i32 %334, 2
  store i32 %335, i32* %333, align 4
  %336 = load i32, i32* @AV_INPUT_BUFFER_PADDING_SIZE, align 4
  %337 = add nsw i32 %335, %336
  %338 = call i8* @av_malloc(i32 %337)
  store i8* %338, i8** %21, align 8
  %339 = load i8*, i8** %21, align 8
  %340 = icmp ne i8* %339, null
  br i1 %340, label %344, label %341

341:                                              ; preds = %331
  %342 = load i32, i32* @ENOMEM, align 4
  %343 = call i32 @AVERROR(i32 %342)
  store i32 %343, i32* %3, align 4
  br label %412

344:                                              ; preds = %331
  %345 = load i8*, i8** %21, align 8
  %346 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %347 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %346, i32 0, i32 10
  %348 = load i8*, i8** %347, align 8
  %349 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %350 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %349, i32 0, i32 9
  %351 = load i32, i32* %350, align 8
  %352 = call i32 @memcpy(i8* %345, i8* %348, i32 %351)
  %353 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %354 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %353, i32 0, i32 10
  %355 = load i8*, i8** %354, align 8
  %356 = call i32 @av_free(i8* %355)
  %357 = load i8*, i8** %21, align 8
  %358 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %359 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %358, i32 0, i32 10
  store i8* %357, i8** %359, align 8
  br label %360

360:                                              ; preds = %344, %321
  %361 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %362 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %363 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %362, i32 0, i32 10
  %364 = load i8*, i8** %363, align 8
  %365 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %366 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %365, i32 0, i32 9
  %367 = load i32, i32* %366, align 8
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i8, i8* %364, i64 %368
  %370 = load i32, i32* %15, align 4
  %371 = call i32 @avio_read(%struct.TYPE_15__* %361, i8* %369, i32 %370)
  store i32 %371, i32* %9, align 4
  %372 = load i32, i32* %9, align 4
  %373 = load i32, i32* %15, align 4
  %374 = icmp slt i32 %372, %373
  br i1 %374, label %375, label %384

375:                                              ; preds = %360
  %376 = load i32, i32* %9, align 4
  %377 = icmp slt i32 %376, 0
  br i1 %377, label %378, label %380

378:                                              ; preds = %375
  %379 = load i32, i32* %9, align 4
  br label %382

380:                                              ; preds = %375
  %381 = load i32, i32* @AVERROR_EOF, align 4
  br label %382

382:                                              ; preds = %380, %378
  %383 = phi i32 [ %379, %378 ], [ %381, %380 ]
  store i32 %383, i32* %3, align 4
  br label %412

384:                                              ; preds = %360
  %385 = load i32, i32* %15, align 4
  %386 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %387 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %386, i32 0, i32 9
  %388 = load i32, i32* %387, align 8
  %389 = add nsw i32 %388, %385
  store i32 %389, i32* %387, align 8
  %390 = load i32, i32* %13, align 4
  %391 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %392 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %391, i32 0, i32 12
  store i32 %390, i32* %392, align 4
  %393 = load i32, i32* %11, align 4
  %394 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %395 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %394, i32 0, i32 11
  store i32 %393, i32* %395, align 8
  %396 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %397 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %396, i32 0, i32 10
  %398 = load i8*, i8** %397, align 8
  %399 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %400 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %399, i32 0, i32 9
  %401 = load i32, i32* %400, align 8
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i8, i8* %398, i64 %402
  %404 = load i32, i32* @AV_INPUT_BUFFER_PADDING_SIZE, align 4
  %405 = call i32 @memset(i8* %403, i32 0, i32 %404)
  %406 = load i32*, i32** %5, align 8
  %407 = icmp ne i32* %406, null
  br i1 %407, label %408, label %411

408:                                              ; preds = %384
  %409 = load i32, i32* %16, align 4
  %410 = load i32*, i32** %5, align 8
  store i32 %409, i32* %410, align 4
  br label %411

411:                                              ; preds = %408, %384
  store i32 0, i32* %3, align 4
  br label %412

412:                                              ; preds = %411, %382, %341, %227, %207, %177, %140, %131, %112, %40
  %413 = load i32, i32* %3, align 4
  ret i32 %413
}

declare dso_local i32 @avio_read(%struct.TYPE_15__*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @avio_seek(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @avio_r8(%struct.TYPE_15__*) #1

declare dso_local i64 @avio_feof(%struct.TYPE_15__*) #1

declare dso_local i32 @av_log(%struct.TYPE_16__*, i32, i8*) #1

declare dso_local i32 @avio_rl64(%struct.TYPE_15__*) #1

declare dso_local i32 @avio_rl32(%struct.TYPE_15__*) #1

declare dso_local i32 @avio_skip(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @ogg_find_stream(%struct.ogg*, i32) #1

declare dso_local i64 @data_packets_seen(%struct.ogg*) #1

declare dso_local i32 @ogg_replace_stream(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @ogg_new_stream(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @avio_tell(%struct.TYPE_15__*) #1

declare dso_local i32 @ogg_new_buf(%struct.ogg*, i32) #1

declare dso_local i8* @av_malloc(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @av_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
