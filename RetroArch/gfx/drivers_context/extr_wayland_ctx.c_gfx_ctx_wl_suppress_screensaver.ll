; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_wayland_ctx.c_gfx_ctx_wl_suppress_screensaver.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_wayland_ctx.c_gfx_ctx_wl_suppress_screensaver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32, %struct.zwp_idle_inhibit_manager_v1* }
%struct.zwp_idle_inhibit_manager_v1 = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"[Wayland]: Enabling idle inhibitor\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"[Wayland]: Disabling the idle inhibitor\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @gfx_ctx_wl_suppress_screensaver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_ctx_wl_suppress_screensaver(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca %struct.zwp_idle_inhibit_manager_v1*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %6, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %13 = load %struct.zwp_idle_inhibit_manager_v1*, %struct.zwp_idle_inhibit_manager_v1** %12, align 8
  %14 = icmp ne %struct.zwp_idle_inhibit_manager_v1* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %51

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = icmp eq i32 %17, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %51

27:                                               ; preds = %16
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  %31 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load %struct.zwp_idle_inhibit_manager_v1*, %struct.zwp_idle_inhibit_manager_v1** %33, align 8
  store %struct.zwp_idle_inhibit_manager_v1* %34, %struct.zwp_idle_inhibit_manager_v1** %7, align 8
  %35 = load %struct.zwp_idle_inhibit_manager_v1*, %struct.zwp_idle_inhibit_manager_v1** %7, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32* @zwp_idle_inhibit_manager_v1_create_inhibitor(%struct.zwp_idle_inhibit_manager_v1* %35, i32 %38)
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32* %39, i32** %41, align 8
  br label %50

42:                                               ; preds = %27
  %43 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @zwp_idle_inhibitor_v1_destroy(i32* %46)
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32* null, i32** %49, align 8
  br label %50

50:                                               ; preds = %42, %30
  store i32 1, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %26, %15
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @RARCH_LOG(i8*) #1

declare dso_local i32* @zwp_idle_inhibit_manager_v1_create_inhibitor(%struct.zwp_idle_inhibit_manager_v1*, i32) #1

declare dso_local i32 @zwp_idle_inhibitor_v1_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
