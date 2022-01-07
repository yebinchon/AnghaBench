; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_toggle.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_toggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, float, i32, i32*, i32, i64* }
%struct.TYPE_6__ = type { i32, i64 }

@MENU_LIST_PLAIN = common dso_local global i32 0, align 4
@XMB_DELAY = common dso_local global i32 0, align 4
@EASING_OUT_QUAD = common dso_local global i32 0, align 4
@MENU_ENTRIES_CTL_NEEDS_REFRESH = common dso_local global i32 0, align 4
@RARCH_MENU_CTL_SET_PREVENT_POPULATE = common dso_local global i32 0, align 4
@RARCH_MENU_CTL_UNSET_PREVENT_POPULATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @xmb_toggle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmb_toggle(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %7, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %11 = icmp ne %struct.TYPE_6__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %54

13:                                               ; preds = %2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %15 = load i32, i32* @MENU_LIST_PLAIN, align 4
  %16 = call i64 @xmb_list_get_size(%struct.TYPE_6__* %14, i32 %15)
  %17 = trunc i64 %16 to i32
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %13
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  br label %54

25:                                               ; preds = %13
  %26 = load i32, i32* @XMB_DELAY, align 4
  %27 = mul nsw i32 %26, 2
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32 %27, i32* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  store float 1.000000e+00, float* %29, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 5
  store i64* %31, i64** %32, align 8
  %33 = load i32, i32* @EASING_OUT_QUAD, align 4
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 4
  store i32 %33, i32* %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 2
  store i32 -1, i32* %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  store i32* null, i32** %36, align 8
  %37 = call i32 @menu_animation_push(%struct.TYPE_7__* %5)
  %38 = load i32, i32* @MENU_ENTRIES_CTL_NEEDS_REFRESH, align 4
  %39 = call i32 @menu_entries_ctl(i32 %38, i32* null)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %25
  %46 = load i32, i32* @RARCH_MENU_CTL_SET_PREVENT_POPULATE, align 4
  %47 = call i32 @menu_driver_ctl(i32 %46, i32* null)
  br label %51

48:                                               ; preds = %25
  %49 = load i32, i32* @RARCH_MENU_CTL_UNSET_PREVENT_POPULATE, align 4
  %50 = call i32 @menu_driver_ctl(i32 %49, i32* null)
  br label %51

51:                                               ; preds = %48, %45
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %53 = call i32 @xmb_toggle_horizontal_list(%struct.TYPE_6__* %52)
  br label %54

54:                                               ; preds = %51, %22, %12
  ret void
}

declare dso_local i64 @xmb_list_get_size(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @menu_animation_push(%struct.TYPE_7__*) #1

declare dso_local i32 @menu_entries_ctl(i32, i32*) #1

declare dso_local i32 @menu_driver_ctl(i32, i32*) #1

declare dso_local i32 @xmb_toggle_horizontal_list(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
