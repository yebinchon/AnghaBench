; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_remez.c_CalcParms.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_remez.c_CalcParms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Pi2 = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, double*, double*, double*, double*, double*, double*)* @CalcParms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CalcParms(i32 %0, i32* %1, double* %2, double* %3, double* %4, double* %5, double* %6, double* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca double*, align 8
  %15 = alloca double*, align 8
  %16 = alloca double*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  store i32 %0, i32* %9, align 4
  store i32* %1, i32** %10, align 8
  store double* %2, double** %11, align 8
  store double* %3, double** %12, align 8
  store double* %4, double** %13, align 8
  store double* %5, double** %14, align 8
  store double* %6, double** %15, align 8
  store double* %7, double** %16, align 8
  store i32 0, i32* %17, align 4
  br label %26

26:                                               ; preds = %47, %8
  %27 = load i32, i32* %17, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %50

30:                                               ; preds = %26
  %31 = load double, double* @Pi2, align 8
  %32 = load double*, double** %11, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* %17, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds double, double* %32, i64 %38
  %40 = load double, double* %39, align 8
  %41 = fmul double %31, %40
  %42 = call double @cos(double %41) #3
  %43 = load double*, double** %15, align 8
  %44 = load i32, i32* %17, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds double, double* %43, i64 %45
  store double %42, double* %46, align 8
  br label %47

47:                                               ; preds = %30
  %48 = load i32, i32* %17, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %17, align 4
  br label %26

50:                                               ; preds = %26
  %51 = load i32, i32* %9, align 4
  %52 = sub nsw i32 %51, 1
  %53 = sdiv i32 %52, 15
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %20, align 4
  store i32 0, i32* %17, align 4
  br label %55

55:                                               ; preds = %111, %50
  %56 = load i32, i32* %17, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp sle i32 %56, %57
  br i1 %58, label %59, label %114

59:                                               ; preds = %55
  store double 1.000000e+00, double* %24, align 8
  %60 = load double*, double** %15, align 8
  %61 = load i32, i32* %17, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds double, double* %60, i64 %62
  %64 = load double, double* %63, align 8
  store double %64, double* %22, align 8
  store i32 0, i32* %18, align 4
  br label %65

65:                                               ; preds = %96, %59
  %66 = load i32, i32* %18, align 4
  %67 = load i32, i32* %20, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %99

69:                                               ; preds = %65
  %70 = load i32, i32* %18, align 4
  store i32 %70, i32* %19, align 4
  br label %71

71:                                               ; preds = %91, %69
  %72 = load i32, i32* %19, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp sle i32 %72, %73
  br i1 %74, label %75, label %95

75:                                               ; preds = %71
  %76 = load i32, i32* %19, align 4
  %77 = load i32, i32* %17, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %75
  %80 = load double, double* %22, align 8
  %81 = load double*, double** %15, align 8
  %82 = load i32, i32* %19, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds double, double* %81, i64 %83
  %85 = load double, double* %84, align 8
  %86 = fsub double %80, %85
  %87 = fmul double 2.000000e+00, %86
  %88 = load double, double* %24, align 8
  %89 = fmul double %88, %87
  store double %89, double* %24, align 8
  br label %90

90:                                               ; preds = %79, %75
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %20, align 4
  %93 = load i32, i32* %19, align 4
  %94 = add nsw i32 %93, %92
  store i32 %94, i32* %19, align 4
  br label %71

95:                                               ; preds = %71
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %18, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %18, align 4
  br label %65

99:                                               ; preds = %65
  %100 = load double, double* %24, align 8
  %101 = call double @llvm.fabs.f64(double %100)
  %102 = fcmp olt double %101, 1.000000e-05
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  store double 1.000000e-05, double* %24, align 8
  br label %104

104:                                              ; preds = %103, %99
  %105 = load double, double* %24, align 8
  %106 = fdiv double 1.000000e+00, %105
  %107 = load double*, double** %14, align 8
  %108 = load i32, i32* %17, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds double, double* %107, i64 %109
  store double %106, double* %110, align 8
  br label %111

111:                                              ; preds = %104
  %112 = load i32, i32* %17, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %17, align 4
  br label %55

114:                                              ; preds = %55
  store double 0.000000e+00, double* %24, align 8
  store double 0.000000e+00, double* %25, align 8
  store double 1.000000e+00, double* %21, align 8
  store i32 0, i32* %17, align 4
  br label %115

115:                                              ; preds = %158, %114
  %116 = load i32, i32* %17, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp sle i32 %116, %117
  br i1 %118, label %119, label %161

119:                                              ; preds = %115
  %120 = load double*, double** %14, align 8
  %121 = load i32, i32* %17, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds double, double* %120, i64 %122
  %124 = load double, double* %123, align 8
  %125 = load double*, double** %12, align 8
  %126 = load i32*, i32** %10, align 8
  %127 = load i32, i32* %17, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds double, double* %125, i64 %131
  %133 = load double, double* %132, align 8
  %134 = fmul double %124, %133
  %135 = load double, double* %25, align 8
  %136 = fadd double %135, %134
  store double %136, double* %25, align 8
  %137 = load double, double* %21, align 8
  %138 = load double*, double** %14, align 8
  %139 = load i32, i32* %17, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds double, double* %138, i64 %140
  %142 = load double, double* %141, align 8
  %143 = fmul double %137, %142
  %144 = load double*, double** %13, align 8
  %145 = load i32*, i32** %10, align 8
  %146 = load i32, i32* %17, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds double, double* %144, i64 %150
  %152 = load double, double* %151, align 8
  %153 = fdiv double %143, %152
  %154 = load double, double* %24, align 8
  %155 = fadd double %154, %153
  store double %155, double* %24, align 8
  %156 = load double, double* %21, align 8
  %157 = fneg double %156
  store double %157, double* %21, align 8
  br label %158

158:                                              ; preds = %119
  %159 = load i32, i32* %17, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %17, align 4
  br label %115

161:                                              ; preds = %115
  %162 = load double, double* %25, align 8
  %163 = load double, double* %24, align 8
  %164 = fdiv double %162, %163
  store double %164, double* %23, align 8
  store double 1.000000e+00, double* %21, align 8
  store i32 0, i32* %17, align 4
  br label %165

165:                                              ; preds = %199, %161
  %166 = load i32, i32* %17, align 4
  %167 = load i32, i32* %9, align 4
  %168 = icmp sle i32 %166, %167
  br i1 %168, label %169, label %202

169:                                              ; preds = %165
  %170 = load double*, double** %12, align 8
  %171 = load i32*, i32** %10, align 8
  %172 = load i32, i32* %17, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds double, double* %170, i64 %176
  %178 = load double, double* %177, align 8
  %179 = load double, double* %21, align 8
  %180 = load double, double* %23, align 8
  %181 = fmul double %179, %180
  %182 = load double*, double** %13, align 8
  %183 = load i32*, i32** %10, align 8
  %184 = load i32, i32* %17, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds double, double* %182, i64 %188
  %190 = load double, double* %189, align 8
  %191 = fdiv double %181, %190
  %192 = fsub double %178, %191
  %193 = load double*, double** %16, align 8
  %194 = load i32, i32* %17, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds double, double* %193, i64 %195
  store double %192, double* %196, align 8
  %197 = load double, double* %21, align 8
  %198 = fneg double %197
  store double %198, double* %21, align 8
  br label %199

199:                                              ; preds = %169
  %200 = load i32, i32* %17, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %17, align 4
  br label %165

202:                                              ; preds = %165
  ret void
}

; Function Attrs: nounwind
declare dso_local double @cos(double) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
