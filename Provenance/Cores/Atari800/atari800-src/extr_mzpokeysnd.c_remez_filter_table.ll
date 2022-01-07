; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_mzpokeysnd.c_remez_filter_table.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_mzpokeysnd.c_remez_filter_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, double, [4 x double] }

@remez_filter_table.orders = internal constant [4 x i32] [i32 600, i32 800, i32 1000, i32 1200], align 16
@remez_filter_table.paramtab = internal constant [4 x %struct.anon] [%struct.anon { i32 70, double 9.000000e+01, [4 x double] [double 4.900000e-03, double 3.450000e-03, double 2.650000e-03, double 2.200000e-03] }, %struct.anon { i32 55, double 2.500000e+01, [4 x double] [double 3.400000e-03, double 2.700000e-03, double 2.050000e-03, double 1.700000e-03] }, %struct.anon { i32 40, double 6.000000e+00, [4 x double] [double 2.600000e-03, double 1.800000e-03, double 1.500000e-03, double 1.200000e-03] }, %struct.anon { i32 -1, double 0.000000e+00, [4 x double] zeroinitializer }], align 16
@remez_filter_table.passtab = internal constant [3 x double] [double 5.000000e-01, double 6.000000e-01, double 0x3FE6666666666666], align 16
@remez_filter_table.interlevel = internal constant i32 5, align 4
@SND_FILTER_SIZE = common dso_local global i32 0, align 4
@filter_data = common dso_local global double* null, align 8
@REMEZ_BANDPASS = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (double, double*, i32)* @remez_filter_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remez_filter_table(double %0, double* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x double], align 16
  %13 = alloca [2 x double], align 16
  %14 = alloca [4 x double], align 16
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  store double %0, double* %5, align 8
  store double* %1, double** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store double 2.000000e-01, double* %15, align 8
  %20 = load double, double* %5, align 8
  %21 = fmul double 4.750000e-01, %20
  %22 = load double*, double** %6, align 8
  store double %21, double* %22, align 8
  %23 = load i32, i32* %7, align 4
  %24 = icmp sge i32 %23, 3
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 2, i32* %7, align 4
  br label %26

26:                                               ; preds = %25, %3
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %64, %26
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @remez_filter_table.paramtab, i64 0, i64 %29
  %31 = getelementptr inbounds %struct.anon, %struct.anon* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 16
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %67

34:                                               ; preds = %27
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %60, %34
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 4
  br i1 %37, label %38, label %63

38:                                               ; preds = %35
  %39 = load double*, double** %6, align 8
  %40 = load double, double* %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @remez_filter_table.paramtab, i64 0, i64 %42
  %44 = getelementptr inbounds %struct.anon, %struct.anon* %43, i32 0, i32 2
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [4 x double], [4 x double]* %44, i64 0, i64 %46
  %48 = load double, double* %47, align 8
  %49 = fsub double %40, %48
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [3 x double], [3 x double]* @remez_filter_table.passtab, i64 0, i64 %51
  %53 = load double, double* %52, align 8
  %54 = fmul double %53, 5.000000e-01
  %55 = load double, double* %5, align 8
  %56 = fmul double %54, %55
  %57 = fcmp ogt double %49, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %38
  br label %72

59:                                               ; preds = %38
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  br label %35

63:                                               ; preds = %35
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %27

67:                                               ; preds = %27
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %67, %58
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* @remez_filter_table.orders, i64 0, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @SND_FILTER_SIZE, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  store i32 0, i32* %4, align 4
  br label %198

82:                                               ; preds = %72
  %83 = getelementptr inbounds [2 x double], [2 x double]* %13, i64 0, i64 0
  store double 1.000000e+00, double* %83, align 16
  %84 = getelementptr inbounds [2 x double], [2 x double]* %13, i64 0, i64 1
  store double 0.000000e+00, double* %84, align 8
  %85 = getelementptr inbounds [2 x double], [2 x double]* %12, i64 0, i64 0
  store double 1.000000e+00, double* %85, align 16
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @remez_filter_table.paramtab, i64 0, i64 %87
  %89 = getelementptr inbounds %struct.anon, %struct.anon* %88, i32 0, i32 1
  %90 = load double, double* %89, align 8
  %91 = getelementptr inbounds [2 x double], [2 x double]* %12, i64 0, i64 1
  store double %90, double* %91, align 8
  %92 = getelementptr inbounds [4 x double], [4 x double]* %14, i64 0, i64 0
  store double 0.000000e+00, double* %92, align 16
  %93 = load double*, double** %6, align 8
  %94 = load double, double* %93, align 8
  %95 = getelementptr inbounds [4 x double], [4 x double]* %14, i64 0, i64 2
  store double %94, double* %95, align 16
  %96 = getelementptr inbounds [4 x double], [4 x double]* %14, i64 0, i64 2
  %97 = load double, double* %96, align 16
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @remez_filter_table.paramtab, i64 0, i64 %99
  %101 = getelementptr inbounds %struct.anon, %struct.anon* %100, i32 0, i32 2
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [4 x double], [4 x double]* %101, i64 0, i64 %103
  %105 = load double, double* %104, align 8
  %106 = fsub double %97, %105
  %107 = getelementptr inbounds [4 x double], [4 x double]* %14, i64 0, i64 1
  store double %106, double* %107, align 8
  %108 = getelementptr inbounds [4 x double], [4 x double]* %14, i64 0, i64 3
  store double 5.000000e-01, double* %108, align 8
  %109 = getelementptr inbounds [4 x double], [4 x double]* %14, i64 0, i64 1
  %110 = load double, double* %109, align 8
  %111 = fmul double %110, 5.000000e+00
  store double %111, double* %109, align 8
  %112 = getelementptr inbounds [4 x double], [4 x double]* %14, i64 0, i64 2
  %113 = load double, double* %112, align 16
  %114 = fmul double %113, 5.000000e+00
  store double %114, double* %112, align 16
  %115 = load double*, double** @filter_data, align 8
  %116 = load i32, i32* %11, align 4
  %117 = sdiv i32 %116, 5
  %118 = add nsw i32 %117, 1
  %119 = getelementptr inbounds [4 x double], [4 x double]* %14, i64 0, i64 0
  %120 = getelementptr inbounds [2 x double], [2 x double]* %13, i64 0, i64 0
  %121 = getelementptr inbounds [2 x double], [2 x double]* %12, i64 0, i64 0
  %122 = load i32, i32* @REMEZ_BANDPASS, align 4
  %123 = call i32 @REMEZ_CreateFilter(double* %115, i32 %118, i32 2, double* %119, double* %120, double* %121, i32 %122)
  %124 = load i32, i32* %11, align 4
  %125 = sub nsw i32 %124, 5
  store i32 %125, i32* %8, align 4
  br label %126

126:                                              ; preds = %171, %82
  %127 = load i32, i32* %8, align 4
  %128 = icmp sge i32 %127, 0
  br i1 %128, label %129, label %174

129:                                              ; preds = %126
  %130 = load double*, double** @filter_data, align 8
  %131 = load i32, i32* %8, align 4
  %132 = sdiv i32 %131, 5
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds double, double* %130, i64 %133
  %135 = load double, double* %134, align 8
  store double %135, double* %17, align 8
  %136 = load double*, double** @filter_data, align 8
  %137 = load i32, i32* %8, align 4
  %138 = sdiv i32 %137, 5
  %139 = add nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds double, double* %136, i64 %140
  %142 = load double, double* %141, align 8
  store double %142, double* %18, align 8
  store i32 0, i32* %16, align 4
  br label %143

143:                                              ; preds = %167, %129
  %144 = load i32, i32* %16, align 4
  %145 = icmp slt i32 %144, 5
  br i1 %145, label %146, label %170

146:                                              ; preds = %143
  %147 = load i32, i32* %16, align 4
  %148 = sitofp i32 %147 to double
  %149 = load double, double* %15, align 8
  %150 = fmul double %148, %149
  store double %150, double* %19, align 8
  %151 = load double, double* %17, align 8
  %152 = load double, double* %19, align 8
  %153 = fsub double 1.000000e+00, %152
  %154 = fmul double %151, %153
  %155 = load double, double* %18, align 8
  %156 = load double, double* %19, align 8
  %157 = fmul double %155, %156
  %158 = fadd double %154, %157
  %159 = load double, double* %15, align 8
  %160 = fmul double %158, %159
  %161 = load double*, double** @filter_data, align 8
  %162 = load i32, i32* %8, align 4
  %163 = load i32, i32* %16, align 4
  %164 = add nsw i32 %162, %163
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds double, double* %161, i64 %165
  store double %160, double* %166, align 8
  br label %167

167:                                              ; preds = %146
  %168 = load i32, i32* %16, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %16, align 4
  br label %143

170:                                              ; preds = %143
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %8, align 4
  %173 = sub nsw i32 %172, 5
  store i32 %173, i32* %8, align 4
  br label %126

174:                                              ; preds = %126
  %175 = load i32, i32* %11, align 4
  %176 = sub nsw i32 %175, 2
  store i32 %176, i32* %8, align 4
  br label %177

177:                                              ; preds = %193, %174
  %178 = load i32, i32* %8, align 4
  %179 = icmp sge i32 %178, 0
  br i1 %179, label %180, label %196

180:                                              ; preds = %177
  %181 = load double*, double** @filter_data, align 8
  %182 = load i32, i32* %8, align 4
  %183 = add nsw i32 %182, 1
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds double, double* %181, i64 %184
  %186 = load double, double* %185, align 8
  %187 = load double*, double** @filter_data, align 8
  %188 = load i32, i32* %8, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds double, double* %187, i64 %189
  %191 = load double, double* %190, align 8
  %192 = fadd double %191, %186
  store double %192, double* %190, align 8
  br label %193

193:                                              ; preds = %180
  %194 = load i32, i32* %8, align 4
  %195 = add nsw i32 %194, -1
  store i32 %195, i32* %8, align 4
  br label %177

196:                                              ; preds = %177
  %197 = load i32, i32* %11, align 4
  store i32 %197, i32* %4, align 4
  br label %198

198:                                              ; preds = %196, %81
  %199 = load i32, i32* %4, align 4
  ret i32 %199
}

declare dso_local i32 @REMEZ_CreateFilter(double*, i32, i32, double*, double*, double*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
