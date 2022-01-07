; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_lpc.c_FLAC__lpc_compute_lp_coefficients.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_lpc.c_FLAC__lpc_compute_lp_coefficients.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FLAC__MAX_LPC_ORDER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FLAC__lpc_compute_lp_coefficients(double* %0, i32* %1, double* %2, double* %3) #0 {
  %5 = alloca double*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  store double* %0, double** %5, align 8
  store i32* %1, i32** %6, align 8
  store double* %2, double** %7, align 8
  store double* %3, double** %8, align 8
  %17 = load i32, i32* @FLAC__MAX_LPC_ORDER, align 4
  %18 = zext i32 %17 to i64
  %19 = load i32, i32* @FLAC__MAX_LPC_ORDER, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %13, align 8
  %22 = alloca double, i64 %20, align 16
  store i64 %20, i64* %14, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = icmp ne i32* null, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @FLAC__ASSERT(i32 %25)
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %27, align 4
  %29 = icmp ult i32 0, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @FLAC__ASSERT(i32 %30)
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @FLAC__MAX_LPC_ORDER, align 4
  %35 = icmp ule i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @FLAC__ASSERT(i32 %36)
  %38 = load double*, double** %5, align 8
  %39 = getelementptr inbounds double, double* %38, i64 0
  %40 = load double, double* %39, align 8
  %41 = fcmp une double %40, 0.000000e+00
  %42 = zext i1 %41 to i32
  %43 = call i32 @FLAC__ASSERT(i32 %42)
  %44 = load double*, double** %5, align 8
  %45 = getelementptr inbounds double, double* %44, i64 0
  %46 = load double, double* %45, align 8
  store double %46, double* %12, align 8
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %185, %4
  %48 = load i32, i32* %9, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %49, align 4
  %51 = icmp ult i32 %48, %50
  br i1 %51, label %52, label %188

52:                                               ; preds = %47
  %53 = load double*, double** %5, align 8
  %54 = load i32, i32* %9, align 4
  %55 = add i32 %54, 1
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds double, double* %53, i64 %56
  %58 = load double, double* %57, align 8
  %59 = fneg double %58
  store double %59, double* %11, align 8
  store i32 0, i32* %10, align 4
  br label %60

60:                                               ; preds = %79, %52
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %64, label %82

64:                                               ; preds = %60
  %65 = load i32, i32* %10, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds double, double* %22, i64 %66
  %68 = load double, double* %67, align 8
  %69 = load double*, double** %5, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = sub i32 %70, %71
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds double, double* %69, i64 %73
  %75 = load double, double* %74, align 8
  %76 = fmul double %68, %75
  %77 = load double, double* %11, align 8
  %78 = fsub double %77, %76
  store double %78, double* %11, align 8
  br label %79

79:                                               ; preds = %64
  %80 = load i32, i32* %10, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %10, align 4
  br label %60

82:                                               ; preds = %60
  %83 = load double, double* %12, align 8
  %84 = load double, double* %11, align 8
  %85 = fdiv double %84, %83
  store double %85, double* %11, align 8
  %86 = load double, double* %11, align 8
  %87 = load i32, i32* %9, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds double, double* %22, i64 %88
  store double %86, double* %89, align 8
  store i32 0, i32* %10, align 4
  br label %90

90:                                               ; preds = %125, %82
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %9, align 4
  %93 = lshr i32 %92, 1
  %94 = icmp ult i32 %91, %93
  br i1 %94, label %95, label %128

95:                                               ; preds = %90
  %96 = load i32, i32* %10, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds double, double* %22, i64 %97
  %99 = load double, double* %98, align 8
  store double %99, double* %15, align 8
  %100 = load double, double* %11, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sub i32 %101, 1
  %103 = load i32, i32* %10, align 4
  %104 = sub i32 %102, %103
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds double, double* %22, i64 %105
  %107 = load double, double* %106, align 8
  %108 = fmul double %100, %107
  %109 = load i32, i32* %10, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds double, double* %22, i64 %110
  %112 = load double, double* %111, align 8
  %113 = fadd double %112, %108
  store double %113, double* %111, align 8
  %114 = load double, double* %11, align 8
  %115 = load double, double* %15, align 8
  %116 = fmul double %114, %115
  %117 = load i32, i32* %9, align 4
  %118 = sub i32 %117, 1
  %119 = load i32, i32* %10, align 4
  %120 = sub i32 %118, %119
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds double, double* %22, i64 %121
  %123 = load double, double* %122, align 8
  %124 = fadd double %123, %116
  store double %124, double* %122, align 8
  br label %125

125:                                              ; preds = %95
  %126 = load i32, i32* %10, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %10, align 4
  br label %90

128:                                              ; preds = %90
  %129 = load i32, i32* %9, align 4
  %130 = and i32 %129, 1
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %128
  %133 = load i32, i32* %10, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds double, double* %22, i64 %134
  %136 = load double, double* %135, align 8
  %137 = load double, double* %11, align 8
  %138 = fmul double %136, %137
  %139 = load i32, i32* %10, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds double, double* %22, i64 %140
  %142 = load double, double* %141, align 8
  %143 = fadd double %142, %138
  store double %143, double* %141, align 8
  br label %144

144:                                              ; preds = %132, %128
  %145 = load double, double* %11, align 8
  %146 = load double, double* %11, align 8
  %147 = fmul double %145, %146
  %148 = fsub double 1.000000e+00, %147
  %149 = load double, double* %12, align 8
  %150 = fmul double %149, %148
  store double %150, double* %12, align 8
  store i32 0, i32* %10, align 4
  br label %151

151:                                              ; preds = %169, %144
  %152 = load i32, i32* %10, align 4
  %153 = load i32, i32* %9, align 4
  %154 = icmp ule i32 %152, %153
  br i1 %154, label %155, label %172

155:                                              ; preds = %151
  %156 = load i32, i32* %10, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds double, double* %22, i64 %157
  %159 = load double, double* %158, align 8
  %160 = fneg double %159
  %161 = load double*, double** %7, align 8
  %162 = load i32, i32* %9, align 4
  %163 = zext i32 %162 to i64
  %164 = mul nsw i64 %163, %18
  %165 = getelementptr inbounds double, double* %161, i64 %164
  %166 = load i32, i32* %10, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds double, double* %165, i64 %167
  store double %160, double* %168, align 8
  br label %169

169:                                              ; preds = %155
  %170 = load i32, i32* %10, align 4
  %171 = add i32 %170, 1
  store i32 %171, i32* %10, align 4
  br label %151

172:                                              ; preds = %151
  %173 = load double, double* %12, align 8
  %174 = load double*, double** %8, align 8
  %175 = load i32, i32* %9, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds double, double* %174, i64 %176
  store double %173, double* %177, align 8
  %178 = load double, double* %12, align 8
  %179 = fcmp oeq double %178, 0.000000e+00
  br i1 %179, label %180, label %184

180:                                              ; preds = %172
  %181 = load i32, i32* %9, align 4
  %182 = add i32 %181, 1
  %183 = load i32*, i32** %6, align 8
  store i32 %182, i32* %183, align 4
  store i32 1, i32* %16, align 4
  br label %189

184:                                              ; preds = %172
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %9, align 4
  %187 = add i32 %186, 1
  store i32 %187, i32* %9, align 4
  br label %47

188:                                              ; preds = %47
  store i32 0, i32* %16, align 4
  br label %189

189:                                              ; preds = %188, %180
  %190 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %190)
  %191 = load i32, i32* %16, align 4
  switch i32 %191, label %193 [
    i32 0, label %192
    i32 1, label %192
  ]

192:                                              ; preds = %189, %189
  ret void

193:                                              ; preds = %189
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @FLAC__ASSERT(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
