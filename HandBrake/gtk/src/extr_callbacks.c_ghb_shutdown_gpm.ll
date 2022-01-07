; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_callbacks.c_ghb_shutdown_gpm.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_callbacks.c_ghb_shutdown_gpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"ghb_shutdown_gpm()\00", align 1
@GPM_DBUS_PM_SERVICE = common dso_local global i32 0, align 4
@GPM_DBUS_PM_PATH = common dso_local global i32 0, align 4
@GPM_DBUS_PM_INTERFACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"Shutdown\00", align 1
@G_DBUS_CALL_FLAGS_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Shutdown failed: %s\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Shutdown failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ghb_shutdown_gpm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ghb_shutdown_gpm() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32*, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  %4 = call i32 @g_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @GPM_DBUS_PM_SERVICE, align 4
  %6 = load i32, i32* @GPM_DBUS_PM_PATH, align 4
  %7 = load i32, i32* @GPM_DBUS_PM_INTERFACE, align 4
  %8 = call i32* @ghb_get_session_dbus_proxy(i32 %5, i32 %6, i32 %7)
  store i32* %8, i32** %1, align 8
  %9 = load i32*, i32** %1, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  br label %38

12:                                               ; preds = %0
  %13 = load i32*, i32** %1, align 8
  %14 = load i32, i32* @G_DBUS_CALL_FLAGS_NONE, align 4
  %15 = call i32* @g_dbus_proxy_call_sync(i32* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %14, i32 -1, i32* null, %struct.TYPE_4__** %2)
  store i32* %15, i32** %3, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %12
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i8*, ...) @g_warning(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %27 = call i32 @g_error_free(%struct.TYPE_4__* %26)
  br label %30

28:                                               ; preds = %18
  %29 = call i32 (i8*, ...) @g_warning(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %21
  br label %34

31:                                               ; preds = %12
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @g_variant_unref(i32* %32)
  br label %34

34:                                               ; preds = %31, %30
  %35 = load i32*, i32** %1, align 8
  %36 = call i32 @G_OBJECT(i32* %35)
  %37 = call i32 @g_object_unref(i32 %36)
  br label %38

38:                                               ; preds = %34, %11
  ret void
}

declare dso_local i32 @g_debug(i8*) #1

declare dso_local i32* @ghb_get_session_dbus_proxy(i32, i32, i32) #1

declare dso_local i32* @g_dbus_proxy_call_sync(i32*, i8*, i32*, i32, i32, i32*, %struct.TYPE_4__**) #1

declare dso_local i32 @g_warning(i8*, ...) #1

declare dso_local i32 @g_error_free(%struct.TYPE_4__*) #1

declare dso_local i32 @g_variant_unref(i32*) #1

declare dso_local i32 @g_object_unref(i32) #1

declare dso_local i32 @G_OBJECT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
