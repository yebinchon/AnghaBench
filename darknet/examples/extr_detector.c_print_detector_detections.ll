; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_detector.c_print_detector_detections.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_detector.c_print_detector_detections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { double*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"%s %f %f %f %f %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_detector_detections(i32** %0, i8* %1, %struct.TYPE_5__* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  store i32** %0, i32*** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %21

21:                                               ; preds = %173, %7
  %22 = load i32, i32* %15, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %176

25:                                               ; preds = %21
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %27 = load i32, i32* %15, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sitofp i32 %32 to double
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %35 = load i32, i32* %15, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sitofp i32 %40 to double
  %42 = fdiv double %41, 2.000000e+00
  %43 = fsub double %33, %42
  %44 = fadd double %43, 1.000000e+00
  %45 = fptrunc double %44 to float
  store float %45, float* %17, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %47 = load i32, i32* %15, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sitofp i32 %52 to double
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %55 = load i32, i32* %15, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sitofp i32 %60 to double
  %62 = fdiv double %61, 2.000000e+00
  %63 = fadd double %53, %62
  %64 = fadd double %63, 1.000000e+00
  %65 = fptrunc double %64 to float
  store float %65, float* %18, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %67 = load i32, i32* %15, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = sitofp i32 %72 to double
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %75 = load i32, i32* %15, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = sitofp i32 %80 to double
  %82 = fdiv double %81, 2.000000e+00
  %83 = fsub double %73, %82
  %84 = fadd double %83, 1.000000e+00
  %85 = fptrunc double %84 to float
  store float %85, float* %19, align 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %87 = load i32, i32* %15, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = sitofp i32 %92 to double
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %95 = load i32, i32* %15, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = sitofp i32 %100 to double
  %102 = fdiv double %101, 2.000000e+00
  %103 = fadd double %93, %102
  %104 = fadd double %103, 1.000000e+00
  %105 = fptrunc double %104 to float
  store float %105, float* %20, align 4
  %106 = load float, float* %17, align 4
  %107 = fcmp olt float %106, 1.000000e+00
  br i1 %107, label %108, label %109

108:                                              ; preds = %25
  store float 1.000000e+00, float* %17, align 4
  br label %109

109:                                              ; preds = %108, %25
  %110 = load float, float* %19, align 4
  %111 = fcmp olt float %110, 1.000000e+00
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  store float 1.000000e+00, float* %19, align 4
  br label %113

113:                                              ; preds = %112, %109
  %114 = load float, float* %18, align 4
  %115 = load i32, i32* %13, align 4
  %116 = sitofp i32 %115 to float
  %117 = fcmp ogt float %114, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load i32, i32* %13, align 4
  %120 = sitofp i32 %119 to float
  store float %120, float* %18, align 4
  br label %121

121:                                              ; preds = %118, %113
  %122 = load float, float* %20, align 4
  %123 = load i32, i32* %14, align 4
  %124 = sitofp i32 %123 to float
  %125 = fcmp ogt float %122, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load i32, i32* %14, align 4
  %128 = sitofp i32 %127 to float
  store float %128, float* %20, align 4
  br label %129

129:                                              ; preds = %126, %121
  store i32 0, i32* %16, align 4
  br label %130

130:                                              ; preds = %169, %129
  %131 = load i32, i32* %16, align 4
  %132 = load i32, i32* %12, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %172

134:                                              ; preds = %130
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %136 = load i32, i32* %15, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load double*, double** %139, align 8
  %141 = load i32, i32* %16, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds double, double* %140, i64 %142
  %144 = load double, double* %143, align 8
  %145 = fcmp une double %144, 0.000000e+00
  br i1 %145, label %146, label %168

146:                                              ; preds = %134
  %147 = load i32**, i32*** %8, align 8
  %148 = load i32, i32* %16, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32*, i32** %147, i64 %149
  %151 = load i32*, i32** %150, align 8
  %152 = load i8*, i8** %9, align 8
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %154 = load i32, i32* %15, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 0
  %158 = load double*, double** %157, align 8
  %159 = load i32, i32* %16, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds double, double* %158, i64 %160
  %162 = load double, double* %161, align 8
  %163 = load float, float* %17, align 4
  %164 = load float, float* %19, align 4
  %165 = load float, float* %18, align 4
  %166 = load float, float* %20, align 4
  %167 = call i32 @fprintf(i32* %151, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %152, double %162, float %163, float %164, float %165, float %166)
  br label %168

168:                                              ; preds = %146, %134
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %16, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %16, align 4
  br label %130

172:                                              ; preds = %130
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %15, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %15, align 4
  br label %21

176:                                              ; preds = %21
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, i8*, double, float, float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
