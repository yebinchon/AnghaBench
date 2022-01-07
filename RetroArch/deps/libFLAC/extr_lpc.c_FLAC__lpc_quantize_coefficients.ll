; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_lpc.c_FLAC__lpc_quantize_coefficients.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_lpc.c_FLAC__lpc_quantize_coefficients.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FLAC__MIN_QLP_COEFF_PRECISION = common dso_local global i32 0, align 4
@FLAC__SUBFRAME_LPC_QLP_SHIFT_LEN = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FLAC__lpc_quantize_coefficients(i32* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca double, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca double, align 8
  %24 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %25 = load i32, i32* %9, align 4
  %26 = icmp ugt i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @FLAC__ASSERT(i32 %27)
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @FLAC__MIN_QLP_COEFF_PRECISION, align 4
  %31 = icmp uge i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @FLAC__ASSERT(i32 %32)
  %34 = load i32, i32* %9, align 4
  %35 = add i32 %34, -1
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = shl i32 1, %36
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %14, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %14, align 4
  store double 0.000000e+00, double* %13, align 8
  store i32 0, i32* %12, align 4
  br label %42

42:                                               ; preds = %59, %5
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %62

46:                                               ; preds = %42
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %12, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call double @fabs(i32 %51)
  store double %52, double* %16, align 8
  %53 = load double, double* %16, align 8
  %54 = load double, double* %13, align 8
  %55 = fcmp ogt double %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = load double, double* %16, align 8
  store double %57, double* %13, align 8
  br label %58

58:                                               ; preds = %56, %46
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %12, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %12, align 4
  br label %42

62:                                               ; preds = %42
  %63 = load double, double* %13, align 8
  %64 = fcmp ole double %63, 0.000000e+00
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 2, i32* %6, align 4
  br label %200

66:                                               ; preds = %62
  %67 = load i32, i32* @FLAC__SUBFRAME_LPC_QLP_SHIFT_LEN, align 4
  %68 = sub nsw i32 %67, 1
  %69 = shl i32 1, %68
  %70 = sub nsw i32 %69, 1
  store i32 %70, i32* %17, align 4
  %71 = load i32, i32* %17, align 4
  %72 = sub nsw i32 0, %71
  %73 = sub nsw i32 %72, 1
  store i32 %73, i32* %18, align 4
  %74 = load double, double* %13, align 8
  %75 = call i32 @frexp(double %74, i32* %19)
  %76 = load i32, i32* %19, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %19, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %19, align 4
  %80 = sub nsw i32 %78, %79
  %81 = sub nsw i32 %80, 1
  %82 = load i32*, i32** %11, align 8
  store i32 %81, i32* %82, align 4
  %83 = load i32*, i32** %11, align 8
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %17, align 4
  %86 = icmp sgt i32 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %66
  %88 = load i32, i32* %17, align 4
  %89 = load i32*, i32** %11, align 8
  store i32 %88, i32* %89, align 4
  br label %97

90:                                               ; preds = %66
  %91 = load i32*, i32** %11, align 8
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %18, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  store i32 1, i32* %6, align 4
  br label %200

96:                                               ; preds = %90
  br label %97

97:                                               ; preds = %96, %87
  br label %98

98:                                               ; preds = %97
  %99 = load i32*, i32** %11, align 8
  %100 = load i32, i32* %99, align 4
  %101 = icmp sge i32 %100, 0
  br i1 %101, label %102, label %149

102:                                              ; preds = %98
  store double 0.000000e+00, double* %20, align 8
  store i32 0, i32* %12, align 4
  br label %103

103:                                              ; preds = %145, %102
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp ult i32 %104, %105
  br i1 %106, label %107, label %148

107:                                              ; preds = %103
  %108 = load i32*, i32** %7, align 8
  %109 = load i32, i32* %12, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %11, align 8
  %114 = load i32, i32* %113, align 4
  %115 = shl i32 1, %114
  %116 = mul nsw i32 %112, %115
  %117 = sitofp i32 %116 to double
  %118 = load double, double* %20, align 8
  %119 = fadd double %118, %117
  store double %119, double* %20, align 8
  %120 = load double, double* %20, align 8
  %121 = call i64 @lround(double %120) #3
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %21, align 4
  %123 = load i32, i32* %21, align 4
  %124 = load i32, i32* %14, align 4
  %125 = icmp sgt i32 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %107
  %127 = load i32, i32* %14, align 4
  store i32 %127, i32* %21, align 4
  br label %135

128:                                              ; preds = %107
  %129 = load i32, i32* %21, align 4
  %130 = load i32, i32* %15, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = load i32, i32* %15, align 4
  store i32 %133, i32* %21, align 4
  br label %134

134:                                              ; preds = %132, %128
  br label %135

135:                                              ; preds = %134, %126
  %136 = load i32, i32* %21, align 4
  %137 = sitofp i32 %136 to double
  %138 = load double, double* %20, align 8
  %139 = fsub double %138, %137
  store double %139, double* %20, align 8
  %140 = load i32, i32* %21, align 4
  %141 = load i32*, i32** %10, align 8
  %142 = load i32, i32* %12, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  store i32 %140, i32* %144, align 4
  br label %145

145:                                              ; preds = %135
  %146 = load i32, i32* %12, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %12, align 4
  br label %103

148:                                              ; preds = %103
  br label %199

149:                                              ; preds = %98
  %150 = load i32*, i32** %11, align 8
  %151 = load i32, i32* %150, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %22, align 4
  store double 0.000000e+00, double* %23, align 8
  store i32 0, i32* %12, align 4
  br label %153

153:                                              ; preds = %194, %149
  %154 = load i32, i32* %12, align 4
  %155 = load i32, i32* %8, align 4
  %156 = icmp ult i32 %154, %155
  br i1 %156, label %157, label %197

157:                                              ; preds = %153
  %158 = load i32*, i32** %7, align 8
  %159 = load i32, i32* %12, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %22, align 4
  %164 = shl i32 1, %163
  %165 = sdiv i32 %162, %164
  %166 = sitofp i32 %165 to double
  %167 = load double, double* %23, align 8
  %168 = fadd double %167, %166
  store double %168, double* %23, align 8
  %169 = load double, double* %23, align 8
  %170 = call i64 @lround(double %169) #3
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %24, align 4
  %172 = load i32, i32* %24, align 4
  %173 = load i32, i32* %14, align 4
  %174 = icmp sgt i32 %172, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %157
  %176 = load i32, i32* %14, align 4
  store i32 %176, i32* %24, align 4
  br label %184

177:                                              ; preds = %157
  %178 = load i32, i32* %24, align 4
  %179 = load i32, i32* %15, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %183

181:                                              ; preds = %177
  %182 = load i32, i32* %15, align 4
  store i32 %182, i32* %24, align 4
  br label %183

183:                                              ; preds = %181, %177
  br label %184

184:                                              ; preds = %183, %175
  %185 = load i32, i32* %24, align 4
  %186 = sitofp i32 %185 to double
  %187 = load double, double* %23, align 8
  %188 = fsub double %187, %186
  store double %188, double* %23, align 8
  %189 = load i32, i32* %24, align 4
  %190 = load i32*, i32** %10, align 8
  %191 = load i32, i32* %12, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  store i32 %189, i32* %193, align 4
  br label %194

194:                                              ; preds = %184
  %195 = load i32, i32* %12, align 4
  %196 = add i32 %195, 1
  store i32 %196, i32* %12, align 4
  br label %153

197:                                              ; preds = %153
  %198 = load i32*, i32** %11, align 8
  store i32 0, i32* %198, align 4
  br label %199

199:                                              ; preds = %197, %148
  store i32 0, i32* %6, align 4
  br label %200

200:                                              ; preds = %199, %95, %65
  %201 = load i32, i32* %6, align 4
  ret i32 %201
}

declare dso_local i32 @FLAC__ASSERT(i32) #1

declare dso_local double @fabs(i32) #1

declare dso_local i32 @frexp(double, i32*) #1

; Function Attrs: nounwind
declare dso_local i64 @lround(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
