; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_astats.c_update_stat.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_astats.c_update_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { double, i64 }
%struct.TYPE_5__ = type { double, double, i32, i32, double, i64, double, double, i32, i32, i32, double, double, double, double, double, i64, i8*, i8*, i32, i32, i32, i8*, i8*, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_5__*, double, double, i32)* @update_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_stat(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, double %2, double %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store double %2, double* %8, align 8
  store double %3, double* %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load double, double* %8, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load double, double* %13, align 8
  %15 = fcmp olt double %11, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %5
  %17 = load double, double* %8, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store double %17, double* %19, align 8
  %20 = load double, double* %9, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  store double %20, double* %22, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  store i32 1, i32* %24, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 25
  store i64 0, i64* %26, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 3
  store i32 1, i32* %28, align 4
  br label %78

29:                                               ; preds = %5
  %30 = load double, double* %8, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load double, double* %32, align 8
  %34 = fcmp oeq double %30, %33
  br i1 %34, label %35, label %55

35:                                               ; preds = %29
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load double, double* %8, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 4
  %43 = load double, double* %42, align 8
  %44 = fcmp oeq double %40, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %35
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  br label %51

50:                                               ; preds = %35
  br label %51

51:                                               ; preds = %50, %45
  %52 = phi i32 [ %49, %45 ], [ 1, %50 ]
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  br label %77

55:                                               ; preds = %29
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 4
  %58 = load double, double* %57, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load double, double* %60, align 8
  %62 = fcmp oeq double %58, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %55
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = mul nsw i32 %66, %69
  %71 = sext i32 %70 to i64
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 25
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, %71
  store i64 %75, i64* %73, align 8
  br label %76

76:                                               ; preds = %63, %55
  br label %77

77:                                               ; preds = %76, %51
  br label %78

78:                                               ; preds = %77, %16
  %79 = load double, double* %8, align 8
  %80 = fcmp une double %79, 0.000000e+00
  br i1 %80, label %81, label %93

81:                                               ; preds = %78
  %82 = load double, double* %8, align 8
  %83 = call i64 @FFABS(double %82)
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 5
  %86 = load i64, i64* %85, align 8
  %87 = icmp slt i64 %83, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %81
  %89 = load double, double* %8, align 8
  %90 = call i64 @FFABS(double %89)
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 5
  store i64 %90, i64* %92, align 8
  br label %93

93:                                               ; preds = %88, %81, %78
  %94 = load double, double* %8, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 6
  %97 = load double, double* %96, align 8
  %98 = fcmp ogt double %94, %97
  br i1 %98, label %99, label %112

99:                                               ; preds = %93
  %100 = load double, double* %8, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 6
  store double %100, double* %102, align 8
  %103 = load double, double* %9, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 7
  store double %103, double* %105, align 8
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 8
  store i32 1, i32* %107, align 8
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 24
  store i64 0, i64* %109, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 9
  store i32 1, i32* %111, align 4
  br label %161

112:                                              ; preds = %93
  %113 = load double, double* %8, align 8
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 6
  %116 = load double, double* %115, align 8
  %117 = fcmp oeq double %113, %116
  br i1 %117, label %118, label %138

118:                                              ; preds = %112
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 9
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  %123 = load double, double* %8, align 8
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 4
  %126 = load double, double* %125, align 8
  %127 = fcmp oeq double %123, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %118
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 8
  %131 = load i32, i32* %130, align 8
  %132 = add nsw i32 %131, 1
  br label %134

133:                                              ; preds = %118
  br label %134

134:                                              ; preds = %133, %128
  %135 = phi i32 [ %132, %128 ], [ 1, %133 ]
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 8
  store i32 %135, i32* %137, align 8
  br label %160

138:                                              ; preds = %112
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 4
  %141 = load double, double* %140, align 8
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 6
  %144 = load double, double* %143, align 8
  %145 = fcmp oeq double %141, %144
  br i1 %145, label %146, label %159

146:                                              ; preds = %138
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 8
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 8
  %152 = load i32, i32* %151, align 8
  %153 = mul nsw i32 %149, %152
  %154 = sext i32 %153 to i64
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 24
  %157 = load i64, i64* %156, align 8
  %158 = add nsw i64 %157, %154
  store i64 %158, i64* %156, align 8
  br label %159

159:                                              ; preds = %146, %138
  br label %160

160:                                              ; preds = %159, %134
  br label %161

161:                                              ; preds = %160, %99
  %162 = load double, double* %8, align 8
  %163 = fcmp une double %162, 0.000000e+00
  br i1 %163, label %164, label %180

164:                                              ; preds = %161
  %165 = load double, double* %8, align 8
  %166 = call i64 @FFSIGN(double %165)
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 11
  %169 = load double, double* %168, align 8
  %170 = call i64 @FFSIGN(double %169)
  %171 = icmp ne i64 %166, %170
  %172 = zext i1 %171 to i32
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 10
  %175 = load i32, i32* %174, align 8
  %176 = add nsw i32 %175, %172
  store i32 %176, i32* %174, align 8
  %177 = load double, double* %8, align 8
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 11
  store double %177, double* %179, align 8
  br label %180

180:                                              ; preds = %164, %161
  %181 = load double, double* %9, align 8
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 12
  %184 = load double, double* %183, align 8
  %185 = fadd double %184, %181
  store double %185, double* %183, align 8
  %186 = load double, double* %9, align 8
  %187 = load double, double* %9, align 8
  %188 = fmul double %186, %187
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 13
  %191 = load double, double* %190, align 8
  %192 = fadd double %191, %188
  store double %192, double* %190, align 8
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 14
  %195 = load double, double* %194, align 8
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 0
  %198 = load double, double* %197, align 8
  %199 = fmul double %195, %198
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 0
  %202 = load double, double* %201, align 8
  %203 = fsub double 1.000000e+00, %202
  %204 = load double, double* %9, align 8
  %205 = fmul double %203, %204
  %206 = load double, double* %9, align 8
  %207 = fmul double %205, %206
  %208 = fadd double %199, %207
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 14
  store double %208, double* %210, align 8
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 4
  %213 = load double, double* %212, align 8
  %214 = call i32 @isnan(double %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %268, label %216

216:                                              ; preds = %180
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 23
  %219 = load i8*, i8** %218, align 8
  %220 = load double, double* %8, align 8
  %221 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 4
  %223 = load double, double* %222, align 8
  %224 = fsub double %220, %223
  %225 = call double @llvm.fabs.f64(double %224)
  %226 = call i8* @FFMIN(i8* %219, double %225)
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 23
  store i8* %226, i8** %228, align 8
  %229 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 22
  %231 = load i8*, i8** %230, align 8
  %232 = load double, double* %8, align 8
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 4
  %235 = load double, double* %234, align 8
  %236 = fsub double %232, %235
  %237 = call double @llvm.fabs.f64(double %236)
  %238 = call i8* @FFMAX(i8* %231, double %237)
  %239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 22
  store i8* %238, i8** %240, align 8
  %241 = load double, double* %8, align 8
  %242 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 4
  %244 = load double, double* %243, align 8
  %245 = fsub double %241, %244
  %246 = call double @llvm.fabs.f64(double %245)
  %247 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i32 0, i32 21
  %249 = load i32, i32* %248, align 8
  %250 = sitofp i32 %249 to double
  %251 = fadd double %250, %246
  %252 = fptosi double %251 to i32
  store i32 %252, i32* %248, align 8
  %253 = load double, double* %8, align 8
  %254 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 4
  %256 = load double, double* %255, align 8
  %257 = fsub double %253, %256
  %258 = load double, double* %8, align 8
  %259 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i32 0, i32 4
  %261 = load double, double* %260, align 8
  %262 = fsub double %258, %261
  %263 = fmul double %257, %262
  %264 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i32 0, i32 15
  %266 = load double, double* %265, align 8
  %267 = fadd double %266, %263
  store double %267, double* %265, align 8
  br label %268

268:                                              ; preds = %216, %180
  %269 = load double, double* %8, align 8
  %270 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 4
  store double %269, double* %271, align 8
  %272 = load i32, i32* %10, align 4
  %273 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %273, i32 0, i32 20
  %275 = load i32, i32* %274, align 4
  %276 = or i32 %275, %272
  store i32 %276, i32* %274, align 4
  %277 = load i32, i32* %10, align 4
  %278 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %279 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %278, i32 0, i32 19
  %280 = load i32, i32* %279, align 8
  %281 = and i32 %280, %277
  store i32 %281, i32* %279, align 8
  %282 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %283 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %282, i32 0, i32 16
  %284 = load i64, i64* %283, align 8
  %285 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 1
  %287 = load i64, i64* %286, align 8
  %288 = icmp sge i64 %284, %287
  br i1 %288, label %289, label %308

289:                                              ; preds = %268
  %290 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %291 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %290, i32 0, i32 18
  %292 = load i8*, i8** %291, align 8
  %293 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %294 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %293, i32 0, i32 14
  %295 = load double, double* %294, align 8
  %296 = call i8* @FFMAX(i8* %292, double %295)
  %297 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %298 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %297, i32 0, i32 18
  store i8* %296, i8** %298, align 8
  %299 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %300 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %299, i32 0, i32 17
  %301 = load i8*, i8** %300, align 8
  %302 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %303 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %302, i32 0, i32 14
  %304 = load double, double* %303, align 8
  %305 = call i8* @FFMIN(i8* %301, double %304)
  %306 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %307 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %306, i32 0, i32 17
  store i8* %305, i8** %307, align 8
  br label %308

308:                                              ; preds = %289, %268
  %309 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %310 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %309, i32 0, i32 16
  %311 = load i64, i64* %310, align 8
  %312 = add nsw i64 %311, 1
  store i64 %312, i64* %310, align 8
  ret void
}

declare dso_local i64 @FFABS(double) #1

declare dso_local i64 @FFSIGN(double) #1

declare dso_local i32 @isnan(double) #1

declare dso_local i8* @FFMIN(i8*, double) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

declare dso_local i8* @FFMAX(i8*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
