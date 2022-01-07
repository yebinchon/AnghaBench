; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_acrusher.c_bitreduction.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_acrusher.c_bitreduction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, double, double, double, i32, double, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.TYPE_3__*, double)* @bitreduction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @bitreduction(%struct.TYPE_3__* %0, double %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store double %1, double* %4, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load double, double* %14, align 8
  store double %15, double* %5, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load double, double* %17, align 8
  store double %18, double* %6, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load double, double* %20, align 8
  store double %21, double* %7, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 3
  %24 = load double, double* %23, align 8
  store double %24, double* %8, align 8
  %25 = load double, double* %4, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  %32 = call double @add_dc(double %25, i32 %28, i32 %31)
  store double %32, double* %4, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %37 [
    i32 0, label %36
    i32 1, label %104
  ]

36:                                               ; preds = %2
  br label %37

37:                                               ; preds = %2, %36
  %38 = load double, double* %4, align 8
  %39 = load double, double* %6, align 8
  %40 = fmul double %38, %39
  store double %40, double* %9, align 8
  %41 = load double, double* %9, align 8
  %42 = call double @roundf(double %41)
  store double %42, double* %10, align 8
  %43 = load double, double* %10, align 8
  %44 = load double, double* %8, align 8
  %45 = fsub double %43, %44
  %46 = load double, double* %9, align 8
  %47 = fcmp ole double %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %37
  %49 = load double, double* %9, align 8
  %50 = load double, double* %10, align 8
  %51 = load double, double* %8, align 8
  %52 = fadd double %50, %51
  %53 = fcmp ole double %49, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load double, double* %6, align 8
  %56 = load double, double* %10, align 8
  %57 = fdiv double %56, %55
  store double %57, double* %10, align 8
  br label %103

58:                                               ; preds = %48, %37
  %59 = load double, double* %9, align 8
  %60 = load double, double* %10, align 8
  %61 = load double, double* %8, align 8
  %62 = fadd double %60, %61
  %63 = fcmp ogt double %59, %62
  br i1 %63, label %64, label %83

64:                                               ; preds = %58
  %65 = load double, double* %10, align 8
  %66 = load double, double* %6, align 8
  %67 = fdiv double %65, %66
  %68 = load double, double* %10, align 8
  %69 = fadd double %68, 1.000000e+00
  %70 = load double, double* %6, align 8
  %71 = fdiv double %69, %70
  %72 = load double, double* %10, align 8
  %73 = load double, double* %6, align 8
  %74 = fdiv double %72, %73
  %75 = fsub double %71, %74
  %76 = load double, double* %9, align 8
  %77 = load double, double* %10, align 8
  %78 = load double, double* %8, align 8
  %79 = load double, double* %7, align 8
  %80 = call double @factor(double %76, double %77, double %78, double %79)
  %81 = fmul double %75, %80
  %82 = fadd double %67, %81
  store double %82, double* %10, align 8
  br label %102

83:                                               ; preds = %58
  %84 = load double, double* %10, align 8
  %85 = load double, double* %6, align 8
  %86 = fdiv double %84, %85
  %87 = load double, double* %10, align 8
  %88 = load double, double* %6, align 8
  %89 = fdiv double %87, %88
  %90 = load double, double* %10, align 8
  %91 = fsub double %90, 1.000000e+00
  %92 = load double, double* %6, align 8
  %93 = fdiv double %91, %92
  %94 = fsub double %89, %93
  %95 = load double, double* %9, align 8
  %96 = load double, double* %10, align 8
  %97 = load double, double* %8, align 8
  %98 = load double, double* %7, align 8
  %99 = call double @factor(double %95, double %96, double %97, double %98)
  %100 = fmul double %94, %99
  %101 = fsub double %86, %100
  store double %101, double* %10, align 8
  br label %102

102:                                              ; preds = %83, %64
  br label %103

103:                                              ; preds = %102, %54
  br label %208

104:                                              ; preds = %2
  %105 = load double, double* %5, align 8
  %106 = load double, double* %4, align 8
  %107 = call double @llvm.fabs.f64(double %106)
  %108 = call double @log(double %107)
  %109 = fmul double %105, %108
  %110 = load double, double* %5, align 8
  %111 = load double, double* %5, align 8
  %112 = fmul double %110, %111
  %113 = fadd double %109, %112
  store double %113, double* %9, align 8
  %114 = load double, double* %9, align 8
  %115 = call double @roundf(double %114)
  store double %115, double* %10, align 8
  %116 = load double, double* %4, align 8
  %117 = fcmp une double %116, 0.000000e+00
  br i1 %117, label %119, label %118

118:                                              ; preds = %104
  store double 0.000000e+00, double* %10, align 8
  br label %207

119:                                              ; preds = %104
  %120 = load double, double* %10, align 8
  %121 = load double, double* %8, align 8
  %122 = fsub double %120, %121
  %123 = load double, double* %9, align 8
  %124 = fcmp ole double %122, %123
  br i1 %124, label %125, label %143

125:                                              ; preds = %119
  %126 = load double, double* %9, align 8
  %127 = load double, double* %10, align 8
  %128 = load double, double* %8, align 8
  %129 = fadd double %127, %128
  %130 = fcmp ole double %126, %129
  br i1 %130, label %131, label %143

131:                                              ; preds = %125
  %132 = load double, double* %4, align 8
  %133 = load double, double* %4, align 8
  %134 = call double @llvm.fabs.f64(double %133)
  %135 = fdiv double %132, %134
  %136 = load double, double* %10, align 8
  %137 = load double, double* %5, align 8
  %138 = fdiv double %136, %137
  %139 = load double, double* %5, align 8
  %140 = fsub double %138, %139
  %141 = call double @exp(double %140) #4
  %142 = fmul double %135, %141
  store double %142, double* %10, align 8
  br label %206

143:                                              ; preds = %125, %119
  %144 = load double, double* %9, align 8
  %145 = load double, double* %10, align 8
  %146 = load double, double* %8, align 8
  %147 = fadd double %145, %146
  %148 = fcmp ogt double %144, %147
  br i1 %148, label %149, label %176

149:                                              ; preds = %143
  %150 = load double, double* %10, align 8
  %151 = load double, double* %5, align 8
  %152 = fdiv double %150, %151
  %153 = load double, double* %5, align 8
  %154 = fsub double %152, %153
  %155 = call double @exp(double %154) #4
  store double %155, double* %11, align 8
  %156 = load double, double* %4, align 8
  %157 = call double @FFSIGN(double %156)
  %158 = load double, double* %11, align 8
  %159 = load double, double* %10, align 8
  %160 = fadd double %159, 1.000000e+00
  %161 = load double, double* %5, align 8
  %162 = fdiv double %160, %161
  %163 = load double, double* %5, align 8
  %164 = fsub double %162, %163
  %165 = call double @exp(double %164) #4
  %166 = load double, double* %11, align 8
  %167 = fsub double %165, %166
  %168 = load double, double* %9, align 8
  %169 = load double, double* %10, align 8
  %170 = load double, double* %8, align 8
  %171 = load double, double* %7, align 8
  %172 = call double @factor(double %168, double %169, double %170, double %171)
  %173 = fmul double %167, %172
  %174 = fadd double %158, %173
  %175 = fmul double %157, %174
  store double %175, double* %10, align 8
  br label %205

176:                                              ; preds = %143
  %177 = load double, double* %10, align 8
  %178 = load double, double* %5, align 8
  %179 = fdiv double %177, %178
  %180 = load double, double* %5, align 8
  %181 = fsub double %179, %180
  %182 = call double @exp(double %181) #4
  store double %182, double* %12, align 8
  %183 = load double, double* %4, align 8
  %184 = load double, double* %4, align 8
  %185 = call double @llvm.fabs.f64(double %184)
  %186 = fdiv double %183, %185
  %187 = load double, double* %12, align 8
  %188 = load double, double* %12, align 8
  %189 = load double, double* %10, align 8
  %190 = fsub double %189, 1.000000e+00
  %191 = load double, double* %5, align 8
  %192 = fdiv double %190, %191
  %193 = load double, double* %5, align 8
  %194 = fsub double %192, %193
  %195 = call double @exp(double %194) #4
  %196 = fsub double %188, %195
  %197 = load double, double* %9, align 8
  %198 = load double, double* %10, align 8
  %199 = load double, double* %8, align 8
  %200 = load double, double* %7, align 8
  %201 = call double @factor(double %197, double %198, double %199, double %200)
  %202 = fmul double %196, %201
  %203 = fsub double %187, %202
  %204 = fmul double %186, %203
  store double %204, double* %10, align 8
  br label %205

205:                                              ; preds = %176, %149
  br label %206

206:                                              ; preds = %205, %131
  br label %207

207:                                              ; preds = %206, %118
  br label %208

208:                                              ; preds = %207, %103
  %209 = load double, double* %4, align 8
  %210 = load double, double* %10, align 8
  %211 = fsub double %209, %210
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 5
  %214 = load double, double* %213, align 8
  %215 = fmul double %211, %214
  %216 = load double, double* %10, align 8
  %217 = fadd double %216, %215
  store double %217, double* %10, align 8
  %218 = load double, double* %10, align 8
  %219 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 7
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 6
  %224 = load i32, i32* %223, align 8
  %225 = call double @remove_dc(double %218, i32 %221, i32 %224)
  store double %225, double* %10, align 8
  %226 = load double, double* %10, align 8
  ret double %226
}

declare dso_local double @add_dc(double, i32, i32) #1

declare dso_local double @roundf(double) #1

declare dso_local double @factor(double, double, double, double) #1

declare dso_local double @log(double) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nounwind
declare dso_local double @exp(double) #3

declare dso_local double @FFSIGN(double) #1

declare dso_local double @remove_dc(double, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
