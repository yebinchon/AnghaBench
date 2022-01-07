; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_wl_init.c_registryHandleGlobal.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_wl_init.c_registryHandleGlobal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8* }
%struct.wl_registry = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"wl_compositor\00", align 1
@wl_compositor_interface = common dso_local global i32 0, align 4
@_glfw = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"wl_shm\00", align 1
@wl_shm_interface = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"wl_shell\00", align 1
@wl_shell_interface = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"wl_output\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"wl_seat\00", align 1
@wl_seat_interface = common dso_local global i32 0, align 4
@seatListener = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_registry*, i32, i8*, i32)* @registryHandleGlobal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @registryHandleGlobal(i8* %0, %struct.wl_registry* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wl_registry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.wl_registry* %1, %struct.wl_registry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i8*, i8** %9, align 8
  %12 = call i64 @strcmp(i8* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %5
  %15 = load %struct.wl_registry*, %struct.wl_registry** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i8* @wl_registry_bind(%struct.wl_registry* %15, i32 %16, i32* @wl_compositor_interface, i32 1)
  store i8* %17, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 3), align 8
  br label %60

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8
  %20 = call i64 @strcmp(i8* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load %struct.wl_registry*, %struct.wl_registry** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i8* @wl_registry_bind(%struct.wl_registry* %23, i32 %24, i32* @wl_shm_interface, i32 1)
  store i8* %25, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 2), align 8
  br label %59

26:                                               ; preds = %18
  %27 = load i8*, i8** %9, align 8
  %28 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load %struct.wl_registry*, %struct.wl_registry** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i8* @wl_registry_bind(%struct.wl_registry* %31, i32 %32, i32* @wl_shell_interface, i32 1)
  store i8* %33, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 1), align 8
  br label %58

34:                                               ; preds = %26
  %35 = load i8*, i8** %9, align 8
  %36 = call i64 @strcmp(i8* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @_glfwAddOutput(i32 %39, i32 %40)
  br label %57

42:                                               ; preds = %34
  %43 = load i8*, i8** %9, align 8
  %44 = call i64 @strcmp(i8* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %42
  %47 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %46
  %50 = load %struct.wl_registry*, %struct.wl_registry** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i8* @wl_registry_bind(%struct.wl_registry* %50, i32 %51, i32* @wl_seat_interface, i32 1)
  store i8* %52, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), align 8
  %53 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), align 8
  %54 = call i32 @wl_seat_add_listener(i8* %53, i32* @seatListener, i32* null)
  br label %55

55:                                               ; preds = %49, %46
  br label %56

56:                                               ; preds = %55, %42
  br label %57

57:                                               ; preds = %56, %38
  br label %58

58:                                               ; preds = %57, %30
  br label %59

59:                                               ; preds = %58, %22
  br label %60

60:                                               ; preds = %59, %14
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @wl_registry_bind(%struct.wl_registry*, i32, i32*, i32) #1

declare dso_local i32 @_glfwAddOutput(i32, i32) #1

declare dso_local i32 @wl_seat_add_listener(i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
