; ModuleID = '/home/carl/AnghaBench/esp-idf/components/jsmn/src/extr_jsmn.c_jsmn_parse.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/jsmn/src/extr_jsmn.c_jsmn_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64, i32 }
%struct.TYPE_12__ = type { i64, i8*, i64, i32, i32 }

@JSMN_ERROR_NOMEM = common dso_local global i32 0, align 4
@JSMN_OBJECT = common dso_local global i8* null, align 8
@JSMN_ARRAY = common dso_local global i8* null, align 8
@JSMN_ERROR_INVAL = common dso_local global i32 0, align 4
@JSMN_ERROR_PART = common dso_local global i32 0, align 4
@JSMN_STRING = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jsmn_parse(%struct.TYPE_13__* %0, i8* %1, i64 %2, %struct.TYPE_12__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i8*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %15, align 4
  br label %21

21:                                               ; preds = %345, %5
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %9, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = load i8*, i8** %8, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br label %36

36:                                               ; preds = %27, %21
  %37 = phi i1 [ false, %21 ], [ %35, %27 ]
  br i1 %37, label %38, label %350

38:                                               ; preds = %36
  %39 = load i8*, i8** %8, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i8, i8* %39, i64 %42
  %44 = load i8, i8* %43, align 1
  store i8 %44, i8* %16, align 1
  %45 = load i8, i8* %16, align 1
  %46 = sext i8 %45 to i32
  switch i32 %46, label %312 [
    i32 123, label %47
    i32 91, label %47
    i32 125, label %100
    i32 93, label %100
    i32 34, label %189
    i32 9, label %221
    i32 13, label %221
    i32 10, label %221
    i32 32, label %221
    i32 58, label %222
    i32 44, label %229
  ]

47:                                               ; preds = %38, %38
  %48 = load i32, i32* %15, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %15, align 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %51 = icmp eq %struct.TYPE_12__* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %344

53:                                               ; preds = %47
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call %struct.TYPE_12__* @jsmn_alloc_token(%struct.TYPE_13__* %54, %struct.TYPE_12__* %55, i32 %56)
  store %struct.TYPE_12__* %57, %struct.TYPE_12__** %14, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %59 = icmp eq %struct.TYPE_12__* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* @JSMN_ERROR_NOMEM, align 4
  store i32 %61, i32* %6, align 4
  br label %386

62:                                               ; preds = %53
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, -1
  br i1 %66, label %67, label %77

67:                                               ; preds = %62
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %67, %62
  %78 = load i8, i8* %16, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 123
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load i8*, i8** @JSMN_OBJECT, align 8
  br label %85

83:                                               ; preds = %77
  %84 = load i8*, i8** @JSMN_ARRAY, align 8
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i8* [ %82, %81 ], [ %84, %83 ]
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  store i8* %86, i8** %88, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 2
  store i64 %91, i64* %93, align 8
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sub nsw i32 %96, 1
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  br label %344

100:                                              ; preds = %38, %38
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %102 = icmp eq %struct.TYPE_12__* %101, null
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  br label %344

104:                                              ; preds = %100
  %105 = load i8, i8* %16, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 125
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = load i8*, i8** @JSMN_OBJECT, align 8
  br label %112

110:                                              ; preds = %104
  %111 = load i8*, i8** @JSMN_ARRAY, align 8
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi i8* [ %109, %108 ], [ %111, %110 ]
  store i8* %113, i8** %17, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = sub nsw i32 %116, 1
  store i32 %117, i32* %13, align 4
  br label %118

118:                                              ; preds = %154, %112
  %119 = load i32, i32* %13, align 4
  %120 = icmp sge i32 %119, 0
  br i1 %120, label %121, label %157

121:                                              ; preds = %118
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %123 = load i32, i32* %13, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i64 %124
  store %struct.TYPE_12__* %125, %struct.TYPE_12__** %14, align 8
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, -1
  br i1 %129, label %130, label %153

130:                                              ; preds = %121
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = icmp eq i32 %133, -1
  br i1 %134, label %135, label %153

135:                                              ; preds = %130
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 1
  %138 = load i8*, i8** %137, align 8
  %139 = load i8*, i8** %17, align 8
  %140 = icmp ne i8* %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %135
  %142 = load i32, i32* @JSMN_ERROR_INVAL, align 4
  store i32 %142, i32* %6, align 4
  br label %386

143:                                              ; preds = %135
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 2
  store i32 -1, i32* %145, align 8
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = add i64 %148, 1
  %150 = trunc i64 %149 to i32
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 3
  store i32 %150, i32* %152, align 8
  br label %157

153:                                              ; preds = %130, %121
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %13, align 4
  %156 = add nsw i32 %155, -1
  store i32 %156, i32* %13, align 4
  br label %118

157:                                              ; preds = %143, %118
  %158 = load i32, i32* %13, align 4
  %159 = icmp eq i32 %158, -1
  br i1 %159, label %160, label %162

160:                                              ; preds = %157
  %161 = load i32, i32* @JSMN_ERROR_INVAL, align 4
  store i32 %161, i32* %6, align 4
  br label %386

162:                                              ; preds = %157
  br label %163

163:                                              ; preds = %185, %162
  %164 = load i32, i32* %13, align 4
  %165 = icmp sge i32 %164, 0
  br i1 %165, label %166, label %188

166:                                              ; preds = %163
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %168 = load i32, i32* %13, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i64 %169
  store %struct.TYPE_12__* %170, %struct.TYPE_12__** %14, align 8
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, -1
  br i1 %174, label %175, label %184

175:                                              ; preds = %166
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 8
  %179 = icmp eq i32 %178, -1
  br i1 %179, label %180, label %184

180:                                              ; preds = %175
  %181 = load i32, i32* %13, align 4
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 2
  store i32 %181, i32* %183, align 8
  br label %188

184:                                              ; preds = %175, %166
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %13, align 4
  %187 = add nsw i32 %186, -1
  store i32 %187, i32* %13, align 4
  br label %163

188:                                              ; preds = %180, %163
  br label %344

189:                                              ; preds = %38
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %191 = load i8*, i8** %8, align 8
  %192 = load i64, i64* %9, align 8
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %194 = load i32, i32* %11, align 4
  %195 = call i32 @jsmn_parse_string(%struct.TYPE_13__* %190, i8* %191, i64 %192, %struct.TYPE_12__* %193, i32 %194)
  store i32 %195, i32* %12, align 4
  %196 = load i32, i32* %12, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %189
  %199 = load i32, i32* %12, align 4
  store i32 %199, i32* %6, align 4
  br label %386

200:                                              ; preds = %189
  %201 = load i32, i32* %15, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %15, align 4
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = icmp ne i32 %205, -1
  br i1 %206, label %207, label %220

207:                                              ; preds = %200
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %209 = icmp ne %struct.TYPE_12__* %208, null
  br i1 %209, label %210, label %220

210:                                              ; preds = %207
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 4
  %218 = load i32, i32* %217, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %217, align 4
  br label %220

220:                                              ; preds = %210, %207, %200
  br label %344

221:                                              ; preds = %38, %38, %38, %38
  br label %344

222:                                              ; preds = %38
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = sub nsw i32 %225, 1
  %227 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 2
  store i32 %226, i32* %228, align 8
  br label %344

229:                                              ; preds = %38
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %231 = icmp ne %struct.TYPE_12__* %230, null
  br i1 %231, label %232, label %311

232:                                              ; preds = %229
  %233 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = icmp ne i32 %235, -1
  br i1 %236, label %237, label %311

237:                                              ; preds = %232
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 1
  %245 = load i8*, i8** %244, align 8
  %246 = load i8*, i8** @JSMN_ARRAY, align 8
  %247 = icmp ne i8* %245, %246
  br i1 %247, label %248, label %311

248:                                              ; preds = %237
  %249 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i32 0, i32 1
  %256 = load i8*, i8** %255, align 8
  %257 = load i8*, i8** @JSMN_OBJECT, align 8
  %258 = icmp ne i8* %256, %257
  br i1 %258, label %259, label %311

259:                                              ; preds = %248
  %260 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = sub nsw i32 %262, 1
  store i32 %263, i32* %13, align 4
  br label %264

264:                                              ; preds = %307, %259
  %265 = load i32, i32* %13, align 4
  %266 = icmp sge i32 %265, 0
  br i1 %266, label %267, label %310

267:                                              ; preds = %264
  %268 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %269 = load i32, i32* %13, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i32 0, i32 1
  %273 = load i8*, i8** %272, align 8
  %274 = load i8*, i8** @JSMN_ARRAY, align 8
  %275 = icmp eq i8* %273, %274
  br i1 %275, label %285, label %276

276:                                              ; preds = %267
  %277 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %278 = load i32, i32* %13, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 1
  %282 = load i8*, i8** %281, align 8
  %283 = load i8*, i8** @JSMN_OBJECT, align 8
  %284 = icmp eq i8* %282, %283
  br i1 %284, label %285, label %306

285:                                              ; preds = %276, %267
  %286 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %287 = load i32, i32* %13, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %286, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 2
  %291 = load i64, i64* %290, align 8
  %292 = icmp ne i64 %291, -1
  br i1 %292, label %293, label %305

293:                                              ; preds = %285
  %294 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %295 = load i32, i32* %13, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %294, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %297, i32 0, i32 3
  %299 = load i32, i32* %298, align 8
  %300 = icmp eq i32 %299, -1
  br i1 %300, label %301, label %305

301:                                              ; preds = %293
  %302 = load i32, i32* %13, align 4
  %303 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %304 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %303, i32 0, i32 2
  store i32 %302, i32* %304, align 8
  br label %310

305:                                              ; preds = %293, %285
  br label %306

306:                                              ; preds = %305, %276
  br label %307

307:                                              ; preds = %306
  %308 = load i32, i32* %13, align 4
  %309 = add nsw i32 %308, -1
  store i32 %309, i32* %13, align 4
  br label %264

310:                                              ; preds = %301, %264
  br label %311

311:                                              ; preds = %310, %248, %237, %232, %229
  br label %344

312:                                              ; preds = %38
  %313 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %314 = load i8*, i8** %8, align 8
  %315 = load i64, i64* %9, align 8
  %316 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %317 = load i32, i32* %11, align 4
  %318 = call i32 @jsmn_parse_primitive(%struct.TYPE_13__* %313, i8* %314, i64 %315, %struct.TYPE_12__* %316, i32 %317)
  store i32 %318, i32* %12, align 4
  %319 = load i32, i32* %12, align 4
  %320 = icmp slt i32 %319, 0
  br i1 %320, label %321, label %323

321:                                              ; preds = %312
  %322 = load i32, i32* %12, align 4
  store i32 %322, i32* %6, align 4
  br label %386

323:                                              ; preds = %312
  %324 = load i32, i32* %15, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %15, align 4
  %326 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %327 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %326, i32 0, i32 2
  %328 = load i32, i32* %327, align 8
  %329 = icmp ne i32 %328, -1
  br i1 %329, label %330, label %343

330:                                              ; preds = %323
  %331 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %332 = icmp ne %struct.TYPE_12__* %331, null
  br i1 %332, label %333, label %343

333:                                              ; preds = %330
  %334 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %335 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %336 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %335, i32 0, i32 2
  %337 = load i32, i32* %336, align 8
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %334, i64 %338
  %340 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %339, i32 0, i32 4
  %341 = load i32, i32* %340, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %340, align 4
  br label %343

343:                                              ; preds = %333, %330, %323
  br label %344

344:                                              ; preds = %343, %311, %222, %221, %220, %188, %103, %85, %52
  br label %345

345:                                              ; preds = %344
  %346 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %347 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %346, i32 0, i32 1
  %348 = load i64, i64* %347, align 8
  %349 = add i64 %348, 1
  store i64 %349, i64* %347, align 8
  br label %21

350:                                              ; preds = %36
  %351 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %352 = icmp ne %struct.TYPE_12__* %351, null
  br i1 %352, label %353, label %384

353:                                              ; preds = %350
  %354 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %355 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = sub nsw i32 %356, 1
  store i32 %357, i32* %13, align 4
  br label %358

358:                                              ; preds = %380, %353
  %359 = load i32, i32* %13, align 4
  %360 = icmp sge i32 %359, 0
  br i1 %360, label %361, label %383

361:                                              ; preds = %358
  %362 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %363 = load i32, i32* %13, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %362, i64 %364
  %366 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %365, i32 0, i32 2
  %367 = load i64, i64* %366, align 8
  %368 = icmp ne i64 %367, -1
  br i1 %368, label %369, label %379

369:                                              ; preds = %361
  %370 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %371 = load i32, i32* %13, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %370, i64 %372
  %374 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %373, i32 0, i32 3
  %375 = load i32, i32* %374, align 8
  %376 = icmp eq i32 %375, -1
  br i1 %376, label %377, label %379

377:                                              ; preds = %369
  %378 = load i32, i32* @JSMN_ERROR_PART, align 4
  store i32 %378, i32* %6, align 4
  br label %386

379:                                              ; preds = %369, %361
  br label %380

380:                                              ; preds = %379
  %381 = load i32, i32* %13, align 4
  %382 = add nsw i32 %381, -1
  store i32 %382, i32* %13, align 4
  br label %358

383:                                              ; preds = %358
  br label %384

384:                                              ; preds = %383, %350
  %385 = load i32, i32* %15, align 4
  store i32 %385, i32* %6, align 4
  br label %386

386:                                              ; preds = %384, %377, %321, %198, %160, %141, %60
  %387 = load i32, i32* %6, align 4
  ret i32 %387
}

declare dso_local %struct.TYPE_12__* @jsmn_alloc_token(%struct.TYPE_13__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @jsmn_parse_string(%struct.TYPE_13__*, i8*, i64, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @jsmn_parse_primitive(%struct.TYPE_13__*, i8*, i64, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
