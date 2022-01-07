; ModuleID = '/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_mconf.c_handle_exit.c'
source_filename = "/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_mconf.c_handle_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@save_and_exit = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [97 x i8] c"Do you wish to save your new configuration?\0A(Press <ESC><ESC> to continue kernel configuration.)\00", align 1
@saved_x = common dso_local global i32 0, align 4
@saved_y = common dso_local global i32 0, align 4
@filename = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [89 x i8] c"\0A\0AError while writing of the configuration.\0AYour configuration changes were NOT saved.\0A\0A\00", align 1
@silent = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"IDF_CMAKE\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"Ready to use CMake (or 'idf.py build') to build the project.\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"Execute 'make' to start the build or try 'make help'.\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"\0A\0A*** End of the configuration.\0A*** %s\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"\0A\0AYour configuration changes were NOT saved.\0A\0A\00", align 1
@KEY_ESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @handle_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_exit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i32 1, i32* @save_and_exit, align 4
  %5 = call i32 (...) @reset_subtitle()
  %6 = call i32 (...) @dialog_clear()
  %7 = call i64 (...) @conf_get_changed()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = call i8* @_(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @dialog_yesno(i32* null, i8* %10, i32 6, i32 60)
  store i32 %11, i32* %2, align 4
  br label %13

12:                                               ; preds = %0
  store i32 -1, i32* %2, align 4
  br label %13

13:                                               ; preds = %12, %9
  %14 = load i32, i32* @saved_x, align 4
  %15 = load i32, i32* @saved_y, align 4
  %16 = call i32 @end_dialog(i32 %14, i32 %15)
  %17 = load i32, i32* %2, align 4
  switch i32 %17, label %49 [
    i32 0, label %18
    i32 -1, label %27
  ]

18:                                               ; preds = %13
  %19 = load i32, i32* @filename, align 4
  %20 = call i32 @conf_write(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* @stderr, align 4
  %24 = call i8* @_(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i32 @fprintf(i32 %23, i8* %24)
  store i32 1, i32* %1, align 4
  br label %64

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %13, %26
  %28 = load i32, i32* @silent, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %48, label %30

30:                                               ; preds = %27
  %31 = call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i8* %31, i8** %3, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load i8*, i8** %3, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 121
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = call i8* @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0))
  store i8* %41, i8** %4, align 8
  br label %44

42:                                               ; preds = %34, %30
  %43 = call i8* @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  store i8* %43, i8** %4, align 8
  br label %44

44:                                               ; preds = %42, %40
  %45 = call i8* @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 @printf(i8* %45, i8* %46)
  br label %48

48:                                               ; preds = %44, %27
  store i32 0, i32* %2, align 4
  br label %62

49:                                               ; preds = %13
  %50 = load i32, i32* @silent, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* @stderr, align 4
  %54 = call i8* @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0))
  %55 = call i32 @fprintf(i32 %53, i8* %54)
  br label %56

56:                                               ; preds = %52, %49
  %57 = load i32, i32* %2, align 4
  %58 = load i32, i32* @KEY_ESC, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %56
  br label %62

62:                                               ; preds = %61, %48
  %63 = load i32, i32* %2, align 4
  store i32 %63, i32* %1, align 4
  br label %64

64:                                               ; preds = %62, %22
  %65 = load i32, i32* %1, align 4
  ret i32 %65
}

declare dso_local i32 @reset_subtitle(...) #1

declare dso_local i32 @dialog_clear(...) #1

declare dso_local i64 @conf_get_changed(...) #1

declare dso_local i32 @dialog_yesno(i32*, i8*, i32, i32) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @end_dialog(i32, i32) #1

declare dso_local i32 @conf_write(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
