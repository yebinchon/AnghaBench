; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_afftdn.c_postprocess.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_afftdn.c_postprocess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, double }

@M_PI = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @postprocess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @postprocess(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %18 = load double, double* @M_PI, align 8
  %19 = fmul double 2.000000e+00, %18
  %20 = load i32, i32* %4, align 4
  %21 = sitofp i32 %20 to double
  %22 = fdiv double %19, %21
  store double %22, double* %9, align 8
  %23 = load double, double* %9, align 8
  %24 = fmul double 5.000000e-01, %23
  %25 = call double @sin(double %24) #2
  store double %25, double* %12, align 8
  %26 = load double, double* %12, align 8
  %27 = fmul double -2.000000e+00, %26
  %28 = load double, double* %12, align 8
  %29 = fmul double %27, %28
  store double %29, double* %12, align 8
  %30 = load double, double* %9, align 8
  %31 = call double @sin(double %30) #2
  store double %31, double* %11, align 8
  %32 = load double, double* %12, align 8
  %33 = fadd double 1.000000e+00, %32
  store double %33, double* %13, align 8
  %34 = load double, double* %11, align 8
  store double %34, double* %10, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sdiv i32 %35, 2
  store i32 %36, i32* %15, align 4
  store i32 1, i32* %16, align 4
  br label %37

37:                                               ; preds = %178, %2
  %38 = load i32, i32* %16, align 4
  %39 = load i32, i32* %4, align 4
  %40 = sdiv i32 %39, 4
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %181

42:                                               ; preds = %37
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* %16, align 4
  %45 = sub nsw i32 %43, %44
  store i32 %45, i32* %17, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %47 = load i32, i32* %16, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load double, double* %50, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %53 = load i32, i32* %17, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load double, double* %56, align 8
  %58 = fadd double %51, %57
  %59 = fmul double 5.000000e-01, %58
  store double %59, double* %6, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %61 = load i32, i32* %16, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load double, double* %64, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %67 = load i32, i32* %17, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load double, double* %70, align 8
  %72 = fsub double %65, %71
  %73 = fmul double 5.000000e-01, %72
  store double %73, double* %5, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %75 = load i32, i32* %16, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load double, double* %78, align 8
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %81 = load i32, i32* %17, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load double, double* %84, align 8
  %86 = fsub double %79, %85
  %87 = fmul double 5.000000e-01, %86
  store double %87, double* %8, align 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %89 = load i32, i32* %16, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load double, double* %92, align 8
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %95 = load i32, i32* %17, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load double, double* %98, align 8
  %100 = fadd double %93, %99
  %101 = fmul double 5.000000e-01, %100
  store double %101, double* %7, align 8
  %102 = load double, double* %6, align 8
  %103 = load double, double* %13, align 8
  %104 = load double, double* %7, align 8
  %105 = fmul double %103, %104
  %106 = fsub double %102, %105
  %107 = load double, double* %10, align 8
  %108 = load double, double* %8, align 8
  %109 = fmul double %107, %108
  %110 = fsub double %106, %109
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %112 = load i32, i32* %16, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  store double %110, double* %115, align 8
  %116 = load double, double* %5, align 8
  %117 = load double, double* %13, align 8
  %118 = load double, double* %8, align 8
  %119 = fmul double %117, %118
  %120 = fadd double %116, %119
  %121 = load double, double* %10, align 8
  %122 = load double, double* %7, align 8
  %123 = fmul double %121, %122
  %124 = fsub double %120, %123
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %126 = load i32, i32* %16, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 1
  store double %124, double* %129, align 8
  %130 = load double, double* %6, align 8
  %131 = load double, double* %13, align 8
  %132 = load double, double* %7, align 8
  %133 = fmul double %131, %132
  %134 = fadd double %130, %133
  %135 = load double, double* %10, align 8
  %136 = load double, double* %8, align 8
  %137 = fmul double %135, %136
  %138 = fadd double %134, %137
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %140 = load i32, i32* %17, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  store double %138, double* %143, align 8
  %144 = load double, double* %5, align 8
  %145 = fneg double %144
  %146 = load double, double* %13, align 8
  %147 = load double, double* %8, align 8
  %148 = fmul double %146, %147
  %149 = fadd double %145, %148
  %150 = load double, double* %10, align 8
  %151 = load double, double* %7, align 8
  %152 = fmul double %150, %151
  %153 = fsub double %149, %152
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %155 = load i32, i32* %17, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 1
  store double %153, double* %158, align 8
  %159 = load double, double* %13, align 8
  store double %159, double* %14, align 8
  %160 = load double, double* %13, align 8
  %161 = load double, double* %12, align 8
  %162 = fmul double %160, %161
  %163 = load double, double* %10, align 8
  %164 = load double, double* %11, align 8
  %165 = fmul double %163, %164
  %166 = fsub double %162, %165
  %167 = load double, double* %13, align 8
  %168 = fadd double %167, %166
  store double %168, double* %13, align 8
  %169 = load double, double* %10, align 8
  %170 = load double, double* %12, align 8
  %171 = fmul double %169, %170
  %172 = load double, double* %14, align 8
  %173 = load double, double* %11, align 8
  %174 = fmul double %172, %173
  %175 = fadd double %171, %174
  %176 = load double, double* %10, align 8
  %177 = fadd double %176, %175
  store double %177, double* %10, align 8
  br label %178

178:                                              ; preds = %42
  %179 = load i32, i32* %16, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %16, align 4
  br label %37

181:                                              ; preds = %37
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i64 0
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 0
  %185 = load double, double* %184, align 8
  store double %185, double* %6, align 8
  %186 = load double, double* %6, align 8
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i64 0
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 1
  %190 = load double, double* %189, align 8
  %191 = fadd double %186, %190
  %192 = fmul double 5.000000e-01, %191
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i64 0
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 0
  store double %192, double* %195, align 8
  %196 = load double, double* %6, align 8
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i64 0
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 1
  %200 = load double, double* %199, align 8
  %201 = fsub double %196, %200
  %202 = fmul double 5.000000e-01, %201
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i64 0
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 1
  store double %202, double* %205, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local double @sin(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
