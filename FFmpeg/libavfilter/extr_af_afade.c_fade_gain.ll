; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_afade.c_fade_gain.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_afade.c_fade_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_PI = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32, double, double)* @fade_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @fade_gain(i32 %0, double %1, double %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  store double %1, double* %5, align 8
  store double %2, double* %6, align 8
  %12 = load double, double* %5, align 8
  %13 = fmul double 1.000000e+00, %12
  %14 = load double, double* %6, align 8
  %15 = fdiv double %13, %14
  %16 = fptosi double %15 to i32
  %17 = call double @av_clipd(i32 %16, i32 0, double 1.000000e+00)
  store double %17, double* %7, align 8
  %18 = load i32, i32* %4, align 4
  switch i32 %18, label %177 [
    i32 130, label %19
    i32 135, label %25
    i32 140, label %29
    i32 138, label %48
    i32 137, label %56
    i32 139, label %63
    i32 134, label %68
    i32 131, label %75
    i32 136, label %80
    i32 129, label %87
    i32 143, label %91
    i32 128, label %97
    i32 144, label %100
    i32 142, label %105
    i32 141, label %125
    i32 133, label %154
    i32 132, label %176
  ]

19:                                               ; preds = %3
  %20 = load double, double* %7, align 8
  %21 = load double, double* @M_PI, align 8
  %22 = fmul double %20, %21
  %23 = fdiv double %22, 2.000000e+00
  %24 = call double @sin(double %23) #3
  store double %24, double* %7, align 8
  br label %177

25:                                               ; preds = %3
  %26 = load double, double* %7, align 8
  %27 = call double @asin(double %26) #3
  %28 = fmul double 0x3FE45F306DC9C883, %27
  store double %28, double* %7, align 8
  br label %177

29:                                               ; preds = %3
  %30 = load double, double* @M_PI, align 8
  %31 = fdiv double %30, 4.000000e+00
  %32 = load double, double* %7, align 8
  %33 = fmul double 2.000000e+00, %32
  %34 = fsub double %33, 1.000000e+00
  %35 = load double, double* %7, align 8
  %36 = fmul double 2.000000e+00, %35
  %37 = fsub double %36, 1.000000e+00
  %38 = fmul double %34, %37
  %39 = load double, double* %7, align 8
  %40 = fmul double 2.000000e+00, %39
  %41 = fsub double %40, 1.000000e+00
  %42 = fmul double %38, %41
  %43 = fadd double %42, 1.000000e+00
  %44 = fmul double %31, %43
  %45 = call i32 @cos(double %44)
  %46 = sitofp i32 %45 to double
  %47 = fsub double 1.000000e+00, %46
  store double %47, double* %7, align 8
  br label %177

48:                                               ; preds = %3
  %49 = load double, double* %7, align 8
  %50 = load double, double* @M_PI, align 8
  %51 = fmul double %49, %50
  %52 = call i32 @cos(double %51)
  %53 = sitofp i32 %52 to double
  %54 = fsub double 1.000000e+00, %53
  %55 = fdiv double %54, 2.000000e+00
  store double %55, double* %7, align 8
  br label %177

56:                                               ; preds = %3
  %57 = load double, double* %7, align 8
  %58 = fmul double 2.000000e+00, %57
  %59 = fsub double 1.000000e+00, %58
  %60 = fptosi double %59 to i32
  %61 = call double @acos(i32 %60)
  %62 = fmul double 0x3FD45F306DC9C883, %61
  store double %62, double* %7, align 8
  br label %177

63:                                               ; preds = %3
  %64 = load double, double* %7, align 8
  %65 = fsub double 1.000000e+00, %64
  %66 = fmul double 0xC027069E2AA2AA5A, %65
  %67 = call double @exp(double %66) #3
  store double %67, double* %7, align 8
  br label %177

68:                                               ; preds = %3
  %69 = load double, double* %7, align 8
  %70 = call double @log10(double %69) #3
  %71 = fmul double 2.000000e-01, %70
  %72 = fadd double 1.000000e+00, %71
  %73 = fptosi double %72 to i32
  %74 = call double @av_clipd(i32 %73, i32 0, double 1.000000e+00)
  store double %74, double* %7, align 8
  br label %177

75:                                               ; preds = %3
  %76 = load double, double* %7, align 8
  %77 = fsub double 1.000000e+00, %76
  %78 = call double @sqrt(double %77) #3
  %79 = fsub double 1.000000e+00, %78
  store double %79, double* %7, align 8
  br label %177

80:                                               ; preds = %3
  %81 = load double, double* %7, align 8
  %82 = fsub double 1.000000e+00, %81
  %83 = load double, double* %7, align 8
  %84 = fsub double 1.000000e+00, %83
  %85 = fmul double %82, %84
  %86 = fsub double 1.000000e+00, %85
  store double %86, double* %7, align 8
  br label %177

87:                                               ; preds = %3
  %88 = load double, double* %7, align 8
  %89 = load double, double* %7, align 8
  %90 = fmul double %89, %88
  store double %90, double* %7, align 8
  br label %177

91:                                               ; preds = %3
  %92 = load double, double* %7, align 8
  %93 = load double, double* %7, align 8
  %94 = fmul double %92, %93
  %95 = load double, double* %7, align 8
  %96 = fmul double %94, %95
  store double %96, double* %7, align 8
  br label %177

97:                                               ; preds = %3
  %98 = load double, double* %7, align 8
  %99 = call double @sqrt(double %98) #3
  store double %99, double* %7, align 8
  br label %177

100:                                              ; preds = %3
  %101 = load double, double* %7, align 8
  %102 = fptosi double %101 to i32
  %103 = call i32 @cbrt(i32 %102)
  %104 = sitofp i32 %103 to double
  store double %104, double* %7, align 8
  br label %177

105:                                              ; preds = %3
  %106 = load double, double* %7, align 8
  %107 = fcmp ole double %106, 5.000000e-01
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  %109 = load double, double* %7, align 8
  %110 = fmul double 2.000000e+00, %109
  %111 = fptosi double %110 to i32
  %112 = call i32 @cbrt(i32 %111)
  %113 = sdiv i32 %112, 2
  br label %122

114:                                              ; preds = %105
  %115 = load double, double* %7, align 8
  %116 = fsub double 1.000000e+00, %115
  %117 = fmul double 2.000000e+00, %116
  %118 = fptosi double %117 to i32
  %119 = call i32 @cbrt(i32 %118)
  %120 = sdiv i32 %119, 2
  %121 = sub nsw i32 1, %120
  br label %122

122:                                              ; preds = %114, %108
  %123 = phi i32 [ %113, %108 ], [ %121, %114 ]
  %124 = sitofp i32 %123 to double
  store double %124, double* %7, align 8
  br label %177

125:                                              ; preds = %3
  %126 = load double, double* %7, align 8
  %127 = fcmp ole double %126, 5.000000e-01
  br i1 %127, label %128, label %138

128:                                              ; preds = %125
  %129 = load double, double* %7, align 8
  %130 = fmul double 2.000000e+00, %129
  %131 = load double, double* %7, align 8
  %132 = fmul double 2.000000e+00, %131
  %133 = fmul double %130, %132
  %134 = load double, double* %7, align 8
  %135 = fmul double 2.000000e+00, %134
  %136 = fmul double %133, %135
  %137 = fdiv double %136, 2.000000e+00
  br label %152

138:                                              ; preds = %125
  %139 = load double, double* %7, align 8
  %140 = fsub double 1.000000e+00, %139
  %141 = fmul double 2.000000e+00, %140
  %142 = load double, double* %7, align 8
  %143 = fsub double 1.000000e+00, %142
  %144 = fmul double 2.000000e+00, %143
  %145 = fmul double %141, %144
  %146 = load double, double* %7, align 8
  %147 = fsub double 1.000000e+00, %146
  %148 = fmul double 2.000000e+00, %147
  %149 = fmul double %145, %148
  %150 = fdiv double %149, 2.000000e+00
  %151 = fsub double 1.000000e+00, %150
  br label %152

152:                                              ; preds = %138, %128
  %153 = phi double [ %137, %128 ], [ %151, %138 ]
  store double %153, double* %7, align 8
  br label %177

154:                                              ; preds = %3
  store double 0x400D8F0602675C8E, double* %8, align 8
  %155 = load double, double* %7, align 8
  %156 = fsub double %155, 5.000000e-01
  %157 = fmul double %156, 0x400D8F0602675C8E
  %158 = fmul double %157, 2.000000e+00
  %159 = fsub double 0.000000e+00, %158
  %160 = call double @exp(double %159) #3
  %161 = fadd double 1.000000e+00, %160
  %162 = fdiv double 1.000000e+00, %161
  store double %162, double* %9, align 8
  %163 = call double @exp(double 0x400D8F0602675C8E) #3
  %164 = fadd double 1.000000e+00, %163
  %165 = fdiv double 1.000000e+00, %164
  store double %165, double* %10, align 8
  %166 = call double @exp(double 0xC00D8F0602675C8E) #3
  %167 = fadd double 1.000000e+00, %166
  %168 = fdiv double 1.000000e+00, %167
  store double %168, double* %11, align 8
  %169 = load double, double* %9, align 8
  %170 = load double, double* %10, align 8
  %171 = fsub double %169, %170
  %172 = load double, double* %11, align 8
  %173 = load double, double* %10, align 8
  %174 = fsub double %172, %173
  %175 = fdiv double %171, %174
  store double %175, double* %7, align 8
  br label %177

176:                                              ; preds = %3
  store double 1.000000e+00, double* %7, align 8
  br label %177

177:                                              ; preds = %3, %176, %154, %152, %122, %100, %97, %91, %87, %80, %75, %68, %63, %56, %48, %29, %25, %19
  %178 = load double, double* %7, align 8
  ret double %178
}

declare dso_local double @av_clipd(i32, i32, double) #1

; Function Attrs: nounwind
declare dso_local double @sin(double) #2

; Function Attrs: nounwind
declare dso_local double @asin(double) #2

declare dso_local i32 @cos(double) #1

declare dso_local double @acos(i32) #1

; Function Attrs: nounwind
declare dso_local double @exp(double) #2

; Function Attrs: nounwind
declare dso_local double @log10(double) #2

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

declare dso_local i32 @cbrt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
