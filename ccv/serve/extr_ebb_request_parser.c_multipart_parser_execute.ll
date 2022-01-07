; ModuleID = '/home/carl/AnghaBench/ccv/serve/extr_ebb_request_parser.c_multipart_parser_execute.c'
source_filename = "/home/carl/AnghaBench/ccv/serve/extr_ebb_request_parser.c_multipart_parser_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32 (%struct.TYPE_7__*)*, i32, i32, i32 (%struct.TYPE_7__*)* }
%struct.TYPE_6__ = type { i32, i64, i8* }

@CURRENT = common dso_local global %struct.TYPE_7__* null, align 8
@CR = common dso_local global i8 0, align 1
@LF = common dso_local global i8 0, align 1
@multipart_header_field = common dso_local global i32 0, align 4
@multipart_header_value = common dso_local global i32 0, align 4
@part_data = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @multipart_parser_execute(%struct.TYPE_6__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %416, %3
  %14 = load i32, i32* %12, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br i1 %16, label %17, label %419

17:                                               ; preds = %13
  %18 = load i8*, i8** %6, align 8
  %19 = load i64, i64* %8, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  %21 = load i8, i8* %20, align 1
  store i8 %21, i8* %10, align 1
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* %7, align 8
  %24 = sub i64 %23, 1
  %25 = icmp eq i64 %22, %24
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %12, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %415 [
    i32 129, label %30
    i32 128, label %37
    i32 141, label %106
    i32 142, label %110
    i32 137, label %165
    i32 138, label %176
    i32 140, label %185
    i32 139, label %216
    i32 130, label %231
    i32 136, label %246
    i32 135, label %285
    i32 133, label %313
    i32 134, label %376
    i32 131, label %394
    i32 132, label %403
    i32 143, label %414
  ]

30:                                               ; preds = %17
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CURRENT, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 3
  store i32 0, i32* %32, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i32 128, i32* %36, align 8
  br label %37

37:                                               ; preds = %17, %30
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CURRENT, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 2
  %45 = sext i32 %44 to i64
  %46 = icmp eq i64 %40, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %37
  %48 = load i8, i8* %10, align 1
  %49 = sext i8 %48 to i32
  %50 = load i8, i8* @CR, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %49, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i64, i64* %8, align 8
  store i64 %54, i64* %4, align 8
  br label %421

55:                                               ; preds = %47
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %57, align 8
  br label %416

60:                                               ; preds = %37
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CURRENT, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 3
  %68 = sext i32 %67 to i64
  %69 = icmp eq i64 %63, %68
  br i1 %69, label %70, label %85

70:                                               ; preds = %60
  %71 = load i8, i8* %10, align 1
  %72 = sext i8 %71 to i32
  %73 = load i8, i8* @LF, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %72, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i64, i64* %8, align 8
  store i64 %77, i64* %4, align 8
  br label %421

78:                                               ; preds = %70
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CURRENT, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 3
  store i32 0, i32* %80, align 4
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  store i64 0, i64* %82, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  store i32 141, i32* %84, align 8
  br label %416

85:                                               ; preds = %60
  br label %86

86:                                               ; preds = %85
  %87 = load i8, i8* %10, align 1
  %88 = sext i8 %87 to i32
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CURRENT, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds i8, i8* %91, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %88, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %86
  %100 = load i64, i64* %8, align 8
  store i64 %100, i64* %4, align 8
  br label %421

101:                                              ; preds = %86
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %103, align 8
  br label %416

106:                                              ; preds = %17
  %107 = load i64, i64* %8, align 8
  store i64 %107, i64* %9, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  store i32 142, i32* %109, align 8
  br label %110

110:                                              ; preds = %17, %106
  %111 = load i8, i8* %10, align 1
  %112 = sext i8 %111 to i32
  %113 = load i8, i8* @CR, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %112, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %110
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  store i32 137, i32* %118, align 8
  br label %416

119:                                              ; preds = %110
  %120 = load i8, i8* %10, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 45
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  br label %416

124:                                              ; preds = %119
  %125 = load i8, i8* %10, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 58
  br i1 %127, label %128, label %139

128:                                              ; preds = %124
  %129 = load i32, i32* @multipart_header_field, align 4
  %130 = load i8*, i8** %6, align 8
  %131 = load i64, i64* %9, align 8
  %132 = getelementptr inbounds i8, i8* %130, i64 %131
  %133 = load i64, i64* %8, align 8
  %134 = load i64, i64* %9, align 8
  %135 = sub i64 %133, %134
  %136 = call i32 @EMIT_HEADER_CB(i32 %129, i8* %132, i64 %135)
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  store i32 138, i32* %138, align 8
  br label %416

139:                                              ; preds = %124
  %140 = load i8, i8* %10, align 1
  %141 = call signext i8 @tolower(i8 signext %140)
  store i8 %141, i8* %11, align 1
  %142 = load i8, i8* %11, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp slt i32 %143, 97
  br i1 %144, label %149, label %145

145:                                              ; preds = %139
  %146 = load i8, i8* %11, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp sgt i32 %147, 122
  br i1 %148, label %149, label %151

149:                                              ; preds = %145, %139
  %150 = load i64, i64* %8, align 8
  store i64 %150, i64* %4, align 8
  br label %421

151:                                              ; preds = %145
  %152 = load i32, i32* %12, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %164

154:                                              ; preds = %151
  %155 = load i32, i32* @multipart_header_field, align 4
  %156 = load i8*, i8** %6, align 8
  %157 = load i64, i64* %9, align 8
  %158 = getelementptr inbounds i8, i8* %156, i64 %157
  %159 = load i64, i64* %8, align 8
  %160 = load i64, i64* %9, align 8
  %161 = sub i64 %159, %160
  %162 = add i64 %161, 1
  %163 = call i32 @EMIT_HEADER_CB(i32 %155, i8* %158, i64 %162)
  br label %164

164:                                              ; preds = %154, %151
  br label %416

165:                                              ; preds = %17
  %166 = load i8, i8* %10, align 1
  %167 = sext i8 %166 to i32
  %168 = load i8, i8* @LF, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp ne i32 %167, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %165
  %172 = load i64, i64* %8, align 8
  store i64 %172, i64* %4, align 8
  br label %421

173:                                              ; preds = %165
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  store i32 130, i32* %175, align 8
  br label %416

176:                                              ; preds = %17
  %177 = load i8, i8* %10, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp eq i32 %178, 32
  br i1 %179, label %180, label %181

180:                                              ; preds = %176
  br label %416

181:                                              ; preds = %176
  %182 = load i64, i64* %8, align 8
  store i64 %182, i64* %9, align 8
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  store i32 140, i32* %184, align 8
  br label %185

185:                                              ; preds = %17, %181
  %186 = load i8, i8* %10, align 1
  %187 = sext i8 %186 to i32
  %188 = load i8, i8* @CR, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp eq i32 %187, %189
  br i1 %190, label %191, label %202

191:                                              ; preds = %185
  %192 = load i32, i32* @multipart_header_value, align 4
  %193 = load i8*, i8** %6, align 8
  %194 = load i64, i64* %9, align 8
  %195 = getelementptr inbounds i8, i8* %193, i64 %194
  %196 = load i64, i64* %8, align 8
  %197 = load i64, i64* %9, align 8
  %198 = sub i64 %196, %197
  %199 = call i32 @EMIT_HEADER_CB(i32 %192, i8* %195, i64 %198)
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 0
  store i32 139, i32* %201, align 8
  br label %202

202:                                              ; preds = %191, %185
  %203 = load i32, i32* %12, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %215

205:                                              ; preds = %202
  %206 = load i32, i32* @multipart_header_value, align 4
  %207 = load i8*, i8** %6, align 8
  %208 = load i64, i64* %9, align 8
  %209 = getelementptr inbounds i8, i8* %207, i64 %208
  %210 = load i64, i64* %8, align 8
  %211 = load i64, i64* %9, align 8
  %212 = sub i64 %210, %211
  %213 = add i64 %212, 1
  %214 = call i32 @EMIT_HEADER_CB(i32 %206, i8* %209, i64 %213)
  br label %215

215:                                              ; preds = %205, %202
  br label %416

216:                                              ; preds = %17
  %217 = load i8, i8* %10, align 1
  %218 = sext i8 %217 to i32
  %219 = load i8, i8* @LF, align 1
  %220 = sext i8 %219 to i32
  %221 = icmp ne i32 %218, %220
  br i1 %221, label %222, label %224

222:                                              ; preds = %216
  %223 = load i64, i64* %8, align 8
  store i64 %223, i64* %4, align 8
  br label %421

224:                                              ; preds = %216
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CURRENT, align 8
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %226, align 4
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 0
  store i32 141, i32* %230, align 8
  br label %416

231:                                              ; preds = %17
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CURRENT, align 8
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 4
  %234 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %233, align 8
  %235 = icmp ne i32 (%struct.TYPE_7__*)* %234, null
  br i1 %235, label %236, label %242

236:                                              ; preds = %231
  %237 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CURRENT, align 8
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 4
  %239 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %238, align 8
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CURRENT, align 8
  %241 = call i32 %239(%struct.TYPE_7__* %240)
  br label %242

242:                                              ; preds = %236, %231
  %243 = load i64, i64* %8, align 8
  store i64 %243, i64* %9, align 8
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 0
  store i32 136, i32* %245, align 8
  br label %246

246:                                              ; preds = %17, %242
  %247 = load i8, i8* %10, align 1
  %248 = sext i8 %247 to i32
  %249 = load i8, i8* @CR, align 1
  %250 = sext i8 %249 to i32
  %251 = icmp eq i32 %248, %250
  br i1 %251, label %252, label %270

252:                                              ; preds = %246
  %253 = load i32, i32* @part_data, align 4
  %254 = load i8*, i8** %6, align 8
  %255 = load i64, i64* %9, align 8
  %256 = getelementptr inbounds i8, i8* %254, i64 %255
  %257 = load i64, i64* %8, align 8
  %258 = load i64, i64* %9, align 8
  %259 = sub i64 %257, %258
  %260 = trunc i64 %259 to i32
  %261 = call i32 @EMIT_DATA_CB(i32 %253, i8* %256, i32 %260)
  %262 = load i64, i64* %8, align 8
  store i64 %262, i64* %9, align 8
  %263 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 0
  store i32 135, i32* %264, align 8
  %265 = load i8, i8* @CR, align 1
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 2
  %268 = load i8*, i8** %267, align 8
  %269 = getelementptr inbounds i8, i8* %268, i64 0
  store i8 %265, i8* %269, align 1
  br label %416

270:                                              ; preds = %246
  %271 = load i32, i32* %12, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %284

273:                                              ; preds = %270
  %274 = load i32, i32* @part_data, align 4
  %275 = load i8*, i8** %6, align 8
  %276 = load i64, i64* %9, align 8
  %277 = getelementptr inbounds i8, i8* %275, i64 %276
  %278 = load i64, i64* %8, align 8
  %279 = load i64, i64* %9, align 8
  %280 = sub i64 %278, %279
  %281 = add i64 %280, 1
  %282 = trunc i64 %281 to i32
  %283 = call i32 @EMIT_DATA_CB(i32 %274, i8* %277, i32 %282)
  br label %284

284:                                              ; preds = %273, %270
  br label %416

285:                                              ; preds = %17
  %286 = load i8, i8* %10, align 1
  %287 = sext i8 %286 to i32
  %288 = load i8, i8* @LF, align 1
  %289 = sext i8 %288 to i32
  %290 = icmp eq i32 %287, %289
  br i1 %290, label %291, label %303

291:                                              ; preds = %285
  %292 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 0
  store i32 133, i32* %293, align 8
  %294 = load i8, i8* @LF, align 1
  %295 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %295, i32 0, i32 2
  %297 = load i8*, i8** %296, align 8
  %298 = getelementptr inbounds i8, i8* %297, i64 1
  store i8 %294, i8* %298, align 1
  %299 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CURRENT, align 8
  %300 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %299, i32 0, i32 3
  store i32 0, i32* %300, align 4
  %301 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %302 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %301, i32 0, i32 1
  store i64 0, i64* %302, align 8
  br label %416

303:                                              ; preds = %285
  %304 = load i32, i32* @part_data, align 4
  %305 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %305, i32 0, i32 2
  %307 = load i8*, i8** %306, align 8
  %308 = call i32 @EMIT_DATA_CB(i32 %304, i8* %307, i32 1)
  %309 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %309, i32 0, i32 0
  store i32 136, i32* %310, align 8
  %311 = load i64, i64* %8, align 8
  %312 = add i64 %311, -1
  store i64 %312, i64* %8, align 8
  store i64 %311, i64* %9, align 8
  br label %416

313:                                              ; preds = %17
  %314 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CURRENT, align 8
  %315 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %314, i32 0, i32 0
  %316 = load i8*, i8** %315, align 8
  %317 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %317, i32 0, i32 1
  %319 = load i64, i64* %318, align 8
  %320 = getelementptr inbounds i8, i8* %316, i64 %319
  %321 = load i8, i8* %320, align 1
  %322 = sext i8 %321 to i32
  %323 = load i8, i8* %10, align 1
  %324 = sext i8 %323 to i32
  %325 = icmp ne i32 %322, %324
  br i1 %325, label %326, label %341

326:                                              ; preds = %313
  %327 = load i32, i32* @part_data, align 4
  %328 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %329 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %328, i32 0, i32 2
  %330 = load i8*, i8** %329, align 8
  %331 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %332 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %331, i32 0, i32 1
  %333 = load i64, i64* %332, align 8
  %334 = add i64 2, %333
  %335 = trunc i64 %334 to i32
  %336 = call i32 @EMIT_DATA_CB(i32 %327, i8* %330, i32 %335)
  %337 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %338 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %337, i32 0, i32 0
  store i32 136, i32* %338, align 8
  %339 = load i64, i64* %8, align 8
  %340 = add i64 %339, -1
  store i64 %340, i64* %8, align 8
  store i64 %339, i64* %9, align 8
  br label %416

341:                                              ; preds = %313
  %342 = load i8, i8* %10, align 1
  %343 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %344 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %343, i32 0, i32 2
  %345 = load i8*, i8** %344, align 8
  %346 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %347 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %346, i32 0, i32 1
  %348 = load i64, i64* %347, align 8
  %349 = add i64 2, %348
  %350 = getelementptr inbounds i8, i8* %345, i64 %349
  store i8 %342, i8* %350, align 1
  %351 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %352 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %351, i32 0, i32 1
  %353 = load i64, i64* %352, align 8
  %354 = add i64 %353, 1
  store i64 %354, i64* %352, align 8
  %355 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CURRENT, align 8
  %356 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %355, i32 0, i32 2
  %357 = load i32, i32* %356, align 8
  %358 = add nsw i32 %357, 2
  %359 = sext i32 %358 to i64
  %360 = icmp eq i64 %354, %359
  br i1 %360, label %361, label %375

361:                                              ; preds = %341
  %362 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CURRENT, align 8
  %363 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %362, i32 0, i32 1
  %364 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %363, align 8
  %365 = icmp ne i32 (%struct.TYPE_7__*)* %364, null
  br i1 %365, label %366, label %372

366:                                              ; preds = %361
  %367 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CURRENT, align 8
  %368 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %367, i32 0, i32 1
  %369 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %368, align 8
  %370 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CURRENT, align 8
  %371 = call i32 %369(%struct.TYPE_7__* %370)
  br label %372

372:                                              ; preds = %366, %361
  %373 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %374 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %373, i32 0, i32 0
  store i32 134, i32* %374, align 8
  br label %375

375:                                              ; preds = %372, %341
  br label %416

376:                                              ; preds = %17
  %377 = load i8, i8* %10, align 1
  %378 = sext i8 %377 to i32
  %379 = icmp eq i32 %378, 45
  br i1 %379, label %380, label %383

380:                                              ; preds = %376
  %381 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %382 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %381, i32 0, i32 0
  store i32 131, i32* %382, align 8
  br label %416

383:                                              ; preds = %376
  %384 = load i8, i8* %10, align 1
  %385 = sext i8 %384 to i32
  %386 = load i8, i8* @CR, align 1
  %387 = sext i8 %386 to i32
  %388 = icmp eq i32 %385, %387
  br i1 %388, label %389, label %392

389:                                              ; preds = %383
  %390 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %391 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %390, i32 0, i32 0
  store i32 132, i32* %391, align 8
  br label %416

392:                                              ; preds = %383
  %393 = load i64, i64* %8, align 8
  store i64 %393, i64* %4, align 8
  br label %421

394:                                              ; preds = %17
  %395 = load i8, i8* %10, align 1
  %396 = sext i8 %395 to i32
  %397 = icmp eq i32 %396, 45
  br i1 %397, label %398, label %401

398:                                              ; preds = %394
  %399 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %400 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %399, i32 0, i32 0
  store i32 143, i32* %400, align 8
  br label %416

401:                                              ; preds = %394
  %402 = load i64, i64* %8, align 8
  store i64 %402, i64* %4, align 8
  br label %421

403:                                              ; preds = %17
  %404 = load i8, i8* %10, align 1
  %405 = sext i8 %404 to i32
  %406 = load i8, i8* @LF, align 1
  %407 = sext i8 %406 to i32
  %408 = icmp eq i32 %405, %407
  br i1 %408, label %409, label %412

409:                                              ; preds = %403
  %410 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %411 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %410, i32 0, i32 0
  store i32 141, i32* %411, align 8
  br label %416

412:                                              ; preds = %403
  %413 = load i64, i64* %8, align 8
  store i64 %413, i64* %4, align 8
  br label %421

414:                                              ; preds = %17
  br label %416

415:                                              ; preds = %17
  store i64 0, i64* %4, align 8
  br label %421

416:                                              ; preds = %414, %409, %398, %389, %380, %375, %326, %303, %291, %284, %252, %224, %215, %180, %173, %164, %128, %123, %116, %101, %78, %55
  %417 = load i64, i64* %8, align 8
  %418 = add i64 %417, 1
  store i64 %418, i64* %8, align 8
  br label %13

419:                                              ; preds = %13
  %420 = load i64, i64* %7, align 8
  store i64 %420, i64* %4, align 8
  br label %421

421:                                              ; preds = %419, %415, %412, %401, %392, %222, %171, %149, %99, %76, %53
  %422 = load i64, i64* %4, align 8
  ret i64 %422
}

declare dso_local i32 @EMIT_HEADER_CB(i32, i8*, i64) #1

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local i32 @EMIT_DATA_CB(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
