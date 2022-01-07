; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_queuehandler.c_ghb_queue_update_status.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_queuehandler.c_ghb_queue_update_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"uiSettings\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"job_status\00", align 1
@GHB_QUEUE_RUNNING = common dso_local global i64 0, align 8
@GHB_QUEUE_PENDING = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ghb_queue_update_status(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ghb_array_len(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %3
  br label %58

21:                                               ; preds = %16
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32* @ghb_array_get(i32 %24, i32 %25)
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %58

30:                                               ; preds = %21
  %31 = load i32*, i32** %8, align 8
  %32 = call i32* @ghb_dict_get(i32* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32* %32, i32** %9, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %58

36:                                               ; preds = %30
  %37 = load i32*, i32** %9, align 8
  %38 = call i64 @ghb_dict_get_int(i32* %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i64, i64* @GHB_QUEUE_RUNNING, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %58

42:                                               ; preds = %36
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @GHB_QUEUE_PENDING, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @FALSE, align 4
  %50 = call i32 @ghb_queue_progress_set_visible(%struct.TYPE_5__* %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %46, %42
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @ghb_dict_set_int(i32* %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @ghb_queue_update_status_icon(%struct.TYPE_5__* %55, i32 %56)
  br label %58

58:                                               ; preds = %51, %41, %35, %29, %20
  ret void
}

declare dso_local i32 @ghb_array_len(i32) #1

declare dso_local i32* @ghb_array_get(i32, i32) #1

declare dso_local i32* @ghb_dict_get(i32*, i8*) #1

declare dso_local i64 @ghb_dict_get_int(i32*, i8*) #1

declare dso_local i32 @ghb_queue_progress_set_visible(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @ghb_dict_set_int(i32*, i8*, i32) #1

declare dso_local i32 @ghb_queue_update_status_icon(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
