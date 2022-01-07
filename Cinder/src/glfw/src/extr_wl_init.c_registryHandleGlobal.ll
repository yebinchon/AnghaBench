; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_wl_init.c_registryHandleGlobal.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_wl_init.c_registryHandleGlobal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.wl_registry = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"wl_compositor\00", align 1
@_glfw = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@wl_compositor_interface = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"wl_shm\00", align 1
@wl_shm_interface = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"wl_shell\00", align 1
@wl_shell_interface = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"wl_output\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"wl_seat\00", align 1
@wl_seat_interface = common dso_local global i32 0, align 4
@seatListener = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"zwp_relative_pointer_manager_v1\00", align 1
@zwp_relative_pointer_manager_v1_interface = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"zwp_pointer_constraints_v1\00", align 1
@zwp_pointer_constraints_v1_interface = common dso_local global i32 0, align 4
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
  br i1 %13, label %14, label %21

14:                                               ; preds = %5
  %15 = load i32, i32* %10, align 4
  %16 = call i32 @min(i32 3, i32 %15)
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), align 8
  %17 = load %struct.wl_registry*, %struct.wl_registry** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), align 8
  %20 = call i8* @wl_registry_bind(%struct.wl_registry* %17, i32 %18, i32* @wl_compositor_interface, i32 %19)
  store i8* %20, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 6), align 8
  br label %81

21:                                               ; preds = %5
  %22 = load i8*, i8** %9, align 8
  %23 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load %struct.wl_registry*, %struct.wl_registry** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i8* @wl_registry_bind(%struct.wl_registry* %26, i32 %27, i32* @wl_shm_interface, i32 1)
  store i8* %28, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 5), align 8
  br label %80

29:                                               ; preds = %21
  %30 = load i8*, i8** %9, align 8
  %31 = call i64 @strcmp(i8* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load %struct.wl_registry*, %struct.wl_registry** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i8* @wl_registry_bind(%struct.wl_registry* %34, i32 %35, i32* @wl_shell_interface, i32 1)
  store i8* %36, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 4), align 8
  br label %79

37:                                               ; preds = %29
  %38 = load i8*, i8** %9, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @_glfwAddOutputWayland(i32 %42, i32 %43)
  br label %78

45:                                               ; preds = %37
  %46 = load i8*, i8** %9, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %45
  %50 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 3), align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %58, label %52

52:                                               ; preds = %49
  %53 = load %struct.wl_registry*, %struct.wl_registry** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i8* @wl_registry_bind(%struct.wl_registry* %53, i32 %54, i32* @wl_seat_interface, i32 1)
  store i8* %55, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 3), align 8
  %56 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 3), align 8
  %57 = call i32 @wl_seat_add_listener(i8* %56, i32* @seatListener, i32* null)
  br label %58

58:                                               ; preds = %52, %49
  br label %77

59:                                               ; preds = %45
  %60 = load i8*, i8** %9, align 8
  %61 = call i64 @strcmp(i8* %60, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load %struct.wl_registry*, %struct.wl_registry** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i8* @wl_registry_bind(%struct.wl_registry* %64, i32 %65, i32* @zwp_relative_pointer_manager_v1_interface, i32 1)
  store i8* %66, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 2), align 8
  br label %76

67:                                               ; preds = %59
  %68 = load i8*, i8** %9, align 8
  %69 = call i64 @strcmp(i8* %68, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load %struct.wl_registry*, %struct.wl_registry** %7, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i8* @wl_registry_bind(%struct.wl_registry* %72, i32 %73, i32* @zwp_pointer_constraints_v1_interface, i32 1)
  store i8* %74, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 1), align 8
  br label %75

75:                                               ; preds = %71, %67
  br label %76

76:                                               ; preds = %75, %63
  br label %77

77:                                               ; preds = %76, %58
  br label %78

78:                                               ; preds = %77, %41
  br label %79

79:                                               ; preds = %78, %33
  br label %80

80:                                               ; preds = %79, %25
  br label %81

81:                                               ; preds = %80, %14
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i8* @wl_registry_bind(%struct.wl_registry*, i32, i32*, i32) #1

declare dso_local i32 @_glfwAddOutputWayland(i32, i32) #1

declare dso_local i32 @wl_seat_add_listener(i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
