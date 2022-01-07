; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ffv1enc.c_find_best_state.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ffv1enc.c_find_best_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ([256 x i64]*, i64*)* @find_best_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_best_state([256 x i64]* %0, i64* %1) #0 {
  %3 = alloca [256 x i64]*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [256 x double], align 16
  %10 = alloca [256 x double], align 16
  %11 = alloca double, align 8
  %12 = alloca [256 x double], align 16
  %13 = alloca double, align 8
  %14 = alloca [256 x double], align 16
  store [256 x i64]* %0, [256 x i64]** %3, align 8
  store i64* %1, i64** %4, align 8
  store i32 1, i32* %5, align 4
  br label %15

15:                                               ; preds = %27, %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 256
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = sitofp i32 %19 to double
  %21 = fdiv double %20, 2.560000e+02
  %22 = fptosi double %21 to i32
  %23 = call double @log2(i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [256 x double], [256 x double]* %9, i64 0, i64 %25
  store double %23, double* %26, align 8
  br label %27

27:                                               ; preds = %18
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %15

30:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %191, %30
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 256
  br i1 %33, label %34, label %194

34:                                               ; preds = %31
  %35 = load i32, i32* %5, align 4
  %36 = sitofp i32 %35 to double
  %37 = fdiv double %36, 2.560000e+02
  store double %37, double* %11, align 8
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %45, %34
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 256
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [256 x double], [256 x double]* %10, i64 0, i64 %43
  store double 0x41D0000000000000, double* %44, align 8
  br label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %38

48:                                               ; preds = %38
  %49 = load i32, i32* %5, align 4
  %50 = sub nsw i32 %49, 10
  %51 = call i32 @FFMAX(i32 %50, i32 1)
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %187, %48
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 11
  %56 = call i32 @FFMIN(i32 %55, i32 256)
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %190

58:                                               ; preds = %52
  %59 = bitcast [256 x double]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %59, i8 0, i64 2048, i1 false)
  store double 0.000000e+00, double* %13, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [256 x double], [256 x double]* %12, i64 0, i64 %61
  store double 1.000000e+00, double* %62, align 8
  %63 = load i64*, i64** %4, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %58
  br label %187

70:                                               ; preds = %58
  store i32 0, i32* %7, align 4
  br label %71

71:                                               ; preds = %183, %70
  %72 = load i32, i32* %7, align 4
  %73 = icmp slt i32 %72, 256
  br i1 %73, label %74, label %186

74:                                               ; preds = %71
  %75 = bitcast [256 x double]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %75, i8 0, i64 2048, i1 false)
  store i32 1, i32* %8, align 4
  br label %76

76:                                               ; preds = %109, %74
  %77 = load i32, i32* %8, align 4
  %78 = icmp slt i32 %77, 256
  br i1 %78, label %79, label %112

79:                                               ; preds = %76
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [256 x double], [256 x double]* %12, i64 0, i64 %81
  %83 = load double, double* %82, align 8
  %84 = fcmp une double %83, 0.000000e+00
  br i1 %84, label %85, label %108

85:                                               ; preds = %79
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [256 x double], [256 x double]* %12, i64 0, i64 %87
  %89 = load double, double* %88, align 8
  %90 = load double, double* %11, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [256 x double], [256 x double]* %9, i64 0, i64 %92
  %94 = load double, double* %93, align 8
  %95 = fmul double %90, %94
  %96 = load double, double* %11, align 8
  %97 = fsub double 1.000000e+00, %96
  %98 = load i32, i32* %8, align 4
  %99 = sub nsw i32 256, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [256 x double], [256 x double]* %9, i64 0, i64 %100
  %102 = load double, double* %101, align 8
  %103 = fmul double %97, %102
  %104 = fadd double %95, %103
  %105 = fmul double %89, %104
  %106 = load double, double* %13, align 8
  %107 = fsub double %106, %105
  store double %107, double* %13, align 8
  br label %108

108:                                              ; preds = %85, %79
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %8, align 4
  br label %76

112:                                              ; preds = %76
  %113 = load double, double* %13, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [256 x double], [256 x double]* %10, i64 0, i64 %115
  %117 = load double, double* %116, align 8
  %118 = fcmp olt double %113, %117
  br i1 %118, label %119, label %133

119:                                              ; preds = %112
  %120 = load double, double* %13, align 8
  %121 = load i32, i32* %7, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [256 x double], [256 x double]* %10, i64 0, i64 %122
  store double %120, double* %123, align 8
  %124 = load i32, i32* %6, align 4
  %125 = sext i32 %124 to i64
  %126 = load [256 x i64]*, [256 x i64]** %3, align 8
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [256 x i64], [256 x i64]* %126, i64 %128
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [256 x i64], [256 x i64]* %129, i64 0, i64 %131
  store i64 %125, i64* %132, align 8
  br label %133

133:                                              ; preds = %119, %112
  store i32 1, i32* %8, align 4
  br label %134

134:                                              ; preds = %176, %133
  %135 = load i32, i32* %8, align 4
  %136 = icmp slt i32 %135, 256
  br i1 %136, label %137, label %179

137:                                              ; preds = %134
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [256 x double], [256 x double]* %12, i64 0, i64 %139
  %141 = load double, double* %140, align 8
  %142 = fcmp une double %141, 0.000000e+00
  br i1 %142, label %143, label %175

143:                                              ; preds = %137
  %144 = load i32, i32* %8, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [256 x double], [256 x double]* %12, i64 0, i64 %145
  %147 = load double, double* %146, align 8
  %148 = load double, double* %11, align 8
  %149 = fmul double %147, %148
  %150 = load i64*, i64** %4, align 8
  %151 = load i32, i32* %8, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i64, i64* %150, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr inbounds [256 x double], [256 x double]* %14, i64 0, i64 %154
  %156 = load double, double* %155, align 8
  %157 = fadd double %156, %149
  store double %157, double* %155, align 8
  %158 = load i32, i32* %8, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [256 x double], [256 x double]* %12, i64 0, i64 %159
  %161 = load double, double* %160, align 8
  %162 = load double, double* %11, align 8
  %163 = fsub double 1.000000e+00, %162
  %164 = fmul double %161, %163
  %165 = load i64*, i64** %4, align 8
  %166 = load i32, i32* %8, align 4
  %167 = sub nsw i32 256, %166
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i64, i64* %165, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = sub i64 256, %170
  %172 = getelementptr inbounds [256 x double], [256 x double]* %14, i64 0, i64 %171
  %173 = load double, double* %172, align 8
  %174 = fadd double %173, %164
  store double %174, double* %172, align 8
  br label %175

175:                                              ; preds = %143, %137
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %8, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %8, align 4
  br label %134

179:                                              ; preds = %134
  %180 = getelementptr inbounds [256 x double], [256 x double]* %12, i64 0, i64 0
  %181 = getelementptr inbounds [256 x double], [256 x double]* %14, i64 0, i64 0
  %182 = call i32 @memcpy(double* %180, double* %181, i32 2048)
  br label %183

183:                                              ; preds = %179
  %184 = load i32, i32* %7, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %7, align 4
  br label %71

186:                                              ; preds = %71
  br label %187

187:                                              ; preds = %186, %69
  %188 = load i32, i32* %6, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %6, align 4
  br label %52

190:                                              ; preds = %52
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %5, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %5, align 4
  br label %31

194:                                              ; preds = %31
  ret void
}

declare dso_local double @log2(i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @memcpy(double*, double*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
