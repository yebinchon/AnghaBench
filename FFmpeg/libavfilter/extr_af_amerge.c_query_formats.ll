; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_amerge.c_query_formats.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_amerge.c_query_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__**, %struct.TYPE_13__**, %struct.TYPE_16__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_16__ = type { i32, i32*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@SWR_CH_MAX = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"No channel layout for input %d\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Using \22%s\22 for input %d\0A\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Too many channels (max %d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [106 x i8] c"Input channel layouts overlap: output layout will be determined by the number of distinct input channels\0A\00", align 1
@ff_packed_sample_fmts_array = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @query_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_formats(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [256 x i8], align 16
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  store %struct.TYPE_16__* %22, %struct.TYPE_16__** %4, align 8
  %23 = load i32, i32* @SWR_CH_MAX, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %5, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %173, %1
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %176

33:                                               ; preds = %27
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %36, i64 %38
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = icmp ne %struct.TYPE_11__* %42, null
  br i1 %43, label %44, label %57

44:                                               ; preds = %33
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %47, i64 %49
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %44, %33
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %59 = load i32, i32* @AV_LOG_WARNING, align 4
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  %62 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %58, i32 %59, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @EAGAIN, align 4
  %64 = call i32 @AVERROR(i32 %63)
  store i32 %64, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %365

65:                                               ; preds = %44
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %68, i64 %70
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %26, i64 %80
  store i32 %78, i32* %81, align 4
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %84, i64 %86
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp sgt i32 %92, 1
  br i1 %93, label %94, label %107

94:                                               ; preds = %65
  %95 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %26, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @av_get_channel_layout_string(i8* %95, i32 256, i32 0, i32 %99)
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %102 = load i32, i32* @AV_LOG_INFO, align 4
  %103 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 1
  %106 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %101, i32 %102, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %103, i32 %105)
  br label %107

107:                                              ; preds = %94, %65
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %26, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @FF_LAYOUT2COUNT(i32 %111)
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %114, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  store i32 %112, i32* %119, align 4
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %121, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %107
  %130 = load i32, i32* %12, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %12, align 4
  br label %162

132:                                              ; preds = %107
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %26, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @av_get_channel_layout_nb_channels(i32 %136)
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 2
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %139, align 8
  %141 = load i32, i32* %10, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 0
  store i32 %137, i32* %144, align 4
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* %10, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %26, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = and i32 %145, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %132
  %153 = load i32, i32* %12, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %12, align 4
  br label %155

155:                                              ; preds = %152, %132
  %156 = load i32, i32* %10, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %26, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %7, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %7, align 4
  br label %162

162:                                              ; preds = %155, %129
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 2
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %164, align 8
  %166 = load i32, i32* %10, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %13, align 4
  %172 = add nsw i32 %171, %170
  store i32 %172, i32* %13, align 4
  br label %173

173:                                              ; preds = %162
  %174 = load i32, i32* %10, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %10, align 4
  br label %27

176:                                              ; preds = %27
  %177 = load i32, i32* %13, align 4
  %178 = load i32, i32* @SWR_CH_MAX, align 4
  %179 = icmp sgt i32 %177, %178
  br i1 %179, label %180, label %187

180:                                              ; preds = %176
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %182 = load i32, i32* @AV_LOG_ERROR, align 4
  %183 = load i32, i32* @SWR_CH_MAX, align 4
  %184 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %181, i32 %182, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %183)
  %185 = load i32, i32* @EINVAL, align 4
  %186 = call i32 @AVERROR(i32 %185)
  store i32 %186, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %365

187:                                              ; preds = %176
  %188 = load i32, i32* %12, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %224

190:                                              ; preds = %187
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %192 = load i32, i32* @AV_LOG_WARNING, align 4
  %193 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %191, i32 %192, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %194

194:                                              ; preds = %206, %190
  %195 = load i32, i32* %10, align 4
  %196 = load i32, i32* %13, align 4
  %197 = icmp slt i32 %195, %196
  br i1 %197, label %198, label %209

198:                                              ; preds = %194
  %199 = load i32, i32* %10, align 4
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 1
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %10, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  store i32 %199, i32* %205, align 4
  br label %206

206:                                              ; preds = %198
  %207 = load i32, i32* %10, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %10, align 4
  br label %194

209:                                              ; preds = %194
  %210 = load i32, i32* %13, align 4
  %211 = call i32 @av_get_default_channel_layout(i32 %210)
  store i32 %211, i32* %7, align 4
  %212 = load i32, i32* %7, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %223, label %214

214:                                              ; preds = %209
  %215 = load i32, i32* %13, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %214
  %218 = load i32, i32* %13, align 4
  %219 = sub nsw i32 64, %218
  %220 = zext i32 %219 to i64
  %221 = lshr i64 -1, %220
  %222 = trunc i64 %221 to i32
  store i32 %222, i32* %7, align 4
  br label %223

223:                                              ; preds = %217, %214, %209
  br label %300

224:                                              ; preds = %187
  %225 = load i32, i32* @SWR_CH_MAX, align 4
  %226 = zext i32 %225 to i64
  %227 = call i8* @llvm.stacksave()
  store i8* %227, i8** %16, align 8
  %228 = alloca i32*, i64 %226, align 16
  store i64 %226, i64* %17, align 8
  store i32 0, i32* %19, align 4
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %229, i32 0, i32 1
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32*, i32** %228, i64 0
  store i32* %231, i32** %232, align 16
  store i32 1, i32* %10, align 4
  br label %233

233:                                              ; preds = %259, %224
  %234 = load i32, i32* %10, align 4
  %235 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = icmp slt i32 %234, %237
  br i1 %238, label %239, label %262

239:                                              ; preds = %233
  %240 = load i32, i32* %10, align 4
  %241 = sub nsw i32 %240, 1
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32*, i32** %228, i64 %242
  %244 = load i32*, i32** %243, align 8
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %245, i32 0, i32 2
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** %246, align 8
  %248 = load i32, i32* %10, align 4
  %249 = sub nsw i32 %248, 1
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %244, i64 %254
  %256 = load i32, i32* %10, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32*, i32** %228, i64 %257
  store i32* %255, i32** %258, align 8
  br label %259

259:                                              ; preds = %239
  %260 = load i32, i32* %10, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %10, align 4
  br label %233

262:                                              ; preds = %233
  store i32 0, i32* %18, align 4
  br label %263

263:                                              ; preds = %295, %262
  %264 = load i32, i32* %18, align 4
  %265 = icmp slt i32 %264, 64
  br i1 %265, label %266, label %298

266:                                              ; preds = %263
  store i32 0, i32* %10, align 4
  br label %267

267:                                              ; preds = %291, %266
  %268 = load i32, i32* %10, align 4
  %269 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = icmp slt i32 %268, %271
  br i1 %272, label %273, label %294

273:                                              ; preds = %267
  %274 = load i32, i32* %10, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %26, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* %18, align 4
  %279 = ashr i32 %277, %278
  %280 = and i32 %279, 1
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %290

282:                                              ; preds = %273
  %283 = load i32, i32* %19, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %19, align 4
  %285 = load i32, i32* %10, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32*, i32** %228, i64 %286
  %288 = load i32*, i32** %287, align 8
  %289 = getelementptr inbounds i32, i32* %288, i32 1
  store i32* %289, i32** %287, align 8
  store i32 %283, i32* %288, align 4
  br label %290

290:                                              ; preds = %282, %273
  br label %291

291:                                              ; preds = %290
  %292 = load i32, i32* %10, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %10, align 4
  br label %267

294:                                              ; preds = %267
  br label %295

295:                                              ; preds = %294
  %296 = load i32, i32* %18, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %18, align 4
  br label %263

298:                                              ; preds = %263
  %299 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %299)
  br label %300

300:                                              ; preds = %298, %223
  %301 = load i32, i32* @ff_packed_sample_fmts_array, align 4
  %302 = call i32* @ff_make_format_list(i32 %301)
  store i32* %302, i32** %8, align 8
  %303 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %304 = load i32*, i32** %8, align 8
  %305 = call i32 @ff_set_common_formats(%struct.TYPE_15__* %303, i32* %304)
  store i32 %305, i32* %11, align 4
  %306 = icmp slt i32 %305, 0
  br i1 %306, label %307, label %309

307:                                              ; preds = %300
  %308 = load i32, i32* %11, align 4
  store i32 %308, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %365

309:                                              ; preds = %300
  store i32 0, i32* %10, align 4
  br label %310

310:                                              ; preds = %340, %309
  %311 = load i32, i32* %10, align 4
  %312 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %313 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = icmp slt i32 %311, %314
  br i1 %315, label %316, label %343

316:                                              ; preds = %310
  store i32* null, i32** %9, align 8
  %317 = load i32, i32* %10, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %26, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = call i32 @ff_add_channel_layout(i32** %9, i32 %320)
  store i32 %321, i32* %11, align 4
  %322 = icmp slt i32 %321, 0
  br i1 %322, label %323, label %325

323:                                              ; preds = %316
  %324 = load i32, i32* %11, align 4
  store i32 %324, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %365

325:                                              ; preds = %316
  %326 = load i32*, i32** %9, align 8
  %327 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %328 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %327, i32 0, i32 1
  %329 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %328, align 8
  %330 = load i32, i32* %10, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %329, i64 %331
  %333 = load %struct.TYPE_13__*, %struct.TYPE_13__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %333, i32 0, i32 0
  %335 = call i32 @ff_channel_layouts_ref(i32* %326, i32* %334)
  store i32 %335, i32* %11, align 4
  %336 = icmp slt i32 %335, 0
  br i1 %336, label %337, label %339

337:                                              ; preds = %325
  %338 = load i32, i32* %11, align 4
  store i32 %338, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %365

339:                                              ; preds = %325
  br label %340

340:                                              ; preds = %339
  %341 = load i32, i32* %10, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %10, align 4
  br label %310

343:                                              ; preds = %310
  store i32* null, i32** %9, align 8
  %344 = load i32, i32* %7, align 4
  %345 = call i32 @ff_add_channel_layout(i32** %9, i32 %344)
  store i32 %345, i32* %11, align 4
  %346 = icmp slt i32 %345, 0
  br i1 %346, label %347, label %349

347:                                              ; preds = %343
  %348 = load i32, i32* %11, align 4
  store i32 %348, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %365

349:                                              ; preds = %343
  %350 = load i32*, i32** %9, align 8
  %351 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %352 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %351, i32 0, i32 0
  %353 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %353, i64 0
  %355 = load %struct.TYPE_14__*, %struct.TYPE_14__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %355, i32 0, i32 0
  %357 = call i32 @ff_channel_layouts_ref(i32* %350, i32* %356)
  store i32 %357, i32* %11, align 4
  %358 = icmp slt i32 %357, 0
  br i1 %358, label %359, label %361

359:                                              ; preds = %349
  %360 = load i32, i32* %11, align 4
  store i32 %360, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %365

361:                                              ; preds = %349
  %362 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %363 = call i32 (...) @ff_all_samplerates()
  %364 = call i32 @ff_set_common_samplerates(%struct.TYPE_15__* %362, i32 %363)
  store i32 %364, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %365

365:                                              ; preds = %361, %359, %347, %337, %323, %307, %180, %57
  %366 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %366)
  %367 = load i32, i32* %2, align 4
  ret i32 %367
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @av_log(%struct.TYPE_15__*, i32, i8*, ...) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @av_get_channel_layout_string(i8*, i32, i32, i32) #2

declare dso_local i32 @FF_LAYOUT2COUNT(i32) #2

declare dso_local i32 @av_get_channel_layout_nb_channels(i32) #2

declare dso_local i32 @av_get_default_channel_layout(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32* @ff_make_format_list(i32) #2

declare dso_local i32 @ff_set_common_formats(%struct.TYPE_15__*, i32*) #2

declare dso_local i32 @ff_add_channel_layout(i32**, i32) #2

declare dso_local i32 @ff_channel_layouts_ref(i32*, i32*) #2

declare dso_local i32 @ff_set_common_samplerates(%struct.TYPE_15__*, i32) #2

declare dso_local i32 @ff_all_samplerates(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
