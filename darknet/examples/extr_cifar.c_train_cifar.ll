; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_cifar.c_train_cifar.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_cifar.c_train_cifar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { double, double, double, i32*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Learning Rate: %g, Momentum: %g, Decay: %g\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"/home/pjreddie/backup/\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"data/cifar/labels.txt\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"%ld, %.3f: %f, %f avg, %f rate, %lf seconds, %ld images\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"%s/%s_%d.weights\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"%s/%s.backup\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"%s/%s.weights\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @train_cifar(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca float, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca float, align 4
  %16 = alloca [256 x i8], align 16
  %17 = alloca [256 x i8], align 16
  %18 = alloca [256 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %19 = call i32 @time(i32 0)
  %20 = call i32 @srand(i32 %19)
  store float -1.000000e+00, float* %5, align 4
  %21 = load i8*, i8** %3, align 8
  %22 = call i8* @basecfg(i8* %21)
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = load i8*, i8** %3, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = call %struct.TYPE_8__* @load_network(i8* %25, i8* %26, i32 0)
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %7, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load double, double* %29, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load double, double* %32, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  %36 = load double, double* %35, align 8
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), double %30, double %33, double %36)
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  store i32 10, i32* %9, align 4
  store i32 50000, i32* %10, align 4
  %38 = call i8** @get_labels(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  store i8** %38, i8*** %11, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %10, align 4
  %44 = sdiv i32 %42, %43
  store i32 %44, i32* %12, align 4
  %45 = call i32 (...) @load_all_cifar10()
  store i32 %45, i32* %13, align 4
  br label %46

46:                                               ; preds = %140, %2
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %48 = call i32 @get_current_batch(%struct.TYPE_8__* %47)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %58, label %53

53:                                               ; preds = %46
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 0
  br label %58

58:                                               ; preds = %53, %46
  %59 = phi i1 [ true, %46 ], [ %57, %53 ]
  br i1 %59, label %60, label %141

60:                                               ; preds = %58
  %61 = call i64 (...) @clock()
  store i64 %61, i64* %14, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %63 = load i32, i32* %13, align 4
  %64 = call float @train_network_sgd(%struct.TYPE_8__* %62, i32 %63, i32 1)
  store float %64, float* %15, align 4
  %65 = load float, float* %5, align 4
  %66 = fcmp oeq float %65, -1.000000e+00
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load float, float* %15, align 4
  store float %68, float* %5, align 4
  br label %69

69:                                               ; preds = %67, %60
  %70 = load float, float* %5, align 4
  %71 = fpext float %70 to double
  %72 = fmul double %71, 0x3FEE666666666666
  %73 = load float, float* %15, align 4
  %74 = fpext float %73 to double
  %75 = fmul double %74, 5.000000e-02
  %76 = fadd double %72, %75
  %77 = fptrunc double %76 to float
  store float %77, float* %5, align 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %79 = call i32 @get_current_batch(%struct.TYPE_8__* %78)
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %82, align 4
  %84 = sitofp i32 %83 to float
  %85 = load i32, i32* %10, align 4
  %86 = sitofp i32 %85 to float
  %87 = fdiv float %84, %86
  %88 = fpext float %87 to double
  %89 = load float, float* %15, align 4
  %90 = fpext float %89 to double
  %91 = load float, float* %5, align 4
  %92 = fpext float %91 to double
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %94 = call i32 @get_current_rate(%struct.TYPE_8__* %93)
  %95 = call i64 (...) @clock()
  %96 = load i64, i64* %14, align 8
  %97 = sub nsw i64 %95, %96
  %98 = call i32 @sec(i64 %97)
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 3
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i32 %79, double %88, double %90, double %92, i32 %94, i32 %98, i32 %102)
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 3
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %10, align 4
  %109 = sdiv i32 %107, %108
  %110 = load i32, i32* %12, align 4
  %111 = icmp sgt i32 %109, %110
  br i1 %111, label %112, label %127

112:                                              ; preds = %69
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %10, align 4
  %118 = sdiv i32 %116, %117
  store i32 %118, i32* %12, align 4
  %119 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %120 = load i8*, i8** %8, align 8
  %121 = load i8*, i8** %6, align 8
  %122 = load i32, i32* %12, align 4
  %123 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %119, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %120, i8* %121, i32 %122)
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %125 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %126 = call i32 @save_weights(%struct.TYPE_8__* %124, i8* %125)
  br label %127

127:                                              ; preds = %112, %69
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %129 = call i32 @get_current_batch(%struct.TYPE_8__* %128)
  %130 = srem i32 %129, 100
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %127
  %133 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %134 = load i8*, i8** %8, align 8
  %135 = load i8*, i8** %6, align 8
  %136 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %133, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* %134, i8* %135)
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %138 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %139 = call i32 @save_weights(%struct.TYPE_8__* %137, i8* %138)
  br label %140

140:                                              ; preds = %132, %127
  br label %46

141:                                              ; preds = %58
  %142 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 0
  %143 = load i8*, i8** %8, align 8
  %144 = load i8*, i8** %6, align 8
  %145 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %142, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %143, i8* %144)
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %147 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 0
  %148 = call i32 @save_weights(%struct.TYPE_8__* %146, i8* %147)
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %150 = call i32 @free_network(%struct.TYPE_8__* %149)
  %151 = load i8**, i8*** %11, align 8
  %152 = load i32, i32* %9, align 4
  %153 = call i32 @free_ptrs(i8** %151, i32 %152)
  %154 = load i8*, i8** %6, align 8
  %155 = call i32 @free(i8* %154)
  %156 = load i32, i32* %13, align 4
  %157 = call i32 @free_data(i32 %156)
  ret void
}

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @time(i32) #1

declare dso_local i8* @basecfg(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.TYPE_8__* @load_network(i8*, i8*, i32) #1

declare dso_local i8** @get_labels(i8*) #1

declare dso_local i32 @load_all_cifar10(...) #1

declare dso_local i32 @get_current_batch(%struct.TYPE_8__*) #1

declare dso_local i64 @clock(...) #1

declare dso_local float @train_network_sgd(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @get_current_rate(%struct.TYPE_8__*) #1

declare dso_local i32 @sec(i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @save_weights(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @free_network(%struct.TYPE_8__*) #1

declare dso_local i32 @free_ptrs(i8**, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @free_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
