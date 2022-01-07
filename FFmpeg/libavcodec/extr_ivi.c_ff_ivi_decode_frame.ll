; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ivi.c_ff_ivi_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ivi.c_ff_ivi_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32, i32 (%struct.TYPE_25__*, %struct.TYPE_28__*)*, i64, i32, i32, i32*, i64, i64, i64, i64, i64, i64, i64, i64, i8*, i32, i64, %struct.TYPE_23__*, i64 (%struct.TYPE_25__*)*, i32 (%struct.TYPE_25__*)*, i64, i32* }
%struct.TYPE_23__ = type { i32, i32, i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_26__ = type { i32, i32* }
%struct.TYPE_27__ = type { i32*, i32* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Error while decoding picture header: %d\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@IVI4_FRAMETYPE_NULL_LAST = common dso_local global i64 0, align 8
@IVI5_IS_PROTECTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Password-protected clip\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Color planes not initialized yet\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Error while decoding band: %d, plane: %d\0A\00", align 1
@IVI4_FRAMETYPE_INTRA = common dso_local global i64 0, align 8
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"This video uses scalability mode\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"This video uses local decoding\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"This video contains B-frames\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Transparency mode is enabled\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"This video uses Haar transform\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"This video uses fullpel motion vectors\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_ivi_decode_frame(%struct.TYPE_28__* %0, i8* %1, i32* %2, %struct.TYPE_26__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_27__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_26__, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_26__* %3, %struct.TYPE_26__** %9, align 8
  %19 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  store %struct.TYPE_25__* %21, %struct.TYPE_25__** %10, align 8
  %22 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %11, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = bitcast i8* %25 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %26, %struct.TYPE_27__** %12, align 8
  %27 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %13, align 4
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %30, i32 0, i32 15
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* %13, align 4
  %34 = call i32 @init_get_bits8(i32* %31, i32* %32, i32 %33)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %4
  %38 = load i32, i32* %14, align 4
  store i32 %38, i32* %5, align 4
  br label %494

39:                                               ; preds = %4
  %40 = load i32*, i32** %11, align 8
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %41, i32 0, i32 21
  store i32* %40, i32** %42, align 8
  %43 = load i32, i32* %13, align 4
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 1
  %48 = load i32 (%struct.TYPE_25__*, %struct.TYPE_28__*)*, i32 (%struct.TYPE_25__*, %struct.TYPE_28__*)** %47, align 8
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %50 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %51 = call i32 %48(%struct.TYPE_25__* %49, %struct.TYPE_28__* %50)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %39
  %55 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %56 = load i32, i32* @AV_LOG_ERROR, align 4
  %57 = load i32, i32* %14, align 4
  %58 = call i32 (%struct.TYPE_28__*, i32, i8*, ...) @av_log(%struct.TYPE_28__* %55, i32 %56, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %14, align 4
  store i32 %59, i32* %5, align 4
  br label %494

60:                                               ; preds = %39
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 20
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %66, i32* %5, align 4
  br label %494

67:                                               ; preds = %60
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 16
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %96

72:                                               ; preds = %67
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @IVI4_FRAMETYPE_NULL_LAST, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %96

78:                                               ; preds = %72
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %78
  %84 = load i8*, i8** %7, align 8
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 14
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @av_frame_move_ref(i8* %84, i8* %87)
  %89 = load i32*, i32** %8, align 8
  store i32 1, i32* %89, align 4
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %90, i32 0, i32 3
  store i32 0, i32* %91, align 8
  br label %94

92:                                               ; preds = %78
  %93 = load i32*, i32** %8, align 8
  store i32 0, i32* %93, align 4
  br label %94

94:                                               ; preds = %92, %83
  %95 = load i32, i32* %13, align 4
  store i32 %95, i32* %5, align 4
  br label %494

96:                                               ; preds = %72, %67
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @IVI5_IS_PROTECTED, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %96
  %104 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %105 = call i32 @avpriv_report_missing_feature(%struct.TYPE_28__* %104, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %106 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %106, i32* %5, align 4
  br label %494

107:                                              ; preds = %96
  %108 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %108, i32 0, i32 17
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i64 0
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 3
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %112, align 8
  %114 = icmp ne %struct.TYPE_24__* %113, null
  br i1 %114, label %120, label %115

115:                                              ; preds = %107
  %116 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %117 = load i32, i32* @AV_LOG_ERROR, align 4
  %118 = call i32 (%struct.TYPE_28__*, i32, i8*, ...) @av_log(%struct.TYPE_28__* %116, i32 %117, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %119 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %119, i32* %5, align 4
  br label %494

120:                                              ; preds = %107
  %121 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %121, i32 0, i32 19
  %123 = load i32 (%struct.TYPE_25__*)*, i32 (%struct.TYPE_25__*)** %122, align 8
  %124 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %125 = call i32 %123(%struct.TYPE_25__* %124)
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %126, i32 0, i32 18
  %128 = load i64 (%struct.TYPE_25__*)*, i64 (%struct.TYPE_25__*)** %127, align 8
  %129 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %130 = call i64 %128(%struct.TYPE_25__* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %195

132:                                              ; preds = %120
  %133 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %133, i32 0, i32 5
  %135 = load i32*, i32** %134, align 8
  %136 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %136, i32 0, i32 6
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds i32, i32* %135, i64 %138
  store i32 1, i32* %139, align 4
  store i32 0, i32* %15, align 4
  br label %140

140:                                              ; preds = %184, %132
  %141 = load i32, i32* %15, align 4
  %142 = icmp slt i32 %141, 3
  br i1 %142, label %143, label %187

143:                                              ; preds = %140
  store i32 0, i32* %16, align 4
  br label %144

144:                                              ; preds = %180, %143
  %145 = load i32, i32* %16, align 4
  %146 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %146, i32 0, i32 17
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %147, align 8
  %149 = load i32, i32* %15, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp slt i32 %145, %153
  br i1 %154, label %155, label %183

155:                                              ; preds = %144
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %157 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %157, i32 0, i32 17
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %158, align 8
  %160 = load i32, i32* %15, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i32 0, i32 3
  %164 = load %struct.TYPE_24__*, %struct.TYPE_24__** %163, align 8
  %165 = load i32, i32* %16, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %164, i64 %166
  %168 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %169 = call i32 @decode_band(%struct.TYPE_25__* %156, %struct.TYPE_24__* %167, %struct.TYPE_28__* %168)
  store i32 %169, i32* %14, align 4
  %170 = load i32, i32* %14, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %155
  %173 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %174 = load i32, i32* @AV_LOG_ERROR, align 4
  %175 = load i32, i32* %16, align 4
  %176 = load i32, i32* %15, align 4
  %177 = call i32 (%struct.TYPE_28__*, i32, i8*, ...) @av_log(%struct.TYPE_28__* %173, i32 %174, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %175, i32 %176)
  %178 = load i32, i32* %14, align 4
  store i32 %178, i32* %5, align 4
  br label %494

179:                                              ; preds = %155
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %16, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %16, align 4
  br label %144

183:                                              ; preds = %144
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %15, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %15, align 4
  br label %140

187:                                              ; preds = %140
  %188 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %188, i32 0, i32 5
  %190 = load i32*, i32** %189, align 8
  %191 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %191, i32 0, i32 6
  %193 = load i64, i64* %192, align 8
  %194 = getelementptr inbounds i32, i32* %190, i64 %193
  store i32 0, i32* %194, align 4
  br label %226

195:                                              ; preds = %120
  %196 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %197 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %196, i32 0, i32 13
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %195
  %201 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %201, i32* %5, align 4
  br label %494

202:                                              ; preds = %195
  store i32 0, i32* %15, align 4
  br label %203

203:                                              ; preds = %222, %202
  %204 = load i32, i32* %15, align 4
  %205 = icmp slt i32 %204, 3
  br i1 %205, label %206, label %225

206:                                              ; preds = %203
  %207 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %208 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %207, i32 0, i32 17
  %209 = load %struct.TYPE_23__*, %struct.TYPE_23__** %208, align 8
  %210 = load i32, i32* %15, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %212, i32 0, i32 3
  %214 = load %struct.TYPE_24__*, %struct.TYPE_24__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %214, i64 0
  %216 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %221, label %219

219:                                              ; preds = %206
  %220 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %220, i32* %5, align 4
  br label %494

221:                                              ; preds = %206
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %15, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %15, align 4
  br label %203

225:                                              ; preds = %203
  br label %226

226:                                              ; preds = %225, %187
  %227 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %228 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %227, i32 0, i32 5
  %229 = load i32*, i32** %228, align 8
  %230 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %231 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %230, i32 0, i32 6
  %232 = load i64, i64* %231, align 8
  %233 = getelementptr inbounds i32, i32* %229, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %226
  store i32 -1, i32* %5, align 4
  br label %494

237:                                              ; preds = %226
  %238 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %239 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %238, i32 0, i32 18
  %240 = load i64 (%struct.TYPE_25__*)*, i64 (%struct.TYPE_25__*)** %239, align 8
  %241 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %242 = call i64 %240(%struct.TYPE_25__* %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %246, label %244

244:                                              ; preds = %237
  %245 = load i32, i32* %13, align 4
  store i32 %245, i32* %5, align 4
  br label %494

246:                                              ; preds = %237
  %247 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %248 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %249 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %248, i32 0, i32 17
  %250 = load %struct.TYPE_23__*, %struct.TYPE_23__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %250, i64 0
  %252 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %255 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %254, i32 0, i32 17
  %256 = load %struct.TYPE_23__*, %struct.TYPE_23__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %256, i64 0
  %258 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @ff_set_dimensions(%struct.TYPE_28__* %247, i32 %253, i32 %259)
  store i32 %260, i32* %14, align 4
  %261 = load i32, i32* %14, align 4
  %262 = icmp slt i32 %261, 0
  br i1 %262, label %263, label %265

263:                                              ; preds = %246
  %264 = load i32, i32* %14, align 4
  store i32 %264, i32* %5, align 4
  br label %494

265:                                              ; preds = %246
  %266 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %267 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %268 = call i32 @ff_get_buffer(%struct.TYPE_28__* %266, %struct.TYPE_27__* %267, i32 0)
  store i32 %268, i32* %14, align 4
  %269 = icmp slt i32 %268, 0
  br i1 %269, label %270, label %272

270:                                              ; preds = %265
  %271 = load i32, i32* %14, align 4
  store i32 %271, i32* %5, align 4
  br label %494

272:                                              ; preds = %265
  %273 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %274 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %273, i32 0, i32 13
  %275 = load i64, i64* %274, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %315

277:                                              ; preds = %272
  %278 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %279 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %278, i32 0, i32 16
  %280 = load i64, i64* %279, align 8
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %298

282:                                              ; preds = %277
  %283 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %284 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %283, i32 0, i32 17
  %285 = load %struct.TYPE_23__*, %struct.TYPE_23__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %285, i64 0
  %287 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %288 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %287, i32 0, i32 1
  %289 = load i32*, i32** %288, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 0
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %293 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %292, i32 0, i32 0
  %294 = load i32*, i32** %293, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 0
  %296 = load i32, i32* %295, align 4
  %297 = call i32 @ff_ivi_recompose_haar(%struct.TYPE_23__* %286, i32 %291, i32 %296)
  br label %314

298:                                              ; preds = %277
  %299 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %300 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %299, i32 0, i32 17
  %301 = load %struct.TYPE_23__*, %struct.TYPE_23__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %301, i64 0
  %303 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %304 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %303, i32 0, i32 1
  %305 = load i32*, i32** %304, align 8
  %306 = getelementptr inbounds i32, i32* %305, i64 0
  %307 = load i32, i32* %306, align 4
  %308 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %309 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %308, i32 0, i32 0
  %310 = load i32*, i32** %309, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 0
  %312 = load i32, i32* %311, align 4
  %313 = call i32 @ff_ivi_recompose53(%struct.TYPE_23__* %302, i32 %307, i32 %312)
  br label %314

314:                                              ; preds = %298, %282
  br label %331

315:                                              ; preds = %272
  %316 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %317 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %316, i32 0, i32 17
  %318 = load %struct.TYPE_23__*, %struct.TYPE_23__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %318, i64 0
  %320 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %321 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %320, i32 0, i32 1
  %322 = load i32*, i32** %321, align 8
  %323 = getelementptr inbounds i32, i32* %322, i64 0
  %324 = load i32, i32* %323, align 4
  %325 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %326 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %325, i32 0, i32 0
  %327 = load i32*, i32** %326, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 0
  %329 = load i32, i32* %328, align 4
  %330 = call i32 @ivi_output_plane(%struct.TYPE_23__* %319, i32 %324, i32 %329)
  br label %331

331:                                              ; preds = %315, %314
  %332 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %333 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %332, i32 0, i32 17
  %334 = load %struct.TYPE_23__*, %struct.TYPE_23__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %334, i64 2
  %336 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %337 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %336, i32 0, i32 1
  %338 = load i32*, i32** %337, align 8
  %339 = getelementptr inbounds i32, i32* %338, i64 1
  %340 = load i32, i32* %339, align 4
  %341 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %342 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %341, i32 0, i32 0
  %343 = load i32*, i32** %342, align 8
  %344 = getelementptr inbounds i32, i32* %343, i64 1
  %345 = load i32, i32* %344, align 4
  %346 = call i32 @ivi_output_plane(%struct.TYPE_23__* %335, i32 %340, i32 %345)
  %347 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %348 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %347, i32 0, i32 17
  %349 = load %struct.TYPE_23__*, %struct.TYPE_23__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %349, i64 1
  %351 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %352 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %351, i32 0, i32 1
  %353 = load i32*, i32** %352, align 8
  %354 = getelementptr inbounds i32, i32* %353, i64 2
  %355 = load i32, i32* %354, align 4
  %356 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %357 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %356, i32 0, i32 0
  %358 = load i32*, i32** %357, align 8
  %359 = getelementptr inbounds i32, i32* %358, i64 2
  %360 = load i32, i32* %359, align 4
  %361 = call i32 @ivi_output_plane(%struct.TYPE_23__* %350, i32 %355, i32 %360)
  %362 = load i32*, i32** %8, align 8
  store i32 1, i32* %362, align 4
  %363 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %364 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %363, i32 0, i32 16
  %365 = load i64, i64* %364, align 8
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %430

367:                                              ; preds = %331
  %368 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %369 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %368, i32 0, i32 2
  %370 = load i64, i64* %369, align 8
  %371 = load i64, i64* @IVI4_FRAMETYPE_INTRA, align 8
  %372 = icmp eq i64 %370, %371
  br i1 %372, label %373, label %430

373:                                              ; preds = %367
  br label %374

374:                                              ; preds = %386, %373
  %375 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %376 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %375, i32 0, i32 15
  %377 = call i64 @get_bits(i32* %376, i32 8)
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %387

379:                                              ; preds = %374
  %380 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %381 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %380, i32 0, i32 15
  %382 = call i32 @get_bits_left(i32* %381)
  %383 = icmp slt i32 %382, 8
  br i1 %383, label %384, label %386

384:                                              ; preds = %379
  %385 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %385, i32* %5, align 4
  br label %494

386:                                              ; preds = %379
  br label %374

387:                                              ; preds = %374
  %388 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %389 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %388, i32 0, i32 15
  %390 = call i32 @get_bits_count(i32* %389)
  %391 = and i32 %390, 24
  store i32 %391, i32* %17, align 4
  %392 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %393 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %392, i32 0, i32 15
  %394 = load i32, i32* %17, align 4
  %395 = sub nsw i32 64, %394
  %396 = call i32 @skip_bits_long(i32* %393, i32 %395)
  %397 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %398 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %397, i32 0, i32 15
  %399 = call i32 @get_bits_left(i32* %398)
  %400 = icmp sgt i32 %399, 18
  br i1 %400, label %401, label %429

401:                                              ; preds = %387
  %402 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %403 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %402, i32 0, i32 15
  %404 = call i32 @show_bits_long(i32* %403, i32 21)
  %405 = icmp eq i32 %404, 786424
  br i1 %405, label %406, label %429

406:                                              ; preds = %401
  %407 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %408 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %407, i32 0, i32 1
  %409 = load i32*, i32** %408, align 8
  %410 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %411 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %410, i32 0, i32 15
  %412 = call i32 @get_bits_count(i32* %411)
  %413 = ashr i32 %412, 3
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i32, i32* %409, i64 %414
  %416 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %18, i32 0, i32 1
  store i32* %415, i32** %416, align 8
  %417 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %418 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %417, i32 0, i32 15
  %419 = call i32 @get_bits_left(i32* %418)
  %420 = ashr i32 %419, 3
  %421 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %18, i32 0, i32 0
  store i32 %420, i32* %421, align 8
  %422 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %423 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %424 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %423, i32 0, i32 14
  %425 = load i8*, i8** %424, align 8
  %426 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %427 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %426, i32 0, i32 3
  %428 = call i32 @ff_ivi_decode_frame(%struct.TYPE_28__* %422, i8* %425, i32* %427, %struct.TYPE_26__* %18)
  br label %429

429:                                              ; preds = %406, %401, %387
  br label %430

430:                                              ; preds = %429, %367, %331
  %431 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %432 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %431, i32 0, i32 7
  %433 = load i64, i64* %432, align 8
  %434 = icmp ne i64 %433, 0
  br i1 %434, label %435, label %492

435:                                              ; preds = %430
  %436 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %437 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %436, i32 0, i32 13
  %438 = load i64, i64* %437, align 8
  %439 = icmp ne i64 %438, 0
  br i1 %439, label %440, label %444

440:                                              ; preds = %435
  %441 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %442 = load i32, i32* @AV_LOG_DEBUG, align 4
  %443 = call i32 (%struct.TYPE_28__*, i32, i8*, ...) @av_log(%struct.TYPE_28__* %441, i32 %442, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %444

444:                                              ; preds = %440, %435
  %445 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %446 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %445, i32 0, i32 12
  %447 = load i64, i64* %446, align 8
  %448 = icmp ne i64 %447, 0
  br i1 %448, label %449, label %453

449:                                              ; preds = %444
  %450 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %451 = load i32, i32* @AV_LOG_DEBUG, align 4
  %452 = call i32 (%struct.TYPE_28__*, i32, i8*, ...) @av_log(%struct.TYPE_28__* %450, i32 %451, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %453

453:                                              ; preds = %449, %444
  %454 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %455 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %454, i32 0, i32 11
  %456 = load i64, i64* %455, align 8
  %457 = icmp ne i64 %456, 0
  br i1 %457, label %458, label %462

458:                                              ; preds = %453
  %459 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %460 = load i32, i32* @AV_LOG_DEBUG, align 4
  %461 = call i32 (%struct.TYPE_28__*, i32, i8*, ...) @av_log(%struct.TYPE_28__* %459, i32 %460, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %462

462:                                              ; preds = %458, %453
  %463 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %464 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %463, i32 0, i32 10
  %465 = load i64, i64* %464, align 8
  %466 = icmp ne i64 %465, 0
  br i1 %466, label %467, label %471

467:                                              ; preds = %462
  %468 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %469 = load i32, i32* @AV_LOG_DEBUG, align 4
  %470 = call i32 (%struct.TYPE_28__*, i32, i8*, ...) @av_log(%struct.TYPE_28__* %468, i32 %469, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  br label %471

471:                                              ; preds = %467, %462
  %472 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %473 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %472, i32 0, i32 9
  %474 = load i64, i64* %473, align 8
  %475 = icmp ne i64 %474, 0
  br i1 %475, label %476, label %480

476:                                              ; preds = %471
  %477 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %478 = load i32, i32* @AV_LOG_DEBUG, align 4
  %479 = call i32 (%struct.TYPE_28__*, i32, i8*, ...) @av_log(%struct.TYPE_28__* %477, i32 %478, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  br label %480

480:                                              ; preds = %476, %471
  %481 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %482 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %481, i32 0, i32 8
  %483 = load i64, i64* %482, align 8
  %484 = icmp ne i64 %483, 0
  br i1 %484, label %485, label %489

485:                                              ; preds = %480
  %486 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %487 = load i32, i32* @AV_LOG_DEBUG, align 4
  %488 = call i32 (%struct.TYPE_28__*, i32, i8*, ...) @av_log(%struct.TYPE_28__* %486, i32 %487, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0))
  br label %489

489:                                              ; preds = %485, %480
  %490 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %491 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %490, i32 0, i32 7
  store i64 0, i64* %491, align 8
  br label %492

492:                                              ; preds = %489, %430
  %493 = load i32, i32* %13, align 4
  store i32 %493, i32* %5, align 4
  br label %494

494:                                              ; preds = %492, %384, %270, %263, %244, %236, %219, %200, %172, %115, %103, %94, %65, %54, %37
  %495 = load i32, i32* %5, align 4
  ret i32 %495
}

declare dso_local i32 @init_get_bits8(i32*, i32*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_28__*, i32, i8*, ...) #1

declare dso_local i32 @av_frame_move_ref(i8*, i8*) #1

declare dso_local i32 @avpriv_report_missing_feature(%struct.TYPE_28__*, i8*) #1

declare dso_local i32 @decode_band(%struct.TYPE_25__*, %struct.TYPE_24__*, %struct.TYPE_28__*) #1

declare dso_local i32 @ff_set_dimensions(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_28__*, %struct.TYPE_27__*, i32) #1

declare dso_local i32 @ff_ivi_recompose_haar(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @ff_ivi_recompose53(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @ivi_output_plane(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i64 @get_bits(i32*, i32) #1

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i32 @get_bits_count(i32*) #1

declare dso_local i32 @skip_bits_long(i32*, i32) #1

declare dso_local i32 @show_bits_long(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
