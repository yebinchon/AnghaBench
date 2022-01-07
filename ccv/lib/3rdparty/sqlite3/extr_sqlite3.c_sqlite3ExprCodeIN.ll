; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_sqlite3ExprCodeIN.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_sqlite3ExprCodeIN.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_35__ = type { %struct.TYPE_33__*, i64, i32* }
%struct.TYPE_33__ = type { i64 }
%struct.TYPE_37__ = type { i32, %struct.TYPE_37__*, %struct.TYPE_32__ }
%struct.TYPE_32__ = type { %struct.TYPE_36__* }
%struct.TYPE_36__ = type { i32, %struct.TYPE_34__* }
%struct.TYPE_34__ = type { %struct.TYPE_37__* }

@.str = private unnamed_addr constant [14 x i8] c"begin IN expr\00", align 1
@IN_INDEX_MEMBERSHIP = common dso_local global i32 0, align 4
@IN_INDEX_NOOP_OK = common dso_local global i32 0, align 4
@IN_INDEX_EPH = common dso_local global i32 0, align 4
@IN_INDEX_INDEX_ASC = common dso_local global i32 0, align 4
@IN_INDEX_INDEX_DESC = common dso_local global i32 0, align 4
@OP_Copy = common dso_local global i32 0, align 4
@IN_INDEX_NOOP = common dso_local global i32 0, align 4
@EP_xIsSelect = common dso_local global i32 0, align 4
@OP_BitAnd = common dso_local global i32 0, align 4
@OP_Eq = common dso_local global i32 0, align 4
@P4_COLLSEQ = common dso_local global i32 0, align 4
@OP_Ne = common dso_local global i32 0, align 4
@SQLITE_JUMPIFNULL = common dso_local global i8 0, align 1
@OP_IsNull = common dso_local global i32 0, align 4
@IN_INDEX_ROWID = common dso_local global i32 0, align 4
@OP_SeekRowid = common dso_local global i32 0, align 4
@OP_Goto = common dso_local global i32 0, align 4
@OP_Affinity = common dso_local global i32 0, align 4
@OP_NotFound = common dso_local global i32 0, align 4
@OP_Found = common dso_local global i32 0, align 4
@OP_NotNull = common dso_local global i32 0, align 4
@OP_Rewind = common dso_local global i32 0, align 4
@OP_Column = common dso_local global i32 0, align 4
@OP_Next = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"end IN expr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_35__*, %struct.TYPE_37__*, i32, i32)* @sqlite3ExprCodeIN to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sqlite3ExprCodeIN(%struct.TYPE_35__* %0, %struct.TYPE_37__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_35__*, align 8
  %6 = alloca %struct.TYPE_37__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_37__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_36__*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct.TYPE_37__*, align 8
  %33 = alloca %struct.TYPE_37__*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32, align 4
  store %struct.TYPE_35__* %0, %struct.TYPE_35__** %5, align 8
  store %struct.TYPE_37__* %1, %struct.TYPE_37__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32* null, i32** %14, align 8
  store i8* null, i8** %15, align 8
  store i32 0, i32* %21, align 4
  %36 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_37__*, %struct.TYPE_37__** %37, align 8
  store %struct.TYPE_37__* %38, %struct.TYPE_37__** %18, align 8
  %39 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %40 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %41 = call i64 @sqlite3ExprCheckIN(%struct.TYPE_35__* %39, %struct.TYPE_37__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %4
  br label %572

44:                                               ; preds = %4
  %45 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %46 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %47 = call i8* @exprINAffinity(%struct.TYPE_35__* %45, %struct.TYPE_37__* %46)
  store i8* %47, i8** %15, align 8
  %48 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_37__*, %struct.TYPE_37__** %49, align 8
  %51 = call i32 @sqlite3ExprVectorSize(%struct.TYPE_37__* %50)
  store i32 %51, i32* %16, align 4
  %52 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_33__*, %struct.TYPE_33__** %53, align 8
  %55 = load i32, i32* %16, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 %56, 5
  %58 = add i64 %57, 1
  %59 = trunc i64 %58 to i32
  %60 = call i64 @sqlite3DbMallocZero(%struct.TYPE_33__* %54, i32 %59)
  %61 = inttoptr i64 %60 to i32*
  store i32* %61, i32** %14, align 8
  %62 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_33__*, %struct.TYPE_33__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %44
  br label %561

69:                                               ; preds = %44
  %70 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  store i32* %72, i32** %13, align 8
  %73 = load i32*, i32** %13, align 8
  %74 = icmp ne i32* %73, null
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert(i32 %75)
  %77 = load i32*, i32** %13, align 8
  %78 = call i32 @VdbeNoopComment(i32* bitcast ([14 x i8]* @.str to i32*))
  %79 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %80 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %81 = load i32, i32* @IN_INDEX_MEMBERSHIP, align 4
  %82 = load i32, i32* @IN_INDEX_NOOP_OK, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %69
  br label %89

88:                                               ; preds = %69
  br label %89

89:                                               ; preds = %88, %87
  %90 = phi i32* [ null, %87 ], [ %9, %88 ]
  %91 = load i32*, i32** %14, align 8
  %92 = call i32 @sqlite3FindInIndex(%struct.TYPE_35__* %79, %struct.TYPE_37__* %80, i32 %83, i32* %90, i32* %91)
  store i32 %92, i32* %10, align 4
  %93 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %112, label %97

97:                                               ; preds = %89
  %98 = load i32, i32* %16, align 4
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %112, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @IN_INDEX_EPH, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %112, label %104

104:                                              ; preds = %100
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* @IN_INDEX_INDEX_ASC, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* @IN_INDEX_INDEX_DESC, align 4
  %111 = icmp eq i32 %109, %110
  br label %112

112:                                              ; preds = %108, %104, %100, %97, %89
  %113 = phi i1 [ true, %104 ], [ true, %100 ], [ true, %97 ], [ true, %89 ], [ %111, %108 ]
  %114 = zext i1 %113 to i32
  %115 = call i32 @assert(i32 %114)
  %116 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %117 = call i32 @sqlite3ExprCachePush(%struct.TYPE_35__* %116)
  %118 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %119 = load %struct.TYPE_37__*, %struct.TYPE_37__** %18, align 8
  %120 = call i32 @exprCodeVector(%struct.TYPE_35__* %118, %struct.TYPE_37__* %119, i32* %17)
  store i32 %120, i32* %12, align 4
  store i32 0, i32* %19, align 4
  br label %121

121:                                              ; preds = %136, %112
  %122 = load i32, i32* %19, align 4
  %123 = load i32, i32* %16, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %133

125:                                              ; preds = %121
  %126 = load i32*, i32** %14, align 8
  %127 = load i32, i32* %19, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %19, align 4
  %132 = icmp eq i32 %130, %131
  br label %133

133:                                              ; preds = %125, %121
  %134 = phi i1 [ false, %121 ], [ %132, %125 ]
  br i1 %134, label %135, label %139

135:                                              ; preds = %133
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %19, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %19, align 4
  br label %121

139:                                              ; preds = %133
  %140 = load i32, i32* %19, align 4
  %141 = load i32, i32* %16, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %139
  %144 = load i32, i32* %12, align 4
  store i32 %144, i32* %11, align 4
  br label %171

145:                                              ; preds = %139
  %146 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %147 = load i32, i32* %16, align 4
  %148 = call i32 @sqlite3GetTempRange(%struct.TYPE_35__* %146, i32 %147)
  store i32 %148, i32* %11, align 4
  store i32 0, i32* %19, align 4
  br label %149

149:                                              ; preds = %167, %145
  %150 = load i32, i32* %19, align 4
  %151 = load i32, i32* %16, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %170

153:                                              ; preds = %149
  %154 = load i32*, i32** %13, align 8
  %155 = load i32, i32* @OP_Copy, align 4
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* %19, align 4
  %158 = add nsw i32 %156, %157
  %159 = load i32, i32* %11, align 4
  %160 = load i32*, i32** %14, align 8
  %161 = load i32, i32* %19, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %159, %164
  %166 = call i32 @sqlite3VdbeAddOp3(i32* %154, i32 %155, i32 %158, i32 %165, i32 0)
  br label %167

167:                                              ; preds = %153
  %168 = load i32, i32* %19, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %19, align 4
  br label %149

170:                                              ; preds = %149
  br label %171

171:                                              ; preds = %170, %143
  %172 = load i32, i32* %10, align 4
  %173 = load i32, i32* @IN_INDEX_NOOP, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %343

175:                                              ; preds = %171
  %176 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_36__*, %struct.TYPE_36__** %178, align 8
  store %struct.TYPE_36__* %179, %struct.TYPE_36__** %25, align 8
  %180 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %181 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_37__*, %struct.TYPE_37__** %182, align 8
  %184 = call i32* @sqlite3ExprCollSeq(%struct.TYPE_35__* %180, %struct.TYPE_37__* %183)
  store i32* %184, i32** %26, align 8
  %185 = load i32*, i32** %13, align 8
  %186 = call i32 @sqlite3VdbeMakeLabel(i32* %185)
  store i32 %186, i32* %27, align 4
  store i32 0, i32* %30, align 4
  %187 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %188 = load i32, i32* @EP_xIsSelect, align 4
  %189 = call i32 @ExprHasProperty(%struct.TYPE_37__* %187, i32 %188)
  %190 = icmp ne i32 %189, 0
  %191 = xor i1 %190, true
  %192 = zext i1 %191 to i32
  %193 = call i32 @assert(i32 %192)
  %194 = load i32, i32* %8, align 4
  %195 = load i32, i32* %7, align 4
  %196 = icmp ne i32 %194, %195
  br i1 %196, label %197, label %206

197:                                              ; preds = %175
  %198 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %199 = call i32 @sqlite3GetTempReg(%struct.TYPE_35__* %198)
  store i32 %199, i32* %30, align 4
  %200 = load i32*, i32** %13, align 8
  %201 = load i32, i32* @OP_BitAnd, align 4
  %202 = load i32, i32* %11, align 4
  %203 = load i32, i32* %11, align 4
  %204 = load i32, i32* %30, align 4
  %205 = call i32 @sqlite3VdbeAddOp3(i32* %200, i32 %201, i32 %202, i32 %203, i32 %204)
  br label %206

206:                                              ; preds = %197, %175
  store i32 0, i32* %31, align 4
  br label %207

207:                                              ; preds = %319, %206
  %208 = load i32, i32* %31, align 4
  %209 = load %struct.TYPE_36__*, %struct.TYPE_36__** %25, align 8
  %210 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = icmp slt i32 %208, %211
  br i1 %212, label %213, label %322

213:                                              ; preds = %207
  %214 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %215 = load %struct.TYPE_36__*, %struct.TYPE_36__** %25, align 8
  %216 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %215, i32 0, i32 1
  %217 = load %struct.TYPE_34__*, %struct.TYPE_34__** %216, align 8
  %218 = load i32, i32* %31, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %220, i32 0, i32 0
  %222 = load %struct.TYPE_37__*, %struct.TYPE_37__** %221, align 8
  %223 = call i32 @sqlite3ExprCodeTemp(%struct.TYPE_35__* %214, %struct.TYPE_37__* %222, i32* %29)
  store i32 %223, i32* %28, align 4
  %224 = load i32, i32* %30, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %244

226:                                              ; preds = %213
  %227 = load %struct.TYPE_36__*, %struct.TYPE_36__** %25, align 8
  %228 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %227, i32 0, i32 1
  %229 = load %struct.TYPE_34__*, %struct.TYPE_34__** %228, align 8
  %230 = load i32, i32* %31, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %232, i32 0, i32 0
  %234 = load %struct.TYPE_37__*, %struct.TYPE_37__** %233, align 8
  %235 = call i64 @sqlite3ExprCanBeNull(%struct.TYPE_37__* %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %244

237:                                              ; preds = %226
  %238 = load i32*, i32** %13, align 8
  %239 = load i32, i32* @OP_BitAnd, align 4
  %240 = load i32, i32* %30, align 4
  %241 = load i32, i32* %28, align 4
  %242 = load i32, i32* %30, align 4
  %243 = call i32 @sqlite3VdbeAddOp3(i32* %238, i32 %239, i32 %240, i32 %241, i32 %242)
  br label %244

244:                                              ; preds = %237, %226, %213
  %245 = load i32, i32* %31, align 4
  %246 = load %struct.TYPE_36__*, %struct.TYPE_36__** %25, align 8
  %247 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = sub nsw i32 %248, 1
  %250 = icmp slt i32 %245, %249
  br i1 %250, label %255, label %251

251:                                              ; preds = %244
  %252 = load i32, i32* %8, align 4
  %253 = load i32, i32* %7, align 4
  %254 = icmp ne i32 %252, %253
  br i1 %254, label %255, label %288

255:                                              ; preds = %251, %244
  %256 = load i32*, i32** %13, align 8
  %257 = load i32, i32* @OP_Eq, align 4
  %258 = load i32, i32* %11, align 4
  %259 = load i32, i32* %27, align 4
  %260 = load i32, i32* %28, align 4
  %261 = load i32*, i32** %26, align 8
  %262 = bitcast i32* %261 to i8*
  %263 = load i32, i32* @P4_COLLSEQ, align 4
  %264 = call i32 @sqlite3VdbeAddOp4(i32* %256, i32 %257, i32 %258, i32 %259, i32 %260, i8* %262, i32 %263)
  %265 = load i32*, i32** %13, align 8
  %266 = load i32, i32* %31, align 4
  %267 = load %struct.TYPE_36__*, %struct.TYPE_36__** %25, align 8
  %268 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = sub nsw i32 %269, 1
  %271 = icmp slt i32 %266, %270
  %272 = zext i1 %271 to i32
  %273 = call i32 @VdbeCoverageIf(i32* %265, i32 %272)
  %274 = load i32*, i32** %13, align 8
  %275 = load i32, i32* %31, align 4
  %276 = load %struct.TYPE_36__*, %struct.TYPE_36__** %25, align 8
  %277 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = sub nsw i32 %278, 1
  %280 = icmp eq i32 %275, %279
  %281 = zext i1 %280 to i32
  %282 = call i32 @VdbeCoverageIf(i32* %274, i32 %281)
  %283 = load i32*, i32** %13, align 8
  %284 = load i8*, i8** %15, align 8
  %285 = getelementptr inbounds i8, i8* %284, i64 0
  %286 = load i8, i8* %285, align 1
  %287 = call i32 @sqlite3VdbeChangeP5(i32* %283, i8 signext %286)
  br label %315

288:                                              ; preds = %251
  %289 = load i32, i32* %8, align 4
  %290 = load i32, i32* %7, align 4
  %291 = icmp eq i32 %289, %290
  %292 = zext i1 %291 to i32
  %293 = call i32 @assert(i32 %292)
  %294 = load i32*, i32** %13, align 8
  %295 = load i32, i32* @OP_Ne, align 4
  %296 = load i32, i32* %11, align 4
  %297 = load i32, i32* %7, align 4
  %298 = load i32, i32* %28, align 4
  %299 = load i32*, i32** %26, align 8
  %300 = bitcast i32* %299 to i8*
  %301 = load i32, i32* @P4_COLLSEQ, align 4
  %302 = call i32 @sqlite3VdbeAddOp4(i32* %294, i32 %295, i32 %296, i32 %297, i32 %298, i8* %300, i32 %301)
  %303 = load i32*, i32** %13, align 8
  %304 = call i32 @VdbeCoverage(i32* %303)
  %305 = load i32*, i32** %13, align 8
  %306 = load i8*, i8** %15, align 8
  %307 = getelementptr inbounds i8, i8* %306, i64 0
  %308 = load i8, i8* %307, align 1
  %309 = sext i8 %308 to i32
  %310 = load i8, i8* @SQLITE_JUMPIFNULL, align 1
  %311 = sext i8 %310 to i32
  %312 = or i32 %309, %311
  %313 = trunc i32 %312 to i8
  %314 = call i32 @sqlite3VdbeChangeP5(i32* %305, i8 signext %313)
  br label %315

315:                                              ; preds = %288, %255
  %316 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %317 = load i32, i32* %29, align 4
  %318 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_35__* %316, i32 %317)
  br label %319

319:                                              ; preds = %315
  %320 = load i32, i32* %31, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %31, align 4
  br label %207

322:                                              ; preds = %207
  %323 = load i32, i32* %30, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %336

325:                                              ; preds = %322
  %326 = load i32*, i32** %13, align 8
  %327 = load i32, i32* @OP_IsNull, align 4
  %328 = load i32, i32* %30, align 4
  %329 = load i32, i32* %8, align 4
  %330 = call i32 @sqlite3VdbeAddOp2(i32* %326, i32 %327, i32 %328, i32 %329)
  %331 = load i32*, i32** %13, align 8
  %332 = call i32 @VdbeCoverage(i32* %331)
  %333 = load i32*, i32** %13, align 8
  %334 = load i32, i32* %7, align 4
  %335 = call i32 @sqlite3VdbeGoto(i32* %333, i32 %334)
  br label %336

336:                                              ; preds = %325, %322
  %337 = load i32*, i32** %13, align 8
  %338 = load i32, i32* %27, align 4
  %339 = call i32 @sqlite3VdbeResolveLabel(i32* %337, i32 %338)
  %340 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %341 = load i32, i32* %30, align 4
  %342 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_35__* %340, i32 %341)
  br label %548

343:                                              ; preds = %171
  %344 = load i32, i32* %8, align 4
  %345 = load i32, i32* %7, align 4
  %346 = icmp eq i32 %344, %345
  br i1 %346, label %347, label %349

347:                                              ; preds = %343
  %348 = load i32, i32* %7, align 4
  store i32 %348, i32* %20, align 4
  br label %352

349:                                              ; preds = %343
  %350 = load i32*, i32** %13, align 8
  %351 = call i32 @sqlite3VdbeMakeLabel(i32* %350)
  store i32 %351, i32* %21, align 4
  store i32 %351, i32* %20, align 4
  br label %352

352:                                              ; preds = %349, %347
  store i32 0, i32* %19, align 4
  br label %353

353:                                              ; preds = %377, %352
  %354 = load i32, i32* %19, align 4
  %355 = load i32, i32* %16, align 4
  %356 = icmp slt i32 %354, %355
  br i1 %356, label %357, label %380

357:                                              ; preds = %353
  %358 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %359 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %358, i32 0, i32 1
  %360 = load %struct.TYPE_37__*, %struct.TYPE_37__** %359, align 8
  %361 = load i32, i32* %19, align 4
  %362 = call %struct.TYPE_37__* @sqlite3VectorFieldSubexpr(%struct.TYPE_37__* %360, i32 %361)
  store %struct.TYPE_37__* %362, %struct.TYPE_37__** %32, align 8
  %363 = load %struct.TYPE_37__*, %struct.TYPE_37__** %32, align 8
  %364 = call i64 @sqlite3ExprCanBeNull(%struct.TYPE_37__* %363)
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %366, label %376

366:                                              ; preds = %357
  %367 = load i32*, i32** %13, align 8
  %368 = load i32, i32* @OP_IsNull, align 4
  %369 = load i32, i32* %11, align 4
  %370 = load i32, i32* %19, align 4
  %371 = add nsw i32 %369, %370
  %372 = load i32, i32* %20, align 4
  %373 = call i32 @sqlite3VdbeAddOp2(i32* %367, i32 %368, i32 %371, i32 %372)
  %374 = load i32*, i32** %13, align 8
  %375 = call i32 @VdbeCoverage(i32* %374)
  br label %376

376:                                              ; preds = %366, %357
  br label %377

377:                                              ; preds = %376
  %378 = load i32, i32* %19, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %19, align 4
  br label %353

380:                                              ; preds = %353
  %381 = load i32, i32* %10, align 4
  %382 = load i32, i32* @IN_INDEX_ROWID, align 4
  %383 = icmp eq i32 %381, %382
  br i1 %383, label %384, label %398

384:                                              ; preds = %380
  %385 = load i32*, i32** %13, align 8
  %386 = load i32, i32* @OP_SeekRowid, align 4
  %387 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %388 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 8
  %390 = load i32, i32* %7, align 4
  %391 = load i32, i32* %11, align 4
  %392 = call i32 @sqlite3VdbeAddOp3(i32* %385, i32 %386, i32 %389, i32 %390, i32 %391)
  %393 = load i32*, i32** %13, align 8
  %394 = call i32 @VdbeCoverage(i32* %393)
  %395 = load i32*, i32** %13, align 8
  %396 = load i32, i32* @OP_Goto, align 4
  %397 = call i32 @sqlite3VdbeAddOp0(i32* %395, i32 %396)
  store i32 %397, i32* %22, align 4
  br label %432

398:                                              ; preds = %380
  %399 = load i32*, i32** %13, align 8
  %400 = load i32, i32* @OP_Affinity, align 4
  %401 = load i32, i32* %11, align 4
  %402 = load i32, i32* %16, align 4
  %403 = load i8*, i8** %15, align 8
  %404 = load i32, i32* %16, align 4
  %405 = call i32 @sqlite3VdbeAddOp4(i32* %399, i32 %400, i32 %401, i32 %402, i32 0, i8* %403, i32 %404)
  %406 = load i32, i32* %7, align 4
  %407 = load i32, i32* %8, align 4
  %408 = icmp eq i32 %406, %407
  br i1 %408, label %409, label %421

409:                                              ; preds = %398
  %410 = load i32*, i32** %13, align 8
  %411 = load i32, i32* @OP_NotFound, align 4
  %412 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %413 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 8
  %415 = load i32, i32* %7, align 4
  %416 = load i32, i32* %11, align 4
  %417 = load i32, i32* %16, align 4
  %418 = call i32 @sqlite3VdbeAddOp4Int(i32* %410, i32 %411, i32 %414, i32 %415, i32 %416, i32 %417)
  %419 = load i32*, i32** %13, align 8
  %420 = call i32 @VdbeCoverage(i32* %419)
  br label %548

421:                                              ; preds = %398
  %422 = load i32*, i32** %13, align 8
  %423 = load i32, i32* @OP_Found, align 4
  %424 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %425 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 8
  %427 = load i32, i32* %11, align 4
  %428 = load i32, i32* %16, align 4
  %429 = call i32 @sqlite3VdbeAddOp4Int(i32* %422, i32 %423, i32 %426, i32 0, i32 %427, i32 %428)
  store i32 %429, i32* %22, align 4
  %430 = load i32*, i32** %13, align 8
  %431 = call i32 @VdbeCoverage(i32* %430)
  br label %432

432:                                              ; preds = %421, %384
  %433 = load i32, i32* %9, align 4
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %446

435:                                              ; preds = %432
  %436 = load i32, i32* %16, align 4
  %437 = icmp eq i32 %436, 1
  br i1 %437, label %438, label %446

438:                                              ; preds = %435
  %439 = load i32*, i32** %13, align 8
  %440 = load i32, i32* @OP_NotNull, align 4
  %441 = load i32, i32* %9, align 4
  %442 = load i32, i32* %7, align 4
  %443 = call i32 @sqlite3VdbeAddOp2(i32* %439, i32 %440, i32 %441, i32 %442)
  %444 = load i32*, i32** %13, align 8
  %445 = call i32 @VdbeCoverage(i32* %444)
  br label %446

446:                                              ; preds = %438, %435, %432
  %447 = load i32, i32* %7, align 4
  %448 = load i32, i32* %8, align 4
  %449 = icmp eq i32 %447, %448
  br i1 %449, label %450, label %454

450:                                              ; preds = %446
  %451 = load i32*, i32** %13, align 8
  %452 = load i32, i32* %7, align 4
  %453 = call i32 @sqlite3VdbeGoto(i32* %451, i32 %452)
  br label %454

454:                                              ; preds = %450, %446
  %455 = load i32, i32* %21, align 4
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %457, label %461

457:                                              ; preds = %454
  %458 = load i32*, i32** %13, align 8
  %459 = load i32, i32* %21, align 4
  %460 = call i32 @sqlite3VdbeResolveLabel(i32* %458, i32 %459)
  br label %461

461:                                              ; preds = %457, %454
  %462 = load i32*, i32** %13, align 8
  %463 = load i32, i32* @OP_Rewind, align 4
  %464 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %465 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %464, i32 0, i32 0
  %466 = load i32, i32* %465, align 8
  %467 = load i32, i32* %7, align 4
  %468 = call i32 @sqlite3VdbeAddOp2(i32* %462, i32 %463, i32 %466, i32 %467)
  store i32 %468, i32* %24, align 4
  %469 = load i32*, i32** %13, align 8
  %470 = call i32 @VdbeCoverage(i32* %469)
  %471 = load i32, i32* %16, align 4
  %472 = icmp sgt i32 %471, 1
  br i1 %472, label %473, label %476

473:                                              ; preds = %461
  %474 = load i32*, i32** %13, align 8
  %475 = call i32 @sqlite3VdbeMakeLabel(i32* %474)
  store i32 %475, i32* %23, align 4
  br label %478

476:                                              ; preds = %461
  %477 = load i32, i32* %7, align 4
  store i32 %477, i32* %23, align 4
  br label %478

478:                                              ; preds = %476, %473
  store i32 0, i32* %19, align 4
  br label %479

479:                                              ; preds = %516, %478
  %480 = load i32, i32* %19, align 4
  %481 = load i32, i32* %16, align 4
  %482 = icmp slt i32 %480, %481
  br i1 %482, label %483, label %519

483:                                              ; preds = %479
  %484 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %485 = call i32 @sqlite3GetTempReg(%struct.TYPE_35__* %484)
  store i32 %485, i32* %35, align 4
  %486 = load %struct.TYPE_37__*, %struct.TYPE_37__** %18, align 8
  %487 = load i32, i32* %19, align 4
  %488 = call %struct.TYPE_37__* @sqlite3VectorFieldSubexpr(%struct.TYPE_37__* %486, i32 %487)
  store %struct.TYPE_37__* %488, %struct.TYPE_37__** %33, align 8
  %489 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %490 = load %struct.TYPE_37__*, %struct.TYPE_37__** %33, align 8
  %491 = call i32* @sqlite3ExprCollSeq(%struct.TYPE_35__* %489, %struct.TYPE_37__* %490)
  store i32* %491, i32** %34, align 8
  %492 = load i32*, i32** %13, align 8
  %493 = load i32, i32* @OP_Column, align 4
  %494 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %495 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %494, i32 0, i32 0
  %496 = load i32, i32* %495, align 8
  %497 = load i32, i32* %19, align 4
  %498 = load i32, i32* %35, align 4
  %499 = call i32 @sqlite3VdbeAddOp3(i32* %492, i32 %493, i32 %496, i32 %497, i32 %498)
  %500 = load i32*, i32** %13, align 8
  %501 = load i32, i32* @OP_Ne, align 4
  %502 = load i32, i32* %11, align 4
  %503 = load i32, i32* %19, align 4
  %504 = add nsw i32 %502, %503
  %505 = load i32, i32* %23, align 4
  %506 = load i32, i32* %35, align 4
  %507 = load i32*, i32** %34, align 8
  %508 = bitcast i32* %507 to i8*
  %509 = load i32, i32* @P4_COLLSEQ, align 4
  %510 = call i32 @sqlite3VdbeAddOp4(i32* %500, i32 %501, i32 %504, i32 %505, i32 %506, i8* %508, i32 %509)
  %511 = load i32*, i32** %13, align 8
  %512 = call i32 @VdbeCoverage(i32* %511)
  %513 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %514 = load i32, i32* %35, align 4
  %515 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_35__* %513, i32 %514)
  br label %516

516:                                              ; preds = %483
  %517 = load i32, i32* %19, align 4
  %518 = add nsw i32 %517, 1
  store i32 %518, i32* %19, align 4
  br label %479

519:                                              ; preds = %479
  %520 = load i32*, i32** %13, align 8
  %521 = load i32, i32* @OP_Goto, align 4
  %522 = load i32, i32* %8, align 4
  %523 = call i32 @sqlite3VdbeAddOp2(i32* %520, i32 %521, i32 0, i32 %522)
  %524 = load i32, i32* %16, align 4
  %525 = icmp sgt i32 %524, 1
  br i1 %525, label %526, label %544

526:                                              ; preds = %519
  %527 = load i32*, i32** %13, align 8
  %528 = load i32, i32* %23, align 4
  %529 = call i32 @sqlite3VdbeResolveLabel(i32* %527, i32 %528)
  %530 = load i32*, i32** %13, align 8
  %531 = load i32, i32* @OP_Next, align 4
  %532 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %533 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %532, i32 0, i32 0
  %534 = load i32, i32* %533, align 8
  %535 = load i32, i32* %24, align 4
  %536 = add nsw i32 %535, 1
  %537 = call i32 @sqlite3VdbeAddOp2(i32* %530, i32 %531, i32 %534, i32 %536)
  %538 = load i32*, i32** %13, align 8
  %539 = call i32 @VdbeCoverage(i32* %538)
  %540 = load i32*, i32** %13, align 8
  %541 = load i32, i32* @OP_Goto, align 4
  %542 = load i32, i32* %7, align 4
  %543 = call i32 @sqlite3VdbeAddOp2(i32* %540, i32 %541, i32 0, i32 %542)
  br label %544

544:                                              ; preds = %526, %519
  %545 = load i32*, i32** %13, align 8
  %546 = load i32, i32* %22, align 4
  %547 = call i32 @sqlite3VdbeJumpHere(i32* %545, i32 %546)
  br label %548

548:                                              ; preds = %544, %409, %336
  %549 = load i32, i32* %11, align 4
  %550 = load i32, i32* %12, align 4
  %551 = icmp ne i32 %549, %550
  br i1 %551, label %552, label %556

552:                                              ; preds = %548
  %553 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %554 = load i32, i32* %11, align 4
  %555 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_35__* %553, i32 %554)
  br label %556

556:                                              ; preds = %552, %548
  %557 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %558 = call i32 @sqlite3ExprCachePop(%struct.TYPE_35__* %557)
  %559 = load i32*, i32** %13, align 8
  %560 = call i32 @VdbeComment(i32* bitcast ([12 x i8]* @.str.1 to i32*))
  br label %561

561:                                              ; preds = %556, %68
  %562 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %563 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %562, i32 0, i32 0
  %564 = load %struct.TYPE_33__*, %struct.TYPE_33__** %563, align 8
  %565 = load i32*, i32** %14, align 8
  %566 = call i32 (%struct.TYPE_33__*, ...) @sqlite3DbFree(%struct.TYPE_33__* %564, i32* %565)
  %567 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %568 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %567, i32 0, i32 0
  %569 = load %struct.TYPE_33__*, %struct.TYPE_33__** %568, align 8
  %570 = load i8*, i8** %15, align 8
  %571 = call i32 (%struct.TYPE_33__*, ...) @sqlite3DbFree(%struct.TYPE_33__* %569, i8* %570)
  br label %572

572:                                              ; preds = %561, %43
  ret void
}

declare dso_local i64 @sqlite3ExprCheckIN(%struct.TYPE_35__*, %struct.TYPE_37__*) #1

declare dso_local i8* @exprINAffinity(%struct.TYPE_35__*, %struct.TYPE_37__*) #1

declare dso_local i32 @sqlite3ExprVectorSize(%struct.TYPE_37__*) #1

declare dso_local i64 @sqlite3DbMallocZero(%struct.TYPE_33__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @VdbeNoopComment(i32*) #1

declare dso_local i32 @sqlite3FindInIndex(%struct.TYPE_35__*, %struct.TYPE_37__*, i32, i32*, i32*) #1

declare dso_local i32 @sqlite3ExprCachePush(%struct.TYPE_35__*) #1

declare dso_local i32 @exprCodeVector(%struct.TYPE_35__*, %struct.TYPE_37__*, i32*) #1

declare dso_local i32 @sqlite3GetTempRange(%struct.TYPE_35__*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32* @sqlite3ExprCollSeq(%struct.TYPE_35__*, %struct.TYPE_37__*) #1

declare dso_local i32 @sqlite3VdbeMakeLabel(i32*) #1

declare dso_local i32 @ExprHasProperty(%struct.TYPE_37__*, i32) #1

declare dso_local i32 @sqlite3GetTempReg(%struct.TYPE_35__*) #1

declare dso_local i32 @sqlite3ExprCodeTemp(%struct.TYPE_35__*, %struct.TYPE_37__*, i32*) #1

declare dso_local i64 @sqlite3ExprCanBeNull(%struct.TYPE_37__*) #1

declare dso_local i32 @sqlite3VdbeAddOp4(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @VdbeCoverageIf(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeChangeP5(i32*, i8 signext) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @sqlite3ReleaseTempReg(%struct.TYPE_35__*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeGoto(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeResolveLabel(i32*, i32) #1

declare dso_local %struct.TYPE_37__* @sqlite3VectorFieldSubexpr(%struct.TYPE_37__*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp0(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp4Int(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

declare dso_local i32 @sqlite3ExprCachePop(%struct.TYPE_35__*) #1

declare dso_local i32 @VdbeComment(i32*) #1

declare dso_local i32 @sqlite3DbFree(%struct.TYPE_33__*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
