; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_autodetect.c_input_autoconfigure_reset.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_autodetect.c_input_autoconfigure_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@MAX_USERS = common dso_local global i32 0, align 4
@RARCH_BIND_LIST_END = common dso_local global i32 0, align 4
@NO_BTN = common dso_local global i32 0, align 4
@input_autoconf_binds = common dso_local global %struct.TYPE_2__** null, align 8
@AXIS_NONE = common dso_local global i32 0, align 4
@input_device_name_index = common dso_local global i64* null, align 8
@input_autoconfigured = common dso_local global i64* null, align 8
@input_autoconfigure_swap_override = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @input_autoconfigure_reset() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %45, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @MAX_USERS, align 4
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %7, label %48

7:                                                ; preds = %3
  store i32 0, i32* %2, align 4
  br label %8

8:                                                ; preds = %33, %7
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @RARCH_BIND_LIST_END, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %36

12:                                               ; preds = %8
  %13 = load i32, i32* @NO_BTN, align 4
  %14 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @input_autoconf_binds, align 8
  %15 = load i32, i32* %1, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %14, i64 %16
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %2, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i32 %13, i32* %22, align 4
  %23 = load i32, i32* @AXIS_NONE, align 4
  %24 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @input_autoconf_binds, align 8
  %25 = load i32, i32* %1, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %24, i64 %26
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %2, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %23, i32* %32, align 4
  br label %33

33:                                               ; preds = %12
  %34 = load i32, i32* %2, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %2, align 4
  br label %8

36:                                               ; preds = %8
  %37 = load i64*, i64** @input_device_name_index, align 8
  %38 = load i32, i32* %1, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  store i64 0, i64* %40, align 8
  %41 = load i64*, i64** @input_autoconfigured, align 8
  %42 = load i32, i32* %1, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %36
  %46 = load i32, i32* %1, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %1, align 4
  br label %3

48:                                               ; preds = %3
  store i32 0, i32* @input_autoconfigure_swap_override, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
