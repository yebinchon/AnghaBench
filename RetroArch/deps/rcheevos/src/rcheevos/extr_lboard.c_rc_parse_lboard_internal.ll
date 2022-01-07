; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/rcheevos/src/rcheevos/extr_lboard.c_rc_parse_lboard_internal.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/rcheevos/src/rcheevos/extr_lboard.c_rc_parse_lboard_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, %struct.TYPE_13__*, %struct.TYPE_13__, %struct.TYPE_14__, %struct.TYPE_14__, %struct.TYPE_14__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_11__ = type { i64 }

@RC_LBOARD_START = common dso_local global i32 0, align 4
@RC_DUPLICATED_START = common dso_local global i64 0, align 8
@RC_LBOARD_CANCEL = common dso_local global i32 0, align 4
@RC_DUPLICATED_CANCEL = common dso_local global i64 0, align 8
@RC_LBOARD_SUBMIT = common dso_local global i32 0, align 4
@RC_DUPLICATED_SUBMIT = common dso_local global i64 0, align 8
@RC_LBOARD_VALUE = common dso_local global i32 0, align 4
@RC_DUPLICATED_VALUE = common dso_local global i64 0, align 8
@RC_LBOARD_PROGRESS = common dso_local global i32 0, align 4
@RC_DUPLICATED_PROGRESS = common dso_local global i64 0, align 8
@rc_value_t = common dso_local global i32 0, align 4
@RC_INVALID_LBOARD_FIELD = common dso_local global i64 0, align 8
@RC_LBOARD_COMPLETE = common dso_local global i32 0, align 4
@RC_MISSING_START = common dso_local global i64 0, align 8
@RC_MISSING_CANCEL = common dso_local global i64 0, align 8
@RC_MISSING_SUBMIT = common dso_local global i64 0, align 8
@RC_MISSING_VALUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rc_parse_lboard_internal(%struct.TYPE_12__* %0, i8* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %6, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 2
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %9, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %388, %3
  %11 = load i8*, i8** %5, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 115
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 83
  br i1 %21, label %22, label %80

22:                                               ; preds = %16, %10
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 116
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 84
  br i1 %33, label %34, label %80

34:                                               ; preds = %28, %22
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 2
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 97
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load i8*, i8** %5, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 2
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 65
  br i1 %45, label %46, label %80

46:                                               ; preds = %40, %34
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 3
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 58
  br i1 %51, label %52, label %80

52:                                               ; preds = %46
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @RC_LBOARD_START, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i64, i64* @RC_DUPLICATED_START, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  br label %442

61:                                               ; preds = %52
  %62 = load i32, i32* @RC_LBOARD_START, align 4
  %63 = load i32, i32* %7, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %7, align 4
  %65 = load i8*, i8** %5, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 4
  store i8* %66, i8** %5, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 6
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %70 = call i32 @rc_parse_trigger_internal(%struct.TYPE_14__* %68, i8** %5, %struct.TYPE_11__* %69)
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 6
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  store i64 0, i64* %73, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %61
  br label %442

79:                                               ; preds = %61
  br label %375

80:                                               ; preds = %46, %40, %28, %16
  %81 = load i8*, i8** %5, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 0
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 99
  br i1 %85, label %92, label %86

86:                                               ; preds = %80
  %87 = load i8*, i8** %5, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 0
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 67
  br i1 %91, label %92, label %150

92:                                               ; preds = %86, %80
  %93 = load i8*, i8** %5, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 97
  br i1 %97, label %104, label %98

98:                                               ; preds = %92
  %99 = load i8*, i8** %5, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 1
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 65
  br i1 %103, label %104, label %150

104:                                              ; preds = %98, %92
  %105 = load i8*, i8** %5, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 2
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 110
  br i1 %109, label %116, label %110

110:                                              ; preds = %104
  %111 = load i8*, i8** %5, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 2
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 78
  br i1 %115, label %116, label %150

116:                                              ; preds = %110, %104
  %117 = load i8*, i8** %5, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 3
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 58
  br i1 %121, label %122, label %150

122:                                              ; preds = %116
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* @RC_LBOARD_CANCEL, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = load i64, i64* @RC_DUPLICATED_CANCEL, align 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  store i64 %128, i64* %130, align 8
  br label %442

131:                                              ; preds = %122
  %132 = load i32, i32* @RC_LBOARD_CANCEL, align 4
  %133 = load i32, i32* %7, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %7, align 4
  %135 = load i8*, i8** %5, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 4
  store i8* %136, i8** %5, align 8
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 5
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %140 = call i32 @rc_parse_trigger_internal(%struct.TYPE_14__* %138, i8** %5, %struct.TYPE_11__* %139)
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 5
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  store i64 0, i64* %143, align 8
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp slt i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %131
  br label %442

149:                                              ; preds = %131
  br label %374

150:                                              ; preds = %116, %110, %98, %86
  %151 = load i8*, i8** %5, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 0
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 %154, 115
  br i1 %155, label %162, label %156

156:                                              ; preds = %150
  %157 = load i8*, i8** %5, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 0
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp eq i32 %160, 83
  br i1 %161, label %162, label %220

162:                                              ; preds = %156, %150
  %163 = load i8*, i8** %5, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 1
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp eq i32 %166, 117
  br i1 %167, label %174, label %168

168:                                              ; preds = %162
  %169 = load i8*, i8** %5, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 1
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = icmp eq i32 %172, 85
  br i1 %173, label %174, label %220

174:                                              ; preds = %168, %162
  %175 = load i8*, i8** %5, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 2
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp eq i32 %178, 98
  br i1 %179, label %186, label %180

180:                                              ; preds = %174
  %181 = load i8*, i8** %5, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 2
  %183 = load i8, i8* %182, align 1
  %184 = sext i8 %183 to i32
  %185 = icmp eq i32 %184, 66
  br i1 %185, label %186, label %220

186:                                              ; preds = %180, %174
  %187 = load i8*, i8** %5, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 3
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  %191 = icmp eq i32 %190, 58
  br i1 %191, label %192, label %220

192:                                              ; preds = %186
  %193 = load i32, i32* %7, align 4
  %194 = load i32, i32* @RC_LBOARD_SUBMIT, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %192
  %198 = load i64, i64* @RC_DUPLICATED_SUBMIT, align 8
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 0
  store i64 %198, i64* %200, align 8
  br label %442

201:                                              ; preds = %192
  %202 = load i32, i32* @RC_LBOARD_SUBMIT, align 4
  %203 = load i32, i32* %7, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* %7, align 4
  %205 = load i8*, i8** %5, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 4
  store i8* %206, i8** %5, align 8
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 4
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %210 = call i32 @rc_parse_trigger_internal(%struct.TYPE_14__* %208, i8** %5, %struct.TYPE_11__* %209)
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 4
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 0
  store i64 0, i64* %213, align 8
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = icmp slt i64 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %201
  br label %442

219:                                              ; preds = %201
  br label %373

220:                                              ; preds = %186, %180, %168, %156
  %221 = load i8*, i8** %5, align 8
  %222 = getelementptr inbounds i8, i8* %221, i64 0
  %223 = load i8, i8* %222, align 1
  %224 = sext i8 %223 to i32
  %225 = icmp eq i32 %224, 118
  br i1 %225, label %232, label %226

226:                                              ; preds = %220
  %227 = load i8*, i8** %5, align 8
  %228 = getelementptr inbounds i8, i8* %227, i64 0
  %229 = load i8, i8* %228, align 1
  %230 = sext i8 %229 to i32
  %231 = icmp eq i32 %230, 86
  br i1 %231, label %232, label %290

232:                                              ; preds = %226, %220
  %233 = load i8*, i8** %5, align 8
  %234 = getelementptr inbounds i8, i8* %233, i64 1
  %235 = load i8, i8* %234, align 1
  %236 = sext i8 %235 to i32
  %237 = icmp eq i32 %236, 97
  br i1 %237, label %244, label %238

238:                                              ; preds = %232
  %239 = load i8*, i8** %5, align 8
  %240 = getelementptr inbounds i8, i8* %239, i64 1
  %241 = load i8, i8* %240, align 1
  %242 = sext i8 %241 to i32
  %243 = icmp eq i32 %242, 65
  br i1 %243, label %244, label %290

244:                                              ; preds = %238, %232
  %245 = load i8*, i8** %5, align 8
  %246 = getelementptr inbounds i8, i8* %245, i64 2
  %247 = load i8, i8* %246, align 1
  %248 = sext i8 %247 to i32
  %249 = icmp eq i32 %248, 108
  br i1 %249, label %256, label %250

250:                                              ; preds = %244
  %251 = load i8*, i8** %5, align 8
  %252 = getelementptr inbounds i8, i8* %251, i64 2
  %253 = load i8, i8* %252, align 1
  %254 = sext i8 %253 to i32
  %255 = icmp eq i32 %254, 76
  br i1 %255, label %256, label %290

256:                                              ; preds = %250, %244
  %257 = load i8*, i8** %5, align 8
  %258 = getelementptr inbounds i8, i8* %257, i64 3
  %259 = load i8, i8* %258, align 1
  %260 = sext i8 %259 to i32
  %261 = icmp eq i32 %260, 58
  br i1 %261, label %262, label %290

262:                                              ; preds = %256
  %263 = load i32, i32* %7, align 4
  %264 = load i32, i32* @RC_LBOARD_VALUE, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %271

267:                                              ; preds = %262
  %268 = load i64, i64* @RC_DUPLICATED_VALUE, align 8
  %269 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %269, i32 0, i32 0
  store i64 %268, i64* %270, align 8
  br label %442

271:                                              ; preds = %262
  %272 = load i32, i32* @RC_LBOARD_VALUE, align 4
  %273 = load i32, i32* %7, align 4
  %274 = or i32 %273, %272
  store i32 %274, i32* %7, align 4
  %275 = load i8*, i8** %5, align 8
  %276 = getelementptr inbounds i8, i8* %275, i64 4
  store i8* %276, i8** %5, align 8
  %277 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i32 0, i32 3
  %279 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %280 = call i32 @rc_parse_value_internal(%struct.TYPE_13__* %278, i8** %5, %struct.TYPE_11__* %279)
  %281 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i32 0, i32 3
  %283 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %282, i32 0, i32 0
  store i64 0, i64* %283, align 8
  %284 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = icmp slt i64 %286, 0
  br i1 %287, label %288, label %289

288:                                              ; preds = %271
  br label %442

289:                                              ; preds = %271
  br label %372

290:                                              ; preds = %256, %250, %238, %226
  %291 = load i8*, i8** %5, align 8
  %292 = getelementptr inbounds i8, i8* %291, i64 0
  %293 = load i8, i8* %292, align 1
  %294 = sext i8 %293 to i32
  %295 = icmp eq i32 %294, 112
  br i1 %295, label %302, label %296

296:                                              ; preds = %290
  %297 = load i8*, i8** %5, align 8
  %298 = getelementptr inbounds i8, i8* %297, i64 0
  %299 = load i8, i8* %298, align 1
  %300 = sext i8 %299 to i32
  %301 = icmp eq i32 %300, 80
  br i1 %301, label %302, label %367

302:                                              ; preds = %296, %290
  %303 = load i8*, i8** %5, align 8
  %304 = getelementptr inbounds i8, i8* %303, i64 1
  %305 = load i8, i8* %304, align 1
  %306 = sext i8 %305 to i32
  %307 = icmp eq i32 %306, 114
  br i1 %307, label %314, label %308

308:                                              ; preds = %302
  %309 = load i8*, i8** %5, align 8
  %310 = getelementptr inbounds i8, i8* %309, i64 1
  %311 = load i8, i8* %310, align 1
  %312 = sext i8 %311 to i32
  %313 = icmp eq i32 %312, 82
  br i1 %313, label %314, label %367

314:                                              ; preds = %308, %302
  %315 = load i8*, i8** %5, align 8
  %316 = getelementptr inbounds i8, i8* %315, i64 2
  %317 = load i8, i8* %316, align 1
  %318 = sext i8 %317 to i32
  %319 = icmp eq i32 %318, 111
  br i1 %319, label %326, label %320

320:                                              ; preds = %314
  %321 = load i8*, i8** %5, align 8
  %322 = getelementptr inbounds i8, i8* %321, i64 2
  %323 = load i8, i8* %322, align 1
  %324 = sext i8 %323 to i32
  %325 = icmp eq i32 %324, 79
  br i1 %325, label %326, label %367

326:                                              ; preds = %320, %314
  %327 = load i8*, i8** %5, align 8
  %328 = getelementptr inbounds i8, i8* %327, i64 3
  %329 = load i8, i8* %328, align 1
  %330 = sext i8 %329 to i32
  %331 = icmp eq i32 %330, 58
  br i1 %331, label %332, label %367

332:                                              ; preds = %326
  %333 = load i32, i32* %7, align 4
  %334 = load i32, i32* @RC_LBOARD_PROGRESS, align 4
  %335 = and i32 %333, %334
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %341

337:                                              ; preds = %332
  %338 = load i64, i64* @RC_DUPLICATED_PROGRESS, align 8
  %339 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %340 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %339, i32 0, i32 0
  store i64 %338, i64* %340, align 8
  br label %442

341:                                              ; preds = %332
  %342 = load i32, i32* @RC_LBOARD_PROGRESS, align 4
  %343 = load i32, i32* %7, align 4
  %344 = or i32 %343, %342
  store i32 %344, i32* %7, align 4
  %345 = load i8*, i8** %5, align 8
  %346 = getelementptr inbounds i8, i8* %345, i64 4
  store i8* %346, i8** %5, align 8
  %347 = load i32, i32* @rc_value_t, align 4
  %348 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %349 = call %struct.TYPE_13__* @RC_ALLOC(i32 %347, %struct.TYPE_11__* %348)
  %350 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %351 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %350, i32 0, i32 2
  store %struct.TYPE_13__* %349, %struct.TYPE_13__** %351, align 8
  %352 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %353 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %352, i32 0, i32 2
  %354 = load %struct.TYPE_13__*, %struct.TYPE_13__** %353, align 8
  %355 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %356 = call i32 @rc_parse_value_internal(%struct.TYPE_13__* %354, i8** %5, %struct.TYPE_11__* %355)
  %357 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %358 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %357, i32 0, i32 2
  %359 = load %struct.TYPE_13__*, %struct.TYPE_13__** %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %359, i32 0, i32 0
  store i64 0, i64* %360, align 8
  %361 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %362 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %361, i32 0, i32 0
  %363 = load i64, i64* %362, align 8
  %364 = icmp slt i64 %363, 0
  br i1 %364, label %365, label %366

365:                                              ; preds = %341
  br label %442

366:                                              ; preds = %341
  br label %371

367:                                              ; preds = %326, %320, %308, %296
  %368 = load i64, i64* @RC_INVALID_LBOARD_FIELD, align 8
  %369 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %370 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %369, i32 0, i32 0
  store i64 %368, i64* %370, align 8
  br label %442

371:                                              ; preds = %366
  br label %372

372:                                              ; preds = %371, %289
  br label %373

373:                                              ; preds = %372, %219
  br label %374

374:                                              ; preds = %373, %149
  br label %375

375:                                              ; preds = %374, %79
  %376 = load i8*, i8** %5, align 8
  %377 = getelementptr inbounds i8, i8* %376, i64 0
  %378 = load i8, i8* %377, align 1
  %379 = sext i8 %378 to i32
  %380 = icmp ne i32 %379, 58
  br i1 %380, label %387, label %381

381:                                              ; preds = %375
  %382 = load i8*, i8** %5, align 8
  %383 = getelementptr inbounds i8, i8* %382, i64 1
  %384 = load i8, i8* %383, align 1
  %385 = sext i8 %384 to i32
  %386 = icmp ne i32 %385, 58
  br i1 %386, label %387, label %388

387:                                              ; preds = %381, %375
  br label %391

388:                                              ; preds = %381
  %389 = load i8*, i8** %5, align 8
  %390 = getelementptr inbounds i8, i8* %389, i64 2
  store i8* %390, i8** %5, align 8
  br label %10

391:                                              ; preds = %387
  %392 = load i32, i32* %7, align 4
  %393 = load i32, i32* @RC_LBOARD_COMPLETE, align 4
  %394 = and i32 %392, %393
  %395 = load i32, i32* @RC_LBOARD_COMPLETE, align 4
  %396 = icmp ne i32 %394, %395
  br i1 %396, label %397, label %437

397:                                              ; preds = %391
  %398 = load i32, i32* %7, align 4
  %399 = load i32, i32* @RC_LBOARD_START, align 4
  %400 = and i32 %398, %399
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %402, label %406

402:                                              ; preds = %397
  %403 = load i64, i64* @RC_MISSING_START, align 8
  %404 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %405 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %404, i32 0, i32 0
  store i64 %403, i64* %405, align 8
  br label %436

406:                                              ; preds = %397
  %407 = load i32, i32* %7, align 4
  %408 = load i32, i32* @RC_LBOARD_CANCEL, align 4
  %409 = and i32 %407, %408
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %411, label %415

411:                                              ; preds = %406
  %412 = load i64, i64* @RC_MISSING_CANCEL, align 8
  %413 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %414 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %413, i32 0, i32 0
  store i64 %412, i64* %414, align 8
  br label %435

415:                                              ; preds = %406
  %416 = load i32, i32* %7, align 4
  %417 = load i32, i32* @RC_LBOARD_SUBMIT, align 4
  %418 = and i32 %416, %417
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %420, label %424

420:                                              ; preds = %415
  %421 = load i64, i64* @RC_MISSING_SUBMIT, align 8
  %422 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %423 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %422, i32 0, i32 0
  store i64 %421, i64* %423, align 8
  br label %434

424:                                              ; preds = %415
  %425 = load i32, i32* %7, align 4
  %426 = load i32, i32* @RC_LBOARD_VALUE, align 4
  %427 = and i32 %425, %426
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %429, label %433

429:                                              ; preds = %424
  %430 = load i64, i64* @RC_MISSING_VALUE, align 8
  %431 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %432 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %431, i32 0, i32 0
  store i64 %430, i64* %432, align 8
  br label %433

433:                                              ; preds = %429, %424
  br label %434

434:                                              ; preds = %433, %420
  br label %435

435:                                              ; preds = %434, %411
  br label %436

436:                                              ; preds = %435, %402
  br label %442

437:                                              ; preds = %391
  %438 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %439 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %438, i32 0, i32 0
  store i64 0, i64* %439, align 8
  %440 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %441 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %440, i32 0, i32 1
  store i64 0, i64* %441, align 8
  br label %442

442:                                              ; preds = %437, %436, %367, %365, %337, %288, %267, %218, %197, %148, %127, %78, %57
  ret void
}

declare dso_local i32 @rc_parse_trigger_internal(%struct.TYPE_14__*, i8**, %struct.TYPE_11__*) #1

declare dso_local i32 @rc_parse_value_internal(%struct.TYPE_13__*, i8**, %struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_13__* @RC_ALLOC(i32, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
