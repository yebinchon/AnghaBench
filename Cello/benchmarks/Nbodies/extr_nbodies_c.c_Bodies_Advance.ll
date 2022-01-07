; ModuleID = '/home/carl/AnghaBench/Cello/benchmarks/Nbodies/extr_nbodies_c.c_Bodies_Advance.c'
source_filename = "/home/carl/AnghaBench/Cello/benchmarks/Nbodies/extr_nbodies_c.c_Bodies_Advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Body = type { double, double, double, double, double, double, double }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Body*, i64, double)* @Bodies_Advance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Bodies_Advance(%struct.Body* %0, i64 %1, double %2) #0 {
  %4 = alloca %struct.Body*, align 8
  %5 = alloca i64, align 8
  %6 = alloca double, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.Body*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.Body*, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.Body*, align 8
  store %struct.Body* %0, %struct.Body** %4, align 8
  store i64 %1, i64* %5, align 8
  store double %2, double* %6, align 8
  store i64 0, i64* %7, align 8
  br label %19

19:                                               ; preds = %146, %3
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %149

23:                                               ; preds = %19
  %24 = load %struct.Body*, %struct.Body** %4, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds %struct.Body, %struct.Body* %24, i64 %25
  store %struct.Body* %26, %struct.Body** %8, align 8
  %27 = load i64, i64* %7, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %9, align 8
  br label %29

29:                                               ; preds = %142, %23
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %145

33:                                               ; preds = %29
  %34 = load %struct.Body*, %struct.Body** %4, align 8
  %35 = load i64, i64* %9, align 8
  %36 = getelementptr inbounds %struct.Body, %struct.Body* %34, i64 %35
  store %struct.Body* %36, %struct.Body** %10, align 8
  %37 = load %struct.Body*, %struct.Body** %8, align 8
  %38 = getelementptr inbounds %struct.Body, %struct.Body* %37, i32 0, i32 0
  %39 = load double, double* %38, align 8
  %40 = load %struct.Body*, %struct.Body** %10, align 8
  %41 = getelementptr inbounds %struct.Body, %struct.Body* %40, i32 0, i32 0
  %42 = load double, double* %41, align 8
  %43 = fsub double %39, %42
  store double %43, double* %11, align 8
  %44 = load %struct.Body*, %struct.Body** %8, align 8
  %45 = getelementptr inbounds %struct.Body, %struct.Body* %44, i32 0, i32 1
  %46 = load double, double* %45, align 8
  %47 = load %struct.Body*, %struct.Body** %10, align 8
  %48 = getelementptr inbounds %struct.Body, %struct.Body* %47, i32 0, i32 1
  %49 = load double, double* %48, align 8
  %50 = fsub double %46, %49
  store double %50, double* %12, align 8
  %51 = load %struct.Body*, %struct.Body** %8, align 8
  %52 = getelementptr inbounds %struct.Body, %struct.Body* %51, i32 0, i32 2
  %53 = load double, double* %52, align 8
  %54 = load %struct.Body*, %struct.Body** %10, align 8
  %55 = getelementptr inbounds %struct.Body, %struct.Body* %54, i32 0, i32 2
  %56 = load double, double* %55, align 8
  %57 = fsub double %53, %56
  store double %57, double* %13, align 8
  %58 = load double, double* %11, align 8
  %59 = load double, double* %11, align 8
  %60 = fmul double %58, %59
  %61 = load double, double* %12, align 8
  %62 = load double, double* %12, align 8
  %63 = fmul double %61, %62
  %64 = fadd double %60, %63
  %65 = load double, double* %13, align 8
  %66 = load double, double* %13, align 8
  %67 = fmul double %65, %66
  %68 = fadd double %64, %67
  store double %68, double* %14, align 8
  %69 = load double, double* %14, align 8
  %70 = call double @sqrt(double %69) #2
  store double %70, double* %15, align 8
  %71 = load double, double* %6, align 8
  %72 = load double, double* %14, align 8
  %73 = load double, double* %15, align 8
  %74 = fmul double %72, %73
  %75 = fdiv double %71, %74
  store double %75, double* %16, align 8
  %76 = load double, double* %11, align 8
  %77 = load %struct.Body*, %struct.Body** %10, align 8
  %78 = getelementptr inbounds %struct.Body, %struct.Body* %77, i32 0, i32 4
  %79 = load double, double* %78, align 8
  %80 = fmul double %76, %79
  %81 = load double, double* %16, align 8
  %82 = fmul double %80, %81
  %83 = load %struct.Body*, %struct.Body** %8, align 8
  %84 = getelementptr inbounds %struct.Body, %struct.Body* %83, i32 0, i32 3
  %85 = load double, double* %84, align 8
  %86 = fsub double %85, %82
  store double %86, double* %84, align 8
  %87 = load double, double* %12, align 8
  %88 = load %struct.Body*, %struct.Body** %10, align 8
  %89 = getelementptr inbounds %struct.Body, %struct.Body* %88, i32 0, i32 4
  %90 = load double, double* %89, align 8
  %91 = fmul double %87, %90
  %92 = load double, double* %16, align 8
  %93 = fmul double %91, %92
  %94 = load %struct.Body*, %struct.Body** %8, align 8
  %95 = getelementptr inbounds %struct.Body, %struct.Body* %94, i32 0, i32 5
  %96 = load double, double* %95, align 8
  %97 = fsub double %96, %93
  store double %97, double* %95, align 8
  %98 = load double, double* %13, align 8
  %99 = load %struct.Body*, %struct.Body** %10, align 8
  %100 = getelementptr inbounds %struct.Body, %struct.Body* %99, i32 0, i32 4
  %101 = load double, double* %100, align 8
  %102 = fmul double %98, %101
  %103 = load double, double* %16, align 8
  %104 = fmul double %102, %103
  %105 = load %struct.Body*, %struct.Body** %8, align 8
  %106 = getelementptr inbounds %struct.Body, %struct.Body* %105, i32 0, i32 6
  %107 = load double, double* %106, align 8
  %108 = fsub double %107, %104
  store double %108, double* %106, align 8
  %109 = load double, double* %11, align 8
  %110 = load %struct.Body*, %struct.Body** %8, align 8
  %111 = getelementptr inbounds %struct.Body, %struct.Body* %110, i32 0, i32 4
  %112 = load double, double* %111, align 8
  %113 = fmul double %109, %112
  %114 = load double, double* %16, align 8
  %115 = fmul double %113, %114
  %116 = load %struct.Body*, %struct.Body** %10, align 8
  %117 = getelementptr inbounds %struct.Body, %struct.Body* %116, i32 0, i32 3
  %118 = load double, double* %117, align 8
  %119 = fadd double %118, %115
  store double %119, double* %117, align 8
  %120 = load double, double* %12, align 8
  %121 = load %struct.Body*, %struct.Body** %8, align 8
  %122 = getelementptr inbounds %struct.Body, %struct.Body* %121, i32 0, i32 4
  %123 = load double, double* %122, align 8
  %124 = fmul double %120, %123
  %125 = load double, double* %16, align 8
  %126 = fmul double %124, %125
  %127 = load %struct.Body*, %struct.Body** %10, align 8
  %128 = getelementptr inbounds %struct.Body, %struct.Body* %127, i32 0, i32 5
  %129 = load double, double* %128, align 8
  %130 = fadd double %129, %126
  store double %130, double* %128, align 8
  %131 = load double, double* %13, align 8
  %132 = load %struct.Body*, %struct.Body** %8, align 8
  %133 = getelementptr inbounds %struct.Body, %struct.Body* %132, i32 0, i32 4
  %134 = load double, double* %133, align 8
  %135 = fmul double %131, %134
  %136 = load double, double* %16, align 8
  %137 = fmul double %135, %136
  %138 = load %struct.Body*, %struct.Body** %10, align 8
  %139 = getelementptr inbounds %struct.Body, %struct.Body* %138, i32 0, i32 6
  %140 = load double, double* %139, align 8
  %141 = fadd double %140, %137
  store double %141, double* %139, align 8
  br label %142

142:                                              ; preds = %33
  %143 = load i64, i64* %9, align 8
  %144 = add i64 %143, 1
  store i64 %144, i64* %9, align 8
  br label %29

145:                                              ; preds = %29
  br label %146

146:                                              ; preds = %145
  %147 = load i64, i64* %7, align 8
  %148 = add i64 %147, 1
  store i64 %148, i64* %7, align 8
  br label %19

149:                                              ; preds = %19
  store i64 0, i64* %17, align 8
  br label %150

150:                                              ; preds = %185, %149
  %151 = load i64, i64* %17, align 8
  %152 = load i64, i64* %5, align 8
  %153 = icmp ult i64 %151, %152
  br i1 %153, label %154, label %188

154:                                              ; preds = %150
  %155 = load %struct.Body*, %struct.Body** %4, align 8
  %156 = load i64, i64* %17, align 8
  %157 = getelementptr inbounds %struct.Body, %struct.Body* %155, i64 %156
  store %struct.Body* %157, %struct.Body** %18, align 8
  %158 = load double, double* %6, align 8
  %159 = load %struct.Body*, %struct.Body** %18, align 8
  %160 = getelementptr inbounds %struct.Body, %struct.Body* %159, i32 0, i32 3
  %161 = load double, double* %160, align 8
  %162 = fmul double %158, %161
  %163 = load %struct.Body*, %struct.Body** %18, align 8
  %164 = getelementptr inbounds %struct.Body, %struct.Body* %163, i32 0, i32 0
  %165 = load double, double* %164, align 8
  %166 = fadd double %165, %162
  store double %166, double* %164, align 8
  %167 = load double, double* %6, align 8
  %168 = load %struct.Body*, %struct.Body** %18, align 8
  %169 = getelementptr inbounds %struct.Body, %struct.Body* %168, i32 0, i32 5
  %170 = load double, double* %169, align 8
  %171 = fmul double %167, %170
  %172 = load %struct.Body*, %struct.Body** %18, align 8
  %173 = getelementptr inbounds %struct.Body, %struct.Body* %172, i32 0, i32 1
  %174 = load double, double* %173, align 8
  %175 = fadd double %174, %171
  store double %175, double* %173, align 8
  %176 = load double, double* %6, align 8
  %177 = load %struct.Body*, %struct.Body** %18, align 8
  %178 = getelementptr inbounds %struct.Body, %struct.Body* %177, i32 0, i32 6
  %179 = load double, double* %178, align 8
  %180 = fmul double %176, %179
  %181 = load %struct.Body*, %struct.Body** %18, align 8
  %182 = getelementptr inbounds %struct.Body, %struct.Body* %181, i32 0, i32 2
  %183 = load double, double* %182, align 8
  %184 = fadd double %183, %180
  store double %184, double* %182, align 8
  br label %185

185:                                              ; preds = %154
  %186 = load i64, i64* %17, align 8
  %187 = add i64 %186, 1
  store i64 %187, i64* %17, align 8
  br label %150

188:                                              ; preds = %150
  ret void
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
