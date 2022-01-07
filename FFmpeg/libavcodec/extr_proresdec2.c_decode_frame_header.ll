; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_proresdec2.c_decode_frame_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_proresdec2.c_decode_frame_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_11__, i32, %struct.TYPE_10__*, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [16 x i8] c"header size %d\0A\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"error, wrong header size\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"%.4s version %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"unsupported version: %d\0A\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"picture resolution change: %dx%d -> %dx%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Invalid alpha mode %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"frame type %d\0A\00", align 1
@AV_PIX_FMT_YUVA444P10 = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUVA422P10 = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUVA444P12 = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUVA422P12 = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV444P10 = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV422P10 = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV444P12 = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV422P12 = common dso_local global i32 0, align 4
@AVCOL_RANGE_MPEG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"flags %x\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Header truncated\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32*, i32, %struct.TYPE_13__*)* @decode_frame_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_frame_header(%struct.TYPE_12__* %0, i32* %1, i32 %2, %struct.TYPE_13__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %9, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @AV_RB16(i32* %17)
  store i32 %18, i32* %10, align 4
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %20 = load i32, i32* %10, align 4
  %21 = call i32 (%struct.TYPE_13__*, i8*, ...) @ff_dlog(%struct.TYPE_13__* %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %4
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %27 = load i32, i32* @AV_LOG_ERROR, align 4
  %28 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @av_log(%struct.TYPE_13__* %26, i32 %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %29, i32* %5, align 4
  br label %327

30:                                               ; preds = %4
  %31 = load i32*, i32** %7, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = call i32 @AV_RB16(i32* %32)
  store i32 %33, i32* %14, align 4
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 4
  %37 = load i32, i32* %14, align 4
  %38 = call i32 (%struct.TYPE_13__*, i8*, ...) @ff_dlog(%struct.TYPE_13__* %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32* %36, i32 %37)
  %39 = load i32, i32* %14, align 4
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %41, label %47

41:                                               ; preds = %30
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %43 = load i32, i32* @AV_LOG_ERROR, align 4
  %44 = load i32, i32* %14, align 4
  %45 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @av_log(%struct.TYPE_13__* %42, i32 %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %46, i32* %5, align 4
  br label %327

47:                                               ; preds = %30
  %48 = load i32*, i32** %7, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 8
  %50 = call i32 @AV_RB16(i32* %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 10
  %53 = call i32 @AV_RB16(i32* %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %54, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %47
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %60, %63
  br i1 %64, label %65, label %85

65:                                               ; preds = %59, %47
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %67 = load i32, i32* @AV_LOG_WARNING, align 4
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %12, align 4
  %76 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @av_log(%struct.TYPE_13__* %66, i32 %67, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %70, i32 %73, i32 %74, i32 %75)
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @ff_set_dimensions(%struct.TYPE_13__* %77, i32 %78, i32 %79)
  store i32 %80, i32* %16, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %65
  %83 = load i32, i32* %16, align 4
  store i32 %83, i32* %5, align 4
  br label %327

84:                                               ; preds = %65
  br label %85

85:                                               ; preds = %84, %59
  %86 = load i32*, i32** %7, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 12
  %88 = load i32, i32* %87, align 4
  %89 = ashr i32 %88, 2
  %90 = and i32 %89, 3
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load i32*, i32** %7, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 17
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, 15
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp sgt i32 %101, 2
  br i1 %102, label %103, label %111

103:                                              ; preds = %85
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %105 = load i32, i32* @AV_LOG_ERROR, align 4
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @av_log(%struct.TYPE_13__* %104, i32 %105, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %110, i32* %5, align 4
  br label %327

111:                                              ; preds = %85
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 8
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 1
  store i32 0, i32* %118, align 4
  br label %119

119:                                              ; preds = %116, %111
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 (%struct.TYPE_13__*, i8*, ...) @ff_dlog(%struct.TYPE_13__* %120, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %123)
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %119
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 8
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 7
  store i32 %132, i32* %134, align 4
  br label %154

135:                                              ; preds = %119
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 7
  store i32 %138, i32* %140, align 4
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 5
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  store i32 1, i32* %144, align 4
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp eq i32 %147, 1
  %149 = zext i1 %148 to i32
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 5
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 1
  store i32 %149, i32* %153, align 4
  br label %154

154:                                              ; preds = %135, %129
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %193

159:                                              ; preds = %154
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = icmp eq i32 %162, 10
  br i1 %163, label %164, label %178

164:                                              ; preds = %159
  %165 = load i32*, i32** %7, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 12
  %167 = load i32, i32* %166, align 4
  %168 = and i32 %167, 192
  %169 = icmp eq i32 %168, 192
  br i1 %169, label %170, label %172

170:                                              ; preds = %164
  %171 = load i32, i32* @AV_PIX_FMT_YUVA444P10, align 4
  br label %174

172:                                              ; preds = %164
  %173 = load i32, i32* @AV_PIX_FMT_YUVA422P10, align 4
  br label %174

174:                                              ; preds = %172, %170
  %175 = phi i32 [ %171, %170 ], [ %173, %172 ]
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 7
  store i32 %175, i32* %177, align 4
  br label %192

178:                                              ; preds = %159
  %179 = load i32*, i32** %7, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 12
  %181 = load i32, i32* %180, align 4
  %182 = and i32 %181, 192
  %183 = icmp eq i32 %182, 192
  br i1 %183, label %184, label %186

184:                                              ; preds = %178
  %185 = load i32, i32* @AV_PIX_FMT_YUVA444P12, align 4
  br label %188

186:                                              ; preds = %178
  %187 = load i32, i32* @AV_PIX_FMT_YUVA422P12, align 4
  br label %188

188:                                              ; preds = %186, %184
  %189 = phi i32 [ %185, %184 ], [ %187, %186 ]
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 7
  store i32 %189, i32* %191, align 4
  br label %192

192:                                              ; preds = %188, %174
  br label %227

193:                                              ; preds = %154
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = icmp eq i32 %196, 10
  br i1 %197, label %198, label %212

198:                                              ; preds = %193
  %199 = load i32*, i32** %7, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 12
  %201 = load i32, i32* %200, align 4
  %202 = and i32 %201, 192
  %203 = icmp eq i32 %202, 192
  br i1 %203, label %204, label %206

204:                                              ; preds = %198
  %205 = load i32, i32* @AV_PIX_FMT_YUV444P10, align 4
  br label %208

206:                                              ; preds = %198
  %207 = load i32, i32* @AV_PIX_FMT_YUV422P10, align 4
  br label %208

208:                                              ; preds = %206, %204
  %209 = phi i32 [ %205, %204 ], [ %207, %206 ]
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 7
  store i32 %209, i32* %211, align 4
  br label %226

212:                                              ; preds = %193
  %213 = load i32*, i32** %7, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 12
  %215 = load i32, i32* %214, align 4
  %216 = and i32 %215, 192
  %217 = icmp eq i32 %216, 192
  br i1 %217, label %218, label %220

218:                                              ; preds = %212
  %219 = load i32, i32* @AV_PIX_FMT_YUV444P12, align 4
  br label %222

220:                                              ; preds = %212
  %221 = load i32, i32* @AV_PIX_FMT_YUV422P12, align 4
  br label %222

222:                                              ; preds = %220, %218
  %223 = phi i32 [ %219, %218 ], [ %221, %220 ]
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 7
  store i32 %223, i32* %225, align 4
  br label %226

226:                                              ; preds = %222, %208
  br label %227

227:                                              ; preds = %226, %192
  %228 = load i32*, i32** %7, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 14
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 3
  store i32 %230, i32* %232, align 4
  %233 = load i32*, i32** %7, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 15
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i32 0, i32 4
  store i32 %235, i32* %237, align 8
  %238 = load i32*, i32** %7, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 16
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i32 0, i32 5
  store i32 %240, i32* %242, align 4
  %243 = load i32, i32* @AVCOL_RANGE_MPEG, align 4
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 6
  store i32 %243, i32* %245, align 8
  %246 = load i32*, i32** %7, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 20
  store i32* %247, i32** %15, align 8
  %248 = load i32*, i32** %7, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 19
  %250 = load i32, i32* %249, align 4
  store i32 %250, i32* %13, align 4
  %251 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %252 = load i32, i32* %13, align 4
  %253 = call i32 (%struct.TYPE_13__*, i8*, ...) @ff_dlog(%struct.TYPE_13__* %251, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %252)
  %254 = load i32, i32* %13, align 4
  %255 = and i32 %254, 2
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %285

257:                                              ; preds = %227
  %258 = load i32*, i32** %7, align 8
  %259 = load i32, i32* %8, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %258, i64 %260
  %262 = load i32*, i32** %15, align 8
  %263 = ptrtoint i32* %261 to i64
  %264 = ptrtoint i32* %262 to i64
  %265 = sub i64 %263, %264
  %266 = sdiv exact i64 %265, 4
  %267 = icmp slt i64 %266, 64
  br i1 %267, label %268, label %273

268:                                              ; preds = %257
  %269 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %270 = load i32, i32* @AV_LOG_ERROR, align 4
  %271 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @av_log(%struct.TYPE_13__* %269, i32 %270, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %272 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %272, i32* %5, align 4
  br label %327

273:                                              ; preds = %257
  %274 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %274, i32 0, i32 4
  %276 = load i32, i32* %275, align 8
  %277 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i32 0, i32 3
  %279 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = load i32*, i32** %15, align 8
  %282 = call i32 @permute(i32 %276, i32 %280, i32* %281)
  %283 = load i32*, i32** %15, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 64
  store i32* %284, i32** %15, align 8
  br label %290

285:                                              ; preds = %227
  %286 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %286, i32 0, i32 4
  %288 = load i32, i32* %287, align 8
  %289 = call i32 @memset(i32 %288, i32 4, i32 64)
  br label %290

290:                                              ; preds = %285, %273
  %291 = load i32, i32* %13, align 4
  %292 = and i32 %291, 1
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %320

294:                                              ; preds = %290
  %295 = load i32*, i32** %7, align 8
  %296 = load i32, i32* %8, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %295, i64 %297
  %299 = load i32*, i32** %15, align 8
  %300 = ptrtoint i32* %298 to i64
  %301 = ptrtoint i32* %299 to i64
  %302 = sub i64 %300, %301
  %303 = sdiv exact i64 %302, 4
  %304 = icmp slt i64 %303, 64
  br i1 %304, label %305, label %310

305:                                              ; preds = %294
  %306 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %307 = load i32, i32* @AV_LOG_ERROR, align 4
  %308 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @av_log(%struct.TYPE_13__* %306, i32 %307, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %309 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %309, i32* %5, align 4
  br label %327

310:                                              ; preds = %294
  %311 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %312 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %311, i32 0, i32 2
  %313 = load i32, i32* %312, align 8
  %314 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %315 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %314, i32 0, i32 3
  %316 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = load i32*, i32** %15, align 8
  %319 = call i32 @permute(i32 %313, i32 %317, i32* %318)
  br label %325

320:                                              ; preds = %290
  %321 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %322 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 8
  %324 = call i32 @memset(i32 %323, i32 4, i32 64)
  br label %325

325:                                              ; preds = %320, %310
  %326 = load i32, i32* %10, align 4
  store i32 %326, i32* %5, align 4
  br label %327

327:                                              ; preds = %325, %305, %268, %103, %82, %41, %25
  %328 = load i32, i32* %5, align 4
  ret i32 %328
}

declare dso_local i32 @AV_RB16(i32*) #1

declare dso_local i32 @ff_dlog(%struct.TYPE_13__*, i8*, ...) #1

declare dso_local i32 @av_log(%struct.TYPE_13__*, i32, i8*, ...) #1

declare dso_local i32 @ff_set_dimensions(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @permute(i32, i32, i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
