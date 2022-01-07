; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_queuehandler.c_ghb_queue_remove_row_internal.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_queuehandler.c_ghb_queue_remove_row_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"uiSettings\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"job_status\00", align 1
@GHB_QUEUE_RUNNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"job_unique_id\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"queue_list\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32)* @ghb_queue_remove_row_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ghb_queue_remove_row_internal(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ghb_array_len(i32 %17)
  %19 = icmp sge i32 %14, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %13, %2
  br label %63

21:                                               ; preds = %13
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32* @ghb_array_get(i32 %24, i32 %25)
  store i32* %26, i32** %7, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i32* @ghb_dict_get(i32* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32* %28, i32** %8, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @ghb_dict_get_int(i32* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @GHB_QUEUE_RUNNING, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %21
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = call i32 @ghb_cancel_encode2(%struct.TYPE_4__* %35, i32* null)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  br label %63

39:                                               ; preds = %34
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @ghb_dict_get_int(i32* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @ghb_remove_job(i32 %42)
  br label %44

44:                                               ; preds = %39, %21
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @ghb_array_remove(i32 %47, i32 %48)
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @GHB_WIDGET(i32 %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %54 = call i32* @GTK_LIST_BOX(i32 %53)
  store i32* %54, i32** %5, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32* @gtk_list_box_get_row_at_index(i32* %55, i32 %56)
  store i32* %57, i32** %6, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @GTK_CONTAINER(i32* %58)
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @GTK_WIDGET(i32* %60)
  %62 = call i32 @gtk_container_remove(i32 %59, i32 %61)
  br label %63

63:                                               ; preds = %44, %38, %20
  ret void
}

declare dso_local i32 @ghb_array_len(i32) #1

declare dso_local i32* @ghb_array_get(i32, i32) #1

declare dso_local i32* @ghb_dict_get(i32*, i8*) #1

declare dso_local i32 @ghb_dict_get_int(i32*, i8*) #1

declare dso_local i32 @ghb_cancel_encode2(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @ghb_remove_job(i32) #1

declare dso_local i32 @ghb_array_remove(i32, i32) #1

declare dso_local i32* @GTK_LIST_BOX(i32) #1

declare dso_local i32 @GHB_WIDGET(i32, i8*) #1

declare dso_local i32* @gtk_list_box_get_row_at_index(i32*, i32) #1

declare dso_local i32 @gtk_container_remove(i32, i32) #1

declare dso_local i32 @GTK_CONTAINER(i32*) #1

declare dso_local i32 @GTK_WIDGET(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
