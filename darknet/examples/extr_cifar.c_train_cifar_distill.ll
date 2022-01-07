; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_cifar.c_train_cifar_distill.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_cifar.c_train_cifar_distill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { double, double, double, i32*, i32 }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Learning Rate: %g, Momentum: %g, Decay: %g\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"/home/pjreddie/backup/\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"data/cifar/labels.txt\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"results/ensemble.csv\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"%ld, %.3f: %f, %f avg, %f rate, %lf seconds, %ld images\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"%s/%s_%d.weights\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"%s/%s.backup\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"%s/%s.weights\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @train_cifar_distill(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca float, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_13__, align 4
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca i64, align 8
  %17 = alloca float, align 4
  %18 = alloca [256 x i8], align 16
  %19 = alloca [256 x i8], align 16
  %20 = alloca [256 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %21 = call i32 @time(i32 0)
  %22 = call i32 @srand(i32 %21)
  store float -1.000000e+00, float* %5, align 4
  %23 = load i8*, i8** %3, align 8
  %24 = call i8* @basecfg(i8* %23)
  store i8* %24, i8** %6, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load i8*, i8** %3, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call %struct.TYPE_12__* @load_network(i8* %27, i8* %28, i32 0)
  store %struct.TYPE_12__* %29, %struct.TYPE_12__** %7, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load double, double* %31, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = load double, double* %34, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 2
  %38 = load double, double* %37, align 8
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), double %32, double %35, double %38)
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  store i32 10, i32* %9, align 4
  store i32 50000, i32* %10, align 4
  %40 = call i8** @get_labels(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  store i8** %40, i8*** %11, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %10, align 4
  %46 = sdiv i32 %44, %45
  store i32 %46, i32* %12, align 4
  %47 = call i32 (...) @load_all_cifar10()
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = call i32 @csv_to_matrix(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  store i32 %49, i32* %14, align 4
  store float 0x3FECCCCCC0000000, float* %15, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load float, float* %15, align 4
  %52 = fptosi float %51 to i32
  %53 = call i32 @scale_matrix(i32 %50, i32 %52)
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load float, float* %15, align 4
  %57 = fpext float %56 to double
  %58 = fsub double 1.000000e+00, %57
  %59 = fptosi double %58 to i32
  %60 = call i32 @scale_matrix(i32 %55, i32 %59)
  %61 = load i32, i32* %14, align 4
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @matrix_add_matrix(i32 %61, i32 %63)
  br label %65

65:                                               ; preds = %160, %2
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %67 = call i32 @get_current_batch(%struct.TYPE_12__* %66)
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %77, label %72

72:                                               ; preds = %65
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 0
  br label %77

77:                                               ; preds = %72, %65
  %78 = phi i1 [ true, %65 ], [ %76, %72 ]
  br i1 %78, label %79, label %161

79:                                               ; preds = %77
  %80 = call i64 (...) @clock()
  store i64 %80, i64* %16, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call float @train_network_sgd(%struct.TYPE_12__* %81, i32 %83, i32 1)
  store float %84, float* %17, align 4
  %85 = load float, float* %5, align 4
  %86 = fcmp oeq float %85, -1.000000e+00
  br i1 %86, label %87, label %89

87:                                               ; preds = %79
  %88 = load float, float* %17, align 4
  store float %88, float* %5, align 4
  br label %89

89:                                               ; preds = %87, %79
  %90 = load float, float* %5, align 4
  %91 = fpext float %90 to double
  %92 = fmul double %91, 0x3FEE666666666666
  %93 = load float, float* %17, align 4
  %94 = fpext float %93 to double
  %95 = fmul double %94, 5.000000e-02
  %96 = fadd double %92, %95
  %97 = fptrunc double %96 to float
  store float %97, float* %5, align 4
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %99 = call i32 @get_current_batch(%struct.TYPE_12__* %98)
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 3
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %102, align 4
  %104 = sitofp i32 %103 to float
  %105 = load i32, i32* %10, align 4
  %106 = sitofp i32 %105 to float
  %107 = fdiv float %104, %106
  %108 = fpext float %107 to double
  %109 = load float, float* %17, align 4
  %110 = fpext float %109 to double
  %111 = load float, float* %5, align 4
  %112 = fpext float %111 to double
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %114 = call i32 @get_current_rate(%struct.TYPE_12__* %113)
  %115 = call i64 (...) @clock()
  %116 = load i64, i64* %16, align 8
  %117 = sub nsw i64 %115, %116
  %118 = call i32 @sec(i64 %117)
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 3
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %121, align 4
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i32 %99, double %108, double %110, double %112, i32 %114, i32 %118, i32 %122)
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 3
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %10, align 4
  %129 = sdiv i32 %127, %128
  %130 = load i32, i32* %12, align 4
  %131 = icmp sgt i32 %129, %130
  br i1 %131, label %132, label %147

132:                                              ; preds = %89
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 3
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %10, align 4
  %138 = sdiv i32 %136, %137
  store i32 %138, i32* %12, align 4
  %139 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 0
  %140 = load i8*, i8** %8, align 8
  %141 = load i8*, i8** %6, align 8
  %142 = load i32, i32* %12, align 4
  %143 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %139, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* %140, i8* %141, i32 %142)
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %145 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 0
  %146 = call i32 @save_weights(%struct.TYPE_12__* %144, i8* %145)
  br label %147

147:                                              ; preds = %132, %89
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %149 = call i32 @get_current_batch(%struct.TYPE_12__* %148)
  %150 = srem i32 %149, 100
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %147
  %153 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  %154 = load i8*, i8** %8, align 8
  %155 = load i8*, i8** %6, align 8
  %156 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %153, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* %154, i8* %155)
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %158 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  %159 = call i32 @save_weights(%struct.TYPE_12__* %157, i8* %158)
  br label %160

160:                                              ; preds = %152, %147
  br label %65

161:                                              ; preds = %77
  %162 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 0
  %163 = load i8*, i8** %8, align 8
  %164 = load i8*, i8** %6, align 8
  %165 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %162, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* %163, i8* %164)
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %167 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 0
  %168 = call i32 @save_weights(%struct.TYPE_12__* %166, i8* %167)
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %170 = call i32 @free_network(%struct.TYPE_12__* %169)
  %171 = load i8**, i8*** %11, align 8
  %172 = load i32, i32* %9, align 4
  %173 = call i32 @free_ptrs(i8** %171, i32 %172)
  %174 = load i8*, i8** %6, align 8
  %175 = call i32 @free(i8* %174)
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @free_data(i32 %177)
  ret void
}

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @time(i32) #1

declare dso_local i8* @basecfg(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.TYPE_12__* @load_network(i8*, i8*, i32) #1

declare dso_local i8** @get_labels(i8*) #1

declare dso_local i32 @load_all_cifar10(...) #1

declare dso_local i32 @csv_to_matrix(i8*) #1

declare dso_local i32 @scale_matrix(i32, i32) #1

declare dso_local i32 @matrix_add_matrix(i32, i32) #1

declare dso_local i32 @get_current_batch(%struct.TYPE_12__*) #1

declare dso_local i64 @clock(...) #1

declare dso_local float @train_network_sgd(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @get_current_rate(%struct.TYPE_12__*) #1

declare dso_local i32 @sec(i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @save_weights(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @free_network(%struct.TYPE_12__*) #1

declare dso_local i32 @free_ptrs(i8**, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @free_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
