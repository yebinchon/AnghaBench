; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_detector.c_print_cocos.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_detector.c_print_cocos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { double*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [73 x i8] c"{\22image_id\22:%d, \22category_id\22:%d, \22bbox\22:[%f, %f, %f, %f], \22score\22:%f},\0A\00", align 1
@coco_ids = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, %struct.TYPE_5__*, i32, i32, i32, i32)* @print_cocos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_cocos(i32* %0, i8* %1, %struct.TYPE_5__* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 @get_coco_image_id(i8* %26)
  store i32 %27, i32* %17, align 4
  store i32 0, i32* %15, align 4
  br label %28

28:                                               ; preds = %185, %7
  %29 = load i32, i32* %15, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %188

32:                                               ; preds = %28
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %34 = load i32, i32* %15, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sitofp i32 %39 to double
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %42 = load i32, i32* %15, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sitofp i32 %47 to double
  %49 = fdiv double %48, 2.000000e+00
  %50 = fsub double %40, %49
  %51 = fptrunc double %50 to float
  store float %51, float* %18, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %53 = load i32, i32* %15, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sitofp i32 %58 to double
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %61 = load i32, i32* %15, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sitofp i32 %66 to double
  %68 = fdiv double %67, 2.000000e+00
  %69 = fadd double %59, %68
  %70 = fptrunc double %69 to float
  store float %70, float* %19, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %72 = load i32, i32* %15, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = sitofp i32 %77 to double
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %80 = load i32, i32* %15, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = sitofp i32 %85 to double
  %87 = fdiv double %86, 2.000000e+00
  %88 = fsub double %78, %87
  %89 = fptrunc double %88 to float
  store float %89, float* %20, align 4
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %91 = load i32, i32* %15, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = sitofp i32 %96 to double
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %99 = load i32, i32* %15, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = sitofp i32 %104 to double
  %106 = fdiv double %105, 2.000000e+00
  %107 = fadd double %97, %106
  %108 = fptrunc double %107 to float
  store float %108, float* %21, align 4
  %109 = load float, float* %18, align 4
  %110 = fcmp olt float %109, 0.000000e+00
  br i1 %110, label %111, label %112

111:                                              ; preds = %32
  store float 0.000000e+00, float* %18, align 4
  br label %112

112:                                              ; preds = %111, %32
  %113 = load float, float* %20, align 4
  %114 = fcmp olt float %113, 0.000000e+00
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  store float 0.000000e+00, float* %20, align 4
  br label %116

116:                                              ; preds = %115, %112
  %117 = load float, float* %19, align 4
  %118 = load i32, i32* %13, align 4
  %119 = sitofp i32 %118 to float
  %120 = fcmp ogt float %117, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load i32, i32* %13, align 4
  %123 = sitofp i32 %122 to float
  store float %123, float* %19, align 4
  br label %124

124:                                              ; preds = %121, %116
  %125 = load float, float* %21, align 4
  %126 = load i32, i32* %14, align 4
  %127 = sitofp i32 %126 to float
  %128 = fcmp ogt float %125, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load i32, i32* %14, align 4
  %131 = sitofp i32 %130 to float
  store float %131, float* %21, align 4
  br label %132

132:                                              ; preds = %129, %124
  %133 = load float, float* %18, align 4
  store float %133, float* %22, align 4
  %134 = load float, float* %20, align 4
  store float %134, float* %23, align 4
  %135 = load float, float* %19, align 4
  %136 = load float, float* %18, align 4
  %137 = fsub float %135, %136
  store float %137, float* %24, align 4
  %138 = load float, float* %21, align 4
  %139 = load float, float* %20, align 4
  %140 = fsub float %138, %139
  store float %140, float* %25, align 4
  store i32 0, i32* %16, align 4
  br label %141

141:                                              ; preds = %181, %132
  %142 = load i32, i32* %16, align 4
  %143 = load i32, i32* %12, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %184

145:                                              ; preds = %141
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %147 = load i32, i32* %15, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = load double*, double** %150, align 8
  %152 = load i32, i32* %16, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds double, double* %151, i64 %153
  %155 = load double, double* %154, align 8
  %156 = fcmp une double %155, 0.000000e+00
  br i1 %156, label %157, label %180

157:                                              ; preds = %145
  %158 = load i32*, i32** %8, align 8
  %159 = load i32, i32* %17, align 4
  %160 = load i32*, i32** @coco_ids, align 8
  %161 = load i32, i32* %16, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = load float, float* %22, align 4
  %166 = load float, float* %23, align 4
  %167 = load float, float* %24, align 4
  %168 = load float, float* %25, align 4
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %170 = load i32, i32* %15, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  %174 = load double*, double** %173, align 8
  %175 = load i32, i32* %16, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds double, double* %174, i64 %176
  %178 = load double, double* %177, align 8
  %179 = call i32 @fprintf(i32* %158, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %159, i32 %164, float %165, float %166, float %167, float %168, double %178)
  br label %180

180:                                              ; preds = %157, %145
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %16, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %16, align 4
  br label %141

184:                                              ; preds = %141
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %15, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %15, align 4
  br label %28

188:                                              ; preds = %28
  ret void
}

declare dso_local i32 @get_coco_image_id(i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, i32, i32, float, float, float, float, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
