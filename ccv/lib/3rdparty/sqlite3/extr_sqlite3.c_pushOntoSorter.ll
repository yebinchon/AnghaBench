; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_pushOntoSorter.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_pushOntoSorter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, %struct.TYPE_19__*, i32* }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_23__ = type { i64, i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i64, i64, i32 }

@SORTFLAG_UseSorter = common dso_local global i32 0, align 4
@SQLITE_ECEL_DUP = common dso_local global i32 0, align 4
@SQLITE_ECEL_REF = common dso_local global i32 0, align 4
@OP_Sequence = common dso_local global i32 0, align 4
@OP_MakeRecord = common dso_local global i32 0, align 4
@OP_IfNot = common dso_local global i32 0, align 4
@OP_SequenceTest = common dso_local global i32 0, align 4
@OP_Compare = common dso_local global i32 0, align 4
@P4_KEYINFO = common dso_local global i32 0, align 4
@OP_Jump = common dso_local global i32 0, align 4
@OP_Gosub = common dso_local global i32 0, align 4
@OP_ResetSorter = common dso_local global i32 0, align 4
@OP_SorterInsert = common dso_local global i32 0, align 4
@OP_IdxInsert = common dso_local global i32 0, align 4
@OP_IfNotZero = common dso_local global i32 0, align 4
@OP_Last = common dso_local global i32 0, align 4
@OP_Column = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"seq\00", align 1
@OP_Delete = common dso_local global i32 0, align 4
@OP_Eq = common dso_local global i32 0, align 4
@SQLITE_NULLEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_24__*, %struct.TYPE_22__*, %struct.TYPE_23__*, i32, i32, i32, i32)* @pushOntoSorter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pushOntoSorter(%struct.TYPE_24__* %0, %struct.TYPE_22__* %1, %struct.TYPE_23__* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_21__*, align 8
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_25__*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %8, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %9, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %15, align 8
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @SORTFLAG_UseSorter, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %16, align 4
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 7
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %17, align 4
  %48 = load i32, i32* %17, align 4
  %49 = load i32, i32* %16, align 4
  %50 = add nsw i32 %48, %49
  %51 = load i32, i32* %13, align 4
  %52 = add nsw i32 %50, %51
  store i32 %52, i32* %18, align 4
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  store i32 %56, i32* %20, align 4
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %21, align 4
  %60 = load i32, i32* %16, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %7
  %63 = load i32, i32* %16, align 4
  %64 = icmp eq i32 %63, 1
  br label %65

65:                                               ; preds = %62, %7
  %66 = phi i1 [ true, %7 ], [ %64, %62 ]
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = load i32, i32* %13, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %78, label %71

71:                                               ; preds = %65
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %78, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %12, align 4
  %77 = icmp eq i32 %76, 0
  br label %78

78:                                               ; preds = %75, %71, %65
  %79 = phi i1 [ true, %71 ], [ true, %65 ], [ %77, %75 ]
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load i32, i32* %14, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %78
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %17, align 4
  %87 = load i32, i32* %16, align 4
  %88 = add nsw i32 %86, %87
  %89 = icmp eq i32 %85, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert(i32 %90)
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %17, align 4
  %94 = sub nsw i32 %92, %93
  %95 = load i32, i32* %16, align 4
  %96 = sub nsw i32 %94, %95
  store i32 %96, i32* %19, align 4
  br label %107

97:                                               ; preds = %78
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %19, align 4
  %102 = load i32, i32* %18, align 4
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %105, %102
  store i32 %106, i32* %104, align 8
  br label %107

107:                                              ; preds = %97, %84
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %107
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br label %117

117:                                              ; preds = %112, %107
  %118 = phi i1 [ true, %107 ], [ %116, %112 ]
  %119 = zext i1 %118 to i32
  %120 = call i32 @assert(i32 %119)
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %117
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %128, 1
  br label %135

130:                                              ; preds = %117
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  br label %135

135:                                              ; preds = %130, %125
  %136 = phi i64 [ %129, %125 ], [ %134, %130 ]
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %23, align 4
  %138 = load i32*, i32** %15, align 8
  %139 = call i8* @sqlite3VdbeMakeLabel(i32* %138)
  %140 = ptrtoint i8* %139 to i32
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 8
  %143 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 7
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %145, align 8
  %147 = load i32, i32* %19, align 4
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* @SQLITE_ECEL_DUP, align 4
  %150 = load i32, i32* %12, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %135
  %153 = load i32, i32* @SQLITE_ECEL_REF, align 4
  br label %155

154:                                              ; preds = %135
  br label %155

155:                                              ; preds = %154, %152
  %156 = phi i32 [ %153, %152 ], [ 0, %154 ]
  %157 = or i32 %149, %156
  %158 = call i32 @sqlite3ExprCodeExprList(%struct.TYPE_24__* %143, %struct.TYPE_18__* %146, i32 %147, i32 %148, i32 %157)
  %159 = load i32, i32* %16, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %171

161:                                              ; preds = %155
  %162 = load i32*, i32** %15, align 8
  %163 = load i32, i32* @OP_Sequence, align 4
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %19, align 4
  %168 = load i32, i32* %17, align 4
  %169 = add nsw i32 %167, %168
  %170 = call i32 @sqlite3VdbeAddOp2(i32* %162, i32 %163, i32 %166, i32 %169)
  br label %171

171:                                              ; preds = %161, %155
  %172 = load i32, i32* %14, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %187

174:                                              ; preds = %171
  %175 = load i32, i32* %13, align 4
  %176 = icmp sgt i32 %175, 0
  br i1 %176, label %177, label %187

177:                                              ; preds = %174
  %178 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %179 = load i32, i32* %11, align 4
  %180 = load i32, i32* %19, align 4
  %181 = load i32, i32* %17, align 4
  %182 = add nsw i32 %180, %181
  %183 = load i32, i32* %16, align 4
  %184 = add nsw i32 %182, %183
  %185 = load i32, i32* %13, align 4
  %186 = call i32 @sqlite3ExprCodeMove(%struct.TYPE_24__* %178, i32 %179, i32 %184, i32 %185)
  br label %187

187:                                              ; preds = %177, %174, %171
  %188 = load i32*, i32** %15, align 8
  %189 = load i32, i32* @OP_MakeRecord, align 4
  %190 = load i32, i32* %19, align 4
  %191 = load i32, i32* %21, align 4
  %192 = add nsw i32 %190, %191
  %193 = load i32, i32* %18, align 4
  %194 = load i32, i32* %21, align 4
  %195 = sub nsw i32 %193, %194
  %196 = load i32, i32* %20, align 4
  %197 = call i32 @sqlite3VdbeAddOp3(i32* %188, i32 %189, i32 %192, i32 %195, i32 %196)
  %198 = load i32, i32* %21, align 4
  %199 = icmp sgt i32 %198, 0
  br i1 %199, label %200, label %370

200:                                              ; preds = %187
  %201 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %24, align 4
  %205 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = add nsw i32 %210, %207
  store i32 %211, i32* %209, align 8
  %212 = load i32, i32* %17, align 4
  %213 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %214 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = sub nsw i32 %212, %215
  %217 = load i32, i32* %16, align 4
  %218 = add nsw i32 %216, %217
  store i32 %218, i32* %28, align 4
  %219 = load i32, i32* %16, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %228

221:                                              ; preds = %200
  %222 = load i32*, i32** %15, align 8
  %223 = load i32, i32* @OP_IfNot, align 4
  %224 = load i32, i32* %19, align 4
  %225 = load i32, i32* %17, align 4
  %226 = add nsw i32 %224, %225
  %227 = call i32 @sqlite3VdbeAddOp1(i32* %222, i32 %223, i32 %226)
  store i32 %227, i32* %25, align 4
  br label %235

228:                                              ; preds = %200
  %229 = load i32*, i32** %15, align 8
  %230 = load i32, i32* @OP_SequenceTest, align 4
  %231 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %232 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @sqlite3VdbeAddOp1(i32* %229, i32 %230, i32 %233)
  store i32 %234, i32* %25, align 4
  br label %235

235:                                              ; preds = %228, %221
  %236 = load i32*, i32** %15, align 8
  %237 = call i32 @VdbeCoverage(i32* %236)
  %238 = load i32*, i32** %15, align 8
  %239 = load i32, i32* @OP_Compare, align 4
  %240 = load i32, i32* %24, align 4
  %241 = load i32, i32* %19, align 4
  %242 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %243 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @sqlite3VdbeAddOp3(i32* %238, i32 %239, i32 %240, i32 %241, i32 %244)
  %246 = load i32*, i32** %15, align 8
  %247 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %248 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %247, i32 0, i32 8
  %249 = load i32, i32* %248, align 8
  %250 = call %struct.TYPE_21__* @sqlite3VdbeGetOp(i32* %246, i32 %249)
  store %struct.TYPE_21__* %250, %struct.TYPE_21__** %27, align 8
  %251 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %252 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %251, i32 0, i32 1
  %253 = load %struct.TYPE_19__*, %struct.TYPE_19__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %235
  br label %461

258:                                              ; preds = %235
  %259 = load i32, i32* %28, align 4
  %260 = load i32, i32* %13, align 4
  %261 = add nsw i32 %259, %260
  %262 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  %263 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %262, i32 0, i32 0
  store i32 %261, i32* %263, align 8
  %264 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  %265 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %265, i32 0, i32 0
  %267 = load %struct.TYPE_25__*, %struct.TYPE_25__** %266, align 8
  store %struct.TYPE_25__* %267, %struct.TYPE_25__** %29, align 8
  %268 = load %struct.TYPE_25__*, %struct.TYPE_25__** %29, align 8
  %269 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = load %struct.TYPE_25__*, %struct.TYPE_25__** %29, align 8
  %272 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = call i32 @memset(i32 %270, i32 0, i64 %273)
  %275 = load i32*, i32** %15, align 8
  %276 = load %struct.TYPE_25__*, %struct.TYPE_25__** %29, align 8
  %277 = bitcast %struct.TYPE_25__* %276 to i8*
  %278 = load i32, i32* @P4_KEYINFO, align 4
  %279 = call i32 @sqlite3VdbeChangeP4(i32* %275, i32 -1, i8* %277, i32 %278)
  %280 = load %struct.TYPE_25__*, %struct.TYPE_25__** %29, align 8
  %281 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = load %struct.TYPE_25__*, %struct.TYPE_25__** %29, align 8
  %284 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = add nsw i64 %285, 2
  %287 = icmp sgt i64 %282, %286
  %288 = zext i1 %287 to i32
  %289 = call i32 @testcase(i32 %288)
  %290 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %291 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %292 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %291, i32 0, i32 7
  %293 = load %struct.TYPE_18__*, %struct.TYPE_18__** %292, align 8
  %294 = load i32, i32* %21, align 4
  %295 = load %struct.TYPE_25__*, %struct.TYPE_25__** %29, align 8
  %296 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %295, i32 0, i32 1
  %297 = load i64, i64* %296, align 8
  %298 = load %struct.TYPE_25__*, %struct.TYPE_25__** %29, align 8
  %299 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = sub nsw i64 %297, %300
  %302 = sub nsw i64 %301, 1
  %303 = call %struct.TYPE_25__* @keyInfoFromExprList(%struct.TYPE_24__* %290, %struct.TYPE_18__* %293, i32 %294, i64 %302)
  %304 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  %305 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %304, i32 0, i32 1
  %306 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %305, i32 0, i32 0
  store %struct.TYPE_25__* %303, %struct.TYPE_25__** %306, align 8
  %307 = load i32*, i32** %15, align 8
  %308 = call i32 @sqlite3VdbeCurrentAddr(i32* %307)
  store i32 %308, i32* %26, align 4
  %309 = load i32*, i32** %15, align 8
  %310 = load i32, i32* @OP_Jump, align 4
  %311 = load i32, i32* %26, align 4
  %312 = add nsw i32 %311, 1
  %313 = load i32, i32* %26, align 4
  %314 = add nsw i32 %313, 1
  %315 = call i32 @sqlite3VdbeAddOp3(i32* %309, i32 %310, i32 %312, i32 0, i32 %314)
  %316 = load i32*, i32** %15, align 8
  %317 = call i32 @VdbeCoverage(i32* %316)
  %318 = load i32*, i32** %15, align 8
  %319 = call i8* @sqlite3VdbeMakeLabel(i32* %318)
  %320 = ptrtoint i8* %319 to i32
  %321 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %322 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %321, i32 0, i32 4
  store i32 %320, i32* %322, align 8
  %323 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %324 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %324, align 8
  %327 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %328 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %327, i32 0, i32 5
  store i32 %326, i32* %328, align 4
  %329 = load i32*, i32** %15, align 8
  %330 = load i32, i32* @OP_Gosub, align 4
  %331 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %332 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %331, i32 0, i32 5
  %333 = load i32, i32* %332, align 4
  %334 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %335 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %334, i32 0, i32 4
  %336 = load i32, i32* %335, align 8
  %337 = call i32 @sqlite3VdbeAddOp2(i32* %329, i32 %330, i32 %333, i32 %336)
  %338 = load i32*, i32** %15, align 8
  %339 = load i32, i32* @OP_ResetSorter, align 4
  %340 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %341 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %340, i32 0, i32 3
  %342 = load i32, i32* %341, align 4
  %343 = call i32 @sqlite3VdbeAddOp1(i32* %338, i32 %339, i32 %342)
  %344 = load i32, i32* %23, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %356

346:                                              ; preds = %258
  %347 = load i32*, i32** %15, align 8
  %348 = load i32, i32* @OP_IfNot, align 4
  %349 = load i32, i32* %23, align 4
  %350 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %351 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %350, i32 0, i32 2
  %352 = load i32, i32* %351, align 8
  %353 = call i32 @sqlite3VdbeAddOp2(i32* %347, i32 %348, i32 %349, i32 %352)
  %354 = load i32*, i32** %15, align 8
  %355 = call i32 @VdbeCoverage(i32* %354)
  br label %356

356:                                              ; preds = %346, %258
  %357 = load i32*, i32** %15, align 8
  %358 = load i32, i32* %25, align 4
  %359 = call i32 @sqlite3VdbeJumpHere(i32* %357, i32 %358)
  %360 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %361 = load i32, i32* %19, align 4
  %362 = load i32, i32* %24, align 4
  %363 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %364 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 4
  %366 = call i32 @sqlite3ExprCodeMove(%struct.TYPE_24__* %360, i32 %361, i32 %362, i32 %365)
  %367 = load i32*, i32** %15, align 8
  %368 = load i32, i32* %26, align 4
  %369 = call i32 @sqlite3VdbeJumpHere(i32* %367, i32 %368)
  br label %370

370:                                              ; preds = %356, %187
  %371 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %372 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  %374 = load i32, i32* @SORTFLAG_UseSorter, align 4
  %375 = and i32 %373, %374
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %379

377:                                              ; preds = %370
  %378 = load i32, i32* @OP_SorterInsert, align 4
  store i32 %378, i32* %22, align 4
  br label %381

379:                                              ; preds = %370
  %380 = load i32, i32* @OP_IdxInsert, align 4
  store i32 %380, i32* %22, align 4
  br label %381

381:                                              ; preds = %379, %377
  %382 = load i32*, i32** %15, align 8
  %383 = load i32, i32* %22, align 4
  %384 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %385 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %384, i32 0, i32 3
  %386 = load i32, i32* %385, align 4
  %387 = load i32, i32* %20, align 4
  %388 = load i32, i32* %19, align 4
  %389 = load i32, i32* %21, align 4
  %390 = add nsw i32 %388, %389
  %391 = load i32, i32* %18, align 4
  %392 = load i32, i32* %21, align 4
  %393 = sub nsw i32 %391, %392
  %394 = call i32 @sqlite3VdbeAddOp4Int(i32* %382, i32 %383, i32 %386, i32 %387, i32 %390, i32 %393)
  %395 = load i32, i32* %23, align 4
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %461

397:                                              ; preds = %381
  store i32 0, i32* %31, align 4
  %398 = load i32*, i32** %15, align 8
  %399 = load i32, i32* @OP_IfNotZero, align 4
  %400 = load i32, i32* %23, align 4
  %401 = call i32 @sqlite3VdbeAddOp1(i32* %398, i32 %399, i32 %400)
  store i32 %401, i32* %30, align 4
  %402 = load i32*, i32** %15, align 8
  %403 = call i32 @VdbeCoverage(i32* %402)
  %404 = load i32*, i32** %15, align 8
  %405 = load i32, i32* @OP_Last, align 4
  %406 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %407 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %406, i32 0, i32 3
  %408 = load i32, i32* %407, align 4
  %409 = call i32 @sqlite3VdbeAddOp1(i32* %404, i32 %405, i32 %408)
  %410 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %411 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %410, i32 0, i32 6
  %412 = load i64, i64* %411, align 8
  %413 = icmp ne i64 %412, 0
  br i1 %413, label %414, label %429

414:                                              ; preds = %397
  %415 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %416 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 8
  %418 = add nsw i32 %417, 1
  store i32 %418, i32* %416, align 8
  store i32 %418, i32* %31, align 4
  %419 = load i32*, i32** %15, align 8
  %420 = load i32, i32* @OP_Column, align 4
  %421 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %422 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %421, i32 0, i32 3
  %423 = load i32, i32* %422, align 4
  %424 = load i32, i32* %17, align 4
  %425 = load i32, i32* %31, align 4
  %426 = call i32 @sqlite3VdbeAddOp3(i32* %419, i32 %420, i32 %423, i32 %424, i32 %425)
  %427 = load i32*, i32** %15, align 8
  %428 = call i32 @VdbeComment(i32* bitcast ([4 x i8]* @.str to i32*))
  br label %429

429:                                              ; preds = %414, %397
  %430 = load i32*, i32** %15, align 8
  %431 = load i32, i32* @OP_Delete, align 4
  %432 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %433 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %432, i32 0, i32 3
  %434 = load i32, i32* %433, align 4
  %435 = call i32 @sqlite3VdbeAddOp1(i32* %430, i32 %431, i32 %434)
  %436 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %437 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %436, i32 0, i32 6
  %438 = load i64, i64* %437, align 8
  %439 = icmp ne i64 %438, 0
  br i1 %439, label %440, label %457

440:                                              ; preds = %429
  %441 = load i32*, i32** %15, align 8
  %442 = call i32 @sqlite3VdbeCurrentAddr(i32* %441)
  %443 = add nsw i32 %442, 2
  store i32 %443, i32* %32, align 4
  %444 = load i32*, i32** %15, align 8
  %445 = load i32, i32* @OP_Eq, align 4
  %446 = load i32, i32* %19, align 4
  %447 = load i32, i32* %17, align 4
  %448 = add nsw i32 %446, %447
  %449 = load i32, i32* %32, align 4
  %450 = load i32, i32* %31, align 4
  %451 = call i32 @sqlite3VdbeAddOp3(i32* %444, i32 %445, i32 %448, i32 %449, i32 %450)
  %452 = load i32*, i32** %15, align 8
  %453 = load i32, i32* @SQLITE_NULLEQ, align 4
  %454 = call i32 @sqlite3VdbeChangeP5(i32* %452, i32 %453)
  %455 = load i32*, i32** %15, align 8
  %456 = call i32 @VdbeCoverage(i32* %455)
  br label %457

457:                                              ; preds = %440, %429
  %458 = load i32*, i32** %15, align 8
  %459 = load i32, i32* %30, align 4
  %460 = call i32 @sqlite3VdbeJumpHere(i32* %458, i32 %459)
  br label %461

461:                                              ; preds = %257, %457, %381
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @sqlite3VdbeMakeLabel(i32*) #1

declare dso_local i32 @sqlite3ExprCodeExprList(%struct.TYPE_24__*, %struct.TYPE_18__*, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @sqlite3ExprCodeMove(%struct.TYPE_24__*, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local %struct.TYPE_21__* @sqlite3VdbeGetOp(i32*, i32) #1

declare dso_local i32 @memset(i32, i32, i64) #1

declare dso_local i32 @sqlite3VdbeChangeP4(i32*, i32, i8*, i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local %struct.TYPE_25__* @keyInfoFromExprList(%struct.TYPE_24__*, %struct.TYPE_18__*, i32, i64) #1

declare dso_local i32 @sqlite3VdbeCurrentAddr(i32*) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp4Int(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @VdbeComment(i32*) #1

declare dso_local i32 @sqlite3VdbeChangeP5(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
