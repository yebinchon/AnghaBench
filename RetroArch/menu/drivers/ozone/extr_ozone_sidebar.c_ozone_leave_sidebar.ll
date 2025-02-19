; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/ozone/extr_ozone_sidebar.c_ozone_leave_sidebar.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/ozone/extr_ozone_sidebar.c_ozone_leave_sidebar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__, i32, i32, i64 }
%struct.TYPE_6__ = type { float }
%struct.menu_animation_ctx_entry = type { float*, i64, float, i32*, i32, i32, i32* }

@ANIMATION_CURSOR_DURATION = common dso_local global i32 0, align 4
@EASING_OUT_QUAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ozone_leave_sidebar(%struct.TYPE_7__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.menu_animation_ctx_entry, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 5
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %45

11:                                               ; preds = %2
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = call i32 @ozone_update_content_metadata(%struct.TYPE_7__* %12)
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  store i32 0, i32* %25, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store float 0.000000e+00, float* %28, align 8
  %29 = getelementptr inbounds %struct.menu_animation_ctx_entry, %struct.menu_animation_ctx_entry* %5, i32 0, i32 6
  store i32* null, i32** %29, align 8
  %30 = load i32, i32* @ANIMATION_CURSOR_DURATION, align 4
  %31 = getelementptr inbounds %struct.menu_animation_ctx_entry, %struct.menu_animation_ctx_entry* %5, i32 0, i32 5
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @EASING_OUT_QUAD, align 4
  %33 = getelementptr inbounds %struct.menu_animation_ctx_entry, %struct.menu_animation_ctx_entry* %5, i32 0, i32 4
  store i32 %32, i32* %33, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.menu_animation_ctx_entry, %struct.menu_animation_ctx_entry* %5, i32 0, i32 0
  store float* %36, float** %37, align 8
  %38 = load i64, i64* %4, align 8
  %39 = getelementptr inbounds %struct.menu_animation_ctx_entry, %struct.menu_animation_ctx_entry* %5, i32 0, i32 1
  store i64 %38, i64* %39, align 8
  %40 = getelementptr inbounds %struct.menu_animation_ctx_entry, %struct.menu_animation_ctx_entry* %5, i32 0, i32 2
  store float 1.000000e+00, float* %40, align 8
  %41 = getelementptr inbounds %struct.menu_animation_ctx_entry, %struct.menu_animation_ctx_entry* %5, i32 0, i32 3
  store i32* null, i32** %41, align 8
  %42 = call i32 @menu_animation_push(%struct.menu_animation_ctx_entry* %5)
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %44 = call i32 @ozone_sidebar_update_collapse(%struct.TYPE_7__* %43, i32 1)
  br label %45

45:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @ozone_update_content_metadata(%struct.TYPE_7__*) #1

declare dso_local i32 @menu_animation_push(%struct.menu_animation_ctx_entry*) #1

declare dso_local i32 @ozone_sidebar_update_collapse(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
