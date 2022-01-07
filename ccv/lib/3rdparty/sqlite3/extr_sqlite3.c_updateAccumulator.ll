; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_updateAccumulator.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_updateAccumulator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, %struct.TYPE_21__*, i32* }
%struct.TYPE_21__ = type { i32* }
%struct.TYPE_24__ = type { i32, i32, i32, %struct.AggInfo_col*, %struct.AggInfo_func* }
%struct.AggInfo_col = type { i32, i32 }
%struct.AggInfo_func = type { i64, %struct.TYPE_25__*, i32, %struct.TYPE_19__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, %struct.ExprList_item* }
%struct.ExprList_item = type { i32 }

@EP_xIsSelect = common dso_local global i32 0, align 4
@SQLITE_ECEL_DUP = common dso_local global i32 0, align 4
@SQLITE_FUNC_NEEDCOLL = common dso_local global i32 0, align 4
@OP_CollSeq = common dso_local global i32 0, align 4
@P4_COLLSEQ = common dso_local global i32 0, align 4
@OP_AggStep0 = common dso_local global i32 0, align 4
@P4_FUNCDEF = common dso_local global i32 0, align 4
@OP_If = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*, %struct.TYPE_24__*)* @updateAccumulator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @updateAccumulator(%struct.TYPE_22__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.AggInfo_func*, align 8
  %10 = alloca %struct.AggInfo_col*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.ExprList_item*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %4, align 8
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  store i32 0, i32* %6, align 4
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 4
  %25 = load %struct.AggInfo_func*, %struct.AggInfo_func** %24, align 8
  store %struct.AggInfo_func* %25, %struct.AggInfo_func** %9, align 8
  br label %26

26:                                               ; preds = %187, %2
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %192

32:                                               ; preds = %26
  store i32 0, i32* %12, align 4
  %33 = load %struct.AggInfo_func*, %struct.AggInfo_func** %9, align 8
  %34 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %33, i32 0, i32 3
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %37, align 8
  store %struct.TYPE_23__* %38, %struct.TYPE_23__** %14, align 8
  %39 = load %struct.AggInfo_func*, %struct.AggInfo_func** %9, align 8
  %40 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %39, i32 0, i32 3
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %40, align 8
  %42 = load i32, i32* @EP_xIsSelect, align 4
  %43 = call i32 @ExprHasProperty(%struct.TYPE_19__* %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %49 = icmp ne %struct.TYPE_23__* %48, null
  br i1 %49, label %50, label %62

50:                                               ; preds = %32
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %11, align 4
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @sqlite3GetTempRange(%struct.TYPE_22__* %54, i32 %55)
  store i32 %56, i32* %13, align 4
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* @SQLITE_ECEL_DUP, align 4
  %61 = call i32 @sqlite3ExprCodeExprList(%struct.TYPE_22__* %57, %struct.TYPE_23__* %58, i32 %59, i32 0, i32 %60)
  br label %63

62:                                               ; preds = %32
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %63

63:                                               ; preds = %62, %50
  %64 = load %struct.AggInfo_func*, %struct.AggInfo_func** %9, align 8
  %65 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp sge i64 %66, 0
  br i1 %67, label %68, label %86

68:                                               ; preds = %63
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @sqlite3VdbeMakeLabel(i32* %69)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp eq i32 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i32 @testcase(i32 %73)
  %75 = load i32, i32* %11, align 4
  %76 = icmp sgt i32 %75, 1
  %77 = zext i1 %76 to i32
  %78 = call i32 @testcase(i32 %77)
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %80 = load %struct.AggInfo_func*, %struct.AggInfo_func** %9, align 8
  %81 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @codeDistinct(%struct.TYPE_22__* %79, i64 %82, i32 %83, i32 1, i32 %84)
  br label %86

86:                                               ; preds = %68, %63
  %87 = load %struct.AggInfo_func*, %struct.AggInfo_func** %9, align 8
  %88 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %87, i32 0, i32 1
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @SQLITE_FUNC_NEEDCOLL, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %153

95:                                               ; preds = %86
  store i32* null, i32** %15, align 8
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %97 = icmp ne %struct.TYPE_23__* %96, null
  %98 = zext i1 %97 to i32
  %99 = call i32 @assert(i32 %98)
  store i32 0, i32* %17, align 4
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 1
  %102 = load %struct.ExprList_item*, %struct.ExprList_item** %101, align 8
  store %struct.ExprList_item* %102, %struct.ExprList_item** %16, align 8
  br label %103

103:                                              ; preds = %118, %95
  %104 = load i32*, i32** %15, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %110, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* %17, align 4
  %108 = load i32, i32* %11, align 4
  %109 = icmp slt i32 %107, %108
  br label %110

110:                                              ; preds = %106, %103
  %111 = phi i1 [ false, %103 ], [ %109, %106 ]
  br i1 %111, label %112, label %123

112:                                              ; preds = %110
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %114 = load %struct.ExprList_item*, %struct.ExprList_item** %16, align 8
  %115 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32* @sqlite3ExprCollSeq(%struct.TYPE_22__* %113, i32 %116)
  store i32* %117, i32** %15, align 8
  br label %118

118:                                              ; preds = %112
  %119 = load i32, i32* %17, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %17, align 4
  %121 = load %struct.ExprList_item*, %struct.ExprList_item** %16, align 8
  %122 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %121, i32 1
  store %struct.ExprList_item* %122, %struct.ExprList_item** %16, align 8
  br label %103

123:                                              ; preds = %110
  %124 = load i32*, i32** %15, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %132, label %126

126:                                              ; preds = %123
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  store i32* %131, i32** %15, align 8
  br label %132

132:                                              ; preds = %126, %123
  %133 = load i32, i32* %7, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %145

135:                                              ; preds = %132
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %135
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 8
  store i32 %144, i32* %7, align 4
  br label %145

145:                                              ; preds = %140, %135, %132
  %146 = load i32*, i32** %5, align 8
  %147 = load i32, i32* @OP_CollSeq, align 4
  %148 = load i32, i32* %7, align 4
  %149 = load i32*, i32** %15, align 8
  %150 = bitcast i32* %149 to i8*
  %151 = load i32, i32* @P4_COLLSEQ, align 4
  %152 = call i32 @sqlite3VdbeAddOp4(i32* %146, i32 %147, i32 %148, i32 0, i32 0, i8* %150, i32 %151)
  br label %153

153:                                              ; preds = %145, %86
  %154 = load i32*, i32** %5, align 8
  %155 = load i32, i32* @OP_AggStep0, align 4
  %156 = load i32, i32* %13, align 4
  %157 = load %struct.AggInfo_func*, %struct.AggInfo_func** %9, align 8
  %158 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @sqlite3VdbeAddOp3(i32* %154, i32 %155, i32 0, i32 %156, i32 %159)
  %161 = load i32*, i32** %5, align 8
  %162 = load %struct.AggInfo_func*, %struct.AggInfo_func** %9, align 8
  %163 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %162, i32 0, i32 1
  %164 = load %struct.TYPE_25__*, %struct.TYPE_25__** %163, align 8
  %165 = load i32, i32* @P4_FUNCDEF, align 4
  %166 = call i32 @sqlite3VdbeAppendP4(i32* %161, %struct.TYPE_25__* %164, i32 %165)
  %167 = load i32*, i32** %5, align 8
  %168 = load i32, i32* %11, align 4
  %169 = call i32 @sqlite3VdbeChangeP5(i32* %167, i32 %168)
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %171 = load i32, i32* %13, align 4
  %172 = load i32, i32* %11, align 4
  %173 = call i32 @sqlite3ExprCacheAffinityChange(%struct.TYPE_22__* %170, i32 %171, i32 %172)
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %175 = load i32, i32* %13, align 4
  %176 = load i32, i32* %11, align 4
  %177 = call i32 @sqlite3ReleaseTempRange(%struct.TYPE_22__* %174, i32 %175, i32 %176)
  %178 = load i32, i32* %12, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %153
  %181 = load i32*, i32** %5, align 8
  %182 = load i32, i32* %12, align 4
  %183 = call i32 @sqlite3VdbeResolveLabel(i32* %181, i32 %182)
  %184 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %185 = call i32 @sqlite3ExprCacheClear(%struct.TYPE_22__* %184)
  br label %186

186:                                              ; preds = %180, %153
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %6, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %6, align 4
  %190 = load %struct.AggInfo_func*, %struct.AggInfo_func** %9, align 8
  %191 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %190, i32 1
  store %struct.AggInfo_func* %191, %struct.AggInfo_func** %9, align 8
  br label %26

192:                                              ; preds = %26
  %193 = load i32, i32* %7, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %202

195:                                              ; preds = %192
  %196 = load i32*, i32** %5, align 8
  %197 = load i32, i32* @OP_If, align 4
  %198 = load i32, i32* %7, align 4
  %199 = call i32 @sqlite3VdbeAddOp1(i32* %196, i32 %197, i32 %198)
  store i32 %199, i32* %8, align 4
  %200 = load i32*, i32** %5, align 8
  %201 = call i32 @VdbeCoverage(i32* %200)
  br label %202

202:                                              ; preds = %195, %192
  %203 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %204 = call i32 @sqlite3ExprCacheClear(%struct.TYPE_22__* %203)
  store i32 0, i32* %6, align 4
  %205 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %205, i32 0, i32 3
  %207 = load %struct.AggInfo_col*, %struct.AggInfo_col** %206, align 8
  store %struct.AggInfo_col* %207, %struct.AggInfo_col** %10, align 8
  br label %208

208:                                              ; preds = %223, %202
  %209 = load i32, i32* %6, align 4
  %210 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = icmp slt i32 %209, %212
  br i1 %213, label %214, label %228

214:                                              ; preds = %208
  %215 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %216 = load %struct.AggInfo_col*, %struct.AggInfo_col** %10, align 8
  %217 = getelementptr inbounds %struct.AggInfo_col, %struct.AggInfo_col* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.AggInfo_col*, %struct.AggInfo_col** %10, align 8
  %220 = getelementptr inbounds %struct.AggInfo_col, %struct.AggInfo_col* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @sqlite3ExprCode(%struct.TYPE_22__* %215, i32 %218, i32 %221)
  br label %223

223:                                              ; preds = %214
  %224 = load i32, i32* %6, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %6, align 4
  %226 = load %struct.AggInfo_col*, %struct.AggInfo_col** %10, align 8
  %227 = getelementptr inbounds %struct.AggInfo_col, %struct.AggInfo_col* %226, i32 1
  store %struct.AggInfo_col* %227, %struct.AggInfo_col** %10, align 8
  br label %208

228:                                              ; preds = %208
  %229 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %229, i32 0, i32 0
  store i32 0, i32* %230, align 8
  %231 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %232 = call i32 @sqlite3ExprCacheClear(%struct.TYPE_22__* %231)
  %233 = load i32, i32* %8, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %239

235:                                              ; preds = %228
  %236 = load i32*, i32** %5, align 8
  %237 = load i32, i32* %8, align 4
  %238 = call i32 @sqlite3VdbeJumpHere(i32* %236, i32 %237)
  br label %239

239:                                              ; preds = %235, %228
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ExprHasProperty(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @sqlite3GetTempRange(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @sqlite3ExprCodeExprList(%struct.TYPE_22__*, %struct.TYPE_23__*, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeMakeLabel(i32*) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @codeDistinct(%struct.TYPE_22__*, i64, i32, i32, i32) #1

declare dso_local i32* @sqlite3ExprCollSeq(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp4(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAppendP4(i32*, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @sqlite3VdbeChangeP5(i32*, i32) #1

declare dso_local i32 @sqlite3ExprCacheAffinityChange(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @sqlite3ReleaseTempRange(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeResolveLabel(i32*, i32) #1

declare dso_local i32 @sqlite3ExprCacheClear(%struct.TYPE_22__*) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @sqlite3ExprCode(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
