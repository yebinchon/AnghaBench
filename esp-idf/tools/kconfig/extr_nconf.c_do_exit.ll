; ModuleID = '/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_nconf.c_do_exit.c'
source_filename = "/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_nconf.c_do_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@global_exit = common dso_local global i32 0, align 4
@main_window = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"Do you wish to save your new configuration?\0A<ESC> to cancel and resume nconfig.\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"   <save>   \00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"<don't save>\00", align 1
@KEY_EXIT = common dso_local global i32 0, align 4
@filename = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [82 x i8] c"Error during writing of configuration.\0AYour configuration changes were NOT saved.\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"<OK>\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"Your configuration changes were NOT saved.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @do_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_exit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @conf_get_changed()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  store i32 1, i32* @global_exit, align 4
  store i32 0, i32* %1, align 4
  br label %31

6:                                                ; preds = %0
  %7 = load i32, i32* @main_window, align 4
  %8 = call i32 @_(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 (i32, i32, i32, i8*, ...) @btn_dialog(i32 %7, i32 %8, i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @KEY_EXIT, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  store i32 0, i32* @global_exit, align 4
  store i32 -1, i32* %1, align 4
  br label %31

14:                                               ; preds = %6
  %15 = load i32, i32* %2, align 4
  switch i32 %15, label %26 [
    i32 0, label %16
  ]

16:                                               ; preds = %14
  %17 = load i32, i32* @filename, align 4
  %18 = call i32 @conf_write(i32 %17)
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* @main_window, align 4
  %23 = call i32 @_(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.3, i64 0, i64 0))
  %24 = call i32 (i32, i32, i32, i8*, ...) @btn_dialog(i32 %22, i32 %23, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %25

25:                                               ; preds = %21, %16
  br label %30

26:                                               ; preds = %14
  %27 = load i32, i32* @main_window, align 4
  %28 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %29 = call i32 (i32, i32, i32, i8*, ...) @btn_dialog(i32 %27, i32 %28, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %30

30:                                               ; preds = %26, %25
  store i32 1, i32* @global_exit, align 4
  store i32 0, i32* %1, align 4
  br label %31

31:                                               ; preds = %30, %13, %5
  %32 = load i32, i32* %1, align 4
  ret i32 %32
}

declare dso_local i32 @conf_get_changed(...) #1

declare dso_local i32 @btn_dialog(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @conf_write(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
