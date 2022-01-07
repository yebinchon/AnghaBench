; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_content.c_content_set_subsystem_by_name.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_content.c_content_set_subsystem_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.retro_subsystem_info = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.retro_subsystem_info* }

@subsystem_data = common dso_local global %struct.retro_subsystem_info* null, align 8
@subsystem_current_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @content_set_subsystem_by_name(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.retro_subsystem_info*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = call %struct.TYPE_5__* (...) @runloop_get_system_info()
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %4, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %10, align 8
  %12 = icmp ne %struct.retro_subsystem_info* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %16, align 8
  store %struct.retro_subsystem_info* %17, %struct.retro_subsystem_info** %5, align 8
  br label %20

18:                                               ; preds = %1
  %19 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** @subsystem_data, align 8
  store %struct.retro_subsystem_info* %19, %struct.retro_subsystem_info** %5, align 8
  br label %20

20:                                               ; preds = %18, %13
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %36, %20
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @subsystem_current_count, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %21
  %26 = load i8*, i8** %3, align 8
  %27 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %5, align 8
  %28 = getelementptr inbounds %struct.retro_subsystem_info, %struct.retro_subsystem_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @string_is_equal(i8* %26, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @content_set_subsystem(i32 %33)
  store i32 1, i32* %2, align 4
  br label %42

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %6, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %6, align 4
  %39 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %5, align 8
  %40 = getelementptr inbounds %struct.retro_subsystem_info, %struct.retro_subsystem_info* %39, i32 1
  store %struct.retro_subsystem_info* %40, %struct.retro_subsystem_info** %5, align 8
  br label %21

41:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %32
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.TYPE_5__* @runloop_get_system_info(...) #1

declare dso_local i64 @string_is_equal(i8*, i32) #1

declare dso_local i32 @content_set_subsystem(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
