; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_colorspace.c_ff_matrix_invert_3x3.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_colorspace.c_ff_matrix_invert_3x3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_matrix_invert_3x3([3 x double]* %0, [3 x double]* %1) #0 {
  %3 = alloca [3 x double]*, align 8
  %4 = alloca [3 x double]*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  store [3 x double]* %0, [3 x double]** %3, align 8
  store [3 x double]* %1, [3 x double]** %4, align 8
  %17 = load [3 x double]*, [3 x double]** %3, align 8
  %18 = getelementptr inbounds [3 x double], [3 x double]* %17, i64 0
  %19 = getelementptr inbounds [3 x double], [3 x double]* %18, i64 0, i64 0
  %20 = load double, double* %19, align 8
  store double %20, double* %5, align 8
  %21 = load [3 x double]*, [3 x double]** %3, align 8
  %22 = getelementptr inbounds [3 x double], [3 x double]* %21, i64 0
  %23 = getelementptr inbounds [3 x double], [3 x double]* %22, i64 0, i64 1
  %24 = load double, double* %23, align 8
  store double %24, double* %6, align 8
  %25 = load [3 x double]*, [3 x double]** %3, align 8
  %26 = getelementptr inbounds [3 x double], [3 x double]* %25, i64 0
  %27 = getelementptr inbounds [3 x double], [3 x double]* %26, i64 0, i64 2
  %28 = load double, double* %27, align 8
  store double %28, double* %7, align 8
  %29 = load [3 x double]*, [3 x double]** %3, align 8
  %30 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 1
  %31 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 0
  %32 = load double, double* %31, align 8
  store double %32, double* %8, align 8
  %33 = load [3 x double]*, [3 x double]** %3, align 8
  %34 = getelementptr inbounds [3 x double], [3 x double]* %33, i64 1
  %35 = getelementptr inbounds [3 x double], [3 x double]* %34, i64 0, i64 1
  %36 = load double, double* %35, align 8
  store double %36, double* %9, align 8
  %37 = load [3 x double]*, [3 x double]** %3, align 8
  %38 = getelementptr inbounds [3 x double], [3 x double]* %37, i64 1
  %39 = getelementptr inbounds [3 x double], [3 x double]* %38, i64 0, i64 2
  %40 = load double, double* %39, align 8
  store double %40, double* %10, align 8
  %41 = load [3 x double]*, [3 x double]** %3, align 8
  %42 = getelementptr inbounds [3 x double], [3 x double]* %41, i64 2
  %43 = getelementptr inbounds [3 x double], [3 x double]* %42, i64 0, i64 0
  %44 = load double, double* %43, align 8
  store double %44, double* %11, align 8
  %45 = load [3 x double]*, [3 x double]** %3, align 8
  %46 = getelementptr inbounds [3 x double], [3 x double]* %45, i64 2
  %47 = getelementptr inbounds [3 x double], [3 x double]* %46, i64 0, i64 1
  %48 = load double, double* %47, align 8
  store double %48, double* %12, align 8
  %49 = load [3 x double]*, [3 x double]** %3, align 8
  %50 = getelementptr inbounds [3 x double], [3 x double]* %49, i64 2
  %51 = getelementptr inbounds [3 x double], [3 x double]* %50, i64 0, i64 2
  %52 = load double, double* %51, align 8
  store double %52, double* %13, align 8
  %53 = load double, double* %9, align 8
  %54 = load double, double* %13, align 8
  %55 = fmul double %53, %54
  %56 = load double, double* %12, align 8
  %57 = load double, double* %10, align 8
  %58 = fmul double %56, %57
  %59 = fsub double %55, %58
  %60 = load [3 x double]*, [3 x double]** %4, align 8
  %61 = getelementptr inbounds [3 x double], [3 x double]* %60, i64 0
  %62 = getelementptr inbounds [3 x double], [3 x double]* %61, i64 0, i64 0
  store double %59, double* %62, align 8
  %63 = load double, double* %6, align 8
  %64 = load double, double* %13, align 8
  %65 = fmul double %63, %64
  %66 = load double, double* %12, align 8
  %67 = load double, double* %7, align 8
  %68 = fmul double %66, %67
  %69 = fsub double %65, %68
  %70 = fneg double %69
  %71 = load [3 x double]*, [3 x double]** %4, align 8
  %72 = getelementptr inbounds [3 x double], [3 x double]* %71, i64 0
  %73 = getelementptr inbounds [3 x double], [3 x double]* %72, i64 0, i64 1
  store double %70, double* %73, align 8
  %74 = load double, double* %6, align 8
  %75 = load double, double* %10, align 8
  %76 = fmul double %74, %75
  %77 = load double, double* %9, align 8
  %78 = load double, double* %7, align 8
  %79 = fmul double %77, %78
  %80 = fsub double %76, %79
  %81 = load [3 x double]*, [3 x double]** %4, align 8
  %82 = getelementptr inbounds [3 x double], [3 x double]* %81, i64 0
  %83 = getelementptr inbounds [3 x double], [3 x double]* %82, i64 0, i64 2
  store double %80, double* %83, align 8
  %84 = load double, double* %8, align 8
  %85 = load double, double* %13, align 8
  %86 = fmul double %84, %85
  %87 = load double, double* %11, align 8
  %88 = load double, double* %10, align 8
  %89 = fmul double %87, %88
  %90 = fsub double %86, %89
  %91 = fneg double %90
  %92 = load [3 x double]*, [3 x double]** %4, align 8
  %93 = getelementptr inbounds [3 x double], [3 x double]* %92, i64 1
  %94 = getelementptr inbounds [3 x double], [3 x double]* %93, i64 0, i64 0
  store double %91, double* %94, align 8
  %95 = load double, double* %5, align 8
  %96 = load double, double* %13, align 8
  %97 = fmul double %95, %96
  %98 = load double, double* %11, align 8
  %99 = load double, double* %7, align 8
  %100 = fmul double %98, %99
  %101 = fsub double %97, %100
  %102 = load [3 x double]*, [3 x double]** %4, align 8
  %103 = getelementptr inbounds [3 x double], [3 x double]* %102, i64 1
  %104 = getelementptr inbounds [3 x double], [3 x double]* %103, i64 0, i64 1
  store double %101, double* %104, align 8
  %105 = load double, double* %5, align 8
  %106 = load double, double* %10, align 8
  %107 = fmul double %105, %106
  %108 = load double, double* %8, align 8
  %109 = load double, double* %7, align 8
  %110 = fmul double %108, %109
  %111 = fsub double %107, %110
  %112 = fneg double %111
  %113 = load [3 x double]*, [3 x double]** %4, align 8
  %114 = getelementptr inbounds [3 x double], [3 x double]* %113, i64 1
  %115 = getelementptr inbounds [3 x double], [3 x double]* %114, i64 0, i64 2
  store double %112, double* %115, align 8
  %116 = load double, double* %8, align 8
  %117 = load double, double* %12, align 8
  %118 = fmul double %116, %117
  %119 = load double, double* %11, align 8
  %120 = load double, double* %9, align 8
  %121 = fmul double %119, %120
  %122 = fsub double %118, %121
  %123 = load [3 x double]*, [3 x double]** %4, align 8
  %124 = getelementptr inbounds [3 x double], [3 x double]* %123, i64 2
  %125 = getelementptr inbounds [3 x double], [3 x double]* %124, i64 0, i64 0
  store double %122, double* %125, align 8
  %126 = load double, double* %5, align 8
  %127 = load double, double* %12, align 8
  %128 = fmul double %126, %127
  %129 = load double, double* %11, align 8
  %130 = load double, double* %6, align 8
  %131 = fmul double %129, %130
  %132 = fsub double %128, %131
  %133 = fneg double %132
  %134 = load [3 x double]*, [3 x double]** %4, align 8
  %135 = getelementptr inbounds [3 x double], [3 x double]* %134, i64 2
  %136 = getelementptr inbounds [3 x double], [3 x double]* %135, i64 0, i64 1
  store double %133, double* %136, align 8
  %137 = load double, double* %5, align 8
  %138 = load double, double* %9, align 8
  %139 = fmul double %137, %138
  %140 = load double, double* %8, align 8
  %141 = load double, double* %6, align 8
  %142 = fmul double %140, %141
  %143 = fsub double %139, %142
  %144 = load [3 x double]*, [3 x double]** %4, align 8
  %145 = getelementptr inbounds [3 x double], [3 x double]* %144, i64 2
  %146 = getelementptr inbounds [3 x double], [3 x double]* %145, i64 0, i64 2
  store double %143, double* %146, align 8
  %147 = load double, double* %5, align 8
  %148 = load [3 x double]*, [3 x double]** %4, align 8
  %149 = getelementptr inbounds [3 x double], [3 x double]* %148, i64 0
  %150 = getelementptr inbounds [3 x double], [3 x double]* %149, i64 0, i64 0
  %151 = load double, double* %150, align 8
  %152 = fmul double %147, %151
  %153 = load double, double* %8, align 8
  %154 = load [3 x double]*, [3 x double]** %4, align 8
  %155 = getelementptr inbounds [3 x double], [3 x double]* %154, i64 0
  %156 = getelementptr inbounds [3 x double], [3 x double]* %155, i64 0, i64 1
  %157 = load double, double* %156, align 8
  %158 = fmul double %153, %157
  %159 = fadd double %152, %158
  %160 = load double, double* %11, align 8
  %161 = load [3 x double]*, [3 x double]** %4, align 8
  %162 = getelementptr inbounds [3 x double], [3 x double]* %161, i64 0
  %163 = getelementptr inbounds [3 x double], [3 x double]* %162, i64 0, i64 2
  %164 = load double, double* %163, align 8
  %165 = fmul double %160, %164
  %166 = fadd double %159, %165
  store double %166, double* %16, align 8
  %167 = load double, double* %16, align 8
  %168 = fdiv double 1.000000e+00, %167
  store double %168, double* %16, align 8
  store i32 0, i32* %14, align 4
  br label %169

169:                                              ; preds = %191, %2
  %170 = load i32, i32* %14, align 4
  %171 = icmp slt i32 %170, 3
  br i1 %171, label %172, label %194

172:                                              ; preds = %169
  store i32 0, i32* %15, align 4
  br label %173

173:                                              ; preds = %187, %172
  %174 = load i32, i32* %15, align 4
  %175 = icmp slt i32 %174, 3
  br i1 %175, label %176, label %190

176:                                              ; preds = %173
  %177 = load double, double* %16, align 8
  %178 = load [3 x double]*, [3 x double]** %4, align 8
  %179 = load i32, i32* %14, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [3 x double], [3 x double]* %178, i64 %180
  %182 = load i32, i32* %15, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [3 x double], [3 x double]* %181, i64 0, i64 %183
  %185 = load double, double* %184, align 8
  %186 = fmul double %185, %177
  store double %186, double* %184, align 8
  br label %187

187:                                              ; preds = %176
  %188 = load i32, i32* %15, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %15, align 4
  br label %173

190:                                              ; preds = %173
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %14, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %14, align 4
  br label %169

194:                                              ; preds = %169
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
