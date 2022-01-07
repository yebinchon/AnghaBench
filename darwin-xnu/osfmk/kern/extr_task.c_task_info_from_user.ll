; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_task.c_task_info_from_user.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_task.c_task_info_from_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TASK_DYLD_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @task_info_from_user(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @TASK_DYLD_INFO, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @convert_port_to_task(i32 %15)
  store i32 %16, i32* %9, align 4
  br label %20

17:                                               ; preds = %4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @convert_port_to_task_name(i32 %18)
  store i32 %19, i32* %9, align 4
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @task_info(i32 %21, i32 %22, i32 %23, i32* %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @task_deallocate(i32 %26)
  %28 = load i32, i32* %10, align 4
  ret i32 %28
}

declare dso_local i32 @convert_port_to_task(i32) #1

declare dso_local i32 @convert_port_to_task_name(i32) #1

declare dso_local i32 @task_info(i32, i32, i32, i32*) #1

declare dso_local i32 @task_deallocate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
