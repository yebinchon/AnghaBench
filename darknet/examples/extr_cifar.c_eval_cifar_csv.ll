; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_cifar.c_eval_cifar_csv.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_cifar.c_eval_cifar_csv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"data/cifar/cifar-10-batches-bin/test_batch.bin\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"results/combined.csv\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Accuracy: %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eval_cifar_csv() #0 {
  %1 = alloca %struct.TYPE_9__, align 4
  %2 = alloca %struct.TYPE_8__, align 4
  %3 = call i32 @load_cifar10_data(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %4 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 0
  store i32 %3, i32* %4, align 4
  %5 = call i64 @csv_to_matrix(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %6 = bitcast %struct.TYPE_8__* %2 to i64*
  store i64 %5, i64* %6, align 4
  %7 = load i32, i32* @stderr, align 4
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sitofp i32 %9 to double
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (i32, i8*, double, ...) @fprintf(i32 %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), double %10, i32 %12)
  %14 = load i32, i32* @stderr, align 4
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = bitcast %struct.TYPE_8__* %2 to i64*
  %18 = load i64, i64* %17, align 4
  %19 = call double @matrix_topk_accuracy(i32 %16, i64 %18, i32 1)
  %20 = call i32 (i32, i8*, double, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), double %19)
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @free_data(i32 %22)
  %24 = bitcast %struct.TYPE_8__* %2 to i64*
  %25 = load i64, i64* %24, align 4
  %26 = call i32 @free_matrix(i64 %25)
  ret void
}

declare dso_local i32 @load_cifar10_data(i8*) #1

declare dso_local i64 @csv_to_matrix(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, double, ...) #1

declare dso_local double @matrix_topk_accuracy(i32, i64, i32) #1

declare dso_local i32 @free_data(i32) #1

declare dso_local i32 @free_matrix(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
