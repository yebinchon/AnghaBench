; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_convertToWithoutRowidTable.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_convertToWithoutRowidTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_25__*, i32, i64, i32*, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_23__, i64 }
%struct.TYPE_23__ = type { i64, i32 }
%struct.TYPE_25__ = type { i32, i64, i64, %struct.TYPE_27__*, i32, %struct.TYPE_21__* }
%struct.TYPE_27__ = type { i32, i32*, i32, i32, i32, i64, i32*, %struct.TYPE_27__* }
%struct.TYPE_21__ = type { i32, i32, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 }

@COLFLAG_PRIMKEY = common dso_local global i32 0, align 4
@OE_Abort = common dso_local global i32 0, align 4
@IN_DECLARE_VTAB = common dso_local global i64 0, align 8
@BTREE_BLOBKEY = common dso_local global i32 0, align 4
@TK_ID = common dso_local global i32 0, align 4
@SQLITE_IDXTYPE_PRIMARYKEY = common dso_local global i32 0, align 4
@OP_Goto = common dso_local global i32 0, align 4
@sqlite3StrBINARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_26__*, %struct.TYPE_25__*)* @convertToWithoutRowidTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convertToWithoutRowidTable(%struct.TYPE_26__* %0, %struct.TYPE_25__* %1) #0 {
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_28__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %3, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %4, align 8
  %15 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %15, i32 0, i32 4
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  store %struct.TYPE_24__* %17, %struct.TYPE_24__** %10, align 8
  %18 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %11, align 8
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %59, label %26

26:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %55, %26
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %58

33:                                               ; preds = %27
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %34, i32 0, i32 5
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @COLFLAG_PRIMKEY, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %33
  %46 = load i32, i32* @OE_Abort, align 4
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 5
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 2
  store i32 %46, i32* %53, align 4
  br label %54

54:                                               ; preds = %45, %33
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %27

58:                                               ; preds = %27
  br label %59

59:                                               ; preds = %58, %2
  %60 = load i64, i64* @IN_DECLARE_VTAB, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  br label %451

63:                                               ; preds = %59
  %64 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  %69 = load i32*, i32** %11, align 8
  %70 = ptrtoint i32* %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load i32*, i32** %11, align 8
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* @BTREE_BLOBKEY, align 4
  %77 = call i32 @sqlite3VdbeChangeP3(i32* %72, i64 %75, i32 %76)
  br label %78

78:                                               ; preds = %68, %63
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp uge i64 %81, 0
  br i1 %82, label %83, label %135

83:                                               ; preds = %78
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %84, i32 0, i32 5
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %85, align 8
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @sqlite3TokenInit(i32* %13, i32 %92)
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %96 = load i32, i32* @TK_ID, align 4
  %97 = call i32 @sqlite3ExprAlloc(%struct.TYPE_24__* %95, i32 %96, i32* %13, i32 0)
  %98 = call %struct.TYPE_28__* @sqlite3ExprListAppend(%struct.TYPE_26__* %94, i32 0, i32 %97)
  store %struct.TYPE_28__* %98, %struct.TYPE_28__** %12, align 8
  %99 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %100 = icmp eq %struct.TYPE_28__* %99, null
  br i1 %100, label %101, label %102

101:                                              ; preds = %83
  br label %451

102:                                              ; preds = %83
  %103 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i64 0
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 0
  store i32 %105, i32* %110, align 4
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %112, align 8
  %114 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %115 = icmp eq %struct.TYPE_25__* %113, %114
  %116 = zext i1 %115 to i32
  %117 = call i32 @assert(i32 %116)
  %118 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %119 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @SQLITE_IDXTYPE_PRIMARYKEY, align 4
  %124 = call i32 @sqlite3CreateIndex(%struct.TYPE_26__* %118, i32 0, i32 0, i32 0, %struct.TYPE_28__* %119, i32 %122, i32 0, i32 0, i32 0, i32 0, i32 %123)
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %102
  br label %451

130:                                              ; preds = %102
  %131 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %132 = call %struct.TYPE_27__* @sqlite3PrimaryKeyIndex(%struct.TYPE_25__* %131)
  store %struct.TYPE_27__* %132, %struct.TYPE_27__** %6, align 8
  %133 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %133, i32 0, i32 1
  store i64 -1, i64* %134, align 8
  br label %186

135:                                              ; preds = %78
  %136 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %137 = call %struct.TYPE_27__* @sqlite3PrimaryKeyIndex(%struct.TYPE_25__* %136)
  store %struct.TYPE_27__* %137, %struct.TYPE_27__** %6, align 8
  store i32 1, i32* %9, align 4
  store i32 1, i32* %8, align 4
  br label %138

138:                                              ; preds = %179, %135
  %139 = load i32, i32* %8, align 4
  %140 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp slt i32 %139, %142
  br i1 %143, label %144, label %182

144:                                              ; preds = %138
  %145 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %9, align 4
  %149 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = call i64 @hasColumn(i32* %147, i32 %148, i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %144
  %159 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = add nsw i32 %161, -1
  store i32 %162, i32* %160, align 8
  br label %178

163:                                              ; preds = %144
  %164 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %8, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %9, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %9, align 4
  %176 = sext i32 %174 to i64
  %177 = getelementptr inbounds i32, i32* %173, i64 %176
  store i32 %170, i32* %177, align 4
  br label %178

178:                                              ; preds = %163, %158
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %8, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %8, align 4
  br label %138

182:                                              ; preds = %138
  %183 = load i32, i32* %9, align 4
  %184 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %184, i32 0, i32 0
  store i32 %183, i32* %185, align 8
  br label %186

186:                                              ; preds = %182, %130
  %187 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %188 = icmp ne %struct.TYPE_27__* %187, null
  %189 = zext i1 %188 to i32
  %190 = call i32 @assert(i32 %189)
  %191 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %191, i32 0, i32 3
  store i32 1, i32* %192, align 4
  %193 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %201, label %198

198:                                              ; preds = %186
  %199 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %199, i32 0, i32 4
  store i32 1, i32* %200, align 8
  br label %201

201:                                              ; preds = %198, %186
  %202 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  store i32 %204, i32* %7, align 4
  %205 = load i32*, i32** %11, align 8
  %206 = icmp ne i32* %205, null
  br i1 %206, label %207, label %226

207:                                              ; preds = %201
  %208 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %208, i32 0, i32 5
  %210 = load i64, i64* %209, align 8
  %211 = icmp sgt i64 %210, 0
  br i1 %211, label %212, label %226

212:                                              ; preds = %207
  %213 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = icmp eq i64 %216, 0
  %218 = zext i1 %217 to i32
  %219 = call i32 @assert(i32 %218)
  %220 = load i32*, i32** %11, align 8
  %221 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %221, i32 0, i32 5
  %223 = load i64, i64* %222, align 8
  %224 = load i32, i32* @OP_Goto, align 4
  %225 = call i32 @sqlite3VdbeChangeOpcode(i32* %220, i64 %223, i32 %224)
  br label %226

226:                                              ; preds = %212, %207, %201
  %227 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %230, i32 0, i32 5
  store i64 %229, i64* %231, align 8
  %232 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %232, i32 0, i32 3
  %234 = load %struct.TYPE_27__*, %struct.TYPE_27__** %233, align 8
  store %struct.TYPE_27__* %234, %struct.TYPE_27__** %5, align 8
  br label %235

235:                                              ; preds = %367, %226
  %236 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %237 = icmp ne %struct.TYPE_27__* %236, null
  br i1 %237, label %238, label %371

238:                                              ; preds = %235
  %239 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %240 = call i64 @IsPrimaryKeyIndex(%struct.TYPE_27__* %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %238
  br label %367

243:                                              ; preds = %238
  store i32 0, i32* %14, align 4
  store i32 0, i32* %8, align 4
  br label %244

244:                                              ; preds = %268, %243
  %245 = load i32, i32* %8, align 4
  %246 = load i32, i32* %7, align 4
  %247 = icmp slt i32 %245, %246
  br i1 %247, label %248, label %271

248:                                              ; preds = %244
  %249 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %249, i32 0, i32 1
  %251 = load i32*, i32** %250, align 8
  %252 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %255, i32 0, i32 1
  %257 = load i32*, i32** %256, align 8
  %258 = load i32, i32* %8, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = call i64 @hasColumn(i32* %251, i32 %254, i32 %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %267, label %264

264:                                              ; preds = %248
  %265 = load i32, i32* %14, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %14, align 4
  br label %267

267:                                              ; preds = %264, %248
  br label %268

268:                                              ; preds = %267
  %269 = load i32, i32* %8, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %8, align 4
  br label %244

271:                                              ; preds = %244
  %272 = load i32, i32* %14, align 4
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %280

274:                                              ; preds = %271
  %275 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %278, i32 0, i32 2
  store i32 %277, i32* %279, align 8
  br label %367

280:                                              ; preds = %271
  %281 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %282 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %283 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* %14, align 4
  %287 = add nsw i32 %285, %286
  %288 = call i64 @resizeIndexObject(%struct.TYPE_24__* %281, %struct.TYPE_27__* %282, i32 %287)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %280
  br label %451

291:                                              ; preds = %280
  store i32 0, i32* %8, align 4
  %292 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  store i32 %294, i32* %9, align 4
  br label %295

295:                                              ; preds = %345, %291
  %296 = load i32, i32* %8, align 4
  %297 = load i32, i32* %7, align 4
  %298 = icmp slt i32 %296, %297
  br i1 %298, label %299, label %348

299:                                              ; preds = %295
  %300 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %301 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %300, i32 0, i32 1
  %302 = load i32*, i32** %301, align 8
  %303 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %304 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %307 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %306, i32 0, i32 1
  %308 = load i32*, i32** %307, align 8
  %309 = load i32, i32* %8, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %308, i64 %310
  %312 = load i32, i32* %311, align 4
  %313 = call i64 @hasColumn(i32* %302, i32 %305, i32 %312)
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %344, label %315

315:                                              ; preds = %299
  %316 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %317 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %316, i32 0, i32 1
  %318 = load i32*, i32** %317, align 8
  %319 = load i32, i32* %8, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %318, i64 %320
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %324 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %323, i32 0, i32 1
  %325 = load i32*, i32** %324, align 8
  %326 = load i32, i32* %9, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %325, i64 %327
  store i32 %322, i32* %328, align 4
  %329 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %330 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %329, i32 0, i32 6
  %331 = load i32*, i32** %330, align 8
  %332 = load i32, i32* %8, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %331, i64 %333
  %335 = load i32, i32* %334, align 4
  %336 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %337 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %336, i32 0, i32 6
  %338 = load i32*, i32** %337, align 8
  %339 = load i32, i32* %9, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i32, i32* %338, i64 %340
  store i32 %335, i32* %341, align 4
  %342 = load i32, i32* %9, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %9, align 4
  br label %344

344:                                              ; preds = %315, %299
  br label %345

345:                                              ; preds = %344
  %346 = load i32, i32* %8, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %8, align 4
  br label %295

348:                                              ; preds = %295
  %349 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %350 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %349, i32 0, i32 2
  %351 = load i32, i32* %350, align 8
  %352 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %353 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = load i32, i32* %14, align 4
  %356 = add nsw i32 %354, %355
  %357 = icmp sge i32 %351, %356
  %358 = zext i1 %357 to i32
  %359 = call i32 @assert(i32 %358)
  %360 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %361 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %360, i32 0, i32 2
  %362 = load i32, i32* %361, align 8
  %363 = load i32, i32* %9, align 4
  %364 = icmp sge i32 %362, %363
  %365 = zext i1 %364 to i32
  %366 = call i32 @assert(i32 %365)
  br label %367

367:                                              ; preds = %348, %274, %242
  %368 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %369 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %368, i32 0, i32 7
  %370 = load %struct.TYPE_27__*, %struct.TYPE_27__** %369, align 8
  store %struct.TYPE_27__* %370, %struct.TYPE_27__** %5, align 8
  br label %235

371:                                              ; preds = %235
  %372 = load i32, i32* %7, align 4
  %373 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %374 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 8
  %376 = icmp slt i32 %372, %375
  br i1 %376, label %377, label %445

377:                                              ; preds = %371
  %378 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %379 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %380 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %381 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 8
  %383 = call i64 @resizeIndexObject(%struct.TYPE_24__* %378, %struct.TYPE_27__* %379, i32 %382)
  %384 = icmp ne i64 %383, 0
  br i1 %384, label %385, label %386

385:                                              ; preds = %377
  br label %451

386:                                              ; preds = %377
  store i32 0, i32* %8, align 4
  %387 = load i32, i32* %7, align 4
  store i32 %387, i32* %9, align 4
  br label %388

388:                                              ; preds = %427, %386
  %389 = load i32, i32* %8, align 4
  %390 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %391 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = icmp slt i32 %389, %392
  br i1 %393, label %394, label %430

394:                                              ; preds = %388
  %395 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %396 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %395, i32 0, i32 1
  %397 = load i32*, i32** %396, align 8
  %398 = load i32, i32* %9, align 4
  %399 = load i32, i32* %8, align 4
  %400 = call i64 @hasColumn(i32* %397, i32 %398, i32 %399)
  %401 = icmp ne i64 %400, 0
  br i1 %401, label %426, label %402

402:                                              ; preds = %394
  %403 = load i32, i32* %9, align 4
  %404 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %405 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %404, i32 0, i32 2
  %406 = load i32, i32* %405, align 8
  %407 = icmp slt i32 %403, %406
  %408 = zext i1 %407 to i32
  %409 = call i32 @assert(i32 %408)
  %410 = load i32, i32* %8, align 4
  %411 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %412 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %411, i32 0, i32 1
  %413 = load i32*, i32** %412, align 8
  %414 = load i32, i32* %9, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i32, i32* %413, i64 %415
  store i32 %410, i32* %416, align 4
  %417 = load i32, i32* @sqlite3StrBINARY, align 4
  %418 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %419 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %418, i32 0, i32 6
  %420 = load i32*, i32** %419, align 8
  %421 = load i32, i32* %9, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds i32, i32* %420, i64 %422
  store i32 %417, i32* %423, align 4
  %424 = load i32, i32* %9, align 4
  %425 = add nsw i32 %424, 1
  store i32 %425, i32* %9, align 4
  br label %426

426:                                              ; preds = %402, %394
  br label %427

427:                                              ; preds = %426
  %428 = load i32, i32* %8, align 4
  %429 = add nsw i32 %428, 1
  store i32 %429, i32* %8, align 4
  br label %388

430:                                              ; preds = %388
  %431 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %432 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %431, i32 0, i32 2
  %433 = load i32, i32* %432, align 8
  %434 = load i32, i32* %9, align 4
  %435 = icmp eq i32 %433, %434
  %436 = zext i1 %435 to i32
  %437 = call i32 @assert(i32 %436)
  %438 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %439 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %438, i32 0, i32 0
  %440 = load i32, i32* %439, align 8
  %441 = load i32, i32* %9, align 4
  %442 = icmp eq i32 %440, %441
  %443 = zext i1 %442 to i32
  %444 = call i32 @assert(i32 %443)
  br label %451

445:                                              ; preds = %371
  %446 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %447 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 8
  %449 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %450 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %449, i32 0, i32 2
  store i32 %448, i32* %450, align 8
  br label %451

451:                                              ; preds = %62, %101, %129, %290, %385, %445, %430
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3VdbeChangeP3(i32*, i64, i32) #1

declare dso_local i32 @sqlite3TokenInit(i32*, i32) #1

declare dso_local %struct.TYPE_28__* @sqlite3ExprListAppend(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @sqlite3ExprAlloc(%struct.TYPE_24__*, i32, i32*, i32) #1

declare dso_local i32 @sqlite3CreateIndex(%struct.TYPE_26__*, i32, i32, i32, %struct.TYPE_28__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_27__* @sqlite3PrimaryKeyIndex(%struct.TYPE_25__*) #1

declare dso_local i64 @hasColumn(i32*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeChangeOpcode(i32*, i64, i32) #1

declare dso_local i64 @IsPrimaryKeyIndex(%struct.TYPE_27__*) #1

declare dso_local i64 @resizeIndexObject(%struct.TYPE_24__*, %struct.TYPE_27__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
