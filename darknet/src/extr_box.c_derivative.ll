; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_box.c_derivative.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_box.c_derivative.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64, i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @derivative(%struct.TYPE_6__* noalias sret %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_7__, align 4
  %7 = alloca %struct.TYPE_7__, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = bitcast %struct.TYPE_7__* %6 to { i64, i64 }*
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %16, i32 0, i32 0
  store i64 %1, i64* %17, align 4
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %16, i32 0, i32 1
  store i64 %2, i64* %18, align 4
  %19 = bitcast %struct.TYPE_7__* %7 to { i64, i64 }*
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %19, i32 0, i32 0
  store i64 %3, i64* %20, align 4
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %19, i32 0, i32 1
  store i64 %4, i64* %21, align 4
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sdiv i32 %27, 2
  %29 = sub nsw i32 %25, %28
  %30 = sitofp i32 %29 to float
  store float %30, float* %8, align 4
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sdiv i32 %34, 2
  %36 = sub nsw i32 %32, %35
  %37 = sitofp i32 %36 to float
  store float %37, float* %9, align 4
  %38 = load float, float* %8, align 4
  %39 = load float, float* %9, align 4
  %40 = fcmp ogt float %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %5
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = sitofp i64 %46 to double
  %48 = fadd double %47, 5.000000e-01
  %49 = fptosi double %48 to i64
  store i64 %49, i64* %45, align 8
  br label %50

50:                                               ; preds = %41, %5
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sdiv i32 %54, 2
  %56 = add nsw i32 %52, %55
  %57 = sitofp i32 %56 to float
  store float %57, float* %10, align 4
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = sdiv i32 %61, 2
  %63 = add nsw i32 %59, %62
  %64 = sitofp i32 %63 to float
  store float %64, float* %11, align 4
  %65 = load float, float* %10, align 4
  %66 = load float, float* %11, align 4
  %67 = fcmp olt float %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %50
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = sitofp i64 %73 to double
  %75 = fadd double %74, 5.000000e-01
  %76 = fptosi double %75 to i64
  store i64 %76, i64* %72, align 8
  br label %77

77:                                               ; preds = %68, %50
  %78 = load float, float* %8, align 4
  %79 = load float, float* %11, align 4
  %80 = fcmp ogt float %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  store i32 -1, i32* %82, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  store i64 0, i64* %83, align 8
  br label %84

84:                                               ; preds = %81, %77
  %85 = load float, float* %10, align 4
  %86 = load float, float* %9, align 4
  %87 = fcmp olt float %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  store i32 1, i32* %89, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  store i64 0, i64* %90, align 8
  br label %91

91:                                               ; preds = %88, %84
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  store i32 0, i32* %92, align 4
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  store i64 0, i64* %93, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = sdiv i32 %97, 2
  %99 = sub nsw i32 %95, %98
  %100 = sitofp i32 %99 to float
  store float %100, float* %12, align 4
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = sdiv i32 %104, 2
  %106 = sub nsw i32 %102, %105
  %107 = sitofp i32 %106 to float
  store float %107, float* %13, align 4
  %108 = load float, float* %12, align 4
  %109 = load float, float* %13, align 4
  %110 = fcmp ogt float %108, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %91
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = sub nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = sitofp i64 %116 to double
  %118 = fadd double %117, 5.000000e-01
  %119 = fptosi double %118 to i64
  store i64 %119, i64* %115, align 8
  br label %120

120:                                              ; preds = %111, %91
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = sdiv i32 %124, 2
  %126 = add nsw i32 %122, %125
  %127 = sitofp i32 %126 to float
  store float %127, float* %14, align 4
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = sdiv i32 %131, 2
  %133 = add nsw i32 %129, %132
  %134 = sitofp i32 %133 to float
  store float %134, float* %15, align 4
  %135 = load float, float* %14, align 4
  %136 = load float, float* %15, align 4
  %137 = fcmp olt float %135, %136
  br i1 %137, label %138, label %147

138:                                              ; preds = %120
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 4
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = sitofp i64 %143 to double
  %145 = fadd double %144, 5.000000e-01
  %146 = fptosi double %145 to i64
  store i64 %146, i64* %142, align 8
  br label %147

147:                                              ; preds = %138, %120
  %148 = load float, float* %12, align 4
  %149 = load float, float* %15, align 4
  %150 = fcmp ogt float %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  store i32 -1, i32* %152, align 4
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  store i64 0, i64* %153, align 8
  br label %154

154:                                              ; preds = %151, %147
  %155 = load float, float* %14, align 4
  %156 = load float, float* %13, align 4
  %157 = fcmp olt float %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  store i32 1, i32* %159, align 4
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  store i64 0, i64* %160, align 8
  br label %161

161:                                              ; preds = %158, %154
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
