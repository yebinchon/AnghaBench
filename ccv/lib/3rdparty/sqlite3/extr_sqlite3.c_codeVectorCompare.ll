; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_codeVectorCompare.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_codeVectorCompare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32* }
%struct.TYPE_19__ = type { i64, %struct.TYPE_19__*, %struct.TYPE_19__* }

@.str = private unnamed_addr constant [18 x i8] c"row value misused\00", align 1
@TK_EQ = common dso_local global i64 0, align 8
@TK_NE = common dso_local global i64 0, align 8
@TK_IS = common dso_local global i64 0, align 8
@TK_ISNOT = common dso_local global i64 0, align 8
@TK_LT = common dso_local global i64 0, align 8
@TK_GT = common dso_local global i64 0, align 8
@TK_LE = common dso_local global i64 0, align 8
@TK_GE = common dso_local global i64 0, align 8
@SQLITE_NULLEQ = common dso_local global i64 0, align 8
@SQLITE_STOREP2 = common dso_local global i64 0, align 8
@OP_Lt = common dso_local global i64 0, align 8
@OP_Le = common dso_local global i64 0, align 8
@OP_Gt = common dso_local global i64 0, align 8
@OP_Ge = common dso_local global i64 0, align 8
@OP_Eq = common dso_local global i64 0, align 8
@OP_Ne = common dso_local global i64 0, align 8
@OP_IfNot = common dso_local global i32 0, align 4
@SQLITE_KEEPNULL = common dso_local global i64 0, align 8
@OP_If = common dso_local global i32 0, align 4
@OP_ElseNotEq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, %struct.TYPE_19__*, i32, i64, i64)* @codeVectorCompare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @codeVectorCompare(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_19__*, align 8
  %23 = alloca %struct.TYPE_19__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %11, align 8
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %30, align 8
  store %struct.TYPE_19__* %31, %struct.TYPE_19__** %12, align 8
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %33, align 8
  store %struct.TYPE_19__* %34, %struct.TYPE_19__** %13, align 8
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %36 = call i32 @sqlite3ExprVectorSize(%struct.TYPE_19__* %35)
  store i32 %36, i32* %14, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %37 = load i64, i64* %9, align 8
  store i64 %37, i64* %18, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = call i32 @sqlite3VdbeMakeLabel(i32* %38)
  store i32 %39, i32* %19, align 4
  %40 = load i32, i32* %14, align 4
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %42 = call i32 @sqlite3ExprVectorSize(%struct.TYPE_19__* %41)
  %43 = icmp ne i32 %40, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %5
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %46 = call i32 @sqlite3ErrorMsg(%struct.TYPE_18__* %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %390

47:                                               ; preds = %5
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @TK_EQ, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %95, label %53

53:                                               ; preds = %47
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @TK_NE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %95, label %59

59:                                               ; preds = %53
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @TK_IS, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %95, label %65

65:                                               ; preds = %59
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @TK_ISNOT, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %95, label %71

71:                                               ; preds = %65
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @TK_LT, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %95, label %77

77:                                               ; preds = %71
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @TK_GT, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %95, label %83

83:                                               ; preds = %77
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @TK_LE, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %95, label %89

89:                                               ; preds = %83
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @TK_GE, align 8
  %94 = icmp eq i64 %92, %93
  br label %95

95:                                               ; preds = %89, %83, %77, %71, %65, %59, %53, %47
  %96 = phi i1 [ true, %83 ], [ true, %77 ], [ true, %71 ], [ true, %65 ], [ true, %59 ], [ true, %53 ], [ true, %47 ], [ %94, %89 ]
  %97 = zext i1 %96 to i32
  %98 = call i32 @assert(i32 %97)
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %9, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %126, label %104

104:                                              ; preds = %95
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @TK_IS, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  %111 = load i64, i64* %9, align 8
  %112 = load i64, i64* @TK_EQ, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %126, label %114

114:                                              ; preds = %110, %104
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @TK_ISNOT, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %114
  %121 = load i64, i64* %9, align 8
  %122 = load i64, i64* @TK_NE, align 8
  %123 = icmp eq i64 %121, %122
  br label %124

124:                                              ; preds = %120, %114
  %125 = phi i1 [ false, %114 ], [ %123, %120 ]
  br label %126

126:                                              ; preds = %124, %110, %95
  %127 = phi i1 [ true, %110 ], [ true, %95 ], [ %125, %124 ]
  %128 = zext i1 %127 to i32
  %129 = call i32 @assert(i32 %128)
  %130 = load i64, i64* %10, align 8
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %126
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* %9, align 8
  %137 = icmp ne i64 %135, %136
  br label %138

138:                                              ; preds = %132, %126
  %139 = phi i1 [ true, %126 ], [ %137, %132 ]
  %140 = zext i1 %139 to i32
  %141 = call i32 @assert(i32 %140)
  %142 = load i64, i64* %10, align 8
  %143 = load i64, i64* @SQLITE_NULLEQ, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %151, label %145

145:                                              ; preds = %138
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* %9, align 8
  %150 = icmp eq i64 %148, %149
  br label %151

151:                                              ; preds = %145, %138
  %152 = phi i1 [ true, %138 ], [ %150, %145 ]
  %153 = zext i1 %152 to i32
  %154 = call i32 @assert(i32 %153)
  %155 = load i64, i64* @SQLITE_STOREP2, align 8
  %156 = load i64, i64* %10, align 8
  %157 = or i64 %156, %155
  store i64 %157, i64* %10, align 8
  %158 = load i64, i64* %18, align 8
  %159 = load i64, i64* @TK_LE, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %151
  %162 = load i64, i64* @TK_LT, align 8
  store i64 %162, i64* %18, align 8
  br label %163

163:                                              ; preds = %161, %151
  %164 = load i64, i64* %18, align 8
  %165 = load i64, i64* @TK_GE, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %169

167:                                              ; preds = %163
  %168 = load i64, i64* @TK_GT, align 8
  store i64 %168, i64* %18, align 8
  br label %169

169:                                              ; preds = %167, %163
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %172 = call i32 @exprCodeSubselect(%struct.TYPE_18__* %170, %struct.TYPE_19__* %171)
  store i32 %172, i32* %16, align 4
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %175 = call i32 @exprCodeSubselect(%struct.TYPE_18__* %173, %struct.TYPE_19__* %174)
  store i32 %175, i32* %17, align 4
  store i32 0, i32* %15, align 4
  br label %176

176:                                              ; preds = %383, %169
  br i1 true, label %177, label %386

177:                                              ; preds = %176
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %178 = load i32, i32* %15, align 4
  %179 = icmp sge i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %177
  %181 = load i32, i32* %15, align 4
  %182 = load i32, i32* %14, align 4
  %183 = icmp slt i32 %181, %182
  br label %184

184:                                              ; preds = %180, %177
  %185 = phi i1 [ false, %177 ], [ %183, %180 ]
  %186 = zext i1 %185 to i32
  %187 = call i32 @assert(i32 %186)
  %188 = load i32, i32* %15, align 4
  %189 = icmp sgt i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %184
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %192 = call i32 @sqlite3ExprCachePush(%struct.TYPE_18__* %191)
  br label %193

193:                                              ; preds = %190, %184
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %196 = load i32, i32* %15, align 4
  %197 = load i32, i32* %16, align 4
  %198 = call i32 @exprVectorRegister(%struct.TYPE_18__* %194, %struct.TYPE_19__* %195, i32 %196, i32 %197, %struct.TYPE_19__** %22, i32* %20)
  store i32 %198, i32* %24, align 4
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %200 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %201 = load i32, i32* %15, align 4
  %202 = load i32, i32* %17, align 4
  %203 = call i32 @exprVectorRegister(%struct.TYPE_18__* %199, %struct.TYPE_19__* %200, i32 %201, i32 %202, %struct.TYPE_19__** %23, i32* %21)
  store i32 %203, i32* %25, align 4
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %206 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  %207 = load i64, i64* %18, align 8
  %208 = load i32, i32* %24, align 4
  %209 = load i32, i32* %25, align 4
  %210 = load i32, i32* %8, align 4
  %211 = load i64, i64* %10, align 8
  %212 = call i32 @codeCompare(%struct.TYPE_18__* %204, %struct.TYPE_19__* %205, %struct.TYPE_19__* %206, i64 %207, i32 %208, i32 %209, i32 %210, i64 %211)
  %213 = load i64, i64* %9, align 8
  %214 = load i64, i64* @OP_Lt, align 8
  %215 = icmp eq i64 %213, %214
  %216 = zext i1 %215 to i32
  %217 = call i32 @testcase(i32 %216)
  %218 = load i32*, i32** %11, align 8
  %219 = load i64, i64* %9, align 8
  %220 = load i64, i64* @OP_Lt, align 8
  %221 = icmp eq i64 %219, %220
  %222 = zext i1 %221 to i32
  %223 = call i32 @VdbeCoverageIf(i32* %218, i32 %222)
  %224 = load i64, i64* %9, align 8
  %225 = load i64, i64* @OP_Le, align 8
  %226 = icmp eq i64 %224, %225
  %227 = zext i1 %226 to i32
  %228 = call i32 @testcase(i32 %227)
  %229 = load i32*, i32** %11, align 8
  %230 = load i64, i64* %9, align 8
  %231 = load i64, i64* @OP_Le, align 8
  %232 = icmp eq i64 %230, %231
  %233 = zext i1 %232 to i32
  %234 = call i32 @VdbeCoverageIf(i32* %229, i32 %233)
  %235 = load i64, i64* %9, align 8
  %236 = load i64, i64* @OP_Gt, align 8
  %237 = icmp eq i64 %235, %236
  %238 = zext i1 %237 to i32
  %239 = call i32 @testcase(i32 %238)
  %240 = load i32*, i32** %11, align 8
  %241 = load i64, i64* %9, align 8
  %242 = load i64, i64* @OP_Gt, align 8
  %243 = icmp eq i64 %241, %242
  %244 = zext i1 %243 to i32
  %245 = call i32 @VdbeCoverageIf(i32* %240, i32 %244)
  %246 = load i64, i64* %9, align 8
  %247 = load i64, i64* @OP_Ge, align 8
  %248 = icmp eq i64 %246, %247
  %249 = zext i1 %248 to i32
  %250 = call i32 @testcase(i32 %249)
  %251 = load i32*, i32** %11, align 8
  %252 = load i64, i64* %9, align 8
  %253 = load i64, i64* @OP_Ge, align 8
  %254 = icmp eq i64 %252, %253
  %255 = zext i1 %254 to i32
  %256 = call i32 @VdbeCoverageIf(i32* %251, i32 %255)
  %257 = load i64, i64* %9, align 8
  %258 = load i64, i64* @OP_Eq, align 8
  %259 = icmp eq i64 %257, %258
  %260 = zext i1 %259 to i32
  %261 = call i32 @testcase(i32 %260)
  %262 = load i32*, i32** %11, align 8
  %263 = load i64, i64* %9, align 8
  %264 = load i64, i64* @OP_Eq, align 8
  %265 = icmp eq i64 %263, %264
  %266 = zext i1 %265 to i32
  %267 = call i32 @VdbeCoverageIf(i32* %262, i32 %266)
  %268 = load i64, i64* %9, align 8
  %269 = load i64, i64* @OP_Ne, align 8
  %270 = icmp eq i64 %268, %269
  %271 = zext i1 %270 to i32
  %272 = call i32 @testcase(i32 %271)
  %273 = load i32*, i32** %11, align 8
  %274 = load i64, i64* %9, align 8
  %275 = load i64, i64* @OP_Ne, align 8
  %276 = icmp eq i64 %274, %275
  %277 = zext i1 %276 to i32
  %278 = call i32 @VdbeCoverageIf(i32* %273, i32 %277)
  %279 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %280 = load i32, i32* %20, align 4
  %281 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_18__* %279, i32 %280)
  %282 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %283 = load i32, i32* %21, align 4
  %284 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_18__* %282, i32 %283)
  %285 = load i32, i32* %15, align 4
  %286 = icmp sgt i32 %285, 0
  br i1 %286, label %287, label %290

287:                                              ; preds = %193
  %288 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %289 = call i32 @sqlite3ExprCachePop(%struct.TYPE_18__* %288)
  br label %290

290:                                              ; preds = %287, %193
  %291 = load i32, i32* %15, align 4
  %292 = load i32, i32* %14, align 4
  %293 = sub nsw i32 %292, 1
  %294 = icmp eq i32 %291, %293
  br i1 %294, label %295, label %296

295:                                              ; preds = %290
  br label %386

296:                                              ; preds = %290
  %297 = load i64, i64* %18, align 8
  %298 = load i64, i64* @TK_EQ, align 8
  %299 = icmp eq i64 %297, %298
  br i1 %299, label %300, label %311

300:                                              ; preds = %296
  %301 = load i32*, i32** %11, align 8
  %302 = load i32, i32* @OP_IfNot, align 4
  %303 = load i32, i32* %8, align 4
  %304 = load i32, i32* %19, align 4
  %305 = call i32 @sqlite3VdbeAddOp2(i32* %301, i32 %302, i32 %303, i32 %304)
  %306 = load i32*, i32** %11, align 8
  %307 = call i32 @VdbeCoverage(i32* %306)
  %308 = load i64, i64* @SQLITE_KEEPNULL, align 8
  %309 = load i64, i64* %10, align 8
  %310 = or i64 %309, %308
  store i64 %310, i64* %10, align 8
  br label %382

311:                                              ; preds = %296
  %312 = load i64, i64* %18, align 8
  %313 = load i64, i64* @TK_NE, align 8
  %314 = icmp eq i64 %312, %313
  br i1 %314, label %315, label %326

315:                                              ; preds = %311
  %316 = load i32*, i32** %11, align 8
  %317 = load i32, i32* @OP_If, align 4
  %318 = load i32, i32* %8, align 4
  %319 = load i32, i32* %19, align 4
  %320 = call i32 @sqlite3VdbeAddOp2(i32* %316, i32 %317, i32 %318, i32 %319)
  %321 = load i32*, i32** %11, align 8
  %322 = call i32 @VdbeCoverage(i32* %321)
  %323 = load i64, i64* @SQLITE_KEEPNULL, align 8
  %324 = load i64, i64* %10, align 8
  %325 = or i64 %324, %323
  store i64 %325, i64* %10, align 8
  br label %381

326:                                              ; preds = %311
  %327 = load i64, i64* %9, align 8
  %328 = load i64, i64* @TK_LT, align 8
  %329 = icmp eq i64 %327, %328
  br i1 %329, label %342, label %330

330:                                              ; preds = %326
  %331 = load i64, i64* %9, align 8
  %332 = load i64, i64* @TK_GT, align 8
  %333 = icmp eq i64 %331, %332
  br i1 %333, label %342, label %334

334:                                              ; preds = %330
  %335 = load i64, i64* %9, align 8
  %336 = load i64, i64* @TK_LE, align 8
  %337 = icmp eq i64 %335, %336
  br i1 %337, label %342, label %338

338:                                              ; preds = %334
  %339 = load i64, i64* %9, align 8
  %340 = load i64, i64* @TK_GE, align 8
  %341 = icmp eq i64 %339, %340
  br label %342

342:                                              ; preds = %338, %334, %330, %326
  %343 = phi i1 [ true, %334 ], [ true, %330 ], [ true, %326 ], [ %341, %338 ]
  %344 = zext i1 %343 to i32
  %345 = call i32 @assert(i32 %344)
  %346 = load i32*, i32** %11, align 8
  %347 = load i32, i32* @OP_ElseNotEq, align 4
  %348 = load i32, i32* %19, align 4
  %349 = call i32 @sqlite3VdbeAddOp2(i32* %346, i32 %347, i32 0, i32 %348)
  %350 = load i32*, i32** %11, align 8
  %351 = load i64, i64* %9, align 8
  %352 = load i64, i64* @TK_LT, align 8
  %353 = icmp eq i64 %351, %352
  %354 = zext i1 %353 to i32
  %355 = call i32 @VdbeCoverageIf(i32* %350, i32 %354)
  %356 = load i32*, i32** %11, align 8
  %357 = load i64, i64* %9, align 8
  %358 = load i64, i64* @TK_GT, align 8
  %359 = icmp eq i64 %357, %358
  %360 = zext i1 %359 to i32
  %361 = call i32 @VdbeCoverageIf(i32* %356, i32 %360)
  %362 = load i32*, i32** %11, align 8
  %363 = load i64, i64* %9, align 8
  %364 = load i64, i64* @TK_LE, align 8
  %365 = icmp eq i64 %363, %364
  %366 = zext i1 %365 to i32
  %367 = call i32 @VdbeCoverageIf(i32* %362, i32 %366)
  %368 = load i32*, i32** %11, align 8
  %369 = load i64, i64* %9, align 8
  %370 = load i64, i64* @TK_GE, align 8
  %371 = icmp eq i64 %369, %370
  %372 = zext i1 %371 to i32
  %373 = call i32 @VdbeCoverageIf(i32* %368, i32 %372)
  %374 = load i32, i32* %15, align 4
  %375 = load i32, i32* %14, align 4
  %376 = sub nsw i32 %375, 2
  %377 = icmp eq i32 %374, %376
  br i1 %377, label %378, label %380

378:                                              ; preds = %342
  %379 = load i64, i64* %9, align 8
  store i64 %379, i64* %18, align 8
  br label %380

380:                                              ; preds = %378, %342
  br label %381

381:                                              ; preds = %380, %315
  br label %382

382:                                              ; preds = %381, %300
  br label %383

383:                                              ; preds = %382
  %384 = load i32, i32* %15, align 4
  %385 = add nsw i32 %384, 1
  store i32 %385, i32* %15, align 4
  br label %176

386:                                              ; preds = %295, %176
  %387 = load i32*, i32** %11, align 8
  %388 = load i32, i32* %19, align 4
  %389 = call i32 @sqlite3VdbeResolveLabel(i32* %387, i32 %388)
  br label %390

390:                                              ; preds = %386, %44
  ret void
}

declare dso_local i32 @sqlite3ExprVectorSize(%struct.TYPE_19__*) #1

declare dso_local i32 @sqlite3VdbeMakeLabel(i32*) #1

declare dso_local i32 @sqlite3ErrorMsg(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @exprCodeSubselect(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @sqlite3ExprCachePush(%struct.TYPE_18__*) #1

declare dso_local i32 @exprVectorRegister(%struct.TYPE_18__*, %struct.TYPE_19__*, i32, i32, %struct.TYPE_19__**, i32*) #1

declare dso_local i32 @codeCompare(%struct.TYPE_18__*, %struct.TYPE_19__*, %struct.TYPE_19__*, i64, i32, i32, i32, i64) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @VdbeCoverageIf(i32*, i32) #1

declare dso_local i32 @sqlite3ReleaseTempReg(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @sqlite3ExprCachePop(%struct.TYPE_18__*) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @sqlite3VdbeResolveLabel(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
