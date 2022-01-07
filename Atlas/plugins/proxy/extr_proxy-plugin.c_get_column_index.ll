; ModuleID = '/home/carl/AnghaBench/Atlas/plugins/proxy/extr_proxy-plugin.c_get_column_index.c'
source_filename = "/home/carl/AnghaBench/Atlas/plugins/proxy/extr_proxy-plugin.c_get_column_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8* }

@FALSE = common dso_local global i32 0, align 4
@TK_SQL_WHERE = common dso_local global i64 0, align 8
@TK_LITERAL = common dso_local global i64 0, align 8
@TK_EQ = common dso_local global i64 0, align 8
@TK_DOT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"IN\00", align 1
@TK_OBRACE = common dso_local global i64 0, align 8
@TK_CBRACE = common dso_local global i64 0, align 8
@TK_SQL_SET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"VALUES\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"VALUE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @get_column_index(%struct.TYPE_7__* %0, i8* %1, i8* %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_6__**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %20 = load i32, i32* @FALSE, align 4
  %21 = load i32, i32* @FALSE, align 4
  %22 = call i32* @g_array_new(i32 %20, i32 %21, i32 4)
  store i32* %22, i32** %11, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.TYPE_6__**
  store %struct.TYPE_6__** %26, %struct.TYPE_6__*** %12, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %193

32:                                               ; preds = %5
  %33 = load i64, i64* %10, align 8
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %14, align 4
  br label %35

35:                                               ; preds = %189, %32
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %192

39:                                               ; preds = %35
  %40 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %12, align 8
  %41 = load i32, i32* %14, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %40, i64 %42
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @TK_SQL_WHERE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %188

49:                                               ; preds = %39
  %50 = load i32, i32* %14, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %15, align 4
  br label %52

52:                                               ; preds = %184, %49
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* %13, align 4
  %55 = sub nsw i32 %54, 2
  %56 = icmp slt i32 %53, %55
  br i1 %56, label %57, label %187

57:                                               ; preds = %52
  %58 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %12, align 8
  %59 = load i32, i32* %15, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %58, i64 %60
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @TK_LITERAL, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %183

67:                                               ; preds = %57
  %68 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %12, align 8
  %69 = load i32, i32* %15, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %68, i64 %70
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = call i64 @strcasecmp(i8* %76, i8* %77)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %183

80:                                               ; preds = %67
  %81 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %12, align 8
  %82 = load i32, i32* %15, align 4
  %83 = add nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %81, i64 %84
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @TK_EQ, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %123

91:                                               ; preds = %80
  %92 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %12, align 8
  %93 = load i32, i32* %15, align 4
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %92, i64 %95
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @TK_DOT, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %116, label %102

102:                                              ; preds = %91
  %103 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %12, align 8
  %104 = load i32, i32* %15, align 4
  %105 = sub nsw i32 %104, 2
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %103, i64 %106
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = load i8*, i8** %7, align 8
  %114 = call i64 @strcasecmp(i8* %112, i8* %113)
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %102, %91
  %117 = load i32, i32* %15, align 4
  %118 = add nsw i32 %117, 2
  store i32 %118, i32* %16, align 4
  %119 = load i32*, i32** %11, align 8
  %120 = load i32, i32* %16, align 4
  %121 = call i32 @g_array_append_val(i32* %119, i32 %120)
  br label %187

122:                                              ; preds = %102
  br label %182

123:                                              ; preds = %80
  %124 = load i32, i32* %15, align 4
  %125 = add nsw i32 %124, 3
  %126 = load i32, i32* %13, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %181

128:                                              ; preds = %123
  %129 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %12, align 8
  %130 = load i32, i32* %15, align 4
  %131 = add nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %129, i64 %132
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = call i64 @strcasecmp(i8* %138, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %181

141:                                              ; preds = %128
  %142 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %12, align 8
  %143 = load i32, i32* %15, align 4
  %144 = add nsw i32 %143, 2
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %142, i64 %145
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @TK_OBRACE, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %181

152:                                              ; preds = %141
  %153 = load i32, i32* %15, align 4
  %154 = add nsw i32 %153, 3
  store i32 %154, i32* %16, align 4
  %155 = load i32*, i32** %11, align 8
  %156 = load i32, i32* %16, align 4
  %157 = call i32 @g_array_append_val(i32* %155, i32 %156)
  br label %158

158:                                              ; preds = %176, %152
  %159 = load i32, i32* %16, align 4
  %160 = add nsw i32 %159, 2
  store i32 %160, i32* %16, align 4
  %161 = load i32, i32* %13, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %174

163:                                              ; preds = %158
  %164 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %12, align 8
  %165 = load i32, i32* %16, align 4
  %166 = sub nsw i32 %165, 1
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %164, i64 %167
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @TK_CBRACE, align 8
  %173 = icmp ne i64 %171, %172
  br label %174

174:                                              ; preds = %163, %158
  %175 = phi i1 [ false, %158 ], [ %173, %163 ]
  br i1 %175, label %176, label %180

176:                                              ; preds = %174
  %177 = load i32*, i32** %11, align 8
  %178 = load i32, i32* %16, align 4
  %179 = call i32 @g_array_append_val(i32* %177, i32 %178)
  br label %158

180:                                              ; preds = %174
  br label %187

181:                                              ; preds = %141, %128, %123
  br label %182

182:                                              ; preds = %181, %122
  br label %183

183:                                              ; preds = %182, %67, %57
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %15, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %15, align 4
  br label %52

187:                                              ; preds = %180, %116, %52
  br label %192

188:                                              ; preds = %39
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %14, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %14, align 4
  br label %35

192:                                              ; preds = %187, %35
  br label %549

193:                                              ; preds = %5
  %194 = load i32, i32* %9, align 4
  %195 = icmp eq i32 %194, 2
  br i1 %195, label %196, label %357

196:                                              ; preds = %193
  %197 = load i64, i64* %10, align 8
  %198 = trunc i64 %197 to i32
  store i32 %198, i32* %14, align 4
  br label %199

199:                                              ; preds = %353, %196
  %200 = load i32, i32* %14, align 4
  %201 = load i32, i32* %13, align 4
  %202 = icmp slt i32 %200, %201
  br i1 %202, label %203, label %356

203:                                              ; preds = %199
  %204 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %12, align 8
  %205 = load i32, i32* %14, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %204, i64 %206
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @TK_SQL_WHERE, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %352

213:                                              ; preds = %203
  %214 = load i32, i32* %14, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %15, align 4
  br label %216

216:                                              ; preds = %348, %213
  %217 = load i32, i32* %15, align 4
  %218 = load i32, i32* %13, align 4
  %219 = sub nsw i32 %218, 2
  %220 = icmp slt i32 %217, %219
  br i1 %220, label %221, label %351

221:                                              ; preds = %216
  %222 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %12, align 8
  %223 = load i32, i32* %15, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %222, i64 %224
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @TK_LITERAL, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %231, label %347

231:                                              ; preds = %221
  %232 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %12, align 8
  %233 = load i32, i32* %15, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %232, i64 %234
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 1
  %238 = load %struct.TYPE_5__*, %struct.TYPE_5__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 0
  %240 = load i8*, i8** %239, align 8
  %241 = load i8*, i8** %8, align 8
  %242 = call i64 @strcasecmp(i8* %240, i8* %241)
  %243 = icmp eq i64 %242, 0
  br i1 %243, label %244, label %347

244:                                              ; preds = %231
  %245 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %12, align 8
  %246 = load i32, i32* %15, align 4
  %247 = add nsw i32 %246, 1
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %245, i64 %248
  %250 = load %struct.TYPE_6__*, %struct.TYPE_6__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @TK_EQ, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %255, label %287

255:                                              ; preds = %244
  %256 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %12, align 8
  %257 = load i32, i32* %15, align 4
  %258 = sub nsw i32 %257, 1
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %256, i64 %259
  %261 = load %struct.TYPE_6__*, %struct.TYPE_6__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* @TK_DOT, align 8
  %265 = icmp ne i64 %263, %264
  br i1 %265, label %280, label %266

266:                                              ; preds = %255
  %267 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %12, align 8
  %268 = load i32, i32* %15, align 4
  %269 = sub nsw i32 %268, 2
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %267, i64 %270
  %272 = load %struct.TYPE_6__*, %struct.TYPE_6__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 1
  %274 = load %struct.TYPE_5__*, %struct.TYPE_5__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %274, i32 0, i32 0
  %276 = load i8*, i8** %275, align 8
  %277 = load i8*, i8** %7, align 8
  %278 = call i64 @strcasecmp(i8* %276, i8* %277)
  %279 = icmp eq i64 %278, 0
  br i1 %279, label %280, label %286

280:                                              ; preds = %266, %255
  %281 = load i32, i32* %15, align 4
  %282 = add nsw i32 %281, 2
  store i32 %282, i32* %16, align 4
  %283 = load i32*, i32** %11, align 8
  %284 = load i32, i32* %16, align 4
  %285 = call i32 @g_array_append_val(i32* %283, i32 %284)
  br label %351

286:                                              ; preds = %266
  br label %346

287:                                              ; preds = %244
  %288 = load i32, i32* %15, align 4
  %289 = add nsw i32 %288, 3
  %290 = load i32, i32* %13, align 4
  %291 = icmp slt i32 %289, %290
  br i1 %291, label %292, label %345

292:                                              ; preds = %287
  %293 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %12, align 8
  %294 = load i32, i32* %15, align 4
  %295 = add nsw i32 %294, 1
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %293, i64 %296
  %298 = load %struct.TYPE_6__*, %struct.TYPE_6__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %298, i32 0, i32 1
  %300 = load %struct.TYPE_5__*, %struct.TYPE_5__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %300, i32 0, i32 0
  %302 = load i8*, i8** %301, align 8
  %303 = call i64 @strcasecmp(i8* %302, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %304 = icmp eq i64 %303, 0
  br i1 %304, label %305, label %345

305:                                              ; preds = %292
  %306 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %12, align 8
  %307 = load i32, i32* %15, align 4
  %308 = add nsw i32 %307, 2
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %306, i64 %309
  %311 = load %struct.TYPE_6__*, %struct.TYPE_6__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %311, i32 0, i32 0
  %313 = load i64, i64* %312, align 8
  %314 = load i64, i64* @TK_OBRACE, align 8
  %315 = icmp eq i64 %313, %314
  br i1 %315, label %316, label %345

316:                                              ; preds = %305
  %317 = load i32, i32* %15, align 4
  %318 = add nsw i32 %317, 3
  store i32 %318, i32* %16, align 4
  %319 = load i32*, i32** %11, align 8
  %320 = load i32, i32* %16, align 4
  %321 = call i32 @g_array_append_val(i32* %319, i32 %320)
  br label %322

322:                                              ; preds = %340, %316
  %323 = load i32, i32* %16, align 4
  %324 = add nsw i32 %323, 2
  store i32 %324, i32* %16, align 4
  %325 = load i32, i32* %13, align 4
  %326 = icmp slt i32 %324, %325
  br i1 %326, label %327, label %338

327:                                              ; preds = %322
  %328 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %12, align 8
  %329 = load i32, i32* %16, align 4
  %330 = sub nsw i32 %329, 1
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %328, i64 %331
  %333 = load %struct.TYPE_6__*, %struct.TYPE_6__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = load i64, i64* @TK_CBRACE, align 8
  %337 = icmp ne i64 %335, %336
  br label %338

338:                                              ; preds = %327, %322
  %339 = phi i1 [ false, %322 ], [ %337, %327 ]
  br i1 %339, label %340, label %344

340:                                              ; preds = %338
  %341 = load i32*, i32** %11, align 8
  %342 = load i32, i32* %16, align 4
  %343 = call i32 @g_array_append_val(i32* %341, i32 %342)
  br label %322

344:                                              ; preds = %338
  br label %351

345:                                              ; preds = %305, %292, %287
  br label %346

346:                                              ; preds = %345, %286
  br label %347

347:                                              ; preds = %346, %231, %221
  br label %348

348:                                              ; preds = %347
  %349 = load i32, i32* %15, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %15, align 4
  br label %216

351:                                              ; preds = %344, %280, %216
  br label %356

352:                                              ; preds = %203
  br label %353

353:                                              ; preds = %352
  %354 = load i32, i32* %14, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %14, align 4
  br label %199

356:                                              ; preds = %351, %199
  br label %548

357:                                              ; preds = %193
  %358 = load i32, i32* %9, align 4
  %359 = icmp eq i32 %358, 3
  br i1 %359, label %360, label %547

360:                                              ; preds = %357
  %361 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %12, align 8
  %362 = load i64, i64* %10, align 8
  %363 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %361, i64 %362
  %364 = load %struct.TYPE_6__*, %struct.TYPE_6__** %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %364, i32 0, i32 0
  %366 = load i64, i64* %365, align 8
  store i64 %366, i64* %17, align 8
  %367 = load i64, i64* %17, align 8
  %368 = load i64, i64* @TK_SQL_SET, align 8
  %369 = icmp eq i64 %367, %368
  br i1 %369, label %370, label %413

370:                                              ; preds = %360
  %371 = load i64, i64* %10, align 8
  %372 = add i64 %371, 1
  %373 = trunc i64 %372 to i32
  store i32 %373, i32* %14, align 4
  br label %374

374:                                              ; preds = %409, %370
  %375 = load i32, i32* %14, align 4
  %376 = load i32, i32* %13, align 4
  %377 = sub nsw i32 %376, 2
  %378 = icmp slt i32 %375, %377
  br i1 %378, label %379, label %412

379:                                              ; preds = %374
  %380 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %12, align 8
  %381 = load i32, i32* %14, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %380, i64 %382
  %384 = load %struct.TYPE_6__*, %struct.TYPE_6__** %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %384, i32 0, i32 0
  %386 = load i64, i64* %385, align 8
  %387 = load i64, i64* @TK_LITERAL, align 8
  %388 = icmp eq i64 %386, %387
  br i1 %388, label %389, label %408

389:                                              ; preds = %379
  %390 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %12, align 8
  %391 = load i32, i32* %14, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %390, i64 %392
  %394 = load %struct.TYPE_6__*, %struct.TYPE_6__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %394, i32 0, i32 1
  %396 = load %struct.TYPE_5__*, %struct.TYPE_5__** %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %396, i32 0, i32 0
  %398 = load i8*, i8** %397, align 8
  %399 = load i8*, i8** %8, align 8
  %400 = call i64 @strcasecmp(i8* %398, i8* %399)
  %401 = icmp eq i64 %400, 0
  br i1 %401, label %402, label %408

402:                                              ; preds = %389
  %403 = load i32, i32* %14, align 4
  %404 = add nsw i32 %403, 2
  store i32 %404, i32* %16, align 4
  %405 = load i32*, i32** %11, align 8
  %406 = load i32, i32* %16, align 4
  %407 = call i32 @g_array_append_val(i32* %405, i32 %406)
  br label %412

408:                                              ; preds = %389, %379
  br label %409

409:                                              ; preds = %408
  %410 = load i32, i32* %14, align 4
  %411 = add nsw i32 %410, 1
  store i32 %411, i32* %14, align 4
  br label %374

412:                                              ; preds = %402, %374
  br label %546

413:                                              ; preds = %360
  store i32 2, i32* %16, align 4
  %414 = load i64, i64* %17, align 8
  %415 = load i64, i64* @TK_OBRACE, align 8
  %416 = icmp eq i64 %414, %415
  br i1 %416, label %417, label %493

417:                                              ; preds = %413
  store i64 -1, i64* %18, align 8
  %418 = load i64, i64* %10, align 8
  %419 = add i64 %418, 1
  %420 = trunc i64 %419 to i32
  store i32 %420, i32* %15, align 4
  br label %421

421:                                              ; preds = %484, %417
  %422 = load i32, i32* %15, align 4
  %423 = load i32, i32* %13, align 4
  %424 = icmp slt i32 %422, %423
  br i1 %424, label %425, label %487

425:                                              ; preds = %421
  %426 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %12, align 8
  %427 = load i32, i32* %15, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %426, i64 %428
  %430 = load %struct.TYPE_6__*, %struct.TYPE_6__** %429, align 8
  %431 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %430, i32 0, i32 0
  %432 = load i64, i64* %431, align 8
  store i64 %432, i64* %17, align 8
  %433 = load i64, i64* %17, align 8
  %434 = load i64, i64* @TK_CBRACE, align 8
  %435 = icmp eq i64 %433, %434
  br i1 %435, label %436, label %437

436:                                              ; preds = %425
  br label %487

437:                                              ; preds = %425
  %438 = load i64, i64* %17, align 8
  %439 = load i64, i64* @TK_LITERAL, align 8
  %440 = icmp eq i64 %438, %439
  br i1 %440, label %441, label %483

441:                                              ; preds = %437
  %442 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %12, align 8
  %443 = load i32, i32* %15, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %442, i64 %444
  %446 = load %struct.TYPE_6__*, %struct.TYPE_6__** %445, align 8
  %447 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %446, i32 0, i32 1
  %448 = load %struct.TYPE_5__*, %struct.TYPE_5__** %447, align 8
  %449 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %448, i32 0, i32 0
  %450 = load i8*, i8** %449, align 8
  %451 = load i8*, i8** %8, align 8
  %452 = call i64 @strcasecmp(i8* %450, i8* %451)
  %453 = icmp eq i64 %452, 0
  br i1 %453, label %454, label %483

454:                                              ; preds = %441
  %455 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %12, align 8
  %456 = load i32, i32* %15, align 4
  %457 = sub nsw i32 %456, 1
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %455, i64 %458
  %460 = load %struct.TYPE_6__*, %struct.TYPE_6__** %459, align 8
  %461 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %460, i32 0, i32 0
  %462 = load i64, i64* %461, align 8
  %463 = load i64, i64* @TK_DOT, align 8
  %464 = icmp ne i64 %462, %463
  br i1 %464, label %479, label %465

465:                                              ; preds = %454
  %466 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %12, align 8
  %467 = load i32, i32* %15, align 4
  %468 = sub nsw i32 %467, 2
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %466, i64 %469
  %471 = load %struct.TYPE_6__*, %struct.TYPE_6__** %470, align 8
  %472 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %471, i32 0, i32 1
  %473 = load %struct.TYPE_5__*, %struct.TYPE_5__** %472, align 8
  %474 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %473, i32 0, i32 0
  %475 = load i8*, i8** %474, align 8
  %476 = load i8*, i8** %7, align 8
  %477 = call i64 @strcasecmp(i8* %475, i8* %476)
  %478 = icmp eq i64 %477, 0
  br i1 %478, label %479, label %482

479:                                              ; preds = %465, %454
  %480 = load i32, i32* %15, align 4
  %481 = sext i32 %480 to i64
  store i64 %481, i64* %18, align 8
  br label %487

482:                                              ; preds = %465
  br label %483

483:                                              ; preds = %482, %441, %437
  br label %484

484:                                              ; preds = %483
  %485 = load i32, i32* %15, align 4
  %486 = add nsw i32 %485, 1
  store i32 %486, i32* %15, align 4
  br label %421

487:                                              ; preds = %479, %436, %421
  %488 = load i64, i64* %18, align 8
  %489 = load i64, i64* %10, align 8
  %490 = sub i64 %488, %489
  %491 = add i64 %490, 1
  %492 = trunc i64 %491 to i32
  store i32 %492, i32* %16, align 4
  br label %493

493:                                              ; preds = %487, %413
  %494 = load i64, i64* %10, align 8
  %495 = trunc i64 %494 to i32
  store i32 %495, i32* %14, align 4
  br label %496

496:                                              ; preds = %542, %493
  %497 = load i32, i32* %14, align 4
  %498 = load i32, i32* %13, align 4
  %499 = sub nsw i32 %498, 1
  %500 = icmp slt i32 %497, %499
  br i1 %500, label %501, label %545

501:                                              ; preds = %496
  %502 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %12, align 8
  %503 = load i32, i32* %14, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %502, i64 %504
  %506 = load %struct.TYPE_6__*, %struct.TYPE_6__** %505, align 8
  %507 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %506, i32 0, i32 1
  %508 = load %struct.TYPE_5__*, %struct.TYPE_5__** %507, align 8
  %509 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %508, i32 0, i32 0
  %510 = load i8*, i8** %509, align 8
  store i8* %510, i8** %19, align 8
  %511 = load i8*, i8** %19, align 8
  %512 = call i64 @strcasecmp(i8* %511, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %513 = icmp eq i64 %512, 0
  br i1 %513, label %518, label %514

514:                                              ; preds = %501
  %515 = load i8*, i8** %19, align 8
  %516 = call i64 @strcasecmp(i8* %515, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %517 = icmp eq i64 %516, 0
  br i1 %517, label %518, label %541

518:                                              ; preds = %514, %501
  %519 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %12, align 8
  %520 = load i32, i32* %14, align 4
  %521 = add nsw i32 %520, 1
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %519, i64 %522
  %524 = load %struct.TYPE_6__*, %struct.TYPE_6__** %523, align 8
  %525 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %524, i32 0, i32 0
  %526 = load i64, i64* %525, align 8
  %527 = load i64, i64* @TK_OBRACE, align 8
  %528 = icmp eq i64 %526, %527
  br i1 %528, label %529, label %541

529:                                              ; preds = %518
  %530 = load i32, i32* %14, align 4
  %531 = load i32, i32* %16, align 4
  %532 = add nsw i32 %531, %530
  store i32 %532, i32* %16, align 4
  %533 = load i32, i32* %16, align 4
  %534 = load i32, i32* %13, align 4
  %535 = icmp slt i32 %533, %534
  br i1 %535, label %536, label %540

536:                                              ; preds = %529
  %537 = load i32*, i32** %11, align 8
  %538 = load i32, i32* %16, align 4
  %539 = call i32 @g_array_append_val(i32* %537, i32 %538)
  br label %540

540:                                              ; preds = %536, %529
  br label %545

541:                                              ; preds = %518, %514
  br label %542

542:                                              ; preds = %541
  %543 = load i32, i32* %14, align 4
  %544 = add nsw i32 %543, 1
  store i32 %544, i32* %14, align 4
  br label %496

545:                                              ; preds = %540, %496
  br label %546

546:                                              ; preds = %545, %412
  br label %547

547:                                              ; preds = %546, %357
  br label %548

548:                                              ; preds = %547, %356
  br label %549

549:                                              ; preds = %548, %192
  %550 = load i32*, i32** %11, align 8
  ret i32* %550
}

declare dso_local i32* @g_array_new(i32, i32, i32) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @g_array_append_val(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
