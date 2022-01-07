; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_codeEqualityTerm.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_codeEqualityTerm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_35__ = type { %struct.TYPE_45__*, i32* }
%struct.TYPE_45__ = type { i32 }
%struct.TYPE_32__ = type { %struct.TYPE_36__* }
%struct.TYPE_36__ = type { i64, i32, i32, %struct.TYPE_42__, i32 }
%struct.TYPE_42__ = type { %struct.TYPE_41__* }
%struct.TYPE_41__ = type { %struct.TYPE_40__* }
%struct.TYPE_40__ = type { i32 }
%struct.TYPE_34__ = type { %struct.TYPE_44__, i32, %struct.TYPE_33__* }
%struct.TYPE_44__ = type { %struct.TYPE_43__ }
%struct.TYPE_43__ = type { i32, %struct.InLoop* }
%struct.InLoop = type { i32, i32, i32 }
%struct.TYPE_33__ = type { i32, i32, %struct.TYPE_32__**, %struct.TYPE_39__ }
%struct.TYPE_39__ = type { %struct.TYPE_38__ }
%struct.TYPE_38__ = type { %struct.TYPE_37__* }
%struct.TYPE_37__ = type { i64* }

@TK_EQ = common dso_local global i64 0, align 8
@TK_IS = common dso_local global i64 0, align 8
@TK_ISNULL = common dso_local global i64 0, align 8
@OP_Null = common dso_local global i32 0, align 4
@IN_INDEX_NOOP = common dso_local global i32 0, align 4
@WHERE_VIRTUALTABLE = common dso_local global i32 0, align 4
@TK_IN = common dso_local global i64 0, align 8
@EP_xIsSelect = common dso_local global i32 0, align 4
@IN_INDEX_LOOP = common dso_local global i32 0, align 4
@IN_INDEX_INDEX_DESC = common dso_local global i32 0, align 4
@OP_Last = common dso_local global i32 0, align 4
@OP_Rewind = common dso_local global i32 0, align 4
@WHERE_MULTI_OR = common dso_local global i32 0, align 4
@WHERE_IN_ABLE = common dso_local global i32 0, align 4
@IN_INDEX_ROWID = common dso_local global i32 0, align 4
@OP_Rowid = common dso_local global i32 0, align 4
@OP_Column = common dso_local global i32 0, align 4
@OP_IsNull = common dso_local global i32 0, align 4
@OP_PrevIfOpen = common dso_local global i32 0, align 4
@OP_NextIfOpen = common dso_local global i32 0, align 4
@OP_Noop = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_35__*, %struct.TYPE_32__*, %struct.TYPE_34__*, i32, i32, i32)* @codeEqualityTerm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @codeEqualityTerm(%struct.TYPE_35__* %0, %struct.TYPE_32__* %1, %struct.TYPE_34__* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_35__*, align 8
  %9 = alloca %struct.TYPE_32__*, align 8
  %10 = alloca %struct.TYPE_34__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_36__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.InLoop*, align 8
  %20 = alloca %struct.TYPE_33__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca %struct.TYPE_45__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.TYPE_35__* %0, %struct.TYPE_35__** %8, align 8
  store %struct.TYPE_32__* %1, %struct.TYPE_32__** %9, align 8
  store %struct.TYPE_34__* %2, %struct.TYPE_34__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %28 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_36__*, %struct.TYPE_36__** %29, align 8
  store %struct.TYPE_36__* %30, %struct.TYPE_36__** %14, align 8
  %31 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %15, align 8
  %34 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_33__*, %struct.TYPE_33__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %38, i64 %40
  %42 = load %struct.TYPE_32__*, %struct.TYPE_32__** %41, align 8
  %43 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %44 = icmp eq %struct.TYPE_32__* %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i32, i32* %13, align 4
  %48 = icmp sgt i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @TK_EQ, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %6
  %57 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @TK_IS, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %56, %6
  %63 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %64 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @sqlite3ExprCodeTarget(%struct.TYPE_35__* %63, i32 %66, i32 %67)
  store i32 %68, i32* %16, align 4
  br label %481

69:                                               ; preds = %56
  %70 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @TK_ISNULL, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %69
  %76 = load i32, i32* %13, align 4
  store i32 %76, i32* %16, align 4
  %77 = load i32*, i32** %15, align 8
  %78 = load i32, i32* @OP_Null, align 4
  %79 = load i32, i32* %16, align 4
  %80 = call i32 @sqlite3VdbeAddOp2(i32* %77, i32 %78, i32 0, i32 %79)
  br label %480

81:                                               ; preds = %69
  %82 = load i32, i32* @IN_INDEX_NOOP, align 4
  store i32 %82, i32* %17, align 4
  %83 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_33__*, %struct.TYPE_33__** %84, align 8
  store %struct.TYPE_33__* %85, %struct.TYPE_33__** %20, align 8
  store i32 0, i32* %22, align 4
  store i32* null, i32** %23, align 8
  %86 = load %struct.TYPE_33__*, %struct.TYPE_33__** %20, align 8
  %87 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @WHERE_VIRTUALTABLE, align 4
  %90 = and i32 %88, %89
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %123

92:                                               ; preds = %81
  %93 = load %struct.TYPE_33__*, %struct.TYPE_33__** %20, align 8
  %94 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_37__*, %struct.TYPE_37__** %96, align 8
  %98 = icmp ne %struct.TYPE_37__* %97, null
  br i1 %98, label %99, label %123

99:                                               ; preds = %92
  %100 = load %struct.TYPE_33__*, %struct.TYPE_33__** %20, align 8
  %101 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_37__*, %struct.TYPE_37__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %104, i32 0, i32 0
  %106 = load i64*, i64** %105, align 8
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %99
  %113 = load i32, i32* %11, align 4
  %114 = icmp eq i32 %113, 0
  %115 = zext i1 %114 to i32
  %116 = call i32 @testcase(i32 %115)
  %117 = load i32, i32* %12, align 4
  %118 = call i32 @testcase(i32 %117)
  %119 = load i32, i32* %12, align 4
  %120 = icmp ne i32 %119, 0
  %121 = xor i1 %120, true
  %122 = zext i1 %121 to i32
  store i32 %122, i32* %12, align 4
  br label %123

123:                                              ; preds = %112, %99, %92, %81
  %124 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @TK_IN, align 8
  %128 = icmp eq i64 %126, %127
  %129 = zext i1 %128 to i32
  %130 = call i32 @assert(i32 %129)
  %131 = load i32, i32* %13, align 4
  store i32 %131, i32* %16, align 4
  store i32 0, i32* %21, align 4
  br label %132

132:                                              ; preds = %163, %123
  %133 = load i32, i32* %21, align 4
  %134 = load i32, i32* %11, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %166

136:                                              ; preds = %132
  %137 = load %struct.TYPE_33__*, %struct.TYPE_33__** %20, align 8
  %138 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %137, i32 0, i32 2
  %139 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %138, align 8
  %140 = load i32, i32* %21, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %139, i64 %141
  %143 = load %struct.TYPE_32__*, %struct.TYPE_32__** %142, align 8
  %144 = icmp ne %struct.TYPE_32__* %143, null
  br i1 %144, label %145, label %162

145:                                              ; preds = %136
  %146 = load %struct.TYPE_33__*, %struct.TYPE_33__** %20, align 8
  %147 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %146, i32 0, i32 2
  %148 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %147, align 8
  %149 = load i32, i32* %21, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %148, i64 %150
  %152 = load %struct.TYPE_32__*, %struct.TYPE_32__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_36__*, %struct.TYPE_36__** %153, align 8
  %155 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %156 = icmp eq %struct.TYPE_36__* %154, %155
  br i1 %156, label %157, label %162

157:                                              ; preds = %145
  %158 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %159 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %160 = call i32 @disableTerm(%struct.TYPE_34__* %158, %struct.TYPE_32__* %159)
  %161 = load i32, i32* %13, align 4
  store i32 %161, i32* %7, align 4
  br label %486

162:                                              ; preds = %145, %136
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %21, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %21, align 4
  br label %132

166:                                              ; preds = %132
  %167 = load i32, i32* %11, align 4
  store i32 %167, i32* %21, align 4
  br label %168

168:                                              ; preds = %200, %166
  %169 = load i32, i32* %21, align 4
  %170 = load %struct.TYPE_33__*, %struct.TYPE_33__** %20, align 8
  %171 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = icmp slt i32 %169, %172
  br i1 %173, label %174, label %203

174:                                              ; preds = %168
  %175 = load %struct.TYPE_33__*, %struct.TYPE_33__** %20, align 8
  %176 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %175, i32 0, i32 2
  %177 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %176, align 8
  %178 = load i32, i32* %21, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %177, i64 %179
  %181 = load %struct.TYPE_32__*, %struct.TYPE_32__** %180, align 8
  %182 = icmp ne %struct.TYPE_32__* %181, null
  %183 = zext i1 %182 to i32
  %184 = call i32 @assert(i32 %183)
  %185 = load %struct.TYPE_33__*, %struct.TYPE_33__** %20, align 8
  %186 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %185, i32 0, i32 2
  %187 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %186, align 8
  %188 = load i32, i32* %21, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %187, i64 %189
  %191 = load %struct.TYPE_32__*, %struct.TYPE_32__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_36__*, %struct.TYPE_36__** %192, align 8
  %194 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %195 = icmp eq %struct.TYPE_36__* %193, %194
  br i1 %195, label %196, label %199

196:                                              ; preds = %174
  %197 = load i32, i32* %22, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %22, align 4
  br label %199

199:                                              ; preds = %196, %174
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %21, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %21, align 4
  br label %168

203:                                              ; preds = %168
  %204 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %205 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @EP_xIsSelect, align 4
  %208 = and i32 %206, %207
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %220, label %210

210:                                              ; preds = %203
  %211 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %212 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %211, i32 0, i32 3
  %213 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_41__*, %struct.TYPE_41__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_40__*, %struct.TYPE_40__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = icmp eq i32 %218, 1
  br i1 %219, label %220, label %225

220:                                              ; preds = %210, %203
  %221 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %222 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %223 = load i32, i32* @IN_INDEX_LOOP, align 4
  %224 = call i32 @sqlite3FindInIndex(%struct.TYPE_35__* %221, %struct.TYPE_36__* %222, i32 %223, i32 0, i32* null)
  store i32 %224, i32* %17, align 4
  br label %267

225:                                              ; preds = %210
  %226 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_45__*, %struct.TYPE_45__** %227, align 8
  store %struct.TYPE_45__* %228, %struct.TYPE_45__** %24, align 8
  %229 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %230 = load i32, i32* %11, align 4
  %231 = load %struct.TYPE_33__*, %struct.TYPE_33__** %20, align 8
  %232 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %233 = call %struct.TYPE_36__* @removeUnindexableInClauseTerms(%struct.TYPE_35__* %229, i32 %230, %struct.TYPE_33__* %231, %struct.TYPE_36__* %232)
  store %struct.TYPE_36__* %233, %struct.TYPE_36__** %14, align 8
  %234 = load %struct.TYPE_45__*, %struct.TYPE_45__** %24, align 8
  %235 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %260, label %238

238:                                              ; preds = %225
  %239 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %239, i32 0, i32 0
  %241 = load %struct.TYPE_45__*, %struct.TYPE_45__** %240, align 8
  %242 = load i32, i32* %22, align 4
  %243 = sext i32 %242 to i64
  %244 = mul i64 4, %243
  %245 = trunc i64 %244 to i32
  %246 = call i64 @sqlite3DbMallocZero(%struct.TYPE_45__* %241, i32 %245)
  %247 = inttoptr i64 %246 to i32*
  store i32* %247, i32** %23, align 8
  %248 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %249 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %250 = load i32, i32* @IN_INDEX_LOOP, align 4
  %251 = load i32*, i32** %23, align 8
  %252 = call i32 @sqlite3FindInIndex(%struct.TYPE_35__* %248, %struct.TYPE_36__* %249, i32 %250, i32 0, i32* %251)
  store i32 %252, i32* %17, align 4
  %253 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %254 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %257 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %256, i32 0, i32 0
  %258 = load %struct.TYPE_36__*, %struct.TYPE_36__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %258, i32 0, i32 2
  store i32 %255, i32* %259, align 4
  br label %260

260:                                              ; preds = %238, %225
  %261 = load %struct.TYPE_45__*, %struct.TYPE_45__** %24, align 8
  %262 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %263 = call i32 @sqlite3ExprDelete(%struct.TYPE_45__* %261, %struct.TYPE_36__* %262)
  %264 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %265 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %264, i32 0, i32 0
  %266 = load %struct.TYPE_36__*, %struct.TYPE_36__** %265, align 8
  store %struct.TYPE_36__* %266, %struct.TYPE_36__** %14, align 8
  br label %267

267:                                              ; preds = %260, %220
  %268 = load i32, i32* %17, align 4
  %269 = load i32, i32* @IN_INDEX_INDEX_DESC, align 4
  %270 = icmp eq i32 %268, %269
  br i1 %270, label %271, label %278

271:                                              ; preds = %267
  %272 = load i32, i32* %12, align 4
  %273 = call i32 @testcase(i32 %272)
  %274 = load i32, i32* %12, align 4
  %275 = icmp ne i32 %274, 0
  %276 = xor i1 %275, true
  %277 = zext i1 %276 to i32
  store i32 %277, i32* %12, align 4
  br label %278

278:                                              ; preds = %271, %267
  %279 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %280 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 4
  store i32 %281, i32* %18, align 4
  %282 = load i32*, i32** %15, align 8
  %283 = load i32, i32* %12, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %287

285:                                              ; preds = %278
  %286 = load i32, i32* @OP_Last, align 4
  br label %289

287:                                              ; preds = %278
  %288 = load i32, i32* @OP_Rewind, align 4
  br label %289

289:                                              ; preds = %287, %285
  %290 = phi i32 [ %286, %285 ], [ %288, %287 ]
  %291 = load i32, i32* %18, align 4
  %292 = call i32 @sqlite3VdbeAddOp2(i32* %282, i32 %290, i32 %291, i32 0)
  %293 = load i32*, i32** %15, align 8
  %294 = load i32, i32* %12, align 4
  %295 = call i32 @VdbeCoverageIf(i32* %293, i32 %294)
  %296 = load i32*, i32** %15, align 8
  %297 = load i32, i32* %12, align 4
  %298 = icmp ne i32 %297, 0
  %299 = xor i1 %298, true
  %300 = zext i1 %299 to i32
  %301 = call i32 @VdbeCoverageIf(i32* %296, i32 %300)
  %302 = load %struct.TYPE_33__*, %struct.TYPE_33__** %20, align 8
  %303 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = load i32, i32* @WHERE_MULTI_OR, align 4
  %306 = and i32 %304, %305
  %307 = icmp eq i32 %306, 0
  %308 = zext i1 %307 to i32
  %309 = call i32 @assert(i32 %308)
  %310 = load i32, i32* @WHERE_IN_ABLE, align 4
  %311 = load %struct.TYPE_33__*, %struct.TYPE_33__** %20, align 8
  %312 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = or i32 %313, %310
  store i32 %314, i32* %312, align 8
  %315 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %316 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %326

321:                                              ; preds = %289
  %322 = load i32*, i32** %15, align 8
  %323 = call i32 @sqlite3VdbeMakeLabel(i32* %322)
  %324 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %325 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %324, i32 0, i32 1
  store i32 %323, i32* %325, align 8
  br label %326

326:                                              ; preds = %321, %289
  %327 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %328 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  store i32 %331, i32* %21, align 4
  %332 = load i32, i32* %22, align 4
  %333 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %334 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = add nsw i32 %337, %332
  store i32 %338, i32* %336, align 8
  %339 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %340 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %339, i32 0, i32 0
  %341 = load %struct.TYPE_45__*, %struct.TYPE_45__** %340, align 8
  %342 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %343 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %344, i32 0, i32 1
  %346 = load %struct.InLoop*, %struct.InLoop** %345, align 8
  %347 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %348 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = sext i32 %351 to i64
  %353 = mul i64 12, %352
  %354 = trunc i64 %353 to i32
  %355 = call %struct.InLoop* @sqlite3DbReallocOrFree(%struct.TYPE_45__* %341, %struct.InLoop* %346, i32 %354)
  %356 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %357 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %358, i32 0, i32 1
  store %struct.InLoop* %355, %struct.InLoop** %359, align 8
  %360 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %361 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %362, i32 0, i32 1
  %364 = load %struct.InLoop*, %struct.InLoop** %363, align 8
  store %struct.InLoop* %364, %struct.InLoop** %19, align 8
  %365 = load %struct.InLoop*, %struct.InLoop** %19, align 8
  %366 = icmp ne %struct.InLoop* %365, null
  br i1 %366, label %367, label %469

367:                                              ; preds = %326
  store i32 0, i32* %25, align 4
  %368 = load i32, i32* %21, align 4
  %369 = load %struct.InLoop*, %struct.InLoop** %19, align 8
  %370 = sext i32 %368 to i64
  %371 = getelementptr inbounds %struct.InLoop, %struct.InLoop* %369, i64 %370
  store %struct.InLoop* %371, %struct.InLoop** %19, align 8
  %372 = load i32, i32* %11, align 4
  store i32 %372, i32* %21, align 4
  br label %373

373:                                              ; preds = %465, %367
  %374 = load i32, i32* %21, align 4
  %375 = load %struct.TYPE_33__*, %struct.TYPE_33__** %20, align 8
  %376 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 4
  %378 = icmp slt i32 %374, %377
  br i1 %378, label %379, label %468

379:                                              ; preds = %373
  %380 = load %struct.TYPE_33__*, %struct.TYPE_33__** %20, align 8
  %381 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %380, i32 0, i32 2
  %382 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %381, align 8
  %383 = load i32, i32* %21, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %382, i64 %384
  %386 = load %struct.TYPE_32__*, %struct.TYPE_32__** %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %386, i32 0, i32 0
  %388 = load %struct.TYPE_36__*, %struct.TYPE_36__** %387, align 8
  %389 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %390 = icmp eq %struct.TYPE_36__* %388, %389
  br i1 %390, label %391, label %464

391:                                              ; preds = %379
  %392 = load i32, i32* %16, align 4
  %393 = load i32, i32* %21, align 4
  %394 = add nsw i32 %392, %393
  %395 = load i32, i32* %11, align 4
  %396 = sub nsw i32 %394, %395
  store i32 %396, i32* %26, align 4
  %397 = load i32, i32* %17, align 4
  %398 = load i32, i32* @IN_INDEX_ROWID, align 4
  %399 = icmp eq i32 %397, %398
  br i1 %399, label %400, label %412

400:                                              ; preds = %391
  %401 = load i32, i32* %22, align 4
  %402 = icmp sgt i32 %401, 1
  %403 = zext i1 %402 to i32
  %404 = call i32 @testcase(i32 %403)
  %405 = load i32*, i32** %15, align 8
  %406 = load i32, i32* @OP_Rowid, align 4
  %407 = load i32, i32* %18, align 4
  %408 = load i32, i32* %26, align 4
  %409 = call i32 @sqlite3VdbeAddOp2(i32* %405, i32 %406, i32 %407, i32 %408)
  %410 = load %struct.InLoop*, %struct.InLoop** %19, align 8
  %411 = getelementptr inbounds %struct.InLoop, %struct.InLoop* %410, i32 0, i32 2
  store i32 %409, i32* %411, align 4
  br label %433

412:                                              ; preds = %391
  %413 = load i32*, i32** %23, align 8
  %414 = icmp ne i32* %413, null
  br i1 %414, label %415, label %422

415:                                              ; preds = %412
  %416 = load i32*, i32** %23, align 8
  %417 = load i32, i32* %25, align 4
  %418 = add nsw i32 %417, 1
  store i32 %418, i32* %25, align 4
  %419 = sext i32 %417 to i64
  %420 = getelementptr inbounds i32, i32* %416, i64 %419
  %421 = load i32, i32* %420, align 4
  br label %423

422:                                              ; preds = %412
  br label %423

423:                                              ; preds = %422, %415
  %424 = phi i32 [ %421, %415 ], [ 0, %422 ]
  store i32 %424, i32* %27, align 4
  %425 = load i32*, i32** %15, align 8
  %426 = load i32, i32* @OP_Column, align 4
  %427 = load i32, i32* %18, align 4
  %428 = load i32, i32* %27, align 4
  %429 = load i32, i32* %26, align 4
  %430 = call i32 @sqlite3VdbeAddOp3(i32* %425, i32 %426, i32 %427, i32 %428, i32 %429)
  %431 = load %struct.InLoop*, %struct.InLoop** %19, align 8
  %432 = getelementptr inbounds %struct.InLoop, %struct.InLoop* %431, i32 0, i32 2
  store i32 %430, i32* %432, align 4
  br label %433

433:                                              ; preds = %423, %400
  %434 = load i32*, i32** %15, align 8
  %435 = load i32, i32* @OP_IsNull, align 4
  %436 = load i32, i32* %26, align 4
  %437 = call i32 @sqlite3VdbeAddOp1(i32* %434, i32 %435, i32 %436)
  %438 = load i32*, i32** %15, align 8
  %439 = call i32 @VdbeCoverage(i32* %438)
  %440 = load i32, i32* %21, align 4
  %441 = load i32, i32* %11, align 4
  %442 = icmp eq i32 %440, %441
  br i1 %442, label %443, label %457

443:                                              ; preds = %433
  %444 = load i32, i32* %18, align 4
  %445 = load %struct.InLoop*, %struct.InLoop** %19, align 8
  %446 = getelementptr inbounds %struct.InLoop, %struct.InLoop* %445, i32 0, i32 0
  store i32 %444, i32* %446, align 4
  %447 = load i32, i32* %12, align 4
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %451

449:                                              ; preds = %443
  %450 = load i32, i32* @OP_PrevIfOpen, align 4
  br label %453

451:                                              ; preds = %443
  %452 = load i32, i32* @OP_NextIfOpen, align 4
  br label %453

453:                                              ; preds = %451, %449
  %454 = phi i32 [ %450, %449 ], [ %452, %451 ]
  %455 = load %struct.InLoop*, %struct.InLoop** %19, align 8
  %456 = getelementptr inbounds %struct.InLoop, %struct.InLoop* %455, i32 0, i32 1
  store i32 %454, i32* %456, align 4
  br label %461

457:                                              ; preds = %433
  %458 = load i32, i32* @OP_Noop, align 4
  %459 = load %struct.InLoop*, %struct.InLoop** %19, align 8
  %460 = getelementptr inbounds %struct.InLoop, %struct.InLoop* %459, i32 0, i32 1
  store i32 %458, i32* %460, align 4
  br label %461

461:                                              ; preds = %457, %453
  %462 = load %struct.InLoop*, %struct.InLoop** %19, align 8
  %463 = getelementptr inbounds %struct.InLoop, %struct.InLoop* %462, i32 1
  store %struct.InLoop* %463, %struct.InLoop** %19, align 8
  br label %464

464:                                              ; preds = %461, %379
  br label %465

465:                                              ; preds = %464
  %466 = load i32, i32* %21, align 4
  %467 = add nsw i32 %466, 1
  store i32 %467, i32* %21, align 4
  br label %373

468:                                              ; preds = %373
  br label %474

469:                                              ; preds = %326
  %470 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %471 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %470, i32 0, i32 0
  %472 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %471, i32 0, i32 0
  %473 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %472, i32 0, i32 0
  store i32 0, i32* %473, align 8
  br label %474

474:                                              ; preds = %469, %468
  %475 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %476 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %475, i32 0, i32 0
  %477 = load %struct.TYPE_45__*, %struct.TYPE_45__** %476, align 8
  %478 = load i32*, i32** %23, align 8
  %479 = call i32 @sqlite3DbFree(%struct.TYPE_45__* %477, i32* %478)
  br label %480

480:                                              ; preds = %474, %75
  br label %481

481:                                              ; preds = %480, %62
  %482 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %483 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %484 = call i32 @disableTerm(%struct.TYPE_34__* %482, %struct.TYPE_32__* %483)
  %485 = load i32, i32* %16, align 4
  store i32 %485, i32* %7, align 4
  br label %486

486:                                              ; preds = %481, %157
  %487 = load i32, i32* %7, align 4
  ret i32 %487
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3ExprCodeTarget(%struct.TYPE_35__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @disableTerm(%struct.TYPE_34__*, %struct.TYPE_32__*) #1

declare dso_local i32 @sqlite3FindInIndex(%struct.TYPE_35__*, %struct.TYPE_36__*, i32, i32, i32*) #1

declare dso_local %struct.TYPE_36__* @removeUnindexableInClauseTerms(%struct.TYPE_35__*, i32, %struct.TYPE_33__*, %struct.TYPE_36__*) #1

declare dso_local i64 @sqlite3DbMallocZero(%struct.TYPE_45__*, i32) #1

declare dso_local i32 @sqlite3ExprDelete(%struct.TYPE_45__*, %struct.TYPE_36__*) #1

declare dso_local i32 @VdbeCoverageIf(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeMakeLabel(i32*) #1

declare dso_local %struct.InLoop* @sqlite3DbReallocOrFree(%struct.TYPE_45__*, %struct.InLoop*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @sqlite3DbFree(%struct.TYPE_45__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
