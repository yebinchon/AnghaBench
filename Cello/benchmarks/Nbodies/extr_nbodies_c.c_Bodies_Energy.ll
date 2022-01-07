; ModuleID = '/home/carl/AnghaBench/Cello/benchmarks/Nbodies/extr_nbodies_c.c_Bodies_Energy.c'
source_filename = "/home/carl/AnghaBench/Cello/benchmarks/Nbodies/extr_nbodies_c.c_Bodies_Energy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Body = type { double, double, double, double, double, double, double }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.Body*, i64)* @Bodies_Energy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @Bodies_Energy(%struct.Body* %0, i64 %1) #0 {
  %3 = alloca %struct.Body*, align 8
  %4 = alloca i64, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.Body*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.Body*, align 8
  store %struct.Body* %0, %struct.Body** %3, align 8
  store i64 %1, i64* %4, align 8
  store double 0.000000e+00, double* %5, align 8
  store double 0.000000e+00, double* %6, align 8
  store double 0.000000e+00, double* %7, align 8
  store double 0.000000e+00, double* %8, align 8
  store double 0.000000e+00, double* %9, align 8
  store i64 0, i64* %10, align 8
  br label %14

14:                                               ; preds = %110, %2
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %113

18:                                               ; preds = %14
  %19 = load %struct.Body*, %struct.Body** %3, align 8
  %20 = load i64, i64* %10, align 8
  %21 = getelementptr inbounds %struct.Body, %struct.Body* %19, i64 %20
  store %struct.Body* %21, %struct.Body** %11, align 8
  %22 = load %struct.Body*, %struct.Body** %11, align 8
  %23 = getelementptr inbounds %struct.Body, %struct.Body* %22, i32 0, i32 0
  %24 = load double, double* %23, align 8
  %25 = fmul double 5.000000e-01, %24
  %26 = load %struct.Body*, %struct.Body** %11, align 8
  %27 = getelementptr inbounds %struct.Body, %struct.Body* %26, i32 0, i32 1
  %28 = load double, double* %27, align 8
  %29 = load %struct.Body*, %struct.Body** %11, align 8
  %30 = getelementptr inbounds %struct.Body, %struct.Body* %29, i32 0, i32 1
  %31 = load double, double* %30, align 8
  %32 = fmul double %28, %31
  %33 = load %struct.Body*, %struct.Body** %11, align 8
  %34 = getelementptr inbounds %struct.Body, %struct.Body* %33, i32 0, i32 2
  %35 = load double, double* %34, align 8
  %36 = load %struct.Body*, %struct.Body** %11, align 8
  %37 = getelementptr inbounds %struct.Body, %struct.Body* %36, i32 0, i32 2
  %38 = load double, double* %37, align 8
  %39 = fmul double %35, %38
  %40 = fadd double %32, %39
  %41 = load %struct.Body*, %struct.Body** %11, align 8
  %42 = getelementptr inbounds %struct.Body, %struct.Body* %41, i32 0, i32 3
  %43 = load double, double* %42, align 8
  %44 = load %struct.Body*, %struct.Body** %11, align 8
  %45 = getelementptr inbounds %struct.Body, %struct.Body* %44, i32 0, i32 3
  %46 = load double, double* %45, align 8
  %47 = fmul double %43, %46
  %48 = fadd double %40, %47
  %49 = fmul double %25, %48
  %50 = load double, double* %9, align 8
  %51 = fadd double %50, %49
  store double %51, double* %9, align 8
  %52 = load i64, i64* %10, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %12, align 8
  br label %54

54:                                               ; preds = %106, %18
  %55 = load i64, i64* %12, align 8
  %56 = load i64, i64* %4, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %109

58:                                               ; preds = %54
  %59 = load %struct.Body*, %struct.Body** %3, align 8
  %60 = load i64, i64* %12, align 8
  %61 = getelementptr inbounds %struct.Body, %struct.Body* %59, i64 %60
  store %struct.Body* %61, %struct.Body** %13, align 8
  %62 = load %struct.Body*, %struct.Body** %11, align 8
  %63 = getelementptr inbounds %struct.Body, %struct.Body* %62, i32 0, i32 4
  %64 = load double, double* %63, align 8
  %65 = load %struct.Body*, %struct.Body** %13, align 8
  %66 = getelementptr inbounds %struct.Body, %struct.Body* %65, i32 0, i32 4
  %67 = load double, double* %66, align 8
  %68 = fsub double %64, %67
  store double %68, double* %5, align 8
  %69 = load %struct.Body*, %struct.Body** %11, align 8
  %70 = getelementptr inbounds %struct.Body, %struct.Body* %69, i32 0, i32 5
  %71 = load double, double* %70, align 8
  %72 = load %struct.Body*, %struct.Body** %13, align 8
  %73 = getelementptr inbounds %struct.Body, %struct.Body* %72, i32 0, i32 5
  %74 = load double, double* %73, align 8
  %75 = fsub double %71, %74
  store double %75, double* %6, align 8
  %76 = load %struct.Body*, %struct.Body** %11, align 8
  %77 = getelementptr inbounds %struct.Body, %struct.Body* %76, i32 0, i32 6
  %78 = load double, double* %77, align 8
  %79 = load %struct.Body*, %struct.Body** %13, align 8
  %80 = getelementptr inbounds %struct.Body, %struct.Body* %79, i32 0, i32 6
  %81 = load double, double* %80, align 8
  %82 = fsub double %78, %81
  store double %82, double* %7, align 8
  %83 = load double, double* %5, align 8
  %84 = load double, double* %5, align 8
  %85 = fmul double %83, %84
  %86 = load double, double* %6, align 8
  %87 = load double, double* %6, align 8
  %88 = fmul double %86, %87
  %89 = fadd double %85, %88
  %90 = load double, double* %7, align 8
  %91 = load double, double* %7, align 8
  %92 = fmul double %90, %91
  %93 = fadd double %89, %92
  %94 = call double @sqrt(double %93) #2
  store double %94, double* %8, align 8
  %95 = load %struct.Body*, %struct.Body** %11, align 8
  %96 = getelementptr inbounds %struct.Body, %struct.Body* %95, i32 0, i32 0
  %97 = load double, double* %96, align 8
  %98 = load %struct.Body*, %struct.Body** %13, align 8
  %99 = getelementptr inbounds %struct.Body, %struct.Body* %98, i32 0, i32 0
  %100 = load double, double* %99, align 8
  %101 = fmul double %97, %100
  %102 = load double, double* %8, align 8
  %103 = fdiv double %101, %102
  %104 = load double, double* %9, align 8
  %105 = fsub double %104, %103
  store double %105, double* %9, align 8
  br label %106

106:                                              ; preds = %58
  %107 = load i64, i64* %12, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %12, align 8
  br label %54

109:                                              ; preds = %54
  br label %110

110:                                              ; preds = %109
  %111 = load i64, i64* %10, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %10, align 8
  br label %14

113:                                              ; preds = %14
  %114 = load double, double* %9, align 8
  ret double %114
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
