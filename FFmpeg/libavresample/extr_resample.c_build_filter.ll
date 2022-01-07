; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavresample/extr_resample.c_build_filter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavresample/extr_resample.c_build_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 (i32, double*, i32, i32)* }

@ENOMEM = common dso_local global i32 0, align 4
@M_PI = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, double)* @build_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_filter(%struct.TYPE_3__* %0, double %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca float, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store double %1, double* %5, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %12, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 1, %22
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %12, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sdiv i32 %25, 2
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 8
  %30 = trunc i64 %29 to i32
  %31 = call double* @av_malloc(i32 %30)
  store double* %31, double** %11, align 8
  %32 = load double*, double** %11, align 8
  %33 = icmp ne double* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %2
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = call i32 @AVERROR(i32 %35)
  store i32 %36, i32* %3, align 4
  br label %234

37:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %228, %37
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %231

42:                                               ; preds = %38
  store double 0.000000e+00, double* %15, align 8
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %194, %42
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %197

47:                                               ; preds = %43
  %48 = load double, double* @M_PI, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %14, align 4
  %51 = sub nsw i32 %49, %50
  %52 = sitofp i32 %51 to double
  %53 = load i32, i32* %6, align 4
  %54 = sitofp i32 %53 to double
  %55 = load i32, i32* %13, align 4
  %56 = sitofp i32 %55 to double
  %57 = fdiv double %54, %56
  %58 = fsub double %52, %57
  %59 = fmul double %48, %58
  %60 = load double, double* %5, align 8
  %61 = fmul double %59, %60
  store double %61, double* %8, align 8
  %62 = load double, double* %8, align 8
  %63 = fcmp oeq double %62, 0.000000e+00
  br i1 %63, label %64, label %65

64:                                               ; preds = %47
  store double 1.000000e+00, double* %9, align 8
  br label %70

65:                                               ; preds = %47
  %66 = load double, double* %8, align 8
  %67 = call double @sin(double %66) #4
  %68 = load double, double* %8, align 8
  %69 = fdiv double %67, %68
  store double %69, double* %9, align 8
  br label %70

70:                                               ; preds = %65, %64
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  switch i32 %73, label %185 [
    i32 129, label %74
    i32 130, label %132
    i32 128, label %161
  ]

74:                                               ; preds = %70
  store float -5.000000e-01, float* %16, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %14, align 4
  %77 = sub nsw i32 %75, %76
  %78 = sitofp i32 %77 to double
  %79 = load i32, i32* %6, align 4
  %80 = sitofp i32 %79 to double
  %81 = load i32, i32* %13, align 4
  %82 = sitofp i32 %81 to double
  %83 = fdiv double %80, %82
  %84 = fsub double %78, %83
  %85 = load double, double* %5, align 8
  %86 = fmul double %84, %85
  %87 = call double @llvm.fabs.f64(double %86)
  store double %87, double* %8, align 8
  %88 = load double, double* %8, align 8
  %89 = fcmp olt double %88, 1.000000e+00
  br i1 %89, label %90, label %115

90:                                               ; preds = %74
  %91 = load double, double* %8, align 8
  %92 = fmul double 3.000000e+00, %91
  %93 = load double, double* %8, align 8
  %94 = fmul double %92, %93
  %95 = fsub double 1.000000e+00, %94
  %96 = load double, double* %8, align 8
  %97 = fmul double 2.000000e+00, %96
  %98 = load double, double* %8, align 8
  %99 = fmul double %97, %98
  %100 = load double, double* %8, align 8
  %101 = fmul double %99, %100
  %102 = fadd double %95, %101
  %103 = load double, double* %8, align 8
  %104 = fneg double %103
  %105 = load double, double* %8, align 8
  %106 = fmul double %104, %105
  %107 = load double, double* %8, align 8
  %108 = load double, double* %8, align 8
  %109 = fmul double %107, %108
  %110 = load double, double* %8, align 8
  %111 = fmul double %109, %110
  %112 = fadd double %106, %111
  %113 = fmul double -5.000000e-01, %112
  %114 = fadd double %102, %113
  store double %114, double* %9, align 8
  br label %131

115:                                              ; preds = %74
  %116 = load double, double* %8, align 8
  %117 = fmul double 8.000000e+00, %116
  %118 = fadd double -4.000000e+00, %117
  %119 = load double, double* %8, align 8
  %120 = fmul double 5.000000e+00, %119
  %121 = load double, double* %8, align 8
  %122 = fmul double %120, %121
  %123 = fsub double %118, %122
  %124 = load double, double* %8, align 8
  %125 = load double, double* %8, align 8
  %126 = fmul double %124, %125
  %127 = load double, double* %8, align 8
  %128 = fmul double %126, %127
  %129 = fadd double %123, %128
  %130 = fmul double -5.000000e-01, %129
  store double %130, double* %9, align 8
  br label %131

131:                                              ; preds = %115, %90
  br label %185

132:                                              ; preds = %70
  %133 = load double, double* %8, align 8
  %134 = fmul double 2.000000e+00, %133
  %135 = load double, double* %5, align 8
  %136 = load i32, i32* %12, align 4
  %137 = sitofp i32 %136 to double
  %138 = fmul double %135, %137
  %139 = fdiv double %134, %138
  %140 = load double, double* @M_PI, align 8
  %141 = fadd double %139, %140
  store double %141, double* %10, align 8
  %142 = load double, double* %10, align 8
  %143 = fptosi double %142 to i32
  %144 = call double @cos(i32 %143)
  %145 = fmul double 0x3FDF4EAF251C193B, %144
  %146 = fsub double 0x3FD744ED047AB904, %145
  %147 = load double, double* %10, align 8
  %148 = fmul double 2.000000e+00, %147
  %149 = fptosi double %148 to i32
  %150 = call double @cos(i32 %149)
  %151 = fmul double 0x3FC17C17A89331A1, %150
  %152 = fadd double %146, %151
  %153 = load double, double* %10, align 8
  %154 = fmul double 3.000000e+00, %153
  %155 = fptosi double %154 to i32
  %156 = call double @cos(i32 %155)
  %157 = fmul double 1.064110e-02, %156
  %158 = fsub double %152, %157
  %159 = load double, double* %9, align 8
  %160 = fmul double %159, %158
  store double %160, double* %9, align 8
  br label %185

161:                                              ; preds = %70
  %162 = load double, double* %8, align 8
  %163 = fmul double 2.000000e+00, %162
  %164 = load double, double* %5, align 8
  %165 = load i32, i32* %12, align 4
  %166 = sitofp i32 %165 to double
  %167 = fmul double %164, %166
  %168 = load double, double* @M_PI, align 8
  %169 = fmul double %167, %168
  %170 = fdiv double %163, %169
  store double %170, double* %10, align 8
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = load double, double* %10, align 8
  %175 = load double, double* %10, align 8
  %176 = fmul double %174, %175
  %177 = fsub double 1.000000e+00, %176
  %178 = fptosi double %177 to i32
  %179 = call i32 @FFMAX(i32 %178, i32 0)
  %180 = call i32 @sqrt(i32 %179)
  %181 = mul nsw i32 %173, %180
  %182 = call double @bessel(i32 %181)
  %183 = load double, double* %9, align 8
  %184 = fmul double %183, %182
  store double %184, double* %9, align 8
  br label %185

185:                                              ; preds = %70, %161, %132, %131
  %186 = load double, double* %9, align 8
  %187 = load double*, double** %11, align 8
  %188 = load i32, i32* %7, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds double, double* %187, i64 %189
  store double %186, double* %190, align 8
  %191 = load double, double* %9, align 8
  %192 = load double, double* %15, align 8
  %193 = fadd double %192, %191
  store double %193, double* %15, align 8
  br label %194

194:                                              ; preds = %185
  %195 = load i32, i32* %7, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %7, align 4
  br label %43

197:                                              ; preds = %43
  store i32 0, i32* %7, align 4
  br label %198

198:                                              ; preds = %214, %197
  %199 = load i32, i32* %7, align 4
  %200 = load i32, i32* %12, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %217

202:                                              ; preds = %198
  %203 = load double*, double** %11, align 8
  %204 = load i32, i32* %7, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds double, double* %203, i64 %205
  %207 = load double, double* %206, align 8
  %208 = load double, double* %15, align 8
  %209 = fdiv double %207, %208
  %210 = load double*, double** %11, align 8
  %211 = load i32, i32* %7, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds double, double* %210, i64 %212
  store double %209, double* %213, align 8
  br label %214

214:                                              ; preds = %202
  %215 = load i32, i32* %7, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %7, align 4
  br label %198

217:                                              ; preds = %198
  %218 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 5
  %220 = load i32 (i32, double*, i32, i32)*, i32 (i32, double*, i32, i32)** %219, align 8
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 8
  %224 = load double*, double** %11, align 8
  %225 = load i32, i32* %6, align 4
  %226 = load i32, i32* %12, align 4
  %227 = call i32 %220(i32 %223, double* %224, i32 %225, i32 %226)
  br label %228

228:                                              ; preds = %217
  %229 = load i32, i32* %6, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %6, align 4
  br label %38

231:                                              ; preds = %38
  %232 = load double*, double** %11, align 8
  %233 = call i32 @av_free(double* %232)
  store i32 0, i32* %3, align 4
  br label %234

234:                                              ; preds = %231, %34
  %235 = load i32, i32* %3, align 4
  ret i32 %235
}

declare dso_local double* @av_malloc(i32) #1

declare dso_local i32 @AVERROR(i32) #1

; Function Attrs: nounwind
declare dso_local double @sin(double) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #3

declare dso_local double @cos(i32) #1

declare dso_local double @bessel(i32) #1

declare dso_local i32 @sqrt(i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @av_free(double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
