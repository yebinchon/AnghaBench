; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_callbacks.c_ghb_can_suspend_gpm.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_callbacks.c_ghb_can_suspend_gpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"ghb_can_suspend_gpm()\00", align 1
@GPM_DBUS_PM_SERVICE = common dso_local global i32 0, align 4
@GPM_DBUS_PM_PATH = common dso_local global i32 0, align 4
@GPM_DBUS_PM_INTERFACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"CanSuspend\00", align 1
@G_DBUS_CALL_FLAGS_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"CanSuspend failed: %s\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"CanSuspend failed\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"(b)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ghb_can_suspend_gpm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ghb_can_suspend_gpm() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = load i32, i32* @FALSE, align 4
  store i32 %6, i32* %2, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  %7 = call i32 @g_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @GPM_DBUS_PM_SERVICE, align 4
  %9 = load i32, i32* @GPM_DBUS_PM_PATH, align 4
  %10 = load i32, i32* @GPM_DBUS_PM_INTERFACE, align 4
  %11 = call i32* @ghb_get_session_dbus_proxy(i32 %8, i32 %9, i32 %10)
  store i32* %11, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %0
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %1, align 4
  br label %46

16:                                               ; preds = %0
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* @G_DBUS_CALL_FLAGS_NONE, align 4
  %19 = call i32* @g_dbus_proxy_call_sync(i32* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %18, i32 -1, i32* null, %struct.TYPE_4__** %4)
  store i32* %19, i32** %5, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %16
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = icmp ne %struct.TYPE_4__* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i8*, ...) @g_warning(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = call i32 @g_error_free(%struct.TYPE_4__* %30)
  br label %34

32:                                               ; preds = %22
  %33 = call i32 (i8*, ...) @g_warning(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %25
  %35 = load i32, i32* @TRUE, align 4
  store i32 %35, i32* %2, align 4
  br label %41

36:                                               ; preds = %16
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @g_variant_get(i32* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32* %2)
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @g_variant_unref(i32* %39)
  br label %41

41:                                               ; preds = %36, %34
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @G_OBJECT(i32* %42)
  %44 = call i32 @g_object_unref(i32 %43)
  %45 = load i32, i32* %2, align 4
  store i32 %45, i32* %1, align 4
  br label %46

46:                                               ; preds = %41, %14
  %47 = load i32, i32* %1, align 4
  ret i32 %47
}

declare dso_local i32 @g_debug(i8*) #1

declare dso_local i32* @ghb_get_session_dbus_proxy(i32, i32, i32) #1

declare dso_local i32* @g_dbus_proxy_call_sync(i32*, i8*, i32*, i32, i32, i32*, %struct.TYPE_4__**) #1

declare dso_local i32 @g_warning(i8*, ...) #1

declare dso_local i32 @g_error_free(%struct.TYPE_4__*) #1

declare dso_local i32 @g_variant_get(i32*, i8*, i32*) #1

declare dso_local i32 @g_variant_unref(i32*) #1

declare dso_local i32 @g_object_unref(i32) #1

declare dso_local i32 @G_OBJECT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
