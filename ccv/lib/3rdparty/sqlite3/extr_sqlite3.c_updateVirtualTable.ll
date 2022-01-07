; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_updateVirtualTable.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_updateVirtualTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, i64, i32, i32*, i32* }
%struct.TYPE_26__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_29__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32* }
%struct.TYPE_28__ = type { i32, i32* }

@OP_OpenEphemeral = common dso_local global i32 0, align 4
@WHERE_ONEPASS_DESIRED = common dso_local global i32 0, align 4
@OP_VColumn = common dso_local global i32 0, align 4
@OP_Rowid = common dso_local global i32 0, align 4
@OP_SCopy = common dso_local global i32 0, align 4
@OP_MakeRecord = common dso_local global i32 0, align 4
@OP_NewRowid = common dso_local global i32 0, align 4
@OP_Insert = common dso_local global i32 0, align 4
@OP_Rewind = common dso_local global i32 0, align 4
@OP_Column = common dso_local global i32 0, align 4
@OP_VUpdate = common dso_local global i32 0, align 4
@P4_VTAB = common dso_local global i32 0, align 4
@OE_Default = common dso_local global i32 0, align 4
@OE_Abort = common dso_local global i32 0, align 4
@OP_Next = common dso_local global i32 0, align 4
@OP_Close = common dso_local global i32 0, align 4
@OPFLAG_NOCHNG_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_27__*, %struct.TYPE_26__*, %struct.TYPE_25__*, %struct.TYPE_29__*, i32*, i32*, i32*, i32)* @updateVirtualTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @updateVirtualTable(%struct.TYPE_27__* %0, %struct.TYPE_26__* %1, %struct.TYPE_25__* %2, %struct.TYPE_29__* %3, i32* %4, i32* %5, i32* %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca %struct.TYPE_29__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca [2 x i32], align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.TYPE_28__*, align 8
  %32 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %9, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %10, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %11, align 8
  store %struct.TYPE_29__* %3, %struct.TYPE_29__** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 %7, i32* %16, align 4
  %33 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %33, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %17, align 8
  %36 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %20, align 8
  %39 = load i32*, i32** %20, align 8
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %41 = call i64 @sqlite3GetVTable(i32* %39, %struct.TYPE_25__* %40)
  %42 = inttoptr i64 %41 to i8*
  store i8* %42, i8** %21, align 8
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 2, %45
  store i32 %46, i32* %23, align 4
  %47 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %27, align 4
  %53 = load i32*, i32** %17, align 8
  %54 = ptrtoint i32* %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  store i32 %58, i32* %18, align 4
  %60 = load i32*, i32** %17, align 8
  %61 = load i32, i32* @OP_OpenEphemeral, align 4
  %62 = load i32, i32* %18, align 4
  %63 = load i32, i32* %23, align 4
  %64 = call i32 @sqlite3VdbeAddOp2(i32* %60, i32 %61, i32 %62, i32 %63)
  store i32 %64, i32* %30, align 4
  %65 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %24, align 4
  %69 = load i32, i32* %23, align 4
  %70 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 8
  store i32 %77, i32* %25, align 4
  %78 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 8
  store i32 %81, i32* %26, align 4
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %84 = load i32*, i32** %15, align 8
  %85 = load i32, i32* @WHERE_ONEPASS_DESIRED, align 4
  %86 = call i32* @sqlite3WhereBegin(%struct.TYPE_27__* %82, %struct.TYPE_26__* %83, i32* %84, i32 0, i32 0, i32 %85, i32 0)
  store i32* %86, i32** %22, align 8
  %87 = load i32*, i32** %22, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %8
  br label %307

90:                                               ; preds = %8
  store i32 0, i32* %19, align 4
  br label %91

91:                                               ; preds = %136, %90
  %92 = load i32, i32* %19, align 4
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %139

97:                                               ; preds = %91
  %98 = load i32*, i32** %14, align 8
  %99 = load i32, i32* %19, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = icmp sge i32 %102, 0
  br i1 %103, label %104, label %123

104:                                              ; preds = %97
  %105 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %106 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %107, align 8
  %109 = load i32*, i32** %14, align 8
  %110 = load i32, i32* %19, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %108, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %24, align 4
  %119 = add nsw i32 %118, 2
  %120 = load i32, i32* %19, align 4
  %121 = add nsw i32 %119, %120
  %122 = call i32 @sqlite3ExprCode(%struct.TYPE_27__* %105, i32* %117, i32 %121)
  br label %135

123:                                              ; preds = %97
  %124 = load i32*, i32** %17, align 8
  %125 = load i32, i32* @OP_VColumn, align 4
  %126 = load i32, i32* %27, align 4
  %127 = load i32, i32* %19, align 4
  %128 = load i32, i32* %24, align 4
  %129 = add nsw i32 %128, 2
  %130 = load i32, i32* %19, align 4
  %131 = add nsw i32 %129, %130
  %132 = call i32 @sqlite3VdbeAddOp3(i32* %124, i32 %125, i32 %126, i32 %127, i32 %131)
  %133 = load i32*, i32** %17, align 8
  %134 = call i32 @sqlite3VdbeChangeP5(i32* %133, i32 1)
  br label %135

135:                                              ; preds = %123, %104
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %19, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %19, align 4
  br label %91

139:                                              ; preds = %91
  %140 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %141 = call i64 @HasRowid(%struct.TYPE_25__* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %165

143:                                              ; preds = %139
  %144 = load i32*, i32** %17, align 8
  %145 = load i32, i32* @OP_Rowid, align 4
  %146 = load i32, i32* %27, align 4
  %147 = load i32, i32* %24, align 4
  %148 = call i32 @sqlite3VdbeAddOp2(i32* %144, i32 %145, i32 %146, i32 %147)
  %149 = load i32*, i32** %13, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %151, label %157

151:                                              ; preds = %143
  %152 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %153 = load i32*, i32** %13, align 8
  %154 = load i32, i32* %24, align 4
  %155 = add nsw i32 %154, 1
  %156 = call i32 @sqlite3ExprCode(%struct.TYPE_27__* %152, i32* %153, i32 %155)
  br label %164

157:                                              ; preds = %143
  %158 = load i32*, i32** %17, align 8
  %159 = load i32, i32* @OP_Rowid, align 4
  %160 = load i32, i32* %27, align 4
  %161 = load i32, i32* %24, align 4
  %162 = add nsw i32 %161, 1
  %163 = call i32 @sqlite3VdbeAddOp2(i32* %158, i32 %159, i32 %160, i32 %162)
  br label %164

164:                                              ; preds = %157, %151
  br label %198

165:                                              ; preds = %139
  %166 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %167 = call %struct.TYPE_28__* @sqlite3PrimaryKeyIndex(%struct.TYPE_25__* %166)
  store %struct.TYPE_28__* %167, %struct.TYPE_28__** %31, align 8
  %168 = load %struct.TYPE_28__*, %struct.TYPE_28__** %31, align 8
  %169 = icmp ne %struct.TYPE_28__* %168, null
  %170 = zext i1 %169 to i32
  %171 = call i32 @assert(i32 %170)
  %172 = load %struct.TYPE_28__*, %struct.TYPE_28__** %31, align 8
  %173 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp eq i32 %174, 1
  %176 = zext i1 %175 to i32
  %177 = call i32 @assert(i32 %176)
  %178 = load %struct.TYPE_28__*, %struct.TYPE_28__** %31, align 8
  %179 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %178, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 0
  %182 = load i32, i32* %181, align 4
  store i32 %182, i32* %32, align 4
  %183 = load i32*, i32** %17, align 8
  %184 = load i32, i32* @OP_VColumn, align 4
  %185 = load i32, i32* %27, align 4
  %186 = load i32, i32* %32, align 4
  %187 = load i32, i32* %24, align 4
  %188 = call i32 @sqlite3VdbeAddOp3(i32* %183, i32 %184, i32 %185, i32 %186, i32 %187)
  %189 = load i32*, i32** %17, align 8
  %190 = load i32, i32* @OP_SCopy, align 4
  %191 = load i32, i32* %24, align 4
  %192 = add nsw i32 %191, 2
  %193 = load i32, i32* %32, align 4
  %194 = add nsw i32 %192, %193
  %195 = load i32, i32* %24, align 4
  %196 = add nsw i32 %195, 1
  %197 = call i32 @sqlite3VdbeAddOp2(i32* %189, i32 %190, i32 %194, i32 %196)
  br label %198

198:                                              ; preds = %165, %164
  %199 = load i32*, i32** %22, align 8
  %200 = getelementptr inbounds [2 x i32], [2 x i32]* %28, i64 0, i64 0
  %201 = call i32 @sqlite3WhereOkOnePass(i32* %199, i32* %200)
  store i32 %201, i32* %29, align 4
  %202 = load i32, i32* %29, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %215

204:                                              ; preds = %198
  %205 = load i32*, i32** %17, align 8
  %206 = load i32, i32* %30, align 4
  %207 = call i32 @sqlite3VdbeChangeToNoop(i32* %205, i32 %206)
  %208 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %209 = call i64 @sqlite3IsToplevel(%struct.TYPE_27__* %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %204
  %212 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %213 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %212, i32 0, i32 1
  store i64 0, i64* %213, align 8
  br label %214

214:                                              ; preds = %211, %204
  br label %233

215:                                              ; preds = %198
  %216 = load i32*, i32** %17, align 8
  %217 = load i32, i32* @OP_MakeRecord, align 4
  %218 = load i32, i32* %24, align 4
  %219 = load i32, i32* %23, align 4
  %220 = load i32, i32* %25, align 4
  %221 = call i32 @sqlite3VdbeAddOp3(i32* %216, i32 %217, i32 %218, i32 %219, i32 %220)
  %222 = load i32*, i32** %17, align 8
  %223 = load i32, i32* @OP_NewRowid, align 4
  %224 = load i32, i32* %18, align 4
  %225 = load i32, i32* %26, align 4
  %226 = call i32 @sqlite3VdbeAddOp2(i32* %222, i32 %223, i32 %224, i32 %225)
  %227 = load i32*, i32** %17, align 8
  %228 = load i32, i32* @OP_Insert, align 4
  %229 = load i32, i32* %18, align 4
  %230 = load i32, i32* %25, align 4
  %231 = load i32, i32* %26, align 4
  %232 = call i32 @sqlite3VdbeAddOp3(i32* %227, i32 %228, i32 %229, i32 %230, i32 %231)
  br label %233

233:                                              ; preds = %215, %214
  %234 = load i32, i32* %29, align 4
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %262

236:                                              ; preds = %233
  %237 = load i32*, i32** %22, align 8
  %238 = call i32 @sqlite3WhereEnd(i32* %237)
  %239 = load i32*, i32** %17, align 8
  %240 = load i32, i32* @OP_Rewind, align 4
  %241 = load i32, i32* %18, align 4
  %242 = call i32 @sqlite3VdbeAddOp1(i32* %239, i32 %240, i32 %241)
  store i32 %242, i32* %30, align 4
  %243 = load i32*, i32** %17, align 8
  %244 = call i32 @VdbeCoverage(i32* %243)
  store i32 0, i32* %19, align 4
  br label %245

245:                                              ; preds = %258, %236
  %246 = load i32, i32* %19, align 4
  %247 = load i32, i32* %23, align 4
  %248 = icmp slt i32 %246, %247
  br i1 %248, label %249, label %261

249:                                              ; preds = %245
  %250 = load i32*, i32** %17, align 8
  %251 = load i32, i32* @OP_Column, align 4
  %252 = load i32, i32* %18, align 4
  %253 = load i32, i32* %19, align 4
  %254 = load i32, i32* %24, align 4
  %255 = load i32, i32* %19, align 4
  %256 = add nsw i32 %254, %255
  %257 = call i32 @sqlite3VdbeAddOp3(i32* %250, i32 %251, i32 %252, i32 %253, i32 %256)
  br label %258

258:                                              ; preds = %249
  %259 = load i32, i32* %19, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %19, align 4
  br label %245

261:                                              ; preds = %245
  br label %262

262:                                              ; preds = %261, %233
  %263 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %264 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %265 = call i32 @sqlite3VtabMakeWritable(%struct.TYPE_27__* %263, %struct.TYPE_25__* %264)
  %266 = load i32*, i32** %17, align 8
  %267 = load i32, i32* @OP_VUpdate, align 4
  %268 = load i32, i32* %23, align 4
  %269 = load i32, i32* %24, align 4
  %270 = load i8*, i8** %21, align 8
  %271 = load i32, i32* @P4_VTAB, align 4
  %272 = call i32 @sqlite3VdbeAddOp4(i32* %266, i32 %267, i32 0, i32 %268, i32 %269, i8* %270, i32 %271)
  %273 = load i32*, i32** %17, align 8
  %274 = load i32, i32* %16, align 4
  %275 = load i32, i32* @OE_Default, align 4
  %276 = icmp eq i32 %274, %275
  br i1 %276, label %277, label %279

277:                                              ; preds = %262
  %278 = load i32, i32* @OE_Abort, align 4
  br label %281

279:                                              ; preds = %262
  %280 = load i32, i32* %16, align 4
  br label %281

281:                                              ; preds = %279, %277
  %282 = phi i32 [ %278, %277 ], [ %280, %279 ]
  %283 = call i32 @sqlite3VdbeChangeP5(i32* %273, i32 %282)
  %284 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %285 = call i32 @sqlite3MayAbort(%struct.TYPE_27__* %284)
  %286 = load i32, i32* %29, align 4
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %304

288:                                              ; preds = %281
  %289 = load i32*, i32** %17, align 8
  %290 = load i32, i32* @OP_Next, align 4
  %291 = load i32, i32* %18, align 4
  %292 = load i32, i32* %30, align 4
  %293 = add nsw i32 %292, 1
  %294 = call i32 @sqlite3VdbeAddOp2(i32* %289, i32 %290, i32 %291, i32 %293)
  %295 = load i32*, i32** %17, align 8
  %296 = call i32 @VdbeCoverage(i32* %295)
  %297 = load i32*, i32** %17, align 8
  %298 = load i32, i32* %30, align 4
  %299 = call i32 @sqlite3VdbeJumpHere(i32* %297, i32 %298)
  %300 = load i32*, i32** %17, align 8
  %301 = load i32, i32* @OP_Close, align 4
  %302 = load i32, i32* %18, align 4
  %303 = call i32 @sqlite3VdbeAddOp2(i32* %300, i32 %301, i32 %302, i32 0)
  br label %307

304:                                              ; preds = %281
  %305 = load i32*, i32** %22, align 8
  %306 = call i32 @sqlite3WhereEnd(i32* %305)
  br label %307

307:                                              ; preds = %89, %304, %288
  ret void
}

declare dso_local i64 @sqlite3GetVTable(i32*, %struct.TYPE_25__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32* @sqlite3WhereBegin(%struct.TYPE_27__*, %struct.TYPE_26__*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3ExprCode(%struct.TYPE_27__*, i32*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeChangeP5(i32*, i32) #1

declare dso_local i64 @HasRowid(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_28__* @sqlite3PrimaryKeyIndex(%struct.TYPE_25__*) #1

declare dso_local i32 @sqlite3WhereOkOnePass(i32*, i32*) #1

declare dso_local i32 @sqlite3VdbeChangeToNoop(i32*, i32) #1

declare dso_local i64 @sqlite3IsToplevel(%struct.TYPE_27__*) #1

declare dso_local i32 @sqlite3WhereEnd(i32*) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @sqlite3VtabMakeWritable(%struct.TYPE_27__*, %struct.TYPE_25__*) #1

declare dso_local i32 @sqlite3VdbeAddOp4(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @sqlite3MayAbort(%struct.TYPE_27__*) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
