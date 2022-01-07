; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_thistogram.c_tHistogramMerge.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_thistogram.c_tHistogramMerge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, i64, %struct.TYPE_13__*, i64 }
%struct.TYPE_13__ = type { i64, i64 }

@MAX_HISTOGRAM_BIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @tHistogramMerge(%struct.TYPE_12__* %0, %struct.TYPE_12__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call %struct.TYPE_12__* @tHistogramCreate(i64 %15)
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %8, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @MAX_HISTOGRAM_BIN, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %3
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @MAX_HISTOGRAM_BIN, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22, %3
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %29, %struct.TYPE_12__** %4, align 8
  br label %274

30:                                               ; preds = %22
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %33, %36
  %38 = sext i32 %37 to i64
  %39 = mul i64 16, %38
  %40 = trunc i64 %39 to i32
  %41 = call %struct.TYPE_13__* @calloc(i32 1, i32 %40)
  store %struct.TYPE_13__* %41, %struct.TYPE_13__** %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %42

42:                                               ; preds = %144, %30
  %43 = load i64, i64* %10, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = icmp ult i64 %43, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %42
  %50 = load i64, i64* %11, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = icmp ult i64 %50, %54
  br label %56

56:                                               ; preds = %49, %42
  %57 = phi i1 [ false, %42 ], [ %55, %49 ]
  br i1 %57, label %58, label %145

58:                                               ; preds = %56
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  %62 = load i64, i64* %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 3
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %67, align 8
  %69 = load i64, i64* %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp slt i64 %65, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %58
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %76 = load i64, i64* %12, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i64 %76
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %80, align 8
  %82 = load i64, i64* %10, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i64 %82
  %85 = bitcast %struct.TYPE_13__* %78 to i8*
  %86 = bitcast %struct.TYPE_13__* %84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %85, i8* align 8 %86, i64 16, i1 false)
  br label %144

87:                                               ; preds = %58
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 3
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %89, align 8
  %91 = load i64, i64* %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 3
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %96, align 8
  %98 = load i64, i64* %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp sgt i64 %94, %101
  br i1 %102, label %103, label %116

103:                                              ; preds = %87
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %105 = load i64, i64* %12, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i64 %105
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 3
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %109, align 8
  %111 = load i64, i64* %11, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i64 %111
  %114 = bitcast %struct.TYPE_13__* %107 to i8*
  %115 = bitcast %struct.TYPE_13__* %113 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %114, i8* align 8 %115, i64 16, i1 false)
  br label %143

116:                                              ; preds = %87
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %118 = load i64, i64* %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i64 %118
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 3
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %121, align 8
  %123 = load i64, i64* %10, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i64 %123
  %126 = bitcast %struct.TYPE_13__* %119 to i8*
  %127 = bitcast %struct.TYPE_13__* %125 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %126, i8* align 8 %127, i64 16, i1 false)
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 3
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %129, align 8
  %131 = load i64, i64* %11, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i64 %131
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %137 = load i64, i64* %12, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i64 %137
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %141, %135
  store i64 %142, i64* %140, align 8
  br label %143

143:                                              ; preds = %116, %103
  br label %144

144:                                              ; preds = %143, %74
  br label %42

145:                                              ; preds = %56
  %146 = load i64, i64* %10, align 8
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = sext i32 %149 to i64
  %151 = icmp ult i64 %146, %150
  br i1 %151, label %152, label %174

152:                                              ; preds = %145
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = sext i32 %155 to i64
  %157 = load i64, i64* %10, align 8
  %158 = sub i64 %156, %157
  store i64 %158, i64* %13, align 8
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %160 = load i64, i64* %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i64 %160
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 3
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %163, align 8
  %165 = load i64, i64* %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i64 %165
  %167 = load i64, i64* %13, align 8
  %168 = mul i64 16, %167
  %169 = trunc i64 %168 to i32
  %170 = call i32 @memcpy(%struct.TYPE_13__* %161, %struct.TYPE_13__* %166, i32 %169)
  %171 = load i64, i64* %13, align 8
  %172 = load i64, i64* %12, align 8
  %173 = add i64 %172, %171
  store i64 %173, i64* %12, align 8
  br label %174

174:                                              ; preds = %152, %145
  %175 = load i64, i64* %11, align 8
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = sext i32 %178 to i64
  %180 = icmp ult i64 %175, %179
  br i1 %180, label %181, label %203

181:                                              ; preds = %174
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = sext i32 %184 to i64
  %186 = load i64, i64* %11, align 8
  %187 = sub i64 %185, %186
  store i64 %187, i64* %14, align 8
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %189 = load i64, i64* %12, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i64 %189
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 3
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %192, align 8
  %194 = load i64, i64* %11, align 8
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i64 %194
  %196 = load i64, i64* %14, align 8
  %197 = mul i64 16, %196
  %198 = trunc i64 %197 to i32
  %199 = call i32 @memcpy(%struct.TYPE_13__* %190, %struct.TYPE_13__* %195, i32 %198)
  %200 = load i64, i64* %14, align 8
  %201 = load i64, i64* %12, align 8
  %202 = add i64 %201, %200
  store i64 %202, i64* %12, align 8
  br label %203

203:                                              ; preds = %181, %174
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 4
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 4
  %209 = load i64, i64* %208, align 8
  %210 = add nsw i64 %206, %209
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 4
  store i64 %210, i64* %212, align 8
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = icmp slt i64 %215, %218
  br i1 %219, label %220, label %224

220:                                              ; preds = %203
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  br label %228

224:                                              ; preds = %203
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  br label %228

228:                                              ; preds = %224, %220
  %229 = phi i64 [ %223, %220 ], [ %227, %224 ]
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 1
  store i64 %229, i64* %231, align 8
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 2
  %234 = load i64, i64* %233, align 8
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 2
  %237 = load i64, i64* %236, align 8
  %238 = icmp sgt i64 %234, %237
  br i1 %238, label %239, label %243

239:                                              ; preds = %228
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 2
  %242 = load i64, i64* %241, align 8
  br label %247

243:                                              ; preds = %228
  %244 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 2
  %246 = load i64, i64* %245, align 8
  br label %247

247:                                              ; preds = %243, %239
  %248 = phi i64 [ %242, %239 ], [ %246, %243 ]
  %249 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 2
  store i64 %248, i64* %250, align 8
  br label %251

251:                                              ; preds = %255, %247
  %252 = load i64, i64* %12, align 8
  %253 = load i64, i64* %7, align 8
  %254 = icmp ugt i64 %252, %253
  br i1 %254, label %255, label %258

255:                                              ; preds = %251
  %256 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %257 = call i32 @histogramMergeImpl(%struct.TYPE_13__* %256, i64* %12)
  br label %251

258:                                              ; preds = %251
  %259 = load i64, i64* %12, align 8
  %260 = trunc i64 %259 to i32
  %261 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i32 0, i32 0
  store i32 %260, i32* %262, align 8
  %263 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 3
  %265 = load %struct.TYPE_13__*, %struct.TYPE_13__** %264, align 8
  %266 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %267 = load i64, i64* %12, align 8
  %268 = mul i64 16, %267
  %269 = trunc i64 %268 to i32
  %270 = call i32 @memcpy(%struct.TYPE_13__* %265, %struct.TYPE_13__* %266, i32 %269)
  %271 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %272 = call i32 @free(%struct.TYPE_13__* %271)
  %273 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %273, %struct.TYPE_12__** %4, align 8
  br label %274

274:                                              ; preds = %258, %28
  %275 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  ret %struct.TYPE_12__* %275
}

declare dso_local %struct.TYPE_12__* @tHistogramCreate(i64) #1

declare dso_local %struct.TYPE_13__* @calloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(%struct.TYPE_13__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @histogramMergeImpl(%struct.TYPE_13__*, i64*) #1

declare dso_local i32 @free(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
