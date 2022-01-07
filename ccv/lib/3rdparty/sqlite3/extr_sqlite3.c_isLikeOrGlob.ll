; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_isLikeOrGlob.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_isLikeOrGlob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32*, i32*, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_28__ = type { i32, i32, %struct.TYPE_24__, i32, %struct.TYPE_22__ }
%struct.TYPE_24__ = type { i8* }
%struct.TYPE_22__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_28__* }

@TK_VARIABLE = common dso_local global i32 0, align 4
@SQLITE_EnableQPSG = common dso_local global i32 0, align 4
@SQLITE_AFF_BLOB = common dso_local global i32 0, align 4
@SQLITE_TEXT = common dso_local global i64 0, align 8
@TK_REGISTER = common dso_local global i32 0, align 4
@TK_STRING = common dso_local global i32 0, align 4
@TK_COLUMN = common dso_local global i64 0, align 8
@SQLITE_AFF_TEXT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*, %struct.TYPE_28__*, %struct.TYPE_28__**, i32*, i32*)* @isLikeOrGlob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isLikeOrGlob(%struct.TYPE_26__* %0, %struct.TYPE_28__* %1, %struct.TYPE_28__** %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca %struct.TYPE_28__**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_28__*, align 8
  %14 = alloca %struct.TYPE_28__*, align 8
  %15 = alloca %struct.TYPE_27__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [4 x i8], align 1
  %19 = alloca %struct.TYPE_25__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_28__*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %7, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %8, align 8
  store %struct.TYPE_28__** %2, %struct.TYPE_28__*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i8* null, i8** %12, align 8
  %31 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %32, align 8
  store %struct.TYPE_25__* %33, %struct.TYPE_25__** %19, align 8
  store i32* null, i32** %20, align 8
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %35 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = getelementptr inbounds [4 x i8], [4 x i8]* %18, i64 0, i64 0
  %38 = call i32 @sqlite3IsLikeFunction(%struct.TYPE_25__* %34, %struct.TYPE_28__* %35, i32* %36, i8* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %346

41:                                               ; preds = %5
  %42 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_27__*, %struct.TYPE_27__** %44, align 8
  store %struct.TYPE_27__* %45, %struct.TYPE_27__** %15, align 8
  %46 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %47 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i64 1
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_28__*, %struct.TYPE_28__** %50, align 8
  store %struct.TYPE_28__* %51, %struct.TYPE_28__** %14, align 8
  %52 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_28__*, %struct.TYPE_28__** %56, align 8
  %58 = call %struct.TYPE_28__* @sqlite3ExprSkipCollate(%struct.TYPE_28__* %57)
  store %struct.TYPE_28__* %58, %struct.TYPE_28__** %13, align 8
  %59 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %21, align 4
  %62 = load i32, i32* %21, align 4
  %63 = load i32, i32* @TK_VARIABLE, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %114

65:                                               ; preds = %41
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @SQLITE_EnableQPSG, align 4
  %70 = and i32 %68, %69
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %114

72:                                               ; preds = %65
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  store i32* %75, i32** %23, align 8
  %76 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %24, align 4
  %79 = load i32*, i32** %23, align 8
  %80 = load i32, i32* %24, align 4
  %81 = load i32, i32* @SQLITE_AFF_BLOB, align 4
  %82 = call i32* @sqlite3VdbeGetBoundValue(i32* %79, i32 %80, i32 %81)
  store i32* %82, i32** %20, align 8
  %83 = load i32*, i32** %20, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %93

85:                                               ; preds = %72
  %86 = load i32*, i32** %20, align 8
  %87 = call i64 @sqlite3_value_type(i32* %86)
  %88 = load i64, i64* @SQLITE_TEXT, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load i32*, i32** %20, align 8
  %92 = call i8* @sqlite3_value_text(i32* %91)
  store i8* %92, i8** %12, align 8
  br label %93

93:                                               ; preds = %90, %85, %72
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %24, align 4
  %98 = call i32 @sqlite3VdbeSetVarmask(i32* %96, i32 %97)
  %99 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @TK_VARIABLE, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %110, label %104

104:                                              ; preds = %93
  %105 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @TK_REGISTER, align 4
  %109 = icmp eq i32 %107, %108
  br label %110

110:                                              ; preds = %104, %93
  %111 = phi i1 [ true, %93 ], [ %109, %104 ]
  %112 = zext i1 %111 to i32
  %113 = call i32 @assert(i32 %112)
  br label %124

114:                                              ; preds = %65, %41
  %115 = load i32, i32* %21, align 4
  %116 = load i32, i32* @TK_STRING, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %114
  %119 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %120 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  store i8* %122, i8** %12, align 8
  br label %123

123:                                              ; preds = %118, %114
  br label %124

124:                                              ; preds = %123, %110
  %125 = load i8*, i8** %12, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %339

127:                                              ; preds = %124
  %128 = load i8*, i8** %12, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 0
  %130 = load i8, i8* %129, align 1
  %131 = call i64 @sqlite3Isdigit(i8 signext %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %139, label %133

133:                                              ; preds = %127
  %134 = load i8*, i8** %12, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 0
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp eq i32 %137, 45
  br i1 %138, label %139, label %161

139:                                              ; preds = %133, %127
  %140 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %141 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = sext i32 %142 to i64
  %144 = load i64, i64* @TK_COLUMN, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %157, label %146

146:                                              ; preds = %139
  %147 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %148 = call i64 @sqlite3ExprAffinity(%struct.TYPE_28__* %147)
  %149 = load i64, i64* @SQLITE_AFF_TEXT, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %157, label %151

151:                                              ; preds = %146
  %152 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %153 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = call i64 @IsVirtual(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %151, %146, %139
  %158 = load i32*, i32** %20, align 8
  %159 = call i32 @sqlite3ValueFree(i32* %158)
  store i32 0, i32* %6, align 4
  br label %346

160:                                              ; preds = %151
  br label %161

161:                                              ; preds = %160, %133
  store i32 0, i32* %17, align 4
  br label %162

162:                                              ; preds = %209, %161
  %163 = load i8*, i8** %12, align 8
  %164 = load i32, i32* %17, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %163, i64 %165
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  store i32 %168, i32* %16, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %188

170:                                              ; preds = %162
  %171 = load i32, i32* %16, align 4
  %172 = getelementptr inbounds [4 x i8], [4 x i8]* %18, i64 0, i64 0
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = icmp ne i32 %171, %174
  br i1 %175, label %176, label %188

176:                                              ; preds = %170
  %177 = load i32, i32* %16, align 4
  %178 = getelementptr inbounds [4 x i8], [4 x i8]* %18, i64 0, i64 1
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp ne i32 %177, %180
  br i1 %181, label %182, label %188

182:                                              ; preds = %176
  %183 = load i32, i32* %16, align 4
  %184 = getelementptr inbounds [4 x i8], [4 x i8]* %18, i64 0, i64 2
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = icmp ne i32 %183, %186
  br label %188

188:                                              ; preds = %182, %176, %170, %162
  %189 = phi i1 [ false, %176 ], [ false, %170 ], [ false, %162 ], [ %187, %182 ]
  br i1 %189, label %190, label %210

190:                                              ; preds = %188
  %191 = load i32, i32* %17, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %17, align 4
  %193 = load i32, i32* %16, align 4
  %194 = getelementptr inbounds [4 x i8], [4 x i8]* %18, i64 0, i64 3
  %195 = load i8, i8* %194, align 1
  %196 = sext i8 %195 to i32
  %197 = icmp eq i32 %193, %196
  br i1 %197, label %198, label %209

198:                                              ; preds = %190
  %199 = load i8*, i8** %12, align 8
  %200 = load i32, i32* %17, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, i8* %199, i64 %201
  %203 = load i8, i8* %202, align 1
  %204 = sext i8 %203 to i32
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %198
  %207 = load i32, i32* %17, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %17, align 4
  br label %209

209:                                              ; preds = %206, %198, %190
  br label %162

210:                                              ; preds = %188
  %211 = load i32, i32* %17, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %337

213:                                              ; preds = %210
  %214 = load i8*, i8** %12, align 8
  %215 = load i32, i32* %17, align 4
  %216 = sub nsw i32 %215, 1
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8, i8* %214, i64 %217
  %219 = load i8, i8* %218, align 1
  %220 = sext i8 %219 to i32
  %221 = icmp ne i32 255, %220
  br i1 %221, label %222, label %337

222:                                              ; preds = %213
  %223 = load i32, i32* %16, align 4
  %224 = getelementptr inbounds [4 x i8], [4 x i8]* %18, i64 0, i64 0
  %225 = load i8, i8* %224, align 1
  %226 = sext i8 %225 to i32
  %227 = icmp eq i32 %223, %226
  br i1 %227, label %228, label %237

228:                                              ; preds = %222
  %229 = load i8*, i8** %12, align 8
  %230 = load i32, i32* %17, align 4
  %231 = add nsw i32 %230, 1
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8, i8* %229, i64 %232
  %234 = load i8, i8* %233, align 1
  %235 = sext i8 %234 to i32
  %236 = icmp eq i32 %235, 0
  br label %237

237:                                              ; preds = %228, %222
  %238 = phi i1 [ false, %222 ], [ %236, %228 ]
  %239 = zext i1 %238 to i32
  %240 = load i32*, i32** %10, align 8
  store i32 %239, i32* %240, align 4
  %241 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %242 = load i32, i32* @TK_STRING, align 4
  %243 = load i8*, i8** %12, align 8
  %244 = call %struct.TYPE_28__* @sqlite3Expr(%struct.TYPE_25__* %241, i32 %242, i8* %243)
  store %struct.TYPE_28__* %244, %struct.TYPE_28__** %25, align 8
  %245 = load %struct.TYPE_28__*, %struct.TYPE_28__** %25, align 8
  %246 = icmp ne %struct.TYPE_28__* %245, null
  br i1 %246, label %247, label %293

247:                                              ; preds = %237
  %248 = load %struct.TYPE_28__*, %struct.TYPE_28__** %25, align 8
  %249 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %248, i32 0, i32 2
  %250 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %249, i32 0, i32 0
  %251 = load i8*, i8** %250, align 8
  store i8* %251, i8** %28, align 8
  %252 = load i8*, i8** %28, align 8
  %253 = load i32, i32* %17, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i8, i8* %252, i64 %254
  store i8 0, i8* %255, align 1
  store i32 0, i32* %27, align 4
  store i32 0, i32* %26, align 4
  br label %256

256:                                              ; preds = %285, %247
  %257 = load i32, i32* %26, align 4
  %258 = load i32, i32* %17, align 4
  %259 = icmp slt i32 %257, %258
  br i1 %259, label %260, label %288

260:                                              ; preds = %256
  %261 = load i8*, i8** %28, align 8
  %262 = load i32, i32* %26, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8, i8* %261, i64 %263
  %265 = load i8, i8* %264, align 1
  %266 = sext i8 %265 to i32
  %267 = getelementptr inbounds [4 x i8], [4 x i8]* %18, i64 0, i64 3
  %268 = load i8, i8* %267, align 1
  %269 = sext i8 %268 to i32
  %270 = icmp eq i32 %266, %269
  br i1 %270, label %271, label %274

271:                                              ; preds = %260
  %272 = load i32, i32* %26, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %26, align 4
  br label %274

274:                                              ; preds = %271, %260
  %275 = load i8*, i8** %28, align 8
  %276 = load i32, i32* %26, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i8, i8* %275, i64 %277
  %279 = load i8, i8* %278, align 1
  %280 = load i8*, i8** %28, align 8
  %281 = load i32, i32* %27, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %27, align 4
  %283 = sext i32 %281 to i64
  %284 = getelementptr inbounds i8, i8* %280, i64 %283
  store i8 %279, i8* %284, align 1
  br label %285

285:                                              ; preds = %274
  %286 = load i32, i32* %26, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %26, align 4
  br label %256

288:                                              ; preds = %256
  %289 = load i8*, i8** %28, align 8
  %290 = load i32, i32* %27, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i8, i8* %289, i64 %291
  store i8 0, i8* %292, align 1
  br label %293

293:                                              ; preds = %288, %237
  %294 = load %struct.TYPE_28__*, %struct.TYPE_28__** %25, align 8
  %295 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %9, align 8
  store %struct.TYPE_28__* %294, %struct.TYPE_28__** %295, align 8
  %296 = load i32, i32* %21, align 4
  %297 = load i32, i32* @TK_VARIABLE, align 4
  %298 = icmp eq i32 %296, %297
  br i1 %298, label %299, label %336

299:                                              ; preds = %293
  %300 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %301 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %300, i32 0, i32 0
  %302 = load i32*, i32** %301, align 8
  store i32* %302, i32** %29, align 8
  %303 = load i32*, i32** %29, align 8
  %304 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %305 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = call i32 @sqlite3VdbeSetVarmask(i32* %303, i32 %306)
  %308 = load i32*, i32** %10, align 8
  %309 = load i32, i32* %308, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %335

311:                                              ; preds = %299
  %312 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %313 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %312, i32 0, i32 2
  %314 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %313, i32 0, i32 0
  %315 = load i8*, i8** %314, align 8
  %316 = getelementptr inbounds i8, i8* %315, i64 1
  %317 = load i8, i8* %316, align 1
  %318 = sext i8 %317 to i32
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %335

320:                                              ; preds = %311
  %321 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %322 = call i32 @sqlite3GetTempReg(%struct.TYPE_26__* %321)
  store i32 %322, i32* %30, align 4
  %323 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %324 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %325 = load i32, i32* %30, align 4
  %326 = call i32 @sqlite3ExprCodeTarget(%struct.TYPE_26__* %323, %struct.TYPE_28__* %324, i32 %325)
  %327 = load i32*, i32** %29, align 8
  %328 = load i32*, i32** %29, align 8
  %329 = call i64 @sqlite3VdbeCurrentAddr(i32* %328)
  %330 = sub nsw i64 %329, 1
  %331 = call i32 @sqlite3VdbeChangeP3(i32* %327, i64 %330, i32 0)
  %332 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %333 = load i32, i32* %30, align 4
  %334 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_26__* %332, i32 %333)
  br label %335

335:                                              ; preds = %320, %311, %299
  br label %336

336:                                              ; preds = %335, %293
  br label %338

337:                                              ; preds = %213, %210
  store i8* null, i8** %12, align 8
  br label %338

338:                                              ; preds = %337, %336
  br label %339

339:                                              ; preds = %338, %124
  %340 = load i8*, i8** %12, align 8
  %341 = icmp ne i8* %340, null
  %342 = zext i1 %341 to i32
  store i32 %342, i32* %22, align 4
  %343 = load i32*, i32** %20, align 8
  %344 = call i32 @sqlite3ValueFree(i32* %343)
  %345 = load i32, i32* %22, align 4
  store i32 %345, i32* %6, align 4
  br label %346

346:                                              ; preds = %339, %157, %40
  %347 = load i32, i32* %6, align 4
  ret i32 %347
}

declare dso_local i32 @sqlite3IsLikeFunction(%struct.TYPE_25__*, %struct.TYPE_28__*, i32*, i8*) #1

declare dso_local %struct.TYPE_28__* @sqlite3ExprSkipCollate(%struct.TYPE_28__*) #1

declare dso_local i32* @sqlite3VdbeGetBoundValue(i32*, i32, i32) #1

declare dso_local i64 @sqlite3_value_type(i32*) #1

declare dso_local i8* @sqlite3_value_text(i32*) #1

declare dso_local i32 @sqlite3VdbeSetVarmask(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3Isdigit(i8 signext) #1

declare dso_local i64 @sqlite3ExprAffinity(%struct.TYPE_28__*) #1

declare dso_local i64 @IsVirtual(i32) #1

declare dso_local i32 @sqlite3ValueFree(i32*) #1

declare dso_local %struct.TYPE_28__* @sqlite3Expr(%struct.TYPE_25__*, i32, i8*) #1

declare dso_local i32 @sqlite3GetTempReg(%struct.TYPE_26__*) #1

declare dso_local i32 @sqlite3ExprCodeTarget(%struct.TYPE_26__*, %struct.TYPE_28__*, i32) #1

declare dso_local i32 @sqlite3VdbeChangeP3(i32*, i64, i32) #1

declare dso_local i64 @sqlite3VdbeCurrentAddr(i32*) #1

declare dso_local i32 @sqlite3ReleaseTempReg(%struct.TYPE_26__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
