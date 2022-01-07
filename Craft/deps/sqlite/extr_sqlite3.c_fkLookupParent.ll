; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_fkLookupParent.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_fkLookupParent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_24__ = type { i32, i32* }
%struct.TYPE_25__ = type { i32, i32, %struct.TYPE_22__* }
%struct.TYPE_26__ = type { i32 }

@OP_FkIfZero = common dso_local global i32 0, align 4
@OP_IsNull = common dso_local global i32 0, align 4
@OP_SCopy = common dso_local global i32 0, align 4
@OP_MustBeInt = common dso_local global i32 0, align 4
@OP_Eq = common dso_local global i32 0, align 4
@OP_OpenRead = common dso_local global i32 0, align 4
@OP_NotExists = common dso_local global i32 0, align 4
@OP_Goto = common dso_local global i32 0, align 4
@P4_KEYINFO_HANDOFF = common dso_local global i32 0, align 4
@OP_Copy = common dso_local global i32 0, align 4
@OP_Ne = common dso_local global i32 0, align 4
@SQLITE_JUMPIFNULL = common dso_local global i32 0, align 4
@OP_MakeRecord = common dso_local global i32 0, align 4
@P4_TRANSIENT = common dso_local global i32 0, align 4
@OP_Found = common dso_local global i32 0, align 4
@SQLITE_CONSTRAINT_FOREIGNKEY = common dso_local global i32 0, align 4
@OE_Abort = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"foreign key constraint failed\00", align 1
@P4_STATIC = common dso_local global i32 0, align 4
@OP_FkCounter = common dso_local global i32 0, align 4
@OP_Close = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, i32, %struct.TYPE_22__*, %struct.TYPE_24__*, %struct.TYPE_25__*, i32*, i32, i32, i32)* @fkLookupParent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fkLookupParent(%struct.TYPE_23__* %0, i32 %1, %struct.TYPE_22__* %2, %struct.TYPE_24__* %3, %struct.TYPE_25__* %4, i32* %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca %struct.TYPE_24__*, align 8
  %14 = alloca %struct.TYPE_25__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %10, align 8
  store i32 %1, i32* %11, align 4
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %12, align 8
  store %struct.TYPE_24__* %3, %struct.TYPE_24__** %13, align 8
  store %struct.TYPE_25__* %4, %struct.TYPE_25__** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %34 = call i32* @sqlite3GetVdbe(%struct.TYPE_23__* %33)
  store i32* %34, i32** %20, align 8
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %21, align 4
  %39 = load i32*, i32** %20, align 8
  %40 = call i32 @sqlite3VdbeMakeLabel(i32* %39)
  store i32 %40, i32* %22, align 4
  %41 = load i32, i32* %17, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %9
  %44 = load i32*, i32** %20, align 8
  %45 = load i32, i32* @OP_FkIfZero, align 4
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %22, align 4
  %50 = call i32 @sqlite3VdbeAddOp2(i32* %44, i32 %45, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %43, %9
  store i32 0, i32* %19, align 4
  br label %52

52:                                               ; preds = %72, %51
  %53 = load i32, i32* %19, align 4
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %52
  %59 = load i32*, i32** %15, align 8
  %60 = load i32, i32* %19, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %16, align 4
  %65 = add nsw i32 %63, %64
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %23, align 4
  %67 = load i32*, i32** %20, align 8
  %68 = load i32, i32* @OP_IsNull, align 4
  %69 = load i32, i32* %23, align 4
  %70 = load i32, i32* %22, align 4
  %71 = call i32 @sqlite3VdbeAddOp2(i32* %67, i32 %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %58
  %73 = load i32, i32* %19, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %19, align 4
  br label %52

75:                                               ; preds = %52
  %76 = load i32, i32* %18, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %294

78:                                               ; preds = %75
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %80 = icmp eq %struct.TYPE_24__* %79, null
  br i1 %80, label %81, label %140

81:                                               ; preds = %78
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %83 = call i32 @sqlite3GetTempReg(%struct.TYPE_23__* %82)
  store i32 %83, i32* %25, align 4
  %84 = load i32*, i32** %20, align 8
  %85 = load i32, i32* @OP_SCopy, align 4
  %86 = load i32*, i32** %15, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  %90 = load i32, i32* %16, align 4
  %91 = add nsw i32 %89, %90
  %92 = load i32, i32* %25, align 4
  %93 = call i32 @sqlite3VdbeAddOp2(i32* %84, i32 %85, i32 %91, i32 %92)
  %94 = load i32*, i32** %20, align 8
  %95 = load i32, i32* @OP_MustBeInt, align 4
  %96 = load i32, i32* %25, align 4
  %97 = call i32 @sqlite3VdbeAddOp2(i32* %94, i32 %95, i32 %96, i32 0)
  store i32 %97, i32* %24, align 4
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %100, align 8
  %102 = icmp eq %struct.TYPE_22__* %98, %101
  br i1 %102, label %103, label %113

103:                                              ; preds = %81
  %104 = load i32, i32* %17, align 4
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %113

106:                                              ; preds = %103
  %107 = load i32*, i32** %20, align 8
  %108 = load i32, i32* @OP_Eq, align 4
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* %22, align 4
  %111 = load i32, i32* %25, align 4
  %112 = call i32 @sqlite3VdbeAddOp3(i32* %107, i32 %108, i32 %109, i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %106, %103, %81
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %115 = load i32, i32* %21, align 4
  %116 = load i32, i32* %11, align 4
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %118 = load i32, i32* @OP_OpenRead, align 4
  %119 = call i32 @sqlite3OpenTable(%struct.TYPE_23__* %114, i32 %115, i32 %116, %struct.TYPE_22__* %117, i32 %118)
  %120 = load i32*, i32** %20, align 8
  %121 = load i32, i32* @OP_NotExists, align 4
  %122 = load i32, i32* %21, align 4
  %123 = load i32, i32* %25, align 4
  %124 = call i32 @sqlite3VdbeAddOp3(i32* %120, i32 %121, i32 %122, i32 0, i32 %123)
  %125 = load i32*, i32** %20, align 8
  %126 = load i32, i32* @OP_Goto, align 4
  %127 = load i32, i32* %22, align 4
  %128 = call i32 @sqlite3VdbeAddOp2(i32* %125, i32 %126, i32 0, i32 %127)
  %129 = load i32*, i32** %20, align 8
  %130 = load i32*, i32** %20, align 8
  %131 = call i32 @sqlite3VdbeCurrentAddr(i32* %130)
  %132 = sub nsw i32 %131, 2
  %133 = call i32 @sqlite3VdbeJumpHere(i32* %129, i32 %132)
  %134 = load i32*, i32** %20, align 8
  %135 = load i32, i32* %24, align 4
  %136 = call i32 @sqlite3VdbeJumpHere(i32* %134, i32 %135)
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %138 = load i32, i32* %25, align 4
  %139 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_23__* %137, i32 %138)
  br label %293

140:                                              ; preds = %78
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* %26, align 4
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %145 = load i32, i32* %26, align 4
  %146 = call i32 @sqlite3GetTempRange(%struct.TYPE_23__* %144, i32 %145)
  store i32 %146, i32* %27, align 4
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %148 = call i32 @sqlite3GetTempReg(%struct.TYPE_23__* %147)
  store i32 %148, i32* %28, align 4
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %151 = call i32* @sqlite3IndexKeyinfo(%struct.TYPE_23__* %149, %struct.TYPE_24__* %150)
  store i32* %151, i32** %29, align 8
  %152 = load i32*, i32** %20, align 8
  %153 = load i32, i32* @OP_OpenRead, align 4
  %154 = load i32, i32* %21, align 4
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* %11, align 4
  %159 = call i32 @sqlite3VdbeAddOp3(i32* %152, i32 %153, i32 %154, i32 %157, i32 %158)
  %160 = load i32*, i32** %20, align 8
  %161 = load i32*, i32** %29, align 8
  %162 = bitcast i32* %161 to i8*
  %163 = load i32, i32* @P4_KEYINFO_HANDOFF, align 4
  %164 = call i32 @sqlite3VdbeChangeP4(i32* %160, i32 -1, i8* %162, i32 %163)
  store i32 0, i32* %19, align 4
  br label %165

165:                                              ; preds = %184, %140
  %166 = load i32, i32* %19, align 4
  %167 = load i32, i32* %26, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %187

169:                                              ; preds = %165
  %170 = load i32*, i32** %20, align 8
  %171 = load i32, i32* @OP_Copy, align 4
  %172 = load i32*, i32** %15, align 8
  %173 = load i32, i32* %19, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %176, 1
  %178 = load i32, i32* %16, align 4
  %179 = add nsw i32 %177, %178
  %180 = load i32, i32* %27, align 4
  %181 = load i32, i32* %19, align 4
  %182 = add nsw i32 %180, %181
  %183 = call i32 @sqlite3VdbeAddOp2(i32* %170, i32 %171, i32 %179, i32 %182)
  br label %184

184:                                              ; preds = %169
  %185 = load i32, i32* %19, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %19, align 4
  br label %165

187:                                              ; preds = %165
  %188 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %189 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %190 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %189, i32 0, i32 2
  %191 = load %struct.TYPE_22__*, %struct.TYPE_22__** %190, align 8
  %192 = icmp eq %struct.TYPE_22__* %188, %191
  br i1 %192, label %193, label %267

193:                                              ; preds = %187
  %194 = load i32, i32* %17, align 4
  %195 = icmp eq i32 %194, 1
  br i1 %195, label %196, label %267

196:                                              ; preds = %193
  %197 = load i32*, i32** %20, align 8
  %198 = call i32 @sqlite3VdbeCurrentAddr(i32* %197)
  %199 = load i32, i32* %26, align 4
  %200 = add nsw i32 %198, %199
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %30, align 4
  store i32 0, i32* %19, align 4
  br label %202

202:                                              ; preds = %259, %196
  %203 = load i32, i32* %19, align 4
  %204 = load i32, i32* %26, align 4
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %206, label %262

206:                                              ; preds = %202
  %207 = load i32*, i32** %15, align 8
  %208 = load i32, i32* %19, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = add nsw i32 %211, 1
  %213 = load i32, i32* %16, align 4
  %214 = add nsw i32 %212, %213
  store i32 %214, i32* %31, align 4
  %215 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %216 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %215, i32 0, i32 1
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* %19, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = add nsw i32 %221, 1
  %223 = load i32, i32* %16, align 4
  %224 = add nsw i32 %222, %223
  store i32 %224, i32* %32, align 4
  %225 = load i32*, i32** %15, align 8
  %226 = load i32, i32* %19, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %231 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = icmp ne i32 %229, %232
  %234 = zext i1 %233 to i32
  %235 = call i32 @assert(i32 %234)
  %236 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %237 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %236, i32 0, i32 1
  %238 = load i32*, i32** %237, align 8
  %239 = load i32, i32* %19, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %244 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = icmp eq i32 %242, %245
  br i1 %246, label %247, label %249

247:                                              ; preds = %206
  %248 = load i32, i32* %16, align 4
  store i32 %248, i32* %32, align 4
  br label %249

249:                                              ; preds = %247, %206
  %250 = load i32*, i32** %20, align 8
  %251 = load i32, i32* @OP_Ne, align 4
  %252 = load i32, i32* %31, align 4
  %253 = load i32, i32* %30, align 4
  %254 = load i32, i32* %32, align 4
  %255 = call i32 @sqlite3VdbeAddOp3(i32* %250, i32 %251, i32 %252, i32 %253, i32 %254)
  %256 = load i32*, i32** %20, align 8
  %257 = load i32, i32* @SQLITE_JUMPIFNULL, align 4
  %258 = call i32 @sqlite3VdbeChangeP5(i32* %256, i32 %257)
  br label %259

259:                                              ; preds = %249
  %260 = load i32, i32* %19, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %19, align 4
  br label %202

262:                                              ; preds = %202
  %263 = load i32*, i32** %20, align 8
  %264 = load i32, i32* @OP_Goto, align 4
  %265 = load i32, i32* %22, align 4
  %266 = call i32 @sqlite3VdbeAddOp2(i32* %263, i32 %264, i32 0, i32 %265)
  br label %267

267:                                              ; preds = %262, %193, %187
  %268 = load i32*, i32** %20, align 8
  %269 = load i32, i32* @OP_MakeRecord, align 4
  %270 = load i32, i32* %27, align 4
  %271 = load i32, i32* %26, align 4
  %272 = load i32, i32* %28, align 4
  %273 = call i32 @sqlite3VdbeAddOp3(i32* %268, i32 %269, i32 %270, i32 %271, i32 %272)
  %274 = load i32*, i32** %20, align 8
  %275 = load i32*, i32** %20, align 8
  %276 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %277 = call i8* @sqlite3IndexAffinityStr(i32* %275, %struct.TYPE_24__* %276)
  %278 = load i32, i32* @P4_TRANSIENT, align 4
  %279 = call i32 @sqlite3VdbeChangeP4(i32* %274, i32 -1, i8* %277, i32 %278)
  %280 = load i32*, i32** %20, align 8
  %281 = load i32, i32* @OP_Found, align 4
  %282 = load i32, i32* %21, align 4
  %283 = load i32, i32* %22, align 4
  %284 = load i32, i32* %28, align 4
  %285 = call i32 @sqlite3VdbeAddOp4Int(i32* %280, i32 %281, i32 %282, i32 %283, i32 %284, i32 0)
  %286 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %287 = load i32, i32* %28, align 4
  %288 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_23__* %286, i32 %287)
  %289 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %290 = load i32, i32* %27, align 4
  %291 = load i32, i32* %26, align 4
  %292 = call i32 @sqlite3ReleaseTempRange(%struct.TYPE_23__* %289, i32 %290, i32 %291)
  br label %293

293:                                              ; preds = %267, %113
  br label %294

294:                                              ; preds = %293, %75
  %295 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %296 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %319, label %299

299:                                              ; preds = %294
  %300 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %301 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %319, label %304

304:                                              ; preds = %299
  %305 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %306 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %319, label %309

309:                                              ; preds = %304
  %310 = load i32, i32* %17, align 4
  %311 = icmp eq i32 %310, 1
  %312 = zext i1 %311 to i32
  %313 = call i32 @assert(i32 %312)
  %314 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %315 = load i32, i32* @SQLITE_CONSTRAINT_FOREIGNKEY, align 4
  %316 = load i32, i32* @OE_Abort, align 4
  %317 = load i32, i32* @P4_STATIC, align 4
  %318 = call i32 @sqlite3HaltConstraint(%struct.TYPE_23__* %314, i32 %315, i32 %316, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %317)
  br label %339

319:                                              ; preds = %304, %299, %294
  %320 = load i32, i32* %17, align 4
  %321 = icmp sgt i32 %320, 0
  br i1 %321, label %322, label %331

322:                                              ; preds = %319
  %323 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %324 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %331

327:                                              ; preds = %322
  %328 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %329 = call %struct.TYPE_26__* @sqlite3ParseToplevel(%struct.TYPE_23__* %328)
  %330 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %329, i32 0, i32 0
  store i32 1, i32* %330, align 4
  br label %331

331:                                              ; preds = %327, %322, %319
  %332 = load i32*, i32** %20, align 8
  %333 = load i32, i32* @OP_FkCounter, align 4
  %334 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %335 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = load i32, i32* %17, align 4
  %338 = call i32 @sqlite3VdbeAddOp2(i32* %332, i32 %333, i32 %336, i32 %337)
  br label %339

339:                                              ; preds = %331, %309
  %340 = load i32*, i32** %20, align 8
  %341 = load i32, i32* %22, align 4
  %342 = call i32 @sqlite3VdbeResolveLabel(i32* %340, i32 %341)
  %343 = load i32*, i32** %20, align 8
  %344 = load i32, i32* @OP_Close, align 4
  %345 = load i32, i32* %21, align 4
  %346 = call i32 @sqlite3VdbeAddOp1(i32* %343, i32 %344, i32 %345)
  ret void
}

declare dso_local i32* @sqlite3GetVdbe(%struct.TYPE_23__*) #1

declare dso_local i32 @sqlite3VdbeMakeLabel(i32*) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @sqlite3GetTempReg(%struct.TYPE_23__*) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3OpenTable(%struct.TYPE_23__*, i32, i32, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeCurrentAddr(i32*) #1

declare dso_local i32 @sqlite3ReleaseTempReg(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @sqlite3GetTempRange(%struct.TYPE_23__*, i32) #1

declare dso_local i32* @sqlite3IndexKeyinfo(%struct.TYPE_23__*, %struct.TYPE_24__*) #1

declare dso_local i32 @sqlite3VdbeChangeP4(i32*, i32, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3VdbeChangeP5(i32*, i32) #1

declare dso_local i8* @sqlite3IndexAffinityStr(i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @sqlite3VdbeAddOp4Int(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3ReleaseTempRange(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @sqlite3HaltConstraint(%struct.TYPE_23__*, i32, i32, i8*, i32) #1

declare dso_local %struct.TYPE_26__* @sqlite3ParseToplevel(%struct.TYPE_23__*) #1

declare dso_local i32 @sqlite3VdbeResolveLabel(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
