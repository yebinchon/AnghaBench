; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_updateAccumulator.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_updateAccumulator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, %struct.TYPE_21__*, i32* }
%struct.TYPE_21__ = type { i32* }
%struct.TYPE_25__ = type { i32, i32, i32, %struct.AggInfo_col*, %struct.AggInfo_func* }
%struct.AggInfo_col = type { i32, i32 }
%struct.AggInfo_func = type { i64, %struct.TYPE_22__*, i32, %struct.TYPE_19__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, %struct.ExprList_item* }
%struct.ExprList_item = type { i32 }

@EP_xIsSelect = common dso_local global i32 0, align 4
@SQLITE_FUNC_NEEDCOLL = common dso_local global i32 0, align 4
@OP_CollSeq = common dso_local global i32 0, align 4
@P4_COLLSEQ = common dso_local global i32 0, align 4
@OP_AggStep = common dso_local global i32 0, align 4
@P4_FUNCDEF = common dso_local global i32 0, align 4
@OP_If = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, %struct.TYPE_25__*)* @updateAccumulator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @updateAccumulator(%struct.TYPE_23__* %0, %struct.TYPE_25__* %1) #0 {
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.AggInfo_func*, align 8
  %10 = alloca %struct.AggInfo_col*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_24__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.ExprList_item*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %4, align 8
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %24 = call i32 @sqlite3ExprCacheClear(%struct.TYPE_23__* %23)
  store i32 0, i32* %6, align 4
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 4
  %27 = load %struct.AggInfo_func*, %struct.AggInfo_func** %26, align 8
  store %struct.AggInfo_func* %27, %struct.AggInfo_func** %9, align 8
  br label %28

28:                                               ; preds = %183, %2
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %188

34:                                               ; preds = %28
  store i32 0, i32* %12, align 4
  %35 = load %struct.AggInfo_func*, %struct.AggInfo_func** %9, align 8
  %36 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %35, i32 0, i32 3
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %39, align 8
  store %struct.TYPE_24__* %40, %struct.TYPE_24__** %14, align 8
  %41 = load %struct.AggInfo_func*, %struct.AggInfo_func** %9, align 8
  %42 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %41, i32 0, i32 3
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %42, align 8
  %44 = load i32, i32* @EP_xIsSelect, align 4
  %45 = call i32 @ExprHasProperty(%struct.TYPE_19__* %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %51 = icmp ne %struct.TYPE_24__* %50, null
  br i1 %51, label %52, label %63

52:                                               ; preds = %34
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %11, align 4
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @sqlite3GetTempRange(%struct.TYPE_23__* %56, i32 %57)
  store i32 %58, i32* %13, align 4
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @sqlite3ExprCodeExprList(%struct.TYPE_23__* %59, %struct.TYPE_24__* %60, i32 %61, i32 1)
  br label %64

63:                                               ; preds = %34
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %64

64:                                               ; preds = %63, %52
  %65 = load %struct.AggInfo_func*, %struct.AggInfo_func** %9, align 8
  %66 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp sge i64 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %64
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 @sqlite3VdbeMakeLabel(i32* %70)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp eq i32 %72, 1
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %77 = load %struct.AggInfo_func*, %struct.AggInfo_func** %9, align 8
  %78 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @codeDistinct(%struct.TYPE_23__* %76, i64 %79, i32 %80, i32 1, i32 %81)
  br label %83

83:                                               ; preds = %69, %64
  %84 = load %struct.AggInfo_func*, %struct.AggInfo_func** %9, align 8
  %85 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %84, i32 0, i32 1
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @SQLITE_FUNC_NEEDCOLL, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %150

92:                                               ; preds = %83
  store i32* null, i32** %15, align 8
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %94 = icmp ne %struct.TYPE_24__* %93, null
  %95 = zext i1 %94 to i32
  %96 = call i32 @assert(i32 %95)
  store i32 0, i32* %17, align 4
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 1
  %99 = load %struct.ExprList_item*, %struct.ExprList_item** %98, align 8
  store %struct.ExprList_item* %99, %struct.ExprList_item** %16, align 8
  br label %100

100:                                              ; preds = %115, %92
  %101 = load i32*, i32** %15, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %107, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* %17, align 4
  %105 = load i32, i32* %11, align 4
  %106 = icmp slt i32 %104, %105
  br label %107

107:                                              ; preds = %103, %100
  %108 = phi i1 [ false, %100 ], [ %106, %103 ]
  br i1 %108, label %109, label %120

109:                                              ; preds = %107
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %111 = load %struct.ExprList_item*, %struct.ExprList_item** %16, align 8
  %112 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32* @sqlite3ExprCollSeq(%struct.TYPE_23__* %110, i32 %113)
  store i32* %114, i32** %15, align 8
  br label %115

115:                                              ; preds = %109
  %116 = load i32, i32* %17, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %17, align 4
  %118 = load %struct.ExprList_item*, %struct.ExprList_item** %16, align 8
  %119 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %118, i32 1
  store %struct.ExprList_item* %119, %struct.ExprList_item** %16, align 8
  br label %100

120:                                              ; preds = %107
  %121 = load i32*, i32** %15, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %129, label %123

123:                                              ; preds = %120
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  store i32* %128, i32** %15, align 8
  br label %129

129:                                              ; preds = %123, %120
  %130 = load i32, i32* %7, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %142

132:                                              ; preds = %129
  %133 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %132
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 8
  store i32 %141, i32* %7, align 4
  br label %142

142:                                              ; preds = %137, %132, %129
  %143 = load i32*, i32** %5, align 8
  %144 = load i32, i32* @OP_CollSeq, align 4
  %145 = load i32, i32* %7, align 4
  %146 = load i32*, i32** %15, align 8
  %147 = bitcast i32* %146 to i8*
  %148 = load i32, i32* @P4_COLLSEQ, align 4
  %149 = call i32 @sqlite3VdbeAddOp4(i32* %143, i32 %144, i32 %145, i32 0, i32 0, i8* %147, i32 %148)
  br label %150

150:                                              ; preds = %142, %83
  %151 = load i32*, i32** %5, align 8
  %152 = load i32, i32* @OP_AggStep, align 4
  %153 = load i32, i32* %13, align 4
  %154 = load %struct.AggInfo_func*, %struct.AggInfo_func** %9, align 8
  %155 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.AggInfo_func*, %struct.AggInfo_func** %9, align 8
  %158 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %157, i32 0, i32 1
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %158, align 8
  %160 = bitcast %struct.TYPE_22__* %159 to i8*
  %161 = load i32, i32* @P4_FUNCDEF, align 4
  %162 = call i32 @sqlite3VdbeAddOp4(i32* %151, i32 %152, i32 0, i32 %153, i32 %156, i8* %160, i32 %161)
  %163 = load i32*, i32** %5, align 8
  %164 = load i32, i32* %11, align 4
  %165 = call i32 @sqlite3VdbeChangeP5(i32* %163, i32 %164)
  %166 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %167 = load i32, i32* %13, align 4
  %168 = load i32, i32* %11, align 4
  %169 = call i32 @sqlite3ExprCacheAffinityChange(%struct.TYPE_23__* %166, i32 %167, i32 %168)
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %171 = load i32, i32* %13, align 4
  %172 = load i32, i32* %11, align 4
  %173 = call i32 @sqlite3ReleaseTempRange(%struct.TYPE_23__* %170, i32 %171, i32 %172)
  %174 = load i32, i32* %12, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %150
  %177 = load i32*, i32** %5, align 8
  %178 = load i32, i32* %12, align 4
  %179 = call i32 @sqlite3VdbeResolveLabel(i32* %177, i32 %178)
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %181 = call i32 @sqlite3ExprCacheClear(%struct.TYPE_23__* %180)
  br label %182

182:                                              ; preds = %176, %150
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %6, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %6, align 4
  %186 = load %struct.AggInfo_func*, %struct.AggInfo_func** %9, align 8
  %187 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %186, i32 1
  store %struct.AggInfo_func* %187, %struct.AggInfo_func** %9, align 8
  br label %28

188:                                              ; preds = %28
  %189 = load i32, i32* %7, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %188
  %192 = load i32*, i32** %5, align 8
  %193 = load i32, i32* @OP_If, align 4
  %194 = load i32, i32* %7, align 4
  %195 = call i32 @sqlite3VdbeAddOp1(i32* %192, i32 %193, i32 %194)
  store i32 %195, i32* %8, align 4
  br label %196

196:                                              ; preds = %191, %188
  %197 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %198 = call i32 @sqlite3ExprCacheClear(%struct.TYPE_23__* %197)
  store i32 0, i32* %6, align 4
  %199 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %199, i32 0, i32 3
  %201 = load %struct.AggInfo_col*, %struct.AggInfo_col** %200, align 8
  store %struct.AggInfo_col* %201, %struct.AggInfo_col** %10, align 8
  br label %202

202:                                              ; preds = %217, %196
  %203 = load i32, i32* %6, align 4
  %204 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = icmp slt i32 %203, %206
  br i1 %207, label %208, label %222

208:                                              ; preds = %202
  %209 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %210 = load %struct.AggInfo_col*, %struct.AggInfo_col** %10, align 8
  %211 = getelementptr inbounds %struct.AggInfo_col, %struct.AggInfo_col* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.AggInfo_col*, %struct.AggInfo_col** %10, align 8
  %214 = getelementptr inbounds %struct.AggInfo_col, %struct.AggInfo_col* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @sqlite3ExprCode(%struct.TYPE_23__* %209, i32 %212, i32 %215)
  br label %217

217:                                              ; preds = %208
  %218 = load i32, i32* %6, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %6, align 4
  %220 = load %struct.AggInfo_col*, %struct.AggInfo_col** %10, align 8
  %221 = getelementptr inbounds %struct.AggInfo_col, %struct.AggInfo_col* %220, i32 1
  store %struct.AggInfo_col* %221, %struct.AggInfo_col** %10, align 8
  br label %202

222:                                              ; preds = %202
  %223 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %223, i32 0, i32 0
  store i32 0, i32* %224, align 8
  %225 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %226 = call i32 @sqlite3ExprCacheClear(%struct.TYPE_23__* %225)
  %227 = load i32, i32* %8, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %222
  %230 = load i32*, i32** %5, align 8
  %231 = load i32, i32* %8, align 4
  %232 = call i32 @sqlite3VdbeJumpHere(i32* %230, i32 %231)
  br label %233

233:                                              ; preds = %229, %222
  ret void
}

declare dso_local i32 @sqlite3ExprCacheClear(%struct.TYPE_23__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ExprHasProperty(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @sqlite3GetTempRange(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @sqlite3ExprCodeExprList(%struct.TYPE_23__*, %struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeMakeLabel(i32*) #1

declare dso_local i32 @codeDistinct(%struct.TYPE_23__*, i64, i32, i32, i32) #1

declare dso_local i32* @sqlite3ExprCollSeq(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp4(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @sqlite3VdbeChangeP5(i32*, i32) #1

declare dso_local i32 @sqlite3ExprCacheAffinityChange(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @sqlite3ReleaseTempRange(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeResolveLabel(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

declare dso_local i32 @sqlite3ExprCode(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
