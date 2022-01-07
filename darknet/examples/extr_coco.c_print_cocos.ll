; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_coco.c_print_cocos.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_coco.c_print_cocos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { double*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [73 x i8] c"{\22image_id\22:%d, \22category_id\22:%d, \22bbox\22:[%f, %f, %f, %f], \22score\22:%f},\0A\00", align 1
@coco_ids = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.TYPE_5__*, i32, i32, i32, i32)* @print_cocos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_cocos(i32* %0, i32 %1, %struct.TYPE_5__* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
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
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %25

25:                                               ; preds = %182, %7
  %26 = load i32, i32* %15, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %185

29:                                               ; preds = %25
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %31 = load i32, i32* %15, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sitofp i32 %36 to double
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %39 = load i32, i32* %15, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sitofp i32 %44 to double
  %46 = fdiv double %45, 2.000000e+00
  %47 = fsub double %37, %46
  %48 = fptrunc double %47 to float
  store float %48, float* %17, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %50 = load i32, i32* %15, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sitofp i32 %55 to double
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %58 = load i32, i32* %15, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sitofp i32 %63 to double
  %65 = fdiv double %64, 2.000000e+00
  %66 = fadd double %56, %65
  %67 = fptrunc double %66 to float
  store float %67, float* %18, align 4
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %69 = load i32, i32* %15, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = sitofp i32 %74 to double
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %77 = load i32, i32* %15, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = sitofp i32 %82 to double
  %84 = fdiv double %83, 2.000000e+00
  %85 = fsub double %75, %84
  %86 = fptrunc double %85 to float
  store float %86, float* %19, align 4
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %88 = load i32, i32* %15, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = sitofp i32 %93 to double
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %96 = load i32, i32* %15, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = sitofp i32 %101 to double
  %103 = fdiv double %102, 2.000000e+00
  %104 = fadd double %94, %103
  %105 = fptrunc double %104 to float
  store float %105, float* %20, align 4
  %106 = load float, float* %17, align 4
  %107 = fcmp olt float %106, 0.000000e+00
  br i1 %107, label %108, label %109

108:                                              ; preds = %29
  store float 0.000000e+00, float* %17, align 4
  br label %109

109:                                              ; preds = %108, %29
  %110 = load float, float* %19, align 4
  %111 = fcmp olt float %110, 0.000000e+00
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  store float 0.000000e+00, float* %19, align 4
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
  %130 = load float, float* %17, align 4
  store float %130, float* %21, align 4
  %131 = load float, float* %19, align 4
  store float %131, float* %22, align 4
  %132 = load float, float* %18, align 4
  %133 = load float, float* %17, align 4
  %134 = fsub float %132, %133
  store float %134, float* %23, align 4
  %135 = load float, float* %20, align 4
  %136 = load float, float* %19, align 4
  %137 = fsub float %135, %136
  store float %137, float* %24, align 4
  store i32 0, i32* %16, align 4
  br label %138

138:                                              ; preds = %178, %129
  %139 = load i32, i32* %16, align 4
  %140 = load i32, i32* %12, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %181

142:                                              ; preds = %138
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %144 = load i32, i32* %15, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = load double*, double** %147, align 8
  %149 = load i32, i32* %16, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds double, double* %148, i64 %150
  %152 = load double, double* %151, align 8
  %153 = fcmp une double %152, 0.000000e+00
  br i1 %153, label %154, label %177

154:                                              ; preds = %142
  %155 = load i32*, i32** %8, align 8
  %156 = load i32, i32* %9, align 4
  %157 = load i32*, i32** @coco_ids, align 8
  %158 = load i32, i32* %16, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = load float, float* %21, align 4
  %163 = load float, float* %22, align 4
  %164 = load float, float* %23, align 4
  %165 = load float, float* %24, align 4
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %167 = load i32, i32* %15, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  %171 = load double*, double** %170, align 8
  %172 = load i32, i32* %16, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds double, double* %171, i64 %173
  %175 = load double, double* %174, align 8
  %176 = call i32 @fprintf(i32* %155, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %156, i32 %161, float %162, float %163, float %164, float %165, double %175)
  br label %177

177:                                              ; preds = %154, %142
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %16, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %16, align 4
  br label %138

181:                                              ; preds = %138
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %15, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %15, align 4
  br label %25

185:                                              ; preds = %25
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, i32, i32, float, float, float, float, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
