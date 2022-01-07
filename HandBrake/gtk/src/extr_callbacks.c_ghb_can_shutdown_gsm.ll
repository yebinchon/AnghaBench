; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_callbacks.c_ghb_can_shutdown_gsm.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_callbacks.c_ghb_can_shutdown_gsm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@GPM_DBUS_SM_SERVICE = common dso_local global i32 0, align 4
@GPM_DBUS_SM_PATH = common dso_local global i32 0, align 4
@GPM_DBUS_SM_INTERFACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"CanShutdown\00", align 1
@G_DBUS_CALL_FLAGS_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"(b)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ghb_can_shutdown_gsm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ghb_can_shutdown_gsm() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = load i32, i32* @FALSE, align 4
  store i32 %6, i32* %2, align 4
  store i32* null, i32** %4, align 8
  %7 = load i32, i32* @GPM_DBUS_SM_SERVICE, align 4
  %8 = load i32, i32* @GPM_DBUS_SM_PATH, align 4
  %9 = load i32, i32* @GPM_DBUS_SM_INTERFACE, align 4
  %10 = call i32* @ghb_get_session_dbus_proxy(i32 %7, i32 %8, i32 %9)
  store i32* %10, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %1, align 4
  br label %39

15:                                               ; preds = %0
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* @G_DBUS_CALL_FLAGS_NONE, align 4
  %18 = call i32* @g_dbus_proxy_call_sync(i32* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* null, i32 %17, i32 -1, i32* null, i32** %4)
  store i32* %18, i32** %5, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @G_OBJECT(i32* %19)
  %21 = call i32 @g_object_unref(i32 %20)
  %22 = load i32*, i32** %5, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %15
  %25 = load i32*, i32** %4, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @g_error_free(i32* %28)
  br label %30

30:                                               ; preds = %27, %24
  %31 = call i32 (...) @ghb_can_shutdown_gpm()
  store i32 %31, i32* %2, align 4
  br label %37

32:                                               ; preds = %15
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @g_variant_get(i32* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %2)
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @g_variant_unref(i32* %35)
  br label %37

37:                                               ; preds = %32, %30
  %38 = load i32, i32* %2, align 4
  store i32 %38, i32* %1, align 4
  br label %39

39:                                               ; preds = %37, %13
  %40 = load i32, i32* %1, align 4
  ret i32 %40
}

declare dso_local i32* @ghb_get_session_dbus_proxy(i32, i32, i32) #1

declare dso_local i32* @g_dbus_proxy_call_sync(i32*, i8*, i32*, i32, i32, i32*, i32**) #1

declare dso_local i32 @g_object_unref(i32) #1

declare dso_local i32 @G_OBJECT(i32*) #1

declare dso_local i32 @g_error_free(i32*) #1

declare dso_local i32 @ghb_can_shutdown_gpm(...) #1

declare dso_local i32 @g_variant_get(i32*, i8*, i32*) #1

declare dso_local i32 @g_variant_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
