; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_vfr.c_hb_vfr_init.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_vfr.c_hb_vfr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, double, i64, %struct.TYPE_11__, i64*, i64, i64, i64*, i64*, i64, i64, i32, i32, i32, i32*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { double, double }
%struct.TYPE_10__ = type { i32, %struct.TYPE_11__, i32 }

@.str = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"rate\00", align 1
@MAX_FRAME_ANALYSIS_DEPTH = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)* @hb_vfr_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hb_vfr_init(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %11 = call i8* @calloc(i32 1, i32 4)
  %12 = bitcast i8* %11 to %struct.TYPE_8__*
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %14, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %5, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = call i32 @build_gamma_lut(%struct.TYPE_8__* %18)
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 17
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 5
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = bitcast %struct.TYPE_11__* %28 to i8*
  %32 = bitcast %struct.TYPE_11__* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 16, i1 false)
  %33 = bitcast %struct.TYPE_11__* %26 to i8*
  %34 = bitcast %struct.TYPE_11__* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 16, i1 false)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @hb_dict_extract_int(i32* %36, i32 %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 5
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @hb_dict_extract_rational(%struct.TYPE_11__* %42, i32 %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  store i32 2, i32* %48, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 17
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load double, double* %51, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 17
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = load double, double* %55, align 8
  %57 = fdiv double %52, %56
  store double %57, double* %6, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load double, double* %60, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  %65 = load double, double* %64, align 8
  %66 = fdiv double %61, %65
  store double %66, double* %7, align 8
  %67 = load double, double* %6, align 8
  %68 = load double, double* %7, align 8
  %69 = fcmp ogt double %67, %68
  br i1 %69, label %70, label %99

70:                                               ; preds = %2
  %71 = load double, double* %6, align 8
  %72 = load double, double* %7, align 8
  %73 = fdiv double %71, %72
  store double %73, double* %8, align 8
  %74 = load double, double* %8, align 8
  %75 = fcmp ogt double %74, 1.000000e+00
  br i1 %75, label %76, label %83

76:                                               ; preds = %70
  %77 = load double, double* %8, align 8
  %78 = fcmp olt double %77, 2.000000e+00
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load double, double* %8, align 8
  %81 = fsub double %80, 1.000000e+00
  %82 = fdiv double 1.000000e+00, %81
  store double %82, double* %8, align 8
  br label %83

83:                                               ; preds = %79, %76, %70
  %84 = load double, double* %8, align 8
  %85 = call i32 @ceil(double %84)
  %86 = add nsw i32 %85, 1
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @MAX_FRAME_ANALYSIS_DEPTH, align 4
  %93 = icmp sgt i32 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %83
  %95 = load i32, i32* @MAX_FRAME_ANALYSIS_DEPTH, align 4
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  br label %98

98:                                               ; preds = %94, %83
  br label %99

99:                                               ; preds = %98, %2
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = mul nsw i32 %102, 90000
  %104 = sitofp i32 %103 to double
  %105 = load double, double* %6, align 8
  %106 = fdiv double %104, %105
  %107 = fptosi double %106 to i32
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i8* @calloc(i32 %112, i32 8)
  %114 = bitcast i8* %113 to i32*
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 16
  store i32* %114, i32** %116, align 8
  %117 = load i32, i32* @INT_MAX, align 4
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 16
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  store i32 %117, i32* %121, align 4
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 15
  store i32 %124, i32* %126, align 8
  %127 = call i32 @hb_fifo_init(i32 8, i32 1)
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 14
  store i32 %127, i32* %129, align 4
  %130 = call i32 (...) @hb_list_init()
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 13
  store i32 %130, i32* %132, align 8
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 12
  store i64 0, i64* %134, align 8
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 11
  store i64 0, i64* %136, align 8
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 10
  %139 = load i64*, i64** %138, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 0
  store i64 0, i64* %140, align 8
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 9
  %143 = load i64*, i64** %142, align 8
  %144 = getelementptr inbounds i64, i64* %143, i64 0
  store i64 0, i64* %144, align 8
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 8
  store i64 0, i64* %146, align 8
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 7
  store i64 0, i64* %148, align 8
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 6
  %151 = load i64*, i64** %150, align 8
  %152 = getelementptr inbounds i64, i64* %151, i64 0
  store i64 0, i64* %152, align 8
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 6
  %155 = load i64*, i64** %154, align 8
  %156 = getelementptr inbounds i64, i64* %155, i64 1
  store i64 0, i64* %156, align 8
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 6
  %159 = load i64*, i64** %158, align 8
  %160 = getelementptr inbounds i64, i64* %159, i64 2
  store i64 0, i64* %160, align 8
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 6
  %163 = load i64*, i64** %162, align 8
  %164 = getelementptr inbounds i64, i64* %163, i64 3
  store i64 0, i64* %164, align 8
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp eq i32 %167, 2
  br i1 %168, label %169, label %199

169:                                              ; preds = %99
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 0
  %173 = load double, double* %172, align 8
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 1
  %177 = load double, double* %176, align 8
  %178 = fdiv double %173, %177
  store double %178, double* %9, align 8
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 5
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 0
  %182 = load double, double* %181, align 8
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 5
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 1
  %186 = load double, double* %185, align 8
  %187 = fdiv double %182, %186
  store double %187, double* %10, align 8
  %188 = load double, double* %9, align 8
  %189 = load double, double* %10, align 8
  %190 = fcmp ogt double %188, %189
  br i1 %190, label %191, label %198

191:                                              ; preds = %169
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 5
  %196 = bitcast %struct.TYPE_11__* %193 to i8*
  %197 = bitcast %struct.TYPE_11__* %195 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %196, i8* align 8 %197, i64 16, i1 false)
  br label %198

198:                                              ; preds = %191, %169
  br label %206

199:                                              ; preds = %99
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 5
  %204 = bitcast %struct.TYPE_11__* %201 to i8*
  %205 = bitcast %struct.TYPE_11__* %203 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %204, i8* align 8 %205, i64 16, i1 false)
  br label %206

206:                                              ; preds = %199, %198
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 5
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 1
  %210 = load double, double* %209, align 8
  %211 = fmul double %210, 9.000000e+04
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 5
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 0
  %215 = load double, double* %214, align 8
  %216 = fdiv double %211, %215
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 3
  store double %216, double* %218, align 8
  %219 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 4
  store i64 %219, i64* %221, align 8
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 0
  store i32 %224, i32* %226, align 8
  ret i32 0
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @build_gamma_lut(%struct.TYPE_8__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @hb_dict_extract_int(i32*, i32, i8*) #1

declare dso_local i32 @hb_dict_extract_rational(%struct.TYPE_11__*, i32, i8*) #1

declare dso_local i32 @ceil(double) #1

declare dso_local i32 @hb_fifo_init(i32, i32) #1

declare dso_local i32 @hb_list_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
