; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_content.c_content_get_subsystem_friendly_name.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_content.c_content_get_subsystem_friendly_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.retro_subsystem_info = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.retro_subsystem_info* }

@subsystem_data = common dso_local global %struct.retro_subsystem_info* null, align 8
@subsystem_current_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @content_get_subsystem_friendly_name(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.retro_subsystem_info*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = call %struct.TYPE_5__* (...) @runloop_get_system_info()
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %7, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %13, align 8
  %15 = icmp ne %struct.retro_subsystem_info* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %19, align 8
  store %struct.retro_subsystem_info* %20, %struct.retro_subsystem_info** %8, align 8
  br label %23

21:                                               ; preds = %3
  %22 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** @subsystem_data, align 8
  store %struct.retro_subsystem_info* %22, %struct.retro_subsystem_info** %8, align 8
  br label %23

23:                                               ; preds = %21, %16
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %43, %23
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @subsystem_current_count, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %24
  %29 = load i8*, i8** %4, align 8
  %30 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %8, align 8
  %31 = getelementptr inbounds %struct.retro_subsystem_info, %struct.retro_subsystem_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @string_is_equal(i8* %29, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %28
  %36 = load i8*, i8** %5, align 8
  %37 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %8, align 8
  %38 = getelementptr inbounds %struct.retro_subsystem_info, %struct.retro_subsystem_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @strlcpy(i8* %36, i32 %39, i64 %40)
  br label %48

42:                                               ; preds = %28
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %9, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %9, align 4
  %46 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %8, align 8
  %47 = getelementptr inbounds %struct.retro_subsystem_info, %struct.retro_subsystem_info* %46, i32 1
  store %struct.retro_subsystem_info* %47, %struct.retro_subsystem_info** %8, align 8
  br label %24

48:                                               ; preds = %35, %24
  ret void
}

declare dso_local %struct.TYPE_5__* @runloop_get_system_info(...) #1

declare dso_local i64 @string_is_equal(i8*, i32) #1

declare dso_local i32 @strlcpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
