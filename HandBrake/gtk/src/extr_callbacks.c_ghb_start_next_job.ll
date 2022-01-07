; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_callbacks.c_ghb_start_next_job.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_callbacks.c_ghb_start_next_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"start_next_job\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"progressbar\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"uiSettings\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"job_status\00", align 1
@GHB_QUEUE_PENDING = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"SkipDiskFreeCheck\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ghb_start_next_job(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %9 = call i32 @g_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32* @GHB_WIDGET(i32 %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = call i32 @gtk_widget_show(i32* %14)
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @ghb_array_len(i32 %18)
  store i64 %19, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %20

20:                                               ; preds = %46, %1
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* %3, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %49

24:                                               ; preds = %20
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %4, align 8
  %29 = call i32* @ghb_array_get(i32 %27, i64 %28)
  store i32* %29, i32** %5, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = call i32* @ghb_dict_get(i32* %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32* %31, i32** %6, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = call i64 @ghb_dict_get_int(i32* %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @GHB_QUEUE_PENDING, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %24
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %39 = call i32 @ghb_inhibit_suspend(%struct.TYPE_8__* %38)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @submit_job(%struct.TYPE_8__* %40, i32* %41)
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %44 = call i32 @ghb_update_pending(%struct.TYPE_8__* %43)
  br label %63

45:                                               ; preds = %24
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %4, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %4, align 8
  br label %20

49:                                               ; preds = %20
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %51 = call i32 @ghb_uninhibit_suspend(%struct.TYPE_8__* %50)
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %53 = call i32 @ghb_notify_done(%struct.TYPE_8__* %52)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %55 = call i32 @ghb_update_pending(%struct.TYPE_8__* %54)
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @gtk_widget_hide(i32* %56)
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @FALSE, align 4
  %62 = call i32 @ghb_dict_set_bool(i32 %60, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %49, %37
  ret void
}

declare dso_local i32 @g_debug(i8*) #1

declare dso_local i32* @GHB_WIDGET(i32, i8*) #1

declare dso_local i32 @gtk_widget_show(i32*) #1

declare dso_local i64 @ghb_array_len(i32) #1

declare dso_local i32* @ghb_array_get(i32, i64) #1

declare dso_local i32* @ghb_dict_get(i32*, i8*) #1

declare dso_local i64 @ghb_dict_get_int(i32*, i8*) #1

declare dso_local i32 @ghb_inhibit_suspend(%struct.TYPE_8__*) #1

declare dso_local i32 @submit_job(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @ghb_update_pending(%struct.TYPE_8__*) #1

declare dso_local i32 @ghb_uninhibit_suspend(%struct.TYPE_8__*) #1

declare dso_local i32 @ghb_notify_done(%struct.TYPE_8__*) #1

declare dso_local i32 @gtk_widget_hide(i32*) #1

declare dso_local i32 @ghb_dict_set_bool(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
