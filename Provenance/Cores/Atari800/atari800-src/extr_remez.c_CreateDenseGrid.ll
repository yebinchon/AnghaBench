; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_remez.c_CreateDenseGrid.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_remez.c_CreateDenseGrid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GRIDDENSITY = common dso_local global i32 0, align 4
@NEGATIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, double*, double*, double*, i32*, double*, double*, double*, i32)* @CreateDenseGrid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CreateDenseGrid(i32 %0, i32 %1, i32 %2, double* %3, double* %4, double* %5, i32* %6, double* %7, double* %8, double* %9, i32 %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double*, align 8
  %16 = alloca double*, align 8
  %17 = alloca double*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca double*, align 8
  %20 = alloca double*, align 8
  %21 = alloca double*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  store i32 %0, i32* %12, align 4
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store double* %3, double** %15, align 8
  store double* %4, double** %16, align 8
  store double* %5, double** %17, align 8
  store i32* %6, i32** %18, align 8
  store double* %7, double** %19, align 8
  store double* %8, double** %20, align 8
  store double* %9, double** %21, align 8
  store i32 %10, i32* %22, align 4
  %30 = load i32, i32* @GRIDDENSITY, align 4
  %31 = load i32, i32* %12, align 4
  %32 = mul nsw i32 %30, %31
  %33 = sitofp i32 %32 to double
  %34 = fdiv double 5.000000e-01, %33
  store double %34, double* %27, align 8
  %35 = load i32, i32* %22, align 4
  %36 = load i32, i32* @NEGATIVE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %11
  %39 = load double, double* %27, align 8
  %40 = load double*, double** %15, align 8
  %41 = getelementptr inbounds double, double* %40, i64 0
  %42 = load double, double* %41, align 8
  %43 = fcmp ogt double %39, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load double, double* %27, align 8
  %46 = load double*, double** %15, align 8
  %47 = getelementptr inbounds double, double* %46, i64 0
  store double %45, double* %47, align 8
  br label %48

48:                                               ; preds = %44, %38, %11
  store i32 0, i32* %24, align 4
  store i32 0, i32* %26, align 4
  br label %49

49:                                               ; preds = %127, %48
  %50 = load i32, i32* %26, align 4
  %51 = load i32, i32* %14, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %130

53:                                               ; preds = %49
  %54 = load double*, double** %15, align 8
  %55 = load i32, i32* %26, align 4
  %56 = mul nsw i32 2, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds double, double* %54, i64 %57
  %59 = load double, double* %58, align 8
  %60 = load double*, double** %19, align 8
  %61 = load i32, i32* %24, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds double, double* %60, i64 %62
  store double %59, double* %63, align 8
  %64 = load double*, double** %15, align 8
  %65 = load i32, i32* %26, align 4
  %66 = mul nsw i32 2, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds double, double* %64, i64 %67
  %69 = load double, double* %68, align 8
  store double %69, double* %28, align 8
  %70 = load double*, double** %15, align 8
  %71 = load i32, i32* %26, align 4
  %72 = mul nsw i32 2, %71
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds double, double* %70, i64 %74
  %76 = load double, double* %75, align 8
  store double %76, double* %29, align 8
  %77 = load double, double* %29, align 8
  %78 = load double, double* %28, align 8
  %79 = fsub double %77, %78
  %80 = load double, double* %27, align 8
  %81 = fdiv double %79, %80
  %82 = fadd double %81, 5.000000e-01
  %83 = fptosi double %82 to i32
  store i32 %83, i32* %25, align 4
  store i32 0, i32* %23, align 4
  br label %84

84:                                               ; preds = %117, %53
  %85 = load i32, i32* %23, align 4
  %86 = load i32, i32* %25, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %120

88:                                               ; preds = %84
  %89 = load double*, double** %16, align 8
  %90 = load i32, i32* %26, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds double, double* %89, i64 %91
  %93 = load double, double* %92, align 8
  %94 = load double*, double** %20, align 8
  %95 = load i32, i32* %24, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds double, double* %94, i64 %96
  store double %93, double* %97, align 8
  %98 = load double*, double** %17, align 8
  %99 = load i32, i32* %26, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds double, double* %98, i64 %100
  %102 = load double, double* %101, align 8
  %103 = load double*, double** %21, align 8
  %104 = load i32, i32* %24, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds double, double* %103, i64 %105
  store double %102, double* %106, align 8
  %107 = load double, double* %28, align 8
  %108 = load double*, double** %19, align 8
  %109 = load i32, i32* %24, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds double, double* %108, i64 %110
  store double %107, double* %111, align 8
  %112 = load double, double* %27, align 8
  %113 = load double, double* %28, align 8
  %114 = fadd double %113, %112
  store double %114, double* %28, align 8
  %115 = load i32, i32* %24, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %24, align 4
  br label %117

117:                                              ; preds = %88
  %118 = load i32, i32* %23, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %23, align 4
  br label %84

120:                                              ; preds = %84
  %121 = load double, double* %29, align 8
  %122 = load double*, double** %19, align 8
  %123 = load i32, i32* %24, align 4
  %124 = sub nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds double, double* %122, i64 %125
  store double %121, double* %126, align 8
  br label %127

127:                                              ; preds = %120
  %128 = load i32, i32* %26, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %26, align 4
  br label %49

130:                                              ; preds = %49
  %131 = load i32, i32* %22, align 4
  %132 = load i32, i32* @NEGATIVE, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %158

134:                                              ; preds = %130
  %135 = load double*, double** %19, align 8
  %136 = load i32*, i32** %18, align 8
  %137 = load i32, i32* %136, align 4
  %138 = sub nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds double, double* %135, i64 %139
  %141 = load double, double* %140, align 8
  %142 = load double, double* %27, align 8
  %143 = fsub double 5.000000e-01, %142
  %144 = fcmp ogt double %141, %143
  br i1 %144, label %145, label %158

145:                                              ; preds = %134
  %146 = load i32, i32* %13, align 4
  %147 = srem i32 %146, 2
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %145
  %150 = load double, double* %27, align 8
  %151 = fsub double 5.000000e-01, %150
  %152 = load double*, double** %19, align 8
  %153 = load i32*, i32** %18, align 8
  %154 = load i32, i32* %153, align 4
  %155 = sub nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds double, double* %152, i64 %156
  store double %151, double* %157, align 8
  br label %158

158:                                              ; preds = %149, %145, %134, %130
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
