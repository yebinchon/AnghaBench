; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_glfwinfo.c_valid_version.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_glfwinfo.c_valid_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GLFW_VERSION_MAJOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"*** ERROR: GLFW major version mismatch! ***\0A\00", align 1
@GL_FALSE = common dso_local global i32 0, align 4
@GLFW_VERSION_MINOR = common dso_local global i32 0, align 4
@GLFW_VERSION_REVISION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"*** WARNING: GLFW version mismatch! ***\0A\00", align 1
@GL_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @valid_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @valid_version() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 @glfwGetVersion(i32* %2, i32* %3, i32* %4)
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @GLFW_VERSION_MAJOR, align 4
  %8 = icmp ne i32 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @GL_FALSE, align 4
  store i32 %11, i32* %1, align 4
  br label %24

12:                                               ; preds = %0
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @GLFW_VERSION_MINOR, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @GLFW_VERSION_REVISION, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16, %12
  %21 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %16
  %23 = load i32, i32* @GL_TRUE, align 4
  store i32 %23, i32* %1, align 4
  br label %24

24:                                               ; preds = %22, %9
  %25 = load i32, i32* %1, align 4
  ret i32 %25
}

declare dso_local i32 @glfwGetVersion(i32*, i32*, i32*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
