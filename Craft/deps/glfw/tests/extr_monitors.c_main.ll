; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_monitors.c_main.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_monitors.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LIST_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"th\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@TEST_MODE = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@error_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* @LIST_MODE, align 4
  store i32 %11, i32* %9, align 4
  br label %12

12:                                               ; preds = %29, %2
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = call i32 @getopt(i32 %13, i8** %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %6, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %30

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %25 [
    i32 104, label %19
    i32 116, label %23
  ]

19:                                               ; preds = %17
  %20 = call i32 (...) @usage()
  %21 = load i32, i32* @EXIT_SUCCESS, align 4
  %22 = call i32 @exit(i32 %21) #3
  unreachable

23:                                               ; preds = %17
  %24 = load i32, i32* @TEST_MODE, align 4
  store i32 %24, i32* %9, align 4
  br label %29

25:                                               ; preds = %17
  %26 = call i32 (...) @usage()
  %27 = load i32, i32* @EXIT_FAILURE, align 4
  %28 = call i32 @exit(i32 %27) #3
  unreachable

29:                                               ; preds = %23
  br label %12

30:                                               ; preds = %12
  %31 = load i32, i32* @error_callback, align 4
  %32 = call i32 @glfwSetErrorCallback(i32 %31)
  %33 = call i32 (...) @glfwInit()
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @EXIT_FAILURE, align 4
  %37 = call i32 @exit(i32 %36) #3
  unreachable

38:                                               ; preds = %30
  %39 = call i32** @glfwGetMonitors(i32* %8)
  store i32** %39, i32*** %10, align 8
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %68, %38
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %71

44:                                               ; preds = %40
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @LIST_MODE, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load i32**, i32*** %10, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @list_modes(i32* %53)
  br label %67

55:                                               ; preds = %44
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @TEST_MODE, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load i32**, i32*** %10, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32*, i32** %60, i64 %62
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @test_modes(i32* %64)
  br label %66

66:                                               ; preds = %59, %55
  br label %67

67:                                               ; preds = %66, %48
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %40

71:                                               ; preds = %40
  %72 = call i32 (...) @glfwTerminate()
  %73 = load i32, i32* @EXIT_SUCCESS, align 4
  %74 = call i32 @exit(i32 %73) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @glfwSetErrorCallback(i32) #1

declare dso_local i32 @glfwInit(...) #1

declare dso_local i32** @glfwGetMonitors(i32*) #1

declare dso_local i32 @list_modes(i32*) #1

declare dso_local i32 @test_modes(i32*) #1

declare dso_local i32 @glfwTerminate(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
