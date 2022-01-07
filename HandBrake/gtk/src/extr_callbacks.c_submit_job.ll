; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_callbacks.c_submit_job.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_callbacks.c_submit_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"submit_job\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"uiSettings\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"preset_modified\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"PresetFullName\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Custom \00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"Modified \00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"%s%sPreset: %s\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"job_status\00", align 1
@GHB_QUEUE_RUNNING = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [4 x i8] c"Job\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"job_unique_id\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"job_start_time\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*)* @submit_job to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @submit_job(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32* %1, i32** %4, align 8
  %14 = call i32 @g_debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %15 = load i32*, i32** %4, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %65

18:                                               ; preds = %2
  %19 = load i32*, i32** %4, align 8
  %20 = call i32* @ghb_dict_get(i32* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32* %20, i32** %8, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = call i64 @ghb_dict_get_bool(i32* %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i64 %22, i64* %9, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = call i8* @ghb_dict_get_string(i32* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  store i8* %24, i8** %7, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @ghb_dict_get_int(i32* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %27 = icmp eq i32 %26, 1
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  store i8* %29, i8** %5, align 8
  %30 = load i64, i64* %9, align 8
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  store i8* %33, i8** %6, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @ghb_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* %34, i8* %35, i8* %36)
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* @GHB_QUEUE_RUNNING, align 4
  %40 = call i32 @ghb_dict_set_int(i32* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @start_new_log(%struct.TYPE_5__* %41, i32* %42)
  %44 = load i32*, i32** %4, align 8
  %45 = call i32* @ghb_dict_get(i32* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  store i32* %45, i32** %10, align 8
  %46 = call i32 (...) @ghb_queue_handle()
  %47 = load i32*, i32** %10, align 8
  %48 = call i32 @ghb_add_job(i32 %46, i32* %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @ghb_dict_set_int(i32* %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %50)
  %52 = call i32 @time(i32* null)
  store i32 %52, i32* %12, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @ghb_dict_set_int(i32* %53, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 %54)
  %56 = call i32 (...) @ghb_start_queue()
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @ghb_find_queue_job(i32 %59, i32 %60, i32* null)
  store i32 %61, i32* %13, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @ghb_queue_progress_set_visible(%struct.TYPE_5__* %62, i32 %63, i32 1)
  br label %65

65:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @g_debug(i8*) #1

declare dso_local i32* @ghb_dict_get(i32*, i8*) #1

declare dso_local i64 @ghb_dict_get_bool(i32*, i8*) #1

declare dso_local i8* @ghb_dict_get_string(i32*, i8*) #1

declare dso_local i32 @ghb_dict_get_int(i32*, i8*) #1

declare dso_local i32 @ghb_log(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @ghb_dict_set_int(i32*, i8*, i32) #1

declare dso_local i32 @start_new_log(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @ghb_add_job(i32, i32*) #1

declare dso_local i32 @ghb_queue_handle(...) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @ghb_start_queue(...) #1

declare dso_local i32 @ghb_find_queue_job(i32, i32, i32*) #1

declare dso_local i32 @ghb_queue_progress_set_visible(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
