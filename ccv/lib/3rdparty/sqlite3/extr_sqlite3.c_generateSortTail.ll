; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_generateSortTail.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_generateSortTail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32, i32* }
%struct.TYPE_23__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.ExprList_item* }
%struct.ExprList_item = type { i64, i64, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32 }

@OP_Gosub = common dso_local global i32 0, align 4
@SRT_Output = common dso_local global i32 0, align 4
@SRT_Coroutine = common dso_local global i32 0, align 4
@SORTFLAG_UseSorter = common dso_local global i32 0, align 4
@OP_Once = common dso_local global i32 0, align 4
@OP_OpenPseudo = common dso_local global i32 0, align 4
@OP_SorterSort = common dso_local global i32 0, align 4
@OP_SorterData = common dso_local global i32 0, align 4
@OP_Sort = common dso_local global i32 0, align 4
@OP_Column = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@OP_NewRowid = common dso_local global i32 0, align 4
@OP_Insert = common dso_local global i32 0, align 4
@OPFLAG_APPEND = common dso_local global i32 0, align 4
@OP_MakeRecord = common dso_local global i32 0, align 4
@OP_IdxInsert = common dso_local global i32 0, align 4
@OP_ResultRow = common dso_local global i32 0, align 4
@OP_Yield = common dso_local global i32 0, align 4
@OP_SorterNext = common dso_local global i32 0, align 4
@OP_Next = common dso_local global i32 0, align 4
@OP_Return = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_24__*, %struct.TYPE_23__*, %struct.TYPE_21__*, i32, %struct.TYPE_22__*)* @generateSortTail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generateSortTail(%struct.TYPE_24__* %0, %struct.TYPE_23__* %1, %struct.TYPE_21__* %2, i32 %3, %struct.TYPE_22__* %4) #0 {
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_25__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.ExprList_item*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %6, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %7, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_22__* %4, %struct.TYPE_22__** %10, align 8
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %11, align 8
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %12, align 4
  %37 = load i32*, i32** %11, align 8
  %38 = call i32 @sqlite3VdbeMakeLabel(i32* %37)
  store i32 %38, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 6
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %40, align 8
  store %struct.TYPE_25__* %41, %struct.TYPE_25__** %17, align 8
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %18, align 4
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %19, align 4
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  %52 = load %struct.ExprList_item*, %struct.ExprList_item** %51, align 8
  store %struct.ExprList_item* %52, %struct.ExprList_item** %28, align 8
  %53 = load i32, i32* %12, align 4
  %54 = icmp slt i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %5
  %62 = load i32*, i32** %11, align 8
  %63 = load i32, i32* @OP_Gosub, align 4
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @sqlite3VdbeAddOp2(i32* %62, i32 %63, i32 %66, i32 %69)
  %71 = load i32*, i32** %11, align 8
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @sqlite3VdbeGoto(i32* %71, i32 %72)
  %74 = load i32*, i32** %11, align 8
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @sqlite3VdbeResolveLabel(i32* %74, i32 %77)
  br label %79

79:                                               ; preds = %61, %5
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %16, align 4
  %83 = load i32, i32* %18, align 4
  %84 = load i32, i32* @SRT_Output, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %93, label %86

86:                                               ; preds = %79
  %87 = load i32, i32* %18, align 4
  %88 = load i32, i32* @SRT_Coroutine, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %93, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* %18, align 4
  %92 = icmp eq i32 %91, 130
  br i1 %92, label %93, label %98

93:                                               ; preds = %90, %86, %79
  store i32 0, i32* %21, align 4
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %20, align 4
  %97 = load i32, i32* %9, align 4
  store i32 %97, i32* %25, align 4
  br label %105

98:                                               ; preds = %90
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %100 = call i32 @sqlite3GetTempReg(%struct.TYPE_24__* %99)
  store i32 %100, i32* %21, align 4
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @sqlite3GetTempRange(%struct.TYPE_24__* %101, i32 %102)
  store i32 %103, i32* %20, align 4
  %104 = load i32, i32* %9, align 4
  store i32 %104, i32* %25, align 4
  br label %105

105:                                              ; preds = %98, %93
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = sub nsw i32 %108, %111
  store i32 %112, i32* %23, align 4
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @SORTFLAG_UseSorter, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %175

119:                                              ; preds = %105
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 8
  store i32 %123, i32* %29, align 4
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 4
  store i32 %126, i32* %24, align 4
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %119
  %133 = load i32*, i32** %11, align 8
  %134 = load i32, i32* @OP_Once, align 4
  %135 = call i32 @sqlite3VdbeAddOp0(i32* %133, i32 %134)
  store i32 %135, i32* %15, align 4
  %136 = load i32*, i32** %11, align 8
  %137 = call i32 @VdbeCoverage(i32* %136)
  br label %138

138:                                              ; preds = %132, %119
  %139 = load i32*, i32** %11, align 8
  %140 = load i32, i32* @OP_OpenPseudo, align 4
  %141 = load i32, i32* %24, align 4
  %142 = load i32, i32* %29, align 4
  %143 = load i32, i32* %23, align 4
  %144 = add nsw i32 %143, 1
  %145 = load i32, i32* %25, align 4
  %146 = add nsw i32 %144, %145
  %147 = call i32 @sqlite3VdbeAddOp3(i32* %139, i32 %140, i32 %141, i32 %142, i32 %146)
  %148 = load i32, i32* %15, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %138
  %151 = load i32*, i32** %11, align 8
  %152 = load i32, i32* %15, align 4
  %153 = call i32 @sqlite3VdbeJumpHere(i32* %151, i32 %152)
  br label %154

154:                                              ; preds = %150, %138
  %155 = load i32*, i32** %11, align 8
  %156 = load i32, i32* @OP_SorterSort, align 4
  %157 = load i32, i32* %16, align 4
  %158 = load i32, i32* %12, align 4
  %159 = call i32 @sqlite3VdbeAddOp2(i32* %155, i32 %156, i32 %157, i32 %158)
  %160 = add nsw i32 1, %159
  store i32 %160, i32* %14, align 4
  %161 = load i32*, i32** %11, align 8
  %162 = call i32 @VdbeCoverage(i32* %161)
  %163 = load i32*, i32** %11, align 8
  %164 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* %13, align 4
  %168 = call i32 @codeOffset(i32* %163, i32 %166, i32 %167)
  %169 = load i32*, i32** %11, align 8
  %170 = load i32, i32* @OP_SorterData, align 4
  %171 = load i32, i32* %16, align 4
  %172 = load i32, i32* %29, align 4
  %173 = load i32, i32* %24, align 4
  %174 = call i32 @sqlite3VdbeAddOp3(i32* %169, i32 %170, i32 %171, i32 %172, i32 %173)
  store i32 0, i32* %27, align 4
  br label %191

175:                                              ; preds = %105
  %176 = load i32*, i32** %11, align 8
  %177 = load i32, i32* @OP_Sort, align 4
  %178 = load i32, i32* %16, align 4
  %179 = load i32, i32* %12, align 4
  %180 = call i32 @sqlite3VdbeAddOp2(i32* %176, i32 %177, i32 %178, i32 %179)
  %181 = add nsw i32 1, %180
  store i32 %181, i32* %14, align 4
  %182 = load i32*, i32** %11, align 8
  %183 = call i32 @VdbeCoverage(i32* %182)
  %184 = load i32*, i32** %11, align 8
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* %13, align 4
  %189 = call i32 @codeOffset(i32* %184, i32 %187, i32 %188)
  %190 = load i32, i32* %16, align 4
  store i32 %190, i32* %24, align 4
  store i32 1, i32* %27, align 4
  br label %191

191:                                              ; preds = %175, %154
  store i32 0, i32* %26, align 4
  %192 = load i32, i32* %23, align 4
  %193 = load i32, i32* %27, align 4
  %194 = add nsw i32 %192, %193
  %195 = sub nsw i32 %194, 1
  store i32 %195, i32* %22, align 4
  br label %196

196:                                              ; preds = %214, %191
  %197 = load i32, i32* %26, align 4
  %198 = load i32, i32* %25, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %217

200:                                              ; preds = %196
  %201 = load %struct.ExprList_item*, %struct.ExprList_item** %28, align 8
  %202 = load i32, i32* %26, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %201, i64 %203
  %205 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %200
  %211 = load i32, i32* %22, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %22, align 4
  br label %213

213:                                              ; preds = %210, %200
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %26, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %26, align 4
  br label %196

217:                                              ; preds = %196
  %218 = load i32, i32* %25, align 4
  %219 = sub nsw i32 %218, 1
  store i32 %219, i32* %26, align 4
  br label %220

220:                                              ; preds = %282, %217
  %221 = load i32, i32* %26, align 4
  %222 = icmp sge i32 %221, 0
  br i1 %222, label %223, label %285

223:                                              ; preds = %220
  %224 = load %struct.ExprList_item*, %struct.ExprList_item** %28, align 8
  %225 = load i32, i32* %26, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %224, i64 %226
  %228 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %244

233:                                              ; preds = %223
  %234 = load %struct.ExprList_item*, %struct.ExprList_item** %28, align 8
  %235 = load i32, i32* %26, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %234, i64 %236
  %238 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = sub nsw i64 %241, 1
  %243 = trunc i64 %242 to i32
  store i32 %243, i32* %30, align 4
  br label %247

244:                                              ; preds = %223
  %245 = load i32, i32* %22, align 4
  %246 = add nsw i32 %245, -1
  store i32 %246, i32* %22, align 4
  store i32 %245, i32* %30, align 4
  br label %247

247:                                              ; preds = %244, %233
  %248 = load i32*, i32** %11, align 8
  %249 = load i32, i32* @OP_Column, align 4
  %250 = load i32, i32* %24, align 4
  %251 = load i32, i32* %30, align 4
  %252 = load i32, i32* %20, align 4
  %253 = load i32, i32* %26, align 4
  %254 = add nsw i32 %252, %253
  %255 = call i32 @sqlite3VdbeAddOp3(i32* %248, i32 %249, i32 %250, i32 %251, i32 %254)
  %256 = load i32*, i32** %11, align 8
  %257 = load %struct.ExprList_item*, %struct.ExprList_item** %28, align 8
  %258 = load i32, i32* %26, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %257, i64 %259
  %261 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %271

264:                                              ; preds = %247
  %265 = load %struct.ExprList_item*, %struct.ExprList_item** %28, align 8
  %266 = load i32, i32* %26, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %265, i64 %267
  %269 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %268, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  br label %278

271:                                              ; preds = %247
  %272 = load %struct.ExprList_item*, %struct.ExprList_item** %28, align 8
  %273 = load i32, i32* %26, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %272, i64 %274
  %276 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  br label %278

278:                                              ; preds = %271, %264
  %279 = phi i64 [ %270, %264 ], [ %277, %271 ]
  %280 = inttoptr i64 %279 to i32*
  %281 = call i32 @VdbeComment(i32* %280)
  br label %282

282:                                              ; preds = %278
  %283 = load i32, i32* %26, align 4
  %284 = add nsw i32 %283, -1
  store i32 %284, i32* %26, align 4
  br label %220

285:                                              ; preds = %220
  %286 = load i32, i32* %18, align 4
  switch i32 %286, label %333 [
    i32 128, label %287
    i32 131, label %287
    i32 129, label %302
    i32 130, label %332
  ]

287:                                              ; preds = %285, %285
  %288 = load i32*, i32** %11, align 8
  %289 = load i32, i32* @OP_NewRowid, align 4
  %290 = load i32, i32* %19, align 4
  %291 = load i32, i32* %21, align 4
  %292 = call i32 @sqlite3VdbeAddOp2(i32* %288, i32 %289, i32 %290, i32 %291)
  %293 = load i32*, i32** %11, align 8
  %294 = load i32, i32* @OP_Insert, align 4
  %295 = load i32, i32* %19, align 4
  %296 = load i32, i32* %20, align 4
  %297 = load i32, i32* %21, align 4
  %298 = call i32 @sqlite3VdbeAddOp3(i32* %293, i32 %294, i32 %295, i32 %296, i32 %297)
  %299 = load i32*, i32** %11, align 8
  %300 = load i32, i32* @OPFLAG_APPEND, align 4
  %301 = call i32 @sqlite3VdbeChangeP5(i32* %299, i32 %300)
  br label %380

302:                                              ; preds = %285
  %303 = load i32, i32* %9, align 4
  %304 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %305 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %304, i32 0, i32 3
  %306 = load i32, i32* %305, align 4
  %307 = call i32 @sqlite3Strlen30(i32 %306)
  %308 = icmp eq i32 %303, %307
  %309 = zext i1 %308 to i32
  %310 = call i32 @assert(i32 %309)
  %311 = load i32*, i32** %11, align 8
  %312 = load i32, i32* @OP_MakeRecord, align 4
  %313 = load i32, i32* %20, align 4
  %314 = load i32, i32* %9, align 4
  %315 = load i32, i32* %21, align 4
  %316 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %317 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %316, i32 0, i32 3
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* %9, align 4
  %320 = call i32 @sqlite3VdbeAddOp4(i32* %311, i32 %312, i32 %313, i32 %314, i32 %315, i32 %318, i32 %319)
  %321 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %322 = load i32, i32* %20, align 4
  %323 = load i32, i32* %9, align 4
  %324 = call i32 @sqlite3ExprCacheAffinityChange(%struct.TYPE_24__* %321, i32 %322, i32 %323)
  %325 = load i32*, i32** %11, align 8
  %326 = load i32, i32* @OP_IdxInsert, align 4
  %327 = load i32, i32* %19, align 4
  %328 = load i32, i32* %21, align 4
  %329 = load i32, i32* %20, align 4
  %330 = load i32, i32* %9, align 4
  %331 = call i32 @sqlite3VdbeAddOp4Int(i32* %325, i32 %326, i32 %327, i32 %328, i32 %329, i32 %330)
  br label %380

332:                                              ; preds = %285
  br label %380

333:                                              ; preds = %285
  %334 = load i32, i32* %18, align 4
  %335 = load i32, i32* @SRT_Output, align 4
  %336 = icmp eq i32 %334, %335
  br i1 %336, label %341, label %337

337:                                              ; preds = %333
  %338 = load i32, i32* %18, align 4
  %339 = load i32, i32* @SRT_Coroutine, align 4
  %340 = icmp eq i32 %338, %339
  br label %341

341:                                              ; preds = %337, %333
  %342 = phi i1 [ true, %333 ], [ %340, %337 ]
  %343 = zext i1 %342 to i32
  %344 = call i32 @assert(i32 %343)
  %345 = load i32, i32* %18, align 4
  %346 = load i32, i32* @SRT_Output, align 4
  %347 = icmp eq i32 %345, %346
  %348 = zext i1 %347 to i32
  %349 = call i32 @testcase(i32 %348)
  %350 = load i32, i32* %18, align 4
  %351 = load i32, i32* @SRT_Coroutine, align 4
  %352 = icmp eq i32 %350, %351
  %353 = zext i1 %352 to i32
  %354 = call i32 @testcase(i32 %353)
  %355 = load i32, i32* %18, align 4
  %356 = load i32, i32* @SRT_Output, align 4
  %357 = icmp eq i32 %355, %356
  br i1 %357, label %358, label %372

358:                                              ; preds = %341
  %359 = load i32*, i32** %11, align 8
  %360 = load i32, i32* @OP_ResultRow, align 4
  %361 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %362 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %361, i32 0, i32 2
  %363 = load i32, i32* %362, align 4
  %364 = load i32, i32* %9, align 4
  %365 = call i32 @sqlite3VdbeAddOp2(i32* %359, i32 %360, i32 %363, i32 %364)
  %366 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %367 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %368 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %367, i32 0, i32 2
  %369 = load i32, i32* %368, align 4
  %370 = load i32, i32* %9, align 4
  %371 = call i32 @sqlite3ExprCacheAffinityChange(%struct.TYPE_24__* %366, i32 %369, i32 %370)
  br label %379

372:                                              ; preds = %341
  %373 = load i32*, i32** %11, align 8
  %374 = load i32, i32* @OP_Yield, align 4
  %375 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %376 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 4
  %378 = call i32 @sqlite3VdbeAddOp1(i32* %373, i32 %374, i32 %377)
  br label %379

379:                                              ; preds = %372, %358
  br label %380

380:                                              ; preds = %379, %332, %302, %287
  %381 = load i32, i32* %21, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %399

383:                                              ; preds = %380
  %384 = load i32, i32* %18, align 4
  %385 = icmp eq i32 %384, 129
  br i1 %385, label %386, label %391

386:                                              ; preds = %383
  %387 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %388 = load i32, i32* %20, align 4
  %389 = load i32, i32* %9, align 4
  %390 = call i32 @sqlite3ReleaseTempRange(%struct.TYPE_24__* %387, i32 %388, i32 %389)
  br label %395

391:                                              ; preds = %383
  %392 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %393 = load i32, i32* %20, align 4
  %394 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_24__* %392, i32 %393)
  br label %395

395:                                              ; preds = %391, %386
  %396 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %397 = load i32, i32* %21, align 4
  %398 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_24__* %396, i32 %397)
  br label %399

399:                                              ; preds = %395, %380
  %400 = load i32*, i32** %11, align 8
  %401 = load i32, i32* %13, align 4
  %402 = call i32 @sqlite3VdbeResolveLabel(i32* %400, i32 %401)
  %403 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %404 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %403, i32 0, i32 5
  %405 = load i32, i32* %404, align 4
  %406 = load i32, i32* @SORTFLAG_UseSorter, align 4
  %407 = and i32 %405, %406
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %417

409:                                              ; preds = %399
  %410 = load i32*, i32** %11, align 8
  %411 = load i32, i32* @OP_SorterNext, align 4
  %412 = load i32, i32* %16, align 4
  %413 = load i32, i32* %14, align 4
  %414 = call i32 @sqlite3VdbeAddOp2(i32* %410, i32 %411, i32 %412, i32 %413)
  %415 = load i32*, i32** %11, align 8
  %416 = call i32 @VdbeCoverage(i32* %415)
  br label %425

417:                                              ; preds = %399
  %418 = load i32*, i32** %11, align 8
  %419 = load i32, i32* @OP_Next, align 4
  %420 = load i32, i32* %16, align 4
  %421 = load i32, i32* %14, align 4
  %422 = call i32 @sqlite3VdbeAddOp2(i32* %418, i32 %419, i32 %420, i32 %421)
  %423 = load i32*, i32** %11, align 8
  %424 = call i32 @VdbeCoverage(i32* %423)
  br label %425

425:                                              ; preds = %417, %409
  %426 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %427 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %426, i32 0, i32 2
  %428 = load i32, i32* %427, align 8
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %437

430:                                              ; preds = %425
  %431 = load i32*, i32** %11, align 8
  %432 = load i32, i32* @OP_Return, align 4
  %433 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %434 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %433, i32 0, i32 2
  %435 = load i32, i32* %434, align 8
  %436 = call i32 @sqlite3VdbeAddOp1(i32* %431, i32 %432, i32 %435)
  br label %437

437:                                              ; preds = %430, %425
  %438 = load i32*, i32** %11, align 8
  %439 = load i32, i32* %12, align 4
  %440 = call i32 @sqlite3VdbeResolveLabel(i32* %438, i32 %439)
  ret void
}

declare dso_local i32 @sqlite3VdbeMakeLabel(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeGoto(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeResolveLabel(i32*, i32) #1

declare dso_local i32 @sqlite3GetTempReg(%struct.TYPE_24__*) #1

declare dso_local i32 @sqlite3GetTempRange(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp0(i32*, i32) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

declare dso_local i32 @codeOffset(i32*, i32, i32) #1

declare dso_local i32 @VdbeComment(i32*) #1

declare dso_local i32 @sqlite3VdbeChangeP5(i32*, i32) #1

declare dso_local i32 @sqlite3Strlen30(i32) #1

declare dso_local i32 @sqlite3VdbeAddOp4(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3ExprCacheAffinityChange(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp4Int(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

declare dso_local i32 @sqlite3ReleaseTempRange(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @sqlite3ReleaseTempReg(%struct.TYPE_24__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
