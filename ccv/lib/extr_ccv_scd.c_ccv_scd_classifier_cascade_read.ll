; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_scd.c_ccv_scd_classifier_cascade_read.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_scd.c_ccv_scd_classifier_cascade_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32, float, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32*, i32*, i32*, i32*, float, i32 }

@SQLITE_OK = common dso_local global i64 0, align 8
@__const.ccv_scd_classifier_cascade_read.cascade_params_qs = private unnamed_addr constant [126 x i8] c"SELECT count, margin_left, margin_top, margin_right, margin_bottom, size_width, size_height FROM cascade_params WHERE id = 0;\00", align 16
@SQLITE_ROW = common dso_local global i64 0, align 8
@__const.ccv_scd_classifier_cascade_read.classifier_params_qs = private unnamed_addr constant [84 x i8] c"SELECT classifier, count, threshold FROM classifier_params ORDER BY classifier ASC;\00", align 16
@__const.ccv_scd_classifier_cascade_read.feature_params_qs = private unnamed_addr constant [176 x i8] c"SELECT classifier, id, sx_0, sy_0, dx_0, dy_0, sx_1, sy_1, dx_1, dy_1, sx_2, sy_2, dx_2, dy_2, sx_3, sy_3, dx_3, dy_3, bias, w FROM feature_params ORDER BY classifier, id ASC;\00", align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @ccv_scd_classifier_cascade_read(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca [126 x i8], align 16
  %7 = alloca i32*, align 8
  %8 = alloca [84 x i8], align 16
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca [176 x i8], align 16
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i32* null, i32** %4, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  %17 = load i64, i64* @SQLITE_OK, align 8
  %18 = load i8*, i8** %2, align 8
  %19 = call i64 @sqlite3_open(i8* %18, i32** %4)
  %20 = icmp eq i64 %17, %19
  br i1 %20, label %21, label %244

21:                                               ; preds = %1
  %22 = bitcast [126 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %22, i8* align 16 getelementptr inbounds ([126 x i8], [126 x i8]* @__const.ccv_scd_classifier_cascade_read.cascade_params_qs, i32 0, i32 0), i64 126, i1 false)
  store i32* null, i32** %7, align 8
  %23 = load i64, i64* @SQLITE_OK, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds [126 x i8], [126 x i8]* %6, i64 0, i64 0
  %26 = call i64 @sqlite3_prepare_v2(i32* %24, i8* %25, i32 126, i32** %7, i32 0)
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %68

28:                                               ; preds = %21
  %29 = load i32*, i32** %7, align 8
  %30 = call i64 @sqlite3_step(i32* %29)
  %31 = load i64, i64* @SQLITE_ROW, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %65

33:                                               ; preds = %28
  %34 = call i64 @ccmalloc(i32 24)
  %35 = inttoptr i64 %34 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** %5, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @sqlite3_column_int(i32* %36, i32 0)
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @cccalloc(i32 %42, i32 16)
  %44 = inttoptr i64 %43 to %struct.TYPE_6__*
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  store %struct.TYPE_6__* %44, %struct.TYPE_6__** %46, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @sqlite3_column_int(i32* %47, i32 1)
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @sqlite3_column_int(i32* %49, i32 2)
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @sqlite3_column_int(i32* %51, i32 3)
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @sqlite3_column_int(i32* %53, i32 4)
  %55 = call i32 @ccv_margin(i32 %48, i32 %50, i32 %52, i32 %54)
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @sqlite3_column_int(i32* %58, i32 5)
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @sqlite3_column_int(i32* %60, i32 6)
  %62 = call i32 @ccv_size(i32 %59, i32 %61)
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  br label %65

65:                                               ; preds = %33, %28
  %66 = load i32*, i32** %7, align 8
  %67 = call i32 @sqlite3_finalize(i32* %66)
  br label %68

68:                                               ; preds = %65, %21
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %70 = icmp ne %struct.TYPE_7__* %69, null
  br i1 %70, label %71, label %241

71:                                               ; preds = %68
  %72 = bitcast [84 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %72, i8* align 16 getelementptr inbounds ([84 x i8], [84 x i8]* @__const.ccv_scd_classifier_cascade_read.classifier_params_qs, i32 0, i32 0), i64 84, i1 false)
  store i32* null, i32** %9, align 8
  %73 = load i64, i64* @SQLITE_OK, align 8
  %74 = load i32*, i32** %4, align 8
  %75 = getelementptr inbounds [84 x i8], [84 x i8]* %8, i64 0, i64 0
  %76 = call i64 @sqlite3_prepare_v2(i32* %74, i8* %75, i32 84, i32** %9, i32 0)
  %77 = icmp eq i64 %73, %76
  br i1 %77, label %78, label %122

78:                                               ; preds = %71
  br label %79

79:                                               ; preds = %118, %78
  %80 = load i32*, i32** %9, align 8
  %81 = call i64 @sqlite3_step(i32* %80)
  %82 = load i64, i64* @SQLITE_ROW, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %119

84:                                               ; preds = %79
  %85 = load i32*, i32** %9, align 8
  %86 = call i32 @sqlite3_column_int(i32* %85, i32 0)
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %118

91:                                               ; preds = %84
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = load i32*, i32** %9, align 8
  %96 = call i32 @sqlite3_column_int(i32* %95, i32 0)
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i64 %97
  store %struct.TYPE_6__* %98, %struct.TYPE_6__** %10, align 8
  %99 = load i32*, i32** %9, align 8
  %100 = call i32 @sqlite3_column_int(i32* %99, i32 1)
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = mul i64 40, %106
  %108 = trunc i64 %107 to i32
  %109 = call i64 @ccmalloc(i32 %108)
  %110 = inttoptr i64 %109 to %struct.TYPE_5__*
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 2
  store %struct.TYPE_5__* %110, %struct.TYPE_5__** %112, align 8
  %113 = load i32*, i32** %9, align 8
  %114 = call i64 @sqlite3_column_double(i32* %113, i32 2)
  %115 = sitofp i64 %114 to float
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  store float %115, float* %117, align 4
  br label %118

118:                                              ; preds = %91, %84
  br label %79

119:                                              ; preds = %79
  %120 = load i32*, i32** %9, align 8
  %121 = call i32 @sqlite3_finalize(i32* %120)
  br label %122

122:                                              ; preds = %119, %71
  %123 = bitcast [176 x i8]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %123, i8* align 16 getelementptr inbounds ([176 x i8], [176 x i8]* @__const.ccv_scd_classifier_cascade_read.feature_params_qs, i32 0, i32 0), i64 176, i1 false)
  store i32* null, i32** %12, align 8
  %124 = load i64, i64* @SQLITE_OK, align 8
  %125 = load i32*, i32** %4, align 8
  %126 = getelementptr inbounds [176 x i8], [176 x i8]* %11, i64 0, i64 0
  %127 = call i64 @sqlite3_prepare_v2(i32* %125, i8* %126, i32 176, i32** %12, i32 0)
  %128 = icmp eq i64 %124, %127
  br i1 %128, label %129, label %240

129:                                              ; preds = %122
  br label %130

130:                                              ; preds = %236, %129
  %131 = load i32*, i32** %12, align 8
  %132 = call i64 @sqlite3_step(i32* %131)
  %133 = load i64, i64* @SQLITE_ROW, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %237

135:                                              ; preds = %130
  %136 = load i32*, i32** %12, align 8
  %137 = call i32 @sqlite3_column_int(i32* %136, i32 0)
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp slt i32 %137, %140
  br i1 %141, label %142, label %236

142:                                              ; preds = %135
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = load i32*, i32** %12, align 8
  %147 = call i32 @sqlite3_column_int(i32* %146, i32 0)
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i64 %148
  store %struct.TYPE_6__* %149, %struct.TYPE_6__** %13, align 8
  %150 = load i32*, i32** %12, align 8
  %151 = call i32 @sqlite3_column_int(i32* %150, i32 1)
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp slt i32 %151, %154
  br i1 %155, label %156, label %235

156:                                              ; preds = %142
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %158, align 8
  %160 = load i32*, i32** %12, align 8
  %161 = call i32 @sqlite3_column_int(i32* %160, i32 1)
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i64 %162
  store %struct.TYPE_5__* %163, %struct.TYPE_5__** %14, align 8
  store i32 0, i32* %3, align 4
  br label %164

164:                                              ; preds = %212, %156
  %165 = load i32, i32* %3, align 4
  %166 = icmp slt i32 %165, 4
  br i1 %166, label %167, label %215

167:                                              ; preds = %164
  %168 = load i32*, i32** %12, align 8
  %169 = load i32, i32* %3, align 4
  %170 = mul nsw i32 %169, 4
  %171 = add nsw i32 2, %170
  %172 = call i32 @sqlite3_column_int(i32* %168, i32 %171)
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %3, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  store i32 %172, i32* %178, align 4
  %179 = load i32*, i32** %12, align 8
  %180 = load i32, i32* %3, align 4
  %181 = mul nsw i32 %180, 4
  %182 = add nsw i32 3, %181
  %183 = call i32 @sqlite3_column_int(i32* %179, i32 %182)
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %3, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  store i32 %183, i32* %189, align 4
  %190 = load i32*, i32** %12, align 8
  %191 = load i32, i32* %3, align 4
  %192 = mul nsw i32 %191, 4
  %193 = add nsw i32 4, %192
  %194 = call i32 @sqlite3_column_int(i32* %190, i32 %193)
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 2
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* %3, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  store i32 %194, i32* %200, align 4
  %201 = load i32*, i32** %12, align 8
  %202 = load i32, i32* %3, align 4
  %203 = mul nsw i32 %202, 4
  %204 = add nsw i32 5, %203
  %205 = call i32 @sqlite3_column_int(i32* %201, i32 %204)
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 3
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %3, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  store i32 %205, i32* %211, align 4
  br label %212

212:                                              ; preds = %167
  %213 = load i32, i32* %3, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %3, align 4
  br label %164

215:                                              ; preds = %164
  %216 = load i32*, i32** %12, align 8
  %217 = call i64 @sqlite3_column_double(i32* %216, i32 18)
  %218 = sitofp i64 %217 to float
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 4
  store float %218, float* %220, align 8
  %221 = load i32*, i32** %12, align 8
  %222 = call i32 @sqlite3_column_bytes(i32* %221, i32 19)
  store i32 %222, i32* %15, align 4
  %223 = load i32, i32* %15, align 4
  %224 = sext i32 %223 to i64
  %225 = icmp eq i64 %224, 128
  %226 = zext i1 %225 to i32
  %227 = call i32 @assert(i32 %226)
  %228 = load i32*, i32** %12, align 8
  %229 = call i8* @sqlite3_column_blob(i32* %228, i32 19)
  store i8* %229, i8** %16, align 8
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 5
  %232 = load i32, i32* %231, align 4
  %233 = load i8*, i8** %16, align 8
  %234 = call i32 @memcpy(i32 %232, i8* %233, i32 128)
  br label %235

235:                                              ; preds = %215, %142
  br label %236

236:                                              ; preds = %235, %135
  br label %130

237:                                              ; preds = %130
  %238 = load i32*, i32** %12, align 8
  %239 = call i32 @sqlite3_finalize(i32* %238)
  br label %240

240:                                              ; preds = %237, %122
  br label %241

241:                                              ; preds = %240, %68
  %242 = load i32*, i32** %4, align 8
  %243 = call i32 @sqlite3_close(i32* %242)
  br label %244

244:                                              ; preds = %241, %1
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  ret %struct.TYPE_7__* %245
}

declare dso_local i64 @sqlite3_open(i8*, i32**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @sqlite3_prepare_v2(i32*, i8*, i32, i32**, i32) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i64 @ccmalloc(i32) #1

declare dso_local i32 @sqlite3_column_int(i32*, i32) #1

declare dso_local i64 @cccalloc(i32, i32) #1

declare dso_local i32 @ccv_margin(i32, i32, i32, i32) #1

declare dso_local i32 @ccv_size(i32, i32) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i64 @sqlite3_column_double(i32*, i32) #1

declare dso_local i32 @sqlite3_column_bytes(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @sqlite3_column_blob(i32*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @sqlite3_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
