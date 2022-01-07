; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_detector.c_print_imagenet_detections.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_detector.c_print_imagenet_detections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { double*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"%d %d %f %f %f %f %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_imagenet_detections(i32* %0, i32 %1, %struct.TYPE_5__* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
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
  %21 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %22

22:                                               ; preds = %169, %7
  %23 = load i32, i32* %15, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %172

26:                                               ; preds = %22
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %28 = load i32, i32* %15, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sitofp i32 %33 to double
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %36 = load i32, i32* %15, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sitofp i32 %41 to double
  %43 = fdiv double %42, 2.000000e+00
  %44 = fsub double %34, %43
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
  %64 = fptrunc double %63 to float
  store float %64, float* %18, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %66 = load i32, i32* %15, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = sitofp i32 %71 to double
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %74 = load i32, i32* %15, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = sitofp i32 %79 to double
  %81 = fdiv double %80, 2.000000e+00
  %82 = fsub double %72, %81
  %83 = fptrunc double %82 to float
  store float %83, float* %19, align 4
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %85 = load i32, i32* %15, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = sitofp i32 %90 to double
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %93 = load i32, i32* %15, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = sitofp i32 %98 to double
  %100 = fdiv double %99, 2.000000e+00
  %101 = fadd double %91, %100
  %102 = fptrunc double %101 to float
  store float %102, float* %20, align 4
  %103 = load float, float* %17, align 4
  %104 = fcmp olt float %103, 0.000000e+00
  br i1 %104, label %105, label %106

105:                                              ; preds = %26
  store float 0.000000e+00, float* %17, align 4
  br label %106

106:                                              ; preds = %105, %26
  %107 = load float, float* %19, align 4
  %108 = fcmp olt float %107, 0.000000e+00
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  store float 0.000000e+00, float* %19, align 4
  br label %110

110:                                              ; preds = %109, %106
  %111 = load float, float* %18, align 4
  %112 = load i32, i32* %13, align 4
  %113 = sitofp i32 %112 to float
  %114 = fcmp ogt float %111, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load i32, i32* %13, align 4
  %117 = sitofp i32 %116 to float
  store float %117, float* %18, align 4
  br label %118

118:                                              ; preds = %115, %110
  %119 = load float, float* %20, align 4
  %120 = load i32, i32* %14, align 4
  %121 = sitofp i32 %120 to float
  %122 = fcmp ogt float %119, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = load i32, i32* %14, align 4
  %125 = sitofp i32 %124 to float
  store float %125, float* %20, align 4
  br label %126

126:                                              ; preds = %123, %118
  store i32 0, i32* %16, align 4
  br label %127

127:                                              ; preds = %165, %126
  %128 = load i32, i32* %16, align 4
  %129 = load i32, i32* %12, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %168

131:                                              ; preds = %127
  %132 = load i32, i32* %16, align 4
  store i32 %132, i32* %21, align 4
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %134 = load i32, i32* %15, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load double*, double** %137, align 8
  %139 = load i32, i32* %21, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds double, double* %138, i64 %140
  %142 = load double, double* %141, align 8
  %143 = fcmp une double %142, 0.000000e+00
  br i1 %143, label %144, label %164

144:                                              ; preds = %131
  %145 = load i32*, i32** %8, align 8
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* %16, align 4
  %148 = add nsw i32 %147, 1
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %150 = load i32, i32* %15, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = load double*, double** %153, align 8
  %155 = load i32, i32* %21, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds double, double* %154, i64 %156
  %158 = load double, double* %157, align 8
  %159 = load float, float* %17, align 4
  %160 = load float, float* %19, align 4
  %161 = load float, float* %18, align 4
  %162 = load float, float* %20, align 4
  %163 = call i32 @fprintf(i32* %145, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %146, i32 %148, double %158, float %159, float %160, float %161, float %162)
  br label %164

164:                                              ; preds = %144, %131
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %16, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %16, align 4
  br label %127

168:                                              ; preds = %127
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %15, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %15, align 4
  br label %22

172:                                              ; preds = %22
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, i32, i32, double, float, float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
