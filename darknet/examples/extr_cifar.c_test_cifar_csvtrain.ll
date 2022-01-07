; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_cifar.c_test_cifar_csvtrain.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_cifar.c_test_cifar_csvtrain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Accuracy: %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_cifar_csvtrain(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i32* @load_network(i8* %11, i8* %12, i32 0)
  store i32* %13, i32** %5, align 8
  %14 = call i32 @time(i32 0)
  %15 = call i32 @srand(i32 %14)
  call void (%struct.TYPE_7__*, ...) @load_all_cifar10(%struct.TYPE_7__* sret %6)
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @network_predict_data(i32* %16, %struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %6)
  store i32 %17, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %35, %2
  %19 = load i32, i32* %8, align 4
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @float_to_image(i32 32, i32 32, i32 3, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @flip_image(i32 %33)
  br label %35

35:                                               ; preds = %24
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %18

38:                                               ; preds = %18
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @network_predict_data(i32* %39, %struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %6)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @scale_matrix(i32 %41, double 5.000000e-01)
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @scale_matrix(i32 %43, double 5.000000e-01)
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @matrix_add_matrix(i32 %45, i32 %46)
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @matrix_to_csv(i32 %48)
  %50 = load i32, i32* @stderr, align 4
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call double @matrix_topk_accuracy(i32 %52, i32 %53, i32 1)
  %55 = call i32 @fprintf(i32 %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), double %54)
  %56 = call i32 @free_data(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %6)
  ret void
}

declare dso_local i32* @load_network(i8*, i8*, i32) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @time(i32) #1

declare dso_local void @load_all_cifar10(%struct.TYPE_7__* sret, ...) #1

declare dso_local i32 @network_predict_data(i32*, %struct.TYPE_7__* byval(%struct.TYPE_7__) align 8) #1

declare dso_local i32 @float_to_image(i32, i32, i32, i32) #1

declare dso_local i32 @flip_image(i32) #1

declare dso_local i32 @scale_matrix(i32, double) #1

declare dso_local i32 @matrix_add_matrix(i32, i32) #1

declare dso_local i32 @matrix_to_csv(i32) #1

declare dso_local i32 @fprintf(i32, i8*, double) #1

declare dso_local double @matrix_topk_accuracy(i32, i32, i32) #1

declare dso_local i32 @free_data(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
