; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_dice.c_validate_dice.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_dice.c_validate_dice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }

@dice_labels = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [24 x i8] c"data/dice/dice.val.list\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Validation Accuracy: %f, %d images\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @validate_dice(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_9__, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = call i64 @parse_network_cfg(i8* %12)
  %14 = bitcast %struct.TYPE_9__* %5 to i64*
  store i64 %13, i64* %14, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @load_weights(%struct.TYPE_9__* %5, i8* %18)
  br label %20

20:                                               ; preds = %17, %2
  %21 = call i32 @time(i32 0)
  %22 = call i32 @srand(i32 %21)
  %23 = load i8**, i8*** @dice_labels, align 8
  store i8** %23, i8*** %6, align 8
  %24 = call %struct.TYPE_10__* @get_paths(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %7, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %26 = call i64 @list_to_array(%struct.TYPE_10__* %25)
  %27 = inttoptr i64 %26 to i8**
  store i8** %27, i8*** %8, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %32 = call i32 @free_list(%struct.TYPE_10__* %31)
  %33 = load i8**, i8*** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i8**, i8*** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @load_data_old(i8** %33, i32 %34, i32 0, i8** %35, i32 6, i32 %37, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = bitcast %struct.TYPE_9__* %5 to i64*
  %43 = load i64, i64* %42, align 4
  %44 = call float* @network_accuracies(i64 %43, i32 %41, i32 2)
  store float* %44, float** %11, align 8
  %45 = load float*, float** %11, align 8
  %46 = getelementptr inbounds float, float* %45, i64 0
  %47 = load float, float* %46, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), float %47, i32 %48)
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @free_data(i32 %50)
  ret void
}

declare dso_local i64 @parse_network_cfg(i8*) #1

declare dso_local i32 @load_weights(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @time(i32) #1

declare dso_local %struct.TYPE_10__* @get_paths(i8*) #1

declare dso_local i64 @list_to_array(%struct.TYPE_10__*) #1

declare dso_local i32 @free_list(%struct.TYPE_10__*) #1

declare dso_local i32 @load_data_old(i8**, i32, i32, i8**, i32, i32, i32) #1

declare dso_local float* @network_accuracies(i64, i32, i32) #1

declare dso_local i32 @printf(i8*, float, i32) #1

declare dso_local i32 @free_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
