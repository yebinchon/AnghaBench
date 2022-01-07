; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_content.c_task_push_load_content_with_new_core_from_companion_ui.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_content.c_task_push_load_content_with_new_core_from_companion_ui.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }

@RARCH_PATH_CONTENT = common dso_local global i32 0, align 4
@RARCH_PATH_CORE = common dso_local global i32 0, align 4
@_launched_from_cli = common dso_local global i32 0, align 4
@CMD_EVENT_LOAD_CORE = common dso_local global i32 0, align 4
@RARCH_MENU_CTL_SET_PENDING_QUICK_MENU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @task_push_load_content_with_new_core_from_companion_ui(i8* %0, i8* %1, i8* %2, i32* %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %15 = call %struct.TYPE_5__* (...) @global_get_ptr()
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %14, align 8
  %16 = load i32, i32* @RARCH_PATH_CONTENT, align 4
  %17 = load i8*, i8** %9, align 8
  %18 = call i32 @path_set(i32 %16, i8* %17)
  %19 = load i32, i32* @RARCH_PATH_CORE, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @path_set(i32 %19, i8* %20)
  store i32 0, i32* @_launched_from_cli, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %23 = icmp ne %struct.TYPE_5__* %22, null
  br i1 %23, label %24, label %41

24:                                               ; preds = %6
  %25 = load i8*, i8** %10, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = call i32 @strlcpy(i8* %31, i8* %32, i32 8)
  br label %40

34:                                               ; preds = %24
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  store i8 0, i8* %39, align 1
  br label %40

40:                                               ; preds = %34, %27
  br label %41

41:                                               ; preds = %40, %6
  %42 = load i32*, i32** %11, align 8
  %43 = call i32 @task_load_content_callback(i32* %42, i32 1, i32 0)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  store i32 0, i32* %7, align 4
  br label %47

46:                                               ; preds = %41
  store i32 1, i32* %7, align 4
  br label %47

47:                                               ; preds = %46, %45
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

declare dso_local %struct.TYPE_5__* @global_get_ptr(...) #1

declare dso_local i32 @path_set(i32, i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @task_load_content_callback(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
