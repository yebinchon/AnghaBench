; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_textbuffer.c_getPercentileImpl.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_textbuffer.c_getPercentileImpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { i64, i32, i64, i64, %struct.TYPE_33__*, i64, %struct.TYPE_29__, i32, i32 }
%struct.TYPE_33__ = type { i64, %struct.TYPE_36__**, %struct.TYPE_32__* }
%struct.TYPE_36__ = type { i64, i8*, i32, i64, i32, i32, i32, %struct.TYPE_31__, i64 }
%struct.TYPE_31__ = type { i64, %struct.TYPE_30__ }
%struct.TYPE_30__ = type { %struct.TYPE_35__* }
%struct.TYPE_35__ = type { i64, i32 }
%struct.TYPE_32__ = type { double, double, i32, i64 }
%struct.TYPE_29__ = type { i32, i64 }
%struct.TYPE_28__ = type { double, double, i64 }

@.str = private unnamed_addr constant [42 x i8] c"MemBucket:%p,start second round bucketing\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"MemBucket:%p,flush %d pages to disk, clear status\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"MemBucket:%p,remove tmp file %s failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @getPercentileImpl(%struct.TYPE_34__* %0, i64 %1, double %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca %struct.TYPE_34__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca double, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_33__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_28__, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca %struct.TYPE_36__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca %struct.TYPE_36__*, align 8
  %24 = alloca %struct.TYPE_36__*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca double, align 8
  %27 = alloca %struct.TYPE_36__*, align 8
  %28 = alloca i64, align 8
  %29 = alloca %struct.TYPE_33__*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca %struct.TYPE_33__*, align 8
  %33 = alloca i64, align 8
  %34 = alloca %struct.TYPE_36__*, align 8
  %35 = alloca %struct.TYPE_35__*, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  store %struct.TYPE_34__* %0, %struct.TYPE_34__** %5, align 8
  store i64 %1, i64* %6, align 8
  store double %2, double* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %38

38:                                               ; preds = %577, %3
  %39 = load i64, i64* %9, align 8
  %40 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ult i64 %39, %42
  br i1 %43, label %44, label %580

44:                                               ; preds = %38
  %45 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %45, i32 0, i32 4
  %47 = load %struct.TYPE_33__*, %struct.TYPE_33__** %46, align 8
  %48 = load i64, i64* %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %47, i64 %48
  store %struct.TYPE_33__* %49, %struct.TYPE_33__** %10, align 8
  store i64 0, i64* %11, align 8
  br label %50

50:                                               ; preds = %573, %44
  %51 = load i64, i64* %11, align 8
  %52 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ult i64 %51, %54
  br i1 %55, label %56, label %576

56:                                               ; preds = %50
  %57 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %58, align 8
  %60 = icmp eq %struct.TYPE_36__** %59, null
  br i1 %60, label %69, label %61

61:                                               ; preds = %56
  %62 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %63, align 8
  %65 = load i64, i64* %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %64, i64 %65
  %67 = load %struct.TYPE_36__*, %struct.TYPE_36__** %66, align 8
  %68 = icmp eq %struct.TYPE_36__* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %61, %56
  br label %573

70:                                               ; preds = %61
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* %6, align 8
  %73 = add i64 %72, 1
  %74 = icmp ult i64 %71, %73
  br i1 %74, label %75, label %561

75:                                               ; preds = %70
  %76 = load i64, i64* %8, align 8
  %77 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %78, align 8
  %80 = load i64, i64* %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %79, i64 %80
  %82 = load %struct.TYPE_36__*, %struct.TYPE_36__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add i64 %76, %84
  %86 = load i64, i64* %6, align 8
  %87 = add i64 %86, 1
  %88 = icmp uge i64 %85, %87
  br i1 %88, label %89, label %561

89:                                               ; preds = %75
  %90 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %91, align 8
  %93 = load i64, i64* %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %92, i64 %93
  %95 = load %struct.TYPE_36__*, %struct.TYPE_36__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %8, align 8
  %99 = add i64 %97, %98
  %100 = load i64, i64* %6, align 8
  %101 = add i64 %100, 1
  %102 = icmp eq i64 %99, %101
  br i1 %102, label %103, label %157

103:                                              ; preds = %89
  %104 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %105 = load i64, i64* %9, align 8
  %106 = load i64, i64* %11, align 8
  call void @getMinMaxEntryOfNextSlotWithData(%struct.TYPE_28__* sret %12, %struct.TYPE_34__* %104, i64 %105, i64 %106)
  store double 0.000000e+00, double* %13, align 8
  store double 0.000000e+00, double* %14, align 8
  %107 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  switch i32 %109, label %142 [
    i32 130, label %110
    i32 129, label %110
    i32 128, label %110
    i32 131, label %120
    i32 132, label %120
    i32 133, label %130
  ]

110:                                              ; preds = %103, %103, %103
  %111 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_32__*, %struct.TYPE_32__** %112, align 8
  %114 = load i64, i64* %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %115, i32 0, i32 0
  %117 = load double, double* %116, align 8
  store double %117, double* %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %12, i32 0, i32 0
  %119 = load double, double* %118, align 8
  store double %119, double* %14, align 8
  br label %142

120:                                              ; preds = %103, %103
  %121 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_32__*, %struct.TYPE_32__** %122, align 8
  %124 = load i64, i64* %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %125, i32 0, i32 1
  %127 = load double, double* %126, align 8
  store double %127, double* %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %12, i32 0, i32 1
  %129 = load double, double* %128, align 8
  store double %129, double* %14, align 8
  br label %142

130:                                              ; preds = %103
  %131 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_32__*, %struct.TYPE_32__** %132, align 8
  %134 = load i64, i64* %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %133, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = sitofp i64 %137 to double
  store double %138, double* %13, align 8
  %139 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %12, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = sitofp i64 %140 to double
  store double %141, double* %14, align 8
  br label %142

142:                                              ; preds = %103, %130, %120, %110
  %143 = load double, double* %14, align 8
  %144 = load double, double* %13, align 8
  %145 = fcmp ogt double %143, %144
  %146 = zext i1 %145 to i32
  %147 = call i32 @assert(i32 %146)
  %148 = load double, double* %7, align 8
  %149 = fsub double 1.000000e+00, %148
  %150 = load double, double* %13, align 8
  %151 = fmul double %149, %150
  %152 = load double, double* %7, align 8
  %153 = load double, double* %14, align 8
  %154 = fmul double %152, %153
  %155 = fadd double %151, %154
  store double %155, double* %15, align 8
  %156 = load double, double* %15, align 8
  store double %156, double* %4, align 8
  br label %581

157:                                              ; preds = %89
  %158 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %159, align 8
  %161 = load i64, i64* %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %160, i64 %161
  %163 = load %struct.TYPE_36__*, %struct.TYPE_36__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = icmp ule i64 %165, %168
  br i1 %169, label %170, label %258

170:                                              ; preds = %157
  %171 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %172 = load i64, i64* %9, align 8
  %173 = load i64, i64* %11, align 8
  %174 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %174, i32 0, i32 8
  %176 = load i32, i32* %175, align 4
  %177 = call %struct.TYPE_36__* @loadIntoBucketFromDisk(%struct.TYPE_34__* %171, i64 %172, i64 %173, i32 %176)
  store %struct.TYPE_36__* %177, %struct.TYPE_36__** %16, align 8
  %178 = load i64, i64* %6, align 8
  %179 = load i64, i64* %8, align 8
  %180 = sub i64 %178, %179
  store i64 %180, i64* %17, align 8
  %181 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  %182 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %181, i32 0, i32 1
  %183 = load i8*, i8** %182, align 8
  %184 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %184, i32 0, i32 3
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* %17, align 8
  %188 = mul i64 %186, %187
  %189 = getelementptr inbounds i8, i8* %183, i64 %188
  store i8* %189, i8** %18, align 8
  %190 = load i8*, i8** %18, align 8
  %191 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %191, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = getelementptr inbounds i8, i8* %190, i64 %193
  store i8* %194, i8** %19, align 8
  %195 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  switch i32 %197, label %246 [
    i32 129, label %198
    i32 128, label %205
    i32 130, label %212
    i32 131, label %221
    i32 132, label %230
    i32 133, label %237
  ]

198:                                              ; preds = %170
  %199 = load i8*, i8** %18, align 8
  %200 = bitcast i8* %199 to double*
  %201 = load double, double* %200, align 8
  store double %201, double* %20, align 8
  %202 = load i8*, i8** %19, align 8
  %203 = bitcast i8* %202 to double*
  %204 = load double, double* %203, align 8
  store double %204, double* %21, align 8
  br label %246

205:                                              ; preds = %170
  %206 = load i8*, i8** %18, align 8
  %207 = bitcast i8* %206 to double*
  %208 = load double, double* %207, align 8
  store double %208, double* %20, align 8
  %209 = load i8*, i8** %19, align 8
  %210 = bitcast i8* %209 to double*
  %211 = load double, double* %210, align 8
  store double %211, double* %21, align 8
  br label %246

212:                                              ; preds = %170
  %213 = load i8*, i8** %18, align 8
  %214 = bitcast i8* %213 to i64*
  %215 = load i64, i64* %214, align 8
  %216 = uitofp i64 %215 to double
  store double %216, double* %20, align 8
  %217 = load i8*, i8** %19, align 8
  %218 = bitcast i8* %217 to i64*
  %219 = load i64, i64* %218, align 8
  %220 = uitofp i64 %219 to double
  store double %220, double* %21, align 8
  br label %246

221:                                              ; preds = %170
  %222 = load i8*, i8** %18, align 8
  %223 = bitcast i8* %222 to float*
  %224 = load float, float* %223, align 4
  %225 = fpext float %224 to double
  store double %225, double* %20, align 8
  %226 = load i8*, i8** %19, align 8
  %227 = bitcast i8* %226 to float*
  %228 = load float, float* %227, align 4
  %229 = fpext float %228 to double
  store double %229, double* %21, align 8
  br label %246

230:                                              ; preds = %170
  %231 = load i8*, i8** %18, align 8
  %232 = bitcast i8* %231 to double*
  %233 = load double, double* %232, align 8
  store double %233, double* %20, align 8
  %234 = load i8*, i8** %19, align 8
  %235 = bitcast i8* %234 to double*
  %236 = load double, double* %235, align 8
  store double %236, double* %21, align 8
  br label %246

237:                                              ; preds = %170
  %238 = load i8*, i8** %18, align 8
  %239 = bitcast i8* %238 to i64*
  %240 = load i64, i64* %239, align 8
  %241 = sitofp i64 %240 to double
  store double %241, double* %20, align 8
  %242 = load i8*, i8** %19, align 8
  %243 = bitcast i8* %242 to i64*
  %244 = load i64, i64* %243, align 8
  %245 = sitofp i64 %244 to double
  store double %245, double* %21, align 8
  br label %246

246:                                              ; preds = %170, %237, %230, %221, %212, %205, %198
  %247 = load double, double* %7, align 8
  %248 = fsub double 1.000000e+00, %247
  %249 = load double, double* %20, align 8
  %250 = fmul double %248, %249
  %251 = load double, double* %7, align 8
  %252 = load double, double* %21, align 8
  %253 = fmul double %251, %252
  %254 = fadd double %250, %253
  store double %254, double* %22, align 8
  %255 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  %256 = call i32 @tfree(%struct.TYPE_36__* %255)
  %257 = load double, double* %22, align 8
  store double %257, double* %4, align 8
  br label %581

258:                                              ; preds = %157
  %259 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %260 = load i64, i64* %9, align 8
  %261 = load i64, i64* %11, align 8
  %262 = call i64 @isIdenticalData(%struct.TYPE_34__* %259, i64 %260, i64 %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %314

264:                                              ; preds = %258
  %265 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %266 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %265, i32 0, i32 1
  %267 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %266, align 8
  %268 = load i64, i64* %11, align 8
  %269 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %267, i64 %268
  %270 = load %struct.TYPE_36__*, %struct.TYPE_36__** %269, align 8
  store %struct.TYPE_36__* %270, %struct.TYPE_36__** %23, align 8
  %271 = load %struct.TYPE_36__*, %struct.TYPE_36__** %23, align 8
  %272 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  %274 = call i64 @malloc(i32 %273)
  %275 = inttoptr i64 %274 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %275, %struct.TYPE_36__** %24, align 8
  %276 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %277 = load i64, i64* %11, align 8
  %278 = load %struct.TYPE_36__*, %struct.TYPE_36__** %24, align 8
  %279 = call i8* @getFirstElemOfMemBuffer(%struct.TYPE_33__* %276, i64 %277, %struct.TYPE_36__* %278)
  store i8* %279, i8** %25, align 8
  store double 0.000000e+00, double* %26, align 8
  %280 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 8
  switch i32 %282, label %310 [
    i32 129, label %283
    i32 128, label %287
    i32 130, label %291
    i32 131, label %296
    i32 132, label %301
    i32 133, label %305
  ]

283:                                              ; preds = %264
  %284 = load i8*, i8** %25, align 8
  %285 = bitcast i8* %284 to double*
  %286 = load double, double* %285, align 8
  store double %286, double* %26, align 8
  br label %310

287:                                              ; preds = %264
  %288 = load i8*, i8** %25, align 8
  %289 = bitcast i8* %288 to double*
  %290 = load double, double* %289, align 8
  store double %290, double* %26, align 8
  br label %310

291:                                              ; preds = %264
  %292 = load i8*, i8** %25, align 8
  %293 = bitcast i8* %292 to i64*
  %294 = load i64, i64* %293, align 8
  %295 = uitofp i64 %294 to double
  store double %295, double* %26, align 8
  br label %310

296:                                              ; preds = %264
  %297 = load i8*, i8** %25, align 8
  %298 = bitcast i8* %297 to float*
  %299 = load float, float* %298, align 4
  %300 = fpext float %299 to double
  store double %300, double* %26, align 8
  br label %310

301:                                              ; preds = %264
  %302 = load i8*, i8** %25, align 8
  %303 = bitcast i8* %302 to double*
  %304 = load double, double* %303, align 8
  store double %304, double* %26, align 8
  br label %310

305:                                              ; preds = %264
  %306 = load i8*, i8** %25, align 8
  %307 = bitcast i8* %306 to i64*
  %308 = load i64, i64* %307, align 8
  %309 = sitofp i64 %308 to double
  store double %309, double* %26, align 8
  br label %310

310:                                              ; preds = %264, %305, %301, %296, %291, %287, %283
  %311 = load %struct.TYPE_36__*, %struct.TYPE_36__** %24, align 8
  %312 = call i32 @free(%struct.TYPE_36__* %311)
  %313 = load double, double* %26, align 8
  store double %313, double* %4, align 8
  br label %581

314:                                              ; preds = %258
  %315 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %316 = call i32 (i8*, %struct.TYPE_34__*, ...) @pTrace(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), %struct.TYPE_34__* %315)
  %317 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %318 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %317, i32 0, i32 1
  %319 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %318, align 8
  %320 = load i64, i64* %11, align 8
  %321 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %319, i64 %320
  %322 = load %struct.TYPE_36__*, %struct.TYPE_36__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %322, i32 0, i32 3
  %324 = load i64, i64* %323, align 8
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %358

326:                                              ; preds = %314
  %327 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %328 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %329 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %328, i32 0, i32 1
  %330 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %329, align 8
  %331 = load i64, i64* %11, align 8
  %332 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %330, i64 %331
  %333 = load %struct.TYPE_36__*, %struct.TYPE_36__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %333, i32 0, i32 8
  %335 = load i64, i64* %334, align 8
  %336 = call i32 (i8*, %struct.TYPE_34__*, ...) @pTrace(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_34__* %327, i64 %335)
  %337 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %338 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %337, i32 0, i32 1
  %339 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %338, align 8
  %340 = load i64, i64* %11, align 8
  %341 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %339, i64 %340
  %342 = load %struct.TYPE_36__*, %struct.TYPE_36__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %342, i32 0, i32 8
  %344 = load i64, i64* %343, align 8
  %345 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %346 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %345, i32 0, i32 7
  %347 = load i32, i32* %346, align 8
  %348 = sext i32 %347 to i64
  %349 = add nsw i64 %348, %344
  %350 = trunc i64 %349 to i32
  store i32 %350, i32* %346, align 8
  %351 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %352 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %351, i32 0, i32 1
  %353 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %352, align 8
  %354 = load i64, i64* %11, align 8
  %355 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %353, i64 %354
  %356 = load %struct.TYPE_36__*, %struct.TYPE_36__** %355, align 8
  %357 = call i32 @tExtMemBufferFlush(%struct.TYPE_36__* %356)
  br label %358

358:                                              ; preds = %326, %314
  %359 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %360 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %359, i32 0, i32 1
  %361 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %360, align 8
  %362 = load i64, i64* %11, align 8
  %363 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %361, i64 %362
  %364 = load %struct.TYPE_36__*, %struct.TYPE_36__** %363, align 8
  store %struct.TYPE_36__* %364, %struct.TYPE_36__** %27, align 8
  %365 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %366 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %365, i32 0, i32 1
  %367 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %366, align 8
  %368 = load i64, i64* %11, align 8
  %369 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %367, i64 %368
  store %struct.TYPE_36__* null, %struct.TYPE_36__** %369, align 8
  store i64 0, i64* %28, align 8
  br label %370

370:                                              ; preds = %413, %358
  %371 = load i64, i64* %28, align 8
  %372 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %373 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %372, i32 0, i32 0
  %374 = load i64, i64* %373, align 8
  %375 = icmp ult i64 %371, %374
  br i1 %375, label %376, label %416

376:                                              ; preds = %370
  %377 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %378 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %377, i32 0, i32 4
  %379 = load %struct.TYPE_33__*, %struct.TYPE_33__** %378, align 8
  %380 = load i64, i64* %28, align 8
  %381 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %379, i64 %380
  store %struct.TYPE_33__* %381, %struct.TYPE_33__** %29, align 8
  store i64 0, i64* %30, align 8
  br label %382

382:                                              ; preds = %409, %376
  %383 = load i64, i64* %30, align 8
  %384 = load %struct.TYPE_33__*, %struct.TYPE_33__** %29, align 8
  %385 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %384, i32 0, i32 0
  %386 = load i64, i64* %385, align 8
  %387 = icmp ult i64 %383, %386
  br i1 %387, label %388, label %412

388:                                              ; preds = %382
  %389 = load %struct.TYPE_33__*, %struct.TYPE_33__** %29, align 8
  %390 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %389, i32 0, i32 1
  %391 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %390, align 8
  %392 = icmp ne %struct.TYPE_36__** %391, null
  br i1 %392, label %393, label %408

393:                                              ; preds = %388
  %394 = load %struct.TYPE_33__*, %struct.TYPE_33__** %29, align 8
  %395 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %394, i32 0, i32 1
  %396 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %395, align 8
  %397 = load i64, i64* %30, align 8
  %398 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %396, i64 %397
  %399 = load %struct.TYPE_36__*, %struct.TYPE_36__** %398, align 8
  %400 = icmp ne %struct.TYPE_36__* %399, null
  br i1 %400, label %401, label %408

401:                                              ; preds = %393
  %402 = load %struct.TYPE_33__*, %struct.TYPE_33__** %29, align 8
  %403 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %402, i32 0, i32 1
  %404 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %403, align 8
  %405 = load i64, i64* %30, align 8
  %406 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %404, i64 %405
  %407 = call i32 @tExtMemBufferDestroy(%struct.TYPE_36__** %406)
  br label %408

408:                                              ; preds = %401, %393, %388
  br label %409

409:                                              ; preds = %408
  %410 = load i64, i64* %30, align 8
  %411 = add i64 %410, 1
  store i64 %411, i64* %30, align 8
  br label %382

412:                                              ; preds = %382
  br label %413

413:                                              ; preds = %412
  %414 = load i64, i64* %28, align 8
  %415 = add i64 %414, 1
  store i64 %415, i64* %28, align 8
  br label %370

416:                                              ; preds = %370
  %417 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %418 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %417, i32 0, i32 2
  %419 = load %struct.TYPE_32__*, %struct.TYPE_32__** %418, align 8
  %420 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %419, i32 0, i32 3
  %421 = load i64, i64* %420, align 8
  %422 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %423 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %422, i32 0, i32 6
  %424 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %423, i32 0, i32 1
  store i64 %421, i64* %424, align 8
  %425 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %426 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %425, i32 0, i32 2
  %427 = load %struct.TYPE_32__*, %struct.TYPE_32__** %426, align 8
  %428 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %427, i32 0, i32 2
  %429 = load i32, i32* %428, align 8
  %430 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %431 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %430, i32 0, i32 6
  %432 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %431, i32 0, i32 0
  store i32 %429, i32* %432, align 8
  %433 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %434 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %433, i32 0, i32 5
  store i64 0, i64* %434, align 8
  store i64 0, i64* %31, align 8
  br label %435

435:                                              ; preds = %469, %416
  %436 = load i64, i64* %31, align 8
  %437 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %438 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %437, i32 0, i32 0
  %439 = load i64, i64* %438, align 8
  %440 = icmp ult i64 %436, %439
  br i1 %440, label %441, label %472

441:                                              ; preds = %435
  %442 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %443 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %442, i32 0, i32 4
  %444 = load %struct.TYPE_33__*, %struct.TYPE_33__** %443, align 8
  %445 = load i64, i64* %31, align 8
  %446 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %444, i64 %445
  store %struct.TYPE_33__* %446, %struct.TYPE_33__** %32, align 8
  store i64 0, i64* %33, align 8
  br label %447

447:                                              ; preds = %465, %441
  %448 = load i64, i64* %33, align 8
  %449 = load %struct.TYPE_33__*, %struct.TYPE_33__** %32, align 8
  %450 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %449, i32 0, i32 0
  %451 = load i64, i64* %450, align 8
  %452 = icmp ult i64 %448, %451
  br i1 %452, label %453, label %468

453:                                              ; preds = %447
  %454 = load %struct.TYPE_33__*, %struct.TYPE_33__** %32, align 8
  %455 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %454, i32 0, i32 2
  %456 = load %struct.TYPE_32__*, %struct.TYPE_32__** %455, align 8
  %457 = icmp ne %struct.TYPE_32__* %456, null
  br i1 %457, label %458, label %464

458:                                              ; preds = %453
  %459 = load %struct.TYPE_33__*, %struct.TYPE_33__** %32, align 8
  %460 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %461 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %460, i32 0, i32 1
  %462 = load i32, i32* %461, align 8
  %463 = call i32 @resetBoundingBox(%struct.TYPE_33__* %459, i32 %462)
  br label %464

464:                                              ; preds = %458, %453
  br label %465

465:                                              ; preds = %464
  %466 = load i64, i64* %33, align 8
  %467 = add i64 %466, 1
  store i64 %467, i64* %33, align 8
  br label %447

468:                                              ; preds = %447
  br label %469

469:                                              ; preds = %468
  %470 = load i64, i64* %31, align 8
  %471 = add i64 %470, 1
  store i64 %471, i64* %31, align 8
  br label %435

472:                                              ; preds = %435
  %473 = load %struct.TYPE_36__*, %struct.TYPE_36__** %27, align 8
  %474 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %473, i32 0, i32 2
  %475 = load i32, i32* %474, align 8
  %476 = call i64 @malloc(i32 %475)
  %477 = inttoptr i64 %476 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %477, %struct.TYPE_36__** %34, align 8
  %478 = load %struct.TYPE_36__*, %struct.TYPE_36__** %27, align 8
  %479 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %478, i32 0, i32 7
  %480 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %479, i32 0, i32 1
  %481 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %480, i32 0, i32 0
  %482 = load %struct.TYPE_35__*, %struct.TYPE_35__** %481, align 8
  %483 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %482, i64 0
  store %struct.TYPE_35__* %483, %struct.TYPE_35__** %35, align 8
  %484 = load %struct.TYPE_35__*, %struct.TYPE_35__** %35, align 8
  %485 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %484, i32 0, i32 0
  %486 = load i64, i64* %485, align 8
  %487 = load %struct.TYPE_36__*, %struct.TYPE_36__** %27, align 8
  %488 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %487, i32 0, i32 7
  %489 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %488, i32 0, i32 0
  %490 = load i64, i64* %489, align 8
  %491 = icmp eq i64 %486, %490
  %492 = zext i1 %491 to i32
  %493 = call i32 @assert(i32 %492)
  %494 = load %struct.TYPE_36__*, %struct.TYPE_36__** %27, align 8
  %495 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %494, i32 0, i32 5
  %496 = load i32, i32* %495, align 4
  %497 = load %struct.TYPE_35__*, %struct.TYPE_35__** %35, align 8
  %498 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %497, i32 0, i32 1
  %499 = load i32, i32* %498, align 8
  %500 = load %struct.TYPE_36__*, %struct.TYPE_36__** %27, align 8
  %501 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %500, i32 0, i32 2
  %502 = load i32, i32* %501, align 8
  %503 = mul nsw i32 %499, %502
  %504 = load i32, i32* @SEEK_SET, align 4
  %505 = call i64 @fseek(i32 %496, i32 %503, i32 %504)
  store i64 %505, i64* %36, align 8
  %506 = load i64, i64* %36, align 8
  %507 = call i32 @UNUSED(i64 %506)
  store i64 0, i64* %37, align 8
  br label %508

508:                                              ; preds = %531, %472
  %509 = load i64, i64* %37, align 8
  %510 = load %struct.TYPE_35__*, %struct.TYPE_35__** %35, align 8
  %511 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %510, i32 0, i32 0
  %512 = load i64, i64* %511, align 8
  %513 = icmp slt i64 %509, %512
  br i1 %513, label %514, label %534

514:                                              ; preds = %508
  %515 = load %struct.TYPE_36__*, %struct.TYPE_36__** %34, align 8
  %516 = load %struct.TYPE_36__*, %struct.TYPE_36__** %27, align 8
  %517 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %516, i32 0, i32 2
  %518 = load i32, i32* %517, align 8
  %519 = load %struct.TYPE_36__*, %struct.TYPE_36__** %27, align 8
  %520 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %519, i32 0, i32 5
  %521 = load i32, i32* %520, align 4
  %522 = call i64 @fread(%struct.TYPE_36__* %515, i32 %518, i32 1, i32 %521)
  store i64 %522, i64* %36, align 8
  %523 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %524 = load %struct.TYPE_36__*, %struct.TYPE_36__** %34, align 8
  %525 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %524, i32 0, i32 1
  %526 = load i8*, i8** %525, align 8
  %527 = load %struct.TYPE_36__*, %struct.TYPE_36__** %34, align 8
  %528 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %527, i32 0, i32 6
  %529 = load i32, i32* %528, align 8
  %530 = call i32 @tMemBucketPut(%struct.TYPE_34__* %523, i8* %526, i32 %529)
  br label %531

531:                                              ; preds = %514
  %532 = load i64, i64* %37, align 8
  %533 = add nsw i64 %532, 1
  store i64 %533, i64* %37, align 8
  br label %508

534:                                              ; preds = %508
  %535 = load %struct.TYPE_36__*, %struct.TYPE_36__** %27, align 8
  %536 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %535, i32 0, i32 5
  %537 = load i32, i32* %536, align 4
  %538 = call i32 @fclose(i32 %537)
  %539 = load %struct.TYPE_36__*, %struct.TYPE_36__** %27, align 8
  %540 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %539, i32 0, i32 4
  %541 = load i32, i32* %540, align 8
  %542 = call i64 @unlink(i32 %541)
  %543 = icmp ne i64 %542, 0
  br i1 %543, label %544, label %550

544:                                              ; preds = %534
  %545 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %546 = load %struct.TYPE_36__*, %struct.TYPE_36__** %27, align 8
  %547 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %546, i32 0, i32 4
  %548 = load i32, i32* %547, align 8
  %549 = call i32 @pError(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_34__* %545, i32 %548)
  br label %550

550:                                              ; preds = %544, %534
  %551 = load %struct.TYPE_36__*, %struct.TYPE_36__** %27, align 8
  %552 = call i32 @tfree(%struct.TYPE_36__* %551)
  %553 = load %struct.TYPE_36__*, %struct.TYPE_36__** %34, align 8
  %554 = call i32 @tfree(%struct.TYPE_36__* %553)
  %555 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %556 = load i64, i64* %6, align 8
  %557 = load i64, i64* %8, align 8
  %558 = sub i64 %556, %557
  %559 = load double, double* %7, align 8
  %560 = call double @getPercentileImpl(%struct.TYPE_34__* %555, i64 %558, double %559)
  store double %560, double* %4, align 8
  br label %581

561:                                              ; preds = %75, %70
  %562 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %563 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %562, i32 0, i32 1
  %564 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %563, align 8
  %565 = load i64, i64* %11, align 8
  %566 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %564, i64 %565
  %567 = load %struct.TYPE_36__*, %struct.TYPE_36__** %566, align 8
  %568 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %567, i32 0, i32 0
  %569 = load i64, i64* %568, align 8
  %570 = load i64, i64* %8, align 8
  %571 = add i64 %570, %569
  store i64 %571, i64* %8, align 8
  br label %572

572:                                              ; preds = %561
  br label %573

573:                                              ; preds = %572, %69
  %574 = load i64, i64* %11, align 8
  %575 = add i64 %574, 1
  store i64 %575, i64* %11, align 8
  br label %50

576:                                              ; preds = %50
  br label %577

577:                                              ; preds = %576
  %578 = load i64, i64* %9, align 8
  %579 = add i64 %578, 1
  store i64 %579, i64* %9, align 8
  br label %38

580:                                              ; preds = %38
  store double 0.000000e+00, double* %4, align 8
  br label %581

581:                                              ; preds = %580, %550, %310, %246, %142
  %582 = load double, double* %4, align 8
  ret double %582
}

declare dso_local void @getMinMaxEntryOfNextSlotWithData(%struct.TYPE_28__* sret, %struct.TYPE_34__*, i64, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_36__* @loadIntoBucketFromDisk(%struct.TYPE_34__*, i64, i64, i32) #1

declare dso_local i32 @tfree(%struct.TYPE_36__*) #1

declare dso_local i64 @isIdenticalData(%struct.TYPE_34__*, i64, i64) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i8* @getFirstElemOfMemBuffer(%struct.TYPE_33__*, i64, %struct.TYPE_36__*) #1

declare dso_local i32 @free(%struct.TYPE_36__*) #1

declare dso_local i32 @pTrace(i8*, %struct.TYPE_34__*, ...) #1

declare dso_local i32 @tExtMemBufferFlush(%struct.TYPE_36__*) #1

declare dso_local i32 @tExtMemBufferDestroy(%struct.TYPE_36__**) #1

declare dso_local i32 @resetBoundingBox(%struct.TYPE_33__*, i32) #1

declare dso_local i64 @fseek(i32, i32, i32) #1

declare dso_local i32 @UNUSED(i64) #1

declare dso_local i64 @fread(%struct.TYPE_36__*, i32, i32, i32) #1

declare dso_local i32 @tMemBucketPut(%struct.TYPE_34__*, i8*, i32) #1

declare dso_local i32 @fclose(i32) #1

declare dso_local i64 @unlink(i32) #1

declare dso_local i32 @pError(i8*, %struct.TYPE_34__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
