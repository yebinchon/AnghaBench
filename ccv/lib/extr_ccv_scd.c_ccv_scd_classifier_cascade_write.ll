; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_scd.c_ccv_scd_classifier_cascade_write.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_scd.c_ccv_scd_classifier_cascade_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32*, i32*, i32*, i32*, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@SQLITE_OK = common dso_local global i64 0, align 8
@__const.ccv_scd_classifier_cascade_write.create_table_qs = private unnamed_addr constant [674 x i8] c"CREATE TABLE IF NOT EXISTS cascade_params (id INTEGER PRIMARY KEY ASC, count INTEGER, margin_left INTEGER, margin_top INTEGER, margin_right INTEGER, margin_bottom INTEGER, size_width INTEGER, size_height INTEGER);CREATE TABLE IF NOT EXISTS classifier_params (classifier INTEGER PRIMARY KEY ASC, count INTEGER, threshold DOUBLE);CREATE TABLE IF NOT EXISTS feature_params (classifier INTEGER, id INTEGER, sx_0 INTEGER, sy_0 INTEGER, dx_0 INTEGER, dy_0 INTEGER, sx_1 INTEGER, sy_1 INTEGER, dx_1 INTEGER, dy_1 INTEGER, sx_2 INTEGER, sy_2 INTEGER, dx_2 INTEGER, dy_2 INTEGER, sx_3 INTEGER, sy_3 INTEGER, dx_3 INTEGER, dy_3 INTEGER, bias DOUBLE, w BLOB, UNIQUE (classifier, id));\00", align 16
@__const.ccv_scd_classifier_cascade_write.cascade_params_insert_qs = private unnamed_addr constant [224 x i8] c"REPLACE INTO cascade_params (id, count, margin_left, margin_top, margin_right, margin_bottom, size_width, size_height) VALUES (0, $count, $margin_left, $margin_top, $margin_bottom, $margin_right, $size_width, $size_height);\00", align 16
@SQLITE_DONE = common dso_local global i64 0, align 8
@__const.ccv_scd_classifier_cascade_write.classifier_params_insert_qs = private unnamed_addr constant [104 x i8] c"REPLACE INTO classifier_params (classifier, count, threshold) VALUES ($classifier, $count, $threshold);\00", align 16
@__const.ccv_scd_classifier_cascade_write.feature_params_insert_qs = private unnamed_addr constant [300 x i8] c"REPLACE INTO feature_params (classifier, id, sx_0, sy_0, dx_0, dy_0, sx_1, sy_1, dx_1, dy_1, sx_2, sy_2, dx_2, dy_2, sx_3, sy_3, dx_3, dy_3, bias, w) VALUES ($classifier, $id, $sx_0, $sy_0, $dx_0, $dy_0, $sx_1, $sy_1, $dx_1, $dy_1, $sx_2, $sy_2, $dx_2, $dy_2, $sx_3, $sy_3, $dx_3, $dy_3, $bias, $w);\00", align 16
@SQLITE_STATIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccv_scd_classifier_cascade_write(%struct.TYPE_11__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [674 x i8], align 16
  %7 = alloca [224 x i8], align 16
  %8 = alloca i32*, align 8
  %9 = alloca [104 x i8], align 16
  %10 = alloca i32*, align 8
  %11 = alloca [300 x i8], align 16
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32* null, i32** %5, align 8
  %18 = load i64, i64* @SQLITE_OK, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i64 @sqlite3_open(i8* %19, i32** %5)
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %22, label %250

22:                                               ; preds = %2
  %23 = bitcast [674 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %23, i8* align 16 getelementptr inbounds ([674 x i8], [674 x i8]* @__const.ccv_scd_classifier_cascade_write.create_table_qs, i32 0, i32 0), i64 674, i1 false)
  %24 = load i64, i64* @SQLITE_OK, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds [674 x i8], [674 x i8]* %6, i64 0, i64 0
  %27 = call i64 @sqlite3_exec(i32* %25, i8* %26, i32 0, i32 0, i32 0)
  %28 = icmp eq i64 %24, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = bitcast [224 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %31, i8* align 16 getelementptr inbounds ([224 x i8], [224 x i8]* @__const.ccv_scd_classifier_cascade_write.cascade_params_insert_qs, i32 0, i32 0), i64 224, i1 false)
  store i32* null, i32** %8, align 8
  %32 = load i64, i64* @SQLITE_OK, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds [224 x i8], [224 x i8]* %7, i64 0, i64 0
  %35 = call i64 @sqlite3_prepare_v2(i32* %33, i8* %34, i32 224, i32** %8, i32 0)
  %36 = icmp eq i64 %32, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i32*, i32** %8, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @sqlite3_bind_int(i32* %39, i32 1, i32 %42)
  %44 = load i32*, i32** %8, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @sqlite3_bind_int(i32* %44, i32 2, i32 %48)
  %50 = load i32*, i32** %8, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @sqlite3_bind_int(i32* %50, i32 3, i32 %54)
  %56 = load i32*, i32** %8, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @sqlite3_bind_int(i32* %56, i32 4, i32 %60)
  %62 = load i32*, i32** %8, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @sqlite3_bind_int(i32* %62, i32 5, i32 %66)
  %68 = load i32*, i32** %8, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @sqlite3_bind_int(i32* %68, i32 6, i32 %72)
  %74 = load i32*, i32** %8, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @sqlite3_bind_int(i32* %74, i32 7, i32 %78)
  %80 = load i64, i64* @SQLITE_DONE, align 8
  %81 = load i32*, i32** %8, align 8
  %82 = call i64 @sqlite3_step(i32* %81)
  %83 = icmp eq i64 %80, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  %86 = load i32*, i32** %8, align 8
  %87 = call i32 @sqlite3_finalize(i32* %86)
  %88 = bitcast [104 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %88, i8* align 16 getelementptr inbounds ([104 x i8], [104 x i8]* @__const.ccv_scd_classifier_cascade_write.classifier_params_insert_qs, i32 0, i32 0), i64 104, i1 false)
  store i32* null, i32** %10, align 8
  %89 = load i64, i64* @SQLITE_OK, align 8
  %90 = load i32*, i32** %5, align 8
  %91 = getelementptr inbounds [104 x i8], [104 x i8]* %9, i64 0, i64 0
  %92 = call i64 @sqlite3_prepare_v2(i32* %90, i8* %91, i32 104, i32** %10, i32 0)
  %93 = icmp eq i64 %89, %92
  %94 = zext i1 %93 to i32
  %95 = call i32 @assert(i32 %94)
  %96 = bitcast [300 x i8]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %96, i8* align 16 getelementptr inbounds ([300 x i8], [300 x i8]* @__const.ccv_scd_classifier_cascade_write.feature_params_insert_qs, i32 0, i32 0), i64 300, i1 false)
  store i32* null, i32** %12, align 8
  %97 = load i64, i64* @SQLITE_OK, align 8
  %98 = load i32*, i32** %5, align 8
  %99 = getelementptr inbounds [300 x i8], [300 x i8]* %11, i64 0, i64 0
  %100 = call i64 @sqlite3_prepare_v2(i32* %98, i8* %99, i32 300, i32** %12, i32 0)
  %101 = icmp eq i64 %97, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert(i32 %102)
  store i32 0, i32* %13, align 4
  br label %104

104:                                              ; preds = %240, %22
  %105 = load i32, i32* %13, align 4
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp slt i32 %105, %108
  br i1 %109, label %110, label %243

110:                                              ; preds = %104
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %112, align 8
  %114 = load i32, i32* %13, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i64 %115
  store %struct.TYPE_10__* %116, %struct.TYPE_10__** %16, align 8
  %117 = load i32*, i32** %10, align 8
  %118 = load i32, i32* %13, align 4
  %119 = call i32 @sqlite3_bind_int(i32* %117, i32 1, i32 %118)
  %120 = load i32*, i32** %10, align 8
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @sqlite3_bind_int(i32* %120, i32 2, i32 %123)
  %125 = load i32*, i32** %10, align 8
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @sqlite3_bind_double(i32* %125, i32 3, i32 %128)
  %130 = load i64, i64* @SQLITE_DONE, align 8
  %131 = load i32*, i32** %10, align 8
  %132 = call i64 @sqlite3_step(i32* %131)
  %133 = icmp eq i64 %130, %132
  %134 = zext i1 %133 to i32
  %135 = call i32 @assert(i32 %134)
  %136 = load i32*, i32** %10, align 8
  %137 = call i32 @sqlite3_reset(i32* %136)
  %138 = load i32*, i32** %10, align 8
  %139 = call i32 @sqlite3_clear_bindings(i32* %138)
  store i32 0, i32* %14, align 4
  br label %140

140:                                              ; preds = %236, %110
  %141 = load i32, i32* %14, align 4
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp slt i32 %141, %144
  br i1 %145, label %146, label %239

146:                                              ; preds = %140
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %148, align 8
  %150 = load i32, i32* %14, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i64 %151
  store %struct.TYPE_9__* %152, %struct.TYPE_9__** %17, align 8
  %153 = load i32*, i32** %12, align 8
  %154 = load i32, i32* %13, align 4
  %155 = call i32 @sqlite3_bind_int(i32* %153, i32 1, i32 %154)
  %156 = load i32*, i32** %12, align 8
  %157 = load i32, i32* %14, align 4
  %158 = call i32 @sqlite3_bind_int(i32* %156, i32 2, i32 %157)
  store i32 0, i32* %15, align 4
  br label %159

159:                                              ; preds = %211, %146
  %160 = load i32, i32* %15, align 4
  %161 = icmp slt i32 %160, 4
  br i1 %161, label %162, label %214

162:                                              ; preds = %159
  %163 = load i32*, i32** %12, align 8
  %164 = load i32, i32* %15, align 4
  %165 = mul nsw i32 %164, 4
  %166 = add nsw i32 3, %165
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %15, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @sqlite3_bind_int(i32* %163, i32 %166, i32 %173)
  %175 = load i32*, i32** %12, align 8
  %176 = load i32, i32* %15, align 4
  %177 = mul nsw i32 %176, 4
  %178 = add nsw i32 4, %177
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %15, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @sqlite3_bind_int(i32* %175, i32 %178, i32 %185)
  %187 = load i32*, i32** %12, align 8
  %188 = load i32, i32* %15, align 4
  %189 = mul nsw i32 %188, 4
  %190 = add nsw i32 5, %189
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 2
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %15, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @sqlite3_bind_int(i32* %187, i32 %190, i32 %197)
  %199 = load i32*, i32** %12, align 8
  %200 = load i32, i32* %15, align 4
  %201 = mul nsw i32 %200, 4
  %202 = add nsw i32 6, %201
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 3
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %15, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @sqlite3_bind_int(i32* %199, i32 %202, i32 %209)
  br label %211

211:                                              ; preds = %162
  %212 = load i32, i32* %15, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %15, align 4
  br label %159

214:                                              ; preds = %159
  %215 = load i32*, i32** %12, align 8
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 5
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @sqlite3_bind_double(i32* %215, i32 19, i32 %218)
  %220 = load i32*, i32** %12, align 8
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @SQLITE_STATIC, align 4
  %225 = call i32 @sqlite3_bind_blob(i32* %220, i32 20, i32 %223, i32 128, i32 %224)
  %226 = load i64, i64* @SQLITE_DONE, align 8
  %227 = load i32*, i32** %12, align 8
  %228 = call i64 @sqlite3_step(i32* %227)
  %229 = icmp eq i64 %226, %228
  %230 = zext i1 %229 to i32
  %231 = call i32 @assert(i32 %230)
  %232 = load i32*, i32** %12, align 8
  %233 = call i32 @sqlite3_reset(i32* %232)
  %234 = load i32*, i32** %12, align 8
  %235 = call i32 @sqlite3_clear_bindings(i32* %234)
  br label %236

236:                                              ; preds = %214
  %237 = load i32, i32* %14, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %14, align 4
  br label %140

239:                                              ; preds = %140
  br label %240

240:                                              ; preds = %239
  %241 = load i32, i32* %13, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %13, align 4
  br label %104

243:                                              ; preds = %104
  %244 = load i32*, i32** %10, align 8
  %245 = call i32 @sqlite3_finalize(i32* %244)
  %246 = load i32*, i32** %12, align 8
  %247 = call i32 @sqlite3_finalize(i32* %246)
  %248 = load i32*, i32** %5, align 8
  %249 = call i32 @sqlite3_close(i32* %248)
  br label %250

250:                                              ; preds = %243, %2
  ret void
}

declare dso_local i64 @sqlite3_open(i8*, i32**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3_exec(i32*, i8*, i32, i32, i32) #1

declare dso_local i64 @sqlite3_prepare_v2(i32*, i8*, i32, i32**, i32) #1

declare dso_local i32 @sqlite3_bind_int(i32*, i32, i32) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i32 @sqlite3_bind_double(i32*, i32, i32) #1

declare dso_local i32 @sqlite3_reset(i32*) #1

declare dso_local i32 @sqlite3_clear_bindings(i32*) #1

declare dso_local i32 @sqlite3_bind_blob(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
