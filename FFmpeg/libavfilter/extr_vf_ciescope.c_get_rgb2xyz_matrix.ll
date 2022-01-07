; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_ciescope.c_get_rgb2xyz_matrix.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_ciescope.c_get_rgb2xyz_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ColorSystem = type { double, double, double, double, double, double, double, double }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ColorSystem*, [3 x double]*)* @get_rgb2xyz_matrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_rgb2xyz_matrix(%struct.ColorSystem* byval(%struct.ColorSystem) align 8 %0, [3 x double]* %1) #0 {
  %3 = alloca [3 x double]*, align 8
  %4 = alloca [3 x double], align 16
  %5 = alloca [4 x double], align 16
  %6 = alloca [4 x double], align 16
  %7 = alloca i32, align 4
  store [3 x double]* %1, [3 x double]** %3, align 8
  %8 = getelementptr inbounds %struct.ColorSystem, %struct.ColorSystem* %0, i32 0, i32 0
  %9 = load double, double* %8, align 8
  %10 = getelementptr inbounds %struct.ColorSystem, %struct.ColorSystem* %0, i32 0, i32 1
  %11 = load double, double* %10, align 8
  %12 = fdiv double %9, %11
  %13 = getelementptr inbounds [4 x double], [4 x double]* %5, i64 0, i64 0
  store double %12, double* %13, align 16
  %14 = getelementptr inbounds %struct.ColorSystem, %struct.ColorSystem* %0, i32 0, i32 2
  %15 = load double, double* %14, align 8
  %16 = getelementptr inbounds %struct.ColorSystem, %struct.ColorSystem* %0, i32 0, i32 3
  %17 = load double, double* %16, align 8
  %18 = fdiv double %15, %17
  %19 = getelementptr inbounds [4 x double], [4 x double]* %5, i64 0, i64 1
  store double %18, double* %19, align 8
  %20 = getelementptr inbounds %struct.ColorSystem, %struct.ColorSystem* %0, i32 0, i32 4
  %21 = load double, double* %20, align 8
  %22 = getelementptr inbounds %struct.ColorSystem, %struct.ColorSystem* %0, i32 0, i32 5
  %23 = load double, double* %22, align 8
  %24 = fdiv double %21, %23
  %25 = getelementptr inbounds [4 x double], [4 x double]* %5, i64 0, i64 2
  store double %24, double* %25, align 16
  %26 = getelementptr inbounds %struct.ColorSystem, %struct.ColorSystem* %0, i32 0, i32 6
  %27 = load double, double* %26, align 8
  %28 = getelementptr inbounds %struct.ColorSystem, %struct.ColorSystem* %0, i32 0, i32 7
  %29 = load double, double* %28, align 8
  %30 = fdiv double %27, %29
  %31 = getelementptr inbounds [4 x double], [4 x double]* %5, i64 0, i64 3
  store double %30, double* %31, align 8
  %32 = getelementptr inbounds %struct.ColorSystem, %struct.ColorSystem* %0, i32 0, i32 0
  %33 = load double, double* %32, align 8
  %34 = fsub double 1.000000e+00, %33
  %35 = getelementptr inbounds %struct.ColorSystem, %struct.ColorSystem* %0, i32 0, i32 1
  %36 = load double, double* %35, align 8
  %37 = fsub double %34, %36
  %38 = getelementptr inbounds %struct.ColorSystem, %struct.ColorSystem* %0, i32 0, i32 1
  %39 = load double, double* %38, align 8
  %40 = fdiv double %37, %39
  %41 = getelementptr inbounds [4 x double], [4 x double]* %6, i64 0, i64 0
  store double %40, double* %41, align 16
  %42 = getelementptr inbounds %struct.ColorSystem, %struct.ColorSystem* %0, i32 0, i32 2
  %43 = load double, double* %42, align 8
  %44 = fsub double 1.000000e+00, %43
  %45 = getelementptr inbounds %struct.ColorSystem, %struct.ColorSystem* %0, i32 0, i32 3
  %46 = load double, double* %45, align 8
  %47 = fsub double %44, %46
  %48 = getelementptr inbounds %struct.ColorSystem, %struct.ColorSystem* %0, i32 0, i32 3
  %49 = load double, double* %48, align 8
  %50 = fdiv double %47, %49
  %51 = getelementptr inbounds [4 x double], [4 x double]* %6, i64 0, i64 1
  store double %50, double* %51, align 8
  %52 = getelementptr inbounds %struct.ColorSystem, %struct.ColorSystem* %0, i32 0, i32 4
  %53 = load double, double* %52, align 8
  %54 = fsub double 1.000000e+00, %53
  %55 = getelementptr inbounds %struct.ColorSystem, %struct.ColorSystem* %0, i32 0, i32 5
  %56 = load double, double* %55, align 8
  %57 = fsub double %54, %56
  %58 = getelementptr inbounds %struct.ColorSystem, %struct.ColorSystem* %0, i32 0, i32 5
  %59 = load double, double* %58, align 8
  %60 = fdiv double %57, %59
  %61 = getelementptr inbounds [4 x double], [4 x double]* %6, i64 0, i64 2
  store double %60, double* %61, align 16
  %62 = getelementptr inbounds %struct.ColorSystem, %struct.ColorSystem* %0, i32 0, i32 6
  %63 = load double, double* %62, align 8
  %64 = fsub double 1.000000e+00, %63
  %65 = getelementptr inbounds %struct.ColorSystem, %struct.ColorSystem* %0, i32 0, i32 7
  %66 = load double, double* %65, align 8
  %67 = fsub double %64, %66
  %68 = getelementptr inbounds %struct.ColorSystem, %struct.ColorSystem* %0, i32 0, i32 7
  %69 = load double, double* %68, align 8
  %70 = fdiv double %67, %69
  %71 = getelementptr inbounds [4 x double], [4 x double]* %6, i64 0, i64 3
  store double %70, double* %71, align 8
  store i32 0, i32* %7, align 4
  br label %72

72:                                               ; preds = %99, %2
  %73 = load i32, i32* %7, align 4
  %74 = icmp slt i32 %73, 3
  br i1 %74, label %75, label %102

75:                                               ; preds = %72
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [4 x double], [4 x double]* %5, i64 0, i64 %77
  %79 = load double, double* %78, align 8
  %80 = load [3 x double]*, [3 x double]** %3, align 8
  %81 = getelementptr inbounds [3 x double], [3 x double]* %80, i64 0
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [3 x double], [3 x double]* %81, i64 0, i64 %83
  store double %79, double* %84, align 8
  %85 = load [3 x double]*, [3 x double]** %3, align 8
  %86 = getelementptr inbounds [3 x double], [3 x double]* %85, i64 1
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [3 x double], [3 x double]* %86, i64 0, i64 %88
  store double 1.000000e+00, double* %89, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [4 x double], [4 x double]* %6, i64 0, i64 %91
  %93 = load double, double* %92, align 8
  %94 = load [3 x double]*, [3 x double]** %3, align 8
  %95 = getelementptr inbounds [3 x double], [3 x double]* %94, i64 2
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [3 x double], [3 x double]* %95, i64 0, i64 %97
  store double %93, double* %98, align 8
  br label %99

99:                                               ; preds = %75
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %7, align 4
  br label %72

102:                                              ; preds = %72
  %103 = load [3 x double]*, [3 x double]** %3, align 8
  %104 = bitcast [3 x double]* %103 to double**
  %105 = load [3 x double]*, [3 x double]** %3, align 8
  %106 = bitcast [3 x double]* %105 to double**
  %107 = call i32 @invert_matrix3x3(double** %104, double** %106)
  store i32 0, i32* %7, align 4
  br label %108

108:                                              ; preds = %142, %102
  %109 = load i32, i32* %7, align 4
  %110 = icmp slt i32 %109, 3
  br i1 %110, label %111, label %145

111:                                              ; preds = %108
  %112 = load [3 x double]*, [3 x double]** %3, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [3 x double], [3 x double]* %112, i64 %114
  %116 = getelementptr inbounds [3 x double], [3 x double]* %115, i64 0, i64 0
  %117 = load double, double* %116, align 8
  %118 = getelementptr inbounds [4 x double], [4 x double]* %5, i64 0, i64 3
  %119 = load double, double* %118, align 8
  %120 = fmul double %117, %119
  %121 = load [3 x double]*, [3 x double]** %3, align 8
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [3 x double], [3 x double]* %121, i64 %123
  %125 = getelementptr inbounds [3 x double], [3 x double]* %124, i64 0, i64 1
  %126 = load double, double* %125, align 8
  %127 = fmul double %126, 1.000000e+00
  %128 = fadd double %120, %127
  %129 = load [3 x double]*, [3 x double]** %3, align 8
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [3 x double], [3 x double]* %129, i64 %131
  %133 = getelementptr inbounds [3 x double], [3 x double]* %132, i64 0, i64 2
  %134 = load double, double* %133, align 8
  %135 = getelementptr inbounds [4 x double], [4 x double]* %6, i64 0, i64 3
  %136 = load double, double* %135, align 8
  %137 = fmul double %134, %136
  %138 = fadd double %128, %137
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 %140
  store double %138, double* %141, align 8
  br label %142

142:                                              ; preds = %111
  %143 = load i32, i32* %7, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %7, align 4
  br label %108

145:                                              ; preds = %108
  store i32 0, i32* %7, align 4
  br label %146

146:                                              ; preds = %188, %145
  %147 = load i32, i32* %7, align 4
  %148 = icmp slt i32 %147, 3
  br i1 %148, label %149, label %191

149:                                              ; preds = %146
  %150 = load i32, i32* %7, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 %151
  %153 = load double, double* %152, align 8
  %154 = load i32, i32* %7, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [4 x double], [4 x double]* %5, i64 0, i64 %155
  %157 = load double, double* %156, align 8
  %158 = fmul double %153, %157
  %159 = load [3 x double]*, [3 x double]** %3, align 8
  %160 = getelementptr inbounds [3 x double], [3 x double]* %159, i64 0
  %161 = load i32, i32* %7, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [3 x double], [3 x double]* %160, i64 0, i64 %162
  store double %158, double* %163, align 8
  %164 = load i32, i32* %7, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 %165
  %167 = load double, double* %166, align 8
  %168 = fmul double %167, 1.000000e+00
  %169 = load [3 x double]*, [3 x double]** %3, align 8
  %170 = getelementptr inbounds [3 x double], [3 x double]* %169, i64 1
  %171 = load i32, i32* %7, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [3 x double], [3 x double]* %170, i64 0, i64 %172
  store double %168, double* %173, align 8
  %174 = load i32, i32* %7, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 %175
  %177 = load double, double* %176, align 8
  %178 = load i32, i32* %7, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [4 x double], [4 x double]* %6, i64 0, i64 %179
  %181 = load double, double* %180, align 8
  %182 = fmul double %177, %181
  %183 = load [3 x double]*, [3 x double]** %3, align 8
  %184 = getelementptr inbounds [3 x double], [3 x double]* %183, i64 2
  %185 = load i32, i32* %7, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [3 x double], [3 x double]* %184, i64 0, i64 %186
  store double %182, double* %187, align 8
  br label %188

188:                                              ; preds = %149
  %189 = load i32, i32* %7, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %7, align 4
  br label %146

191:                                              ; preds = %146
  ret void
}

declare dso_local i32 @invert_matrix3x3(double**, double**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
