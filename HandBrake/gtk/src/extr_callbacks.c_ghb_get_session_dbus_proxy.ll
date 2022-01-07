; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_callbacks.c_ghb_get_session_dbus_proxy.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_callbacks.c_ghb_get_session_dbus_proxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [29 x i8] c"ghb_get_session_dbus_proxy()\00", align 1
@G_BUS_TYPE_SESSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"DBUS cannot connect: %s\00", align 1
@G_DBUS_PROXY_FLAGS_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Could not get DBUS proxy: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*)* @ghb_get_session_dbus_proxy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ghb_get_session_dbus_proxy(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %10, align 8
  %11 = call i32 @g_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @G_BUS_TYPE_SESSION, align 4
  %13 = call i32* @g_bus_get_sync(i32 %12, i32* null, %struct.TYPE_4__** %10)
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @g_warning(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32* %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %25 = call i32 @g_error_free(%struct.TYPE_4__* %24)
  br label %26

26:                                               ; preds = %19, %16
  store i32* null, i32** %4, align 8
  br label %43

27:                                               ; preds = %3
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* @G_DBUS_PROXY_FLAGS_NONE, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = call i32* @g_dbus_proxy_new_sync(i32* %28, i32 %29, i32* null, i32* %30, i32* %31, i32* %32, i32* null, i32* null)
  store i32* %33, i32** %9, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @g_warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32* %37)
  br label %39

39:                                               ; preds = %36, %27
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @g_object_unref(i32* %40)
  %42 = load i32*, i32** %9, align 8
  store i32* %42, i32** %4, align 8
  br label %43

43:                                               ; preds = %39, %26
  %44 = load i32*, i32** %4, align 8
  ret i32* %44
}

declare dso_local i32 @g_debug(i8*) #1

declare dso_local i32* @g_bus_get_sync(i32, i32*, %struct.TYPE_4__**) #1

declare dso_local i32 @g_warning(i8*, i32*) #1

declare dso_local i32 @g_error_free(%struct.TYPE_4__*) #1

declare dso_local i32* @g_dbus_proxy_new_sync(i32*, i32, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @g_object_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
