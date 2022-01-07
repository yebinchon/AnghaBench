; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_queuehandler.c_queue_add.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_queuehandler.c_queue_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32* }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"Job\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Title\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"uiSettings\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Preferences\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"job_status\00", align 1
@GHB_QUEUE_PENDING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"job_unique_id\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32)* @queue_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_add(%struct.TYPE_7__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @validate_settings(%struct.TYPE_7__* %12, i32* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %4, align 4
  br label %81

19:                                               ; preds = %3
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = call i32* (...) @ghb_array_new()
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store i32* %25, i32** %27, align 8
  br label %28

28:                                               ; preds = %24, %19
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @ghb_finalize_job(i32* %29)
  %31 = load i32*, i32** %6, align 8
  %32 = call i32* @ghb_get_title_settings(i32* %31)
  store i32* %32, i32** %8, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i32* @ghb_get_job_settings(i32* %33)
  store i32* %34, i32** %9, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = call i32* @ghb_value_dup(i32* %35)
  store i32* %36, i32** %10, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = call i32 @ghb_dict_remove(i32* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %39 = load i32*, i32** %10, align 8
  %40 = call i32 @ghb_dict_remove(i32* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %41 = call i32* (...) @ghb_dict_new()
  store i32* %41, i32** %11, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = call i32 @ghb_dict_set(i32* %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* %43)
  %45 = load i32*, i32** %11, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = call i32* @ghb_value_dup(i32* %46)
  %48 = call i32 @ghb_dict_set(i32* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %47)
  %49 = load i32*, i32** %11, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = call i32* @ghb_value_dup(i32* %50)
  %52 = call i32 @ghb_dict_set(i32* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %51)
  %53 = load i32*, i32** %10, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = call i32* @ghb_value_dup(i32* %56)
  %58 = call i32 @ghb_dict_set(i32* %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32* %57)
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* @GHB_QUEUE_PENDING, align 4
  %61 = call i32 @ghb_dict_set_int(i32* %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %60)
  %62 = load i32*, i32** %10, align 8
  %63 = call i32 @ghb_dict_set_int(i32* %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = call i32 @ghb_array_append(i32* %66, i32* %67)
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = call i32 @add_to_queue_list(%struct.TYPE_7__* %69, i32* %70)
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @ghb_save_queue(i32* %74)
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %77 = call i32 @ghb_update_pending(%struct.TYPE_7__* %76)
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %79 = call i32 @ghb_queue_buttons_grey(%struct.TYPE_7__* %78)
  %80 = load i32, i32* @TRUE, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %28, %17
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @validate_settings(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32* @ghb_array_new(...) #1

declare dso_local i32 @ghb_finalize_job(i32*) #1

declare dso_local i32* @ghb_get_title_settings(i32*) #1

declare dso_local i32* @ghb_get_job_settings(i32*) #1

declare dso_local i32* @ghb_value_dup(i32*) #1

declare dso_local i32 @ghb_dict_remove(i32*, i8*) #1

declare dso_local i32* @ghb_dict_new(...) #1

declare dso_local i32 @ghb_dict_set(i32*, i8*, i32*) #1

declare dso_local i32 @ghb_dict_set_int(i32*, i8*, i32) #1

declare dso_local i32 @ghb_array_append(i32*, i32*) #1

declare dso_local i32 @add_to_queue_list(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @ghb_save_queue(i32*) #1

declare dso_local i32 @ghb_update_pending(%struct.TYPE_7__*) #1

declare dso_local i32 @ghb_queue_buttons_grey(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
