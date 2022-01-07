; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opus_celt.c_celt_decode_coarse_energy.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opus_celt.c_celt_decode_coarse_energy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { double* }

@ff_celt_alpha_coef = common dso_local global float* null, align 8
@ff_celt_beta_coef = common dso_local global float* null, align 8
@ff_celt_coarse_energy_dist = common dso_local global i32*** null, align 8
@CELT_MAX_BANDS = common dso_local global i32 0, align 4
@ff_celt_model_energy_small = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32*)* @celt_decode_coarse_energy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @celt_decode_coarse_energy(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x float], align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32* %1, i32** %4, align 8
  %16 = bitcast [2 x float]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 8, i1 false)
  %17 = load float*, float** @ff_celt_alpha_coef, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds float, float* %17, i64 %20
  %22 = load float, float* %21, align 4
  store float %22, float* %8, align 4
  %23 = load float*, float** @ff_celt_beta_coef, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds float, float* %23, i64 %26
  %28 = load float, float* %27, align 4
  store float %28, float* %9, align 4
  %29 = load i32***, i32**** @ff_celt_coarse_energy_dist, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32**, i32*** %29, i64 %32
  %34 = load i32**, i32*** %33, align 8
  %35 = getelementptr inbounds i32*, i32** %34, i64 0
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %10, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = call i64 @opus_rc_tell(i32* %37)
  %39 = add nsw i64 %38, 3
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp sle i64 %39, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %2
  %45 = load i32*, i32** %4, align 8
  %46 = call i64 @ff_opus_rc_dec_log(i32* %45, i32 3)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  store float 0.000000e+00, float* %8, align 4
  store float 0x3FEB334000000000, float* %9, align 4
  %49 = load i32***, i32**** @ff_celt_coarse_energy_dist, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i32**, i32*** %49, i64 %52
  %54 = load i32**, i32*** %53, align 8
  %55 = getelementptr inbounds i32*, i32** %54, i64 1
  %56 = load i32*, i32** %55, align 8
  store i32* %56, i32** %10, align 8
  br label %57

57:                                               ; preds = %48, %44, %2
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %186, %57
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @CELT_MAX_BANDS, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %189

62:                                               ; preds = %58
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %182, %62
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %185

69:                                               ; preds = %63
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 5
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i64 %74
  store %struct.TYPE_5__* %75, %struct.TYPE_5__** %11, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %87, label %81

81:                                               ; preds = %69
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = icmp sge i32 %82, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %81, %69
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load double*, double** %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds double, double* %90, i64 %92
  store double 0.000000e+00, double* %93, align 8
  br label %182

94:                                               ; preds = %81
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i32*, i32** %4, align 8
  %99 = call i64 @opus_rc_tell(i32* %98)
  %100 = sub nsw i64 %97, %99
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %13, align 4
  %103 = icmp sge i32 %102, 15
  br i1 %103, label %104, label %123

104:                                              ; preds = %94
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @FFMIN(i32 %105, i32 20)
  %107 = shl i32 %106, 1
  store i32 %107, i32* %14, align 4
  %108 = load i32*, i32** %4, align 8
  %109 = load i32*, i32** %10, align 8
  %110 = load i32, i32* %14, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = shl i32 %113, 7
  %115 = load i32*, i32** %10, align 8
  %116 = load i32, i32* %14, align 4
  %117 = add nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = shl i32 %120, 6
  %122 = call float @ff_opus_rc_dec_laplace(i32* %108, i32 %114, i32 %121)
  store float %122, float* %12, align 4
  br label %148

123:                                              ; preds = %94
  %124 = load i32, i32* %13, align 4
  %125 = icmp sge i32 %124, 2
  br i1 %125, label %126, label %137

126:                                              ; preds = %123
  %127 = load i32*, i32** %4, align 8
  %128 = load i32, i32* @ff_celt_model_energy_small, align 4
  %129 = call i32 @ff_opus_rc_dec_cdf(i32* %127, i32 %128)
  store i32 %129, i32* %15, align 4
  %130 = load i32, i32* %15, align 4
  %131 = ashr i32 %130, 1
  %132 = load i32, i32* %15, align 4
  %133 = and i32 %132, 1
  %134 = sub nsw i32 0, %133
  %135 = xor i32 %131, %134
  %136 = sitofp i32 %135 to float
  store float %136, float* %12, align 4
  br label %147

137:                                              ; preds = %123
  %138 = load i32, i32* %13, align 4
  %139 = icmp sge i32 %138, 1
  br i1 %139, label %140, label %145

140:                                              ; preds = %137
  %141 = load i32*, i32** %4, align 8
  %142 = call i64 @ff_opus_rc_dec_log(i32* %141, i32 1)
  %143 = sitofp i64 %142 to float
  %144 = fneg float %143
  store float %144, float* %12, align 4
  br label %146

145:                                              ; preds = %137
  store float -1.000000e+00, float* %12, align 4
  br label %146

146:                                              ; preds = %145, %140
  br label %147

147:                                              ; preds = %146, %126
  br label %148

148:                                              ; preds = %147, %104
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = load double*, double** %150, align 8
  %152 = load i32, i32* %5, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds double, double* %151, i64 %153
  %155 = load double, double* %154, align 8
  %156 = fptrunc double %155 to float
  %157 = call float @FFMAX(float -9.000000e+00, float %156)
  %158 = load float, float* %8, align 4
  %159 = fmul float %157, %158
  %160 = load i32, i32* %6, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [2 x float], [2 x float]* %7, i64 0, i64 %161
  %163 = load float, float* %162, align 4
  %164 = fadd float %159, %163
  %165 = load float, float* %12, align 4
  %166 = fadd float %164, %165
  %167 = fpext float %166 to double
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  %170 = load double*, double** %169, align 8
  %171 = load i32, i32* %5, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds double, double* %170, i64 %172
  store double %167, double* %173, align 8
  %174 = load float, float* %9, align 4
  %175 = load float, float* %12, align 4
  %176 = fmul float %174, %175
  %177 = load i32, i32* %6, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [2 x float], [2 x float]* %7, i64 0, i64 %178
  %180 = load float, float* %179, align 4
  %181 = fadd float %180, %176
  store float %181, float* %179, align 4
  br label %182

182:                                              ; preds = %148, %87
  %183 = load i32, i32* %6, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %6, align 4
  br label %63

185:                                              ; preds = %63
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %5, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %5, align 4
  br label %58

189:                                              ; preds = %58
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @opus_rc_tell(i32*) #2

declare dso_local i64 @ff_opus_rc_dec_log(i32*, i32) #2

declare dso_local i32 @FFMIN(i32, i32) #2

declare dso_local float @ff_opus_rc_dec_laplace(i32*, i32, i32) #2

declare dso_local i32 @ff_opus_rc_dec_cdf(i32*, i32) #2

declare dso_local float @FFMAX(float, float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
