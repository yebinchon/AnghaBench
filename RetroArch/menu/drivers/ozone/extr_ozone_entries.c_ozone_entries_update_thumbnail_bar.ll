; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/ozone/extr_ozone_entries.c_ozone_entries_update_thumbnail_bar.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/ozone/extr_ozone_entries.c_ozone_entries_update_thumbnail_bar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { float }
%struct.TYPE_6__ = type { float }
%struct.menu_animation_ctx_entry = type { i64, float*, float, %struct.TYPE_8__*, i32 (%struct.TYPE_8__*)*, i32, i32 }

@ANIMATION_CURSOR_DURATION = common dso_local global i32 0, align 4
@EASING_OUT_QUAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ozone_entries_update_thumbnail_bar(%struct.TYPE_8__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.menu_animation_ctx_entry, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = ptrtoint i32* %10 to i64
  store i64 %11, i64* %8, align 8
  %12 = load i32, i32* @ANIMATION_CURSOR_DURATION, align 4
  %13 = getelementptr inbounds %struct.menu_animation_ctx_entry, %struct.menu_animation_ctx_entry* %7, i32 0, i32 6
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @EASING_OUT_QUAD, align 4
  %15 = getelementptr inbounds %struct.menu_animation_ctx_entry, %struct.menu_animation_ctx_entry* %7, i32 0, i32 5
  store i32 %14, i32* %15, align 8
  %16 = load i64, i64* %8, align 8
  %17 = getelementptr inbounds %struct.menu_animation_ctx_entry, %struct.menu_animation_ctx_entry* %7, i32 0, i32 0
  store i64 %16, i64* %17, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.menu_animation_ctx_entry, %struct.menu_animation_ctx_entry* %7, i32 0, i32 1
  store float* %20, float** %21, align 8
  %22 = call i32 @menu_animation_kill_by_tag(i64* %8)
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %65

25:                                               ; preds = %3
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %65, label %30

30:                                               ; preds = %25
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %65, label %35

35:                                               ; preds = %30
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %65

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %40
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  %46 = getelementptr inbounds %struct.menu_animation_ctx_entry, %struct.menu_animation_ctx_entry* %7, i32 0, i32 4
  store i32 (%struct.TYPE_8__*)* null, i32 (%struct.TYPE_8__*)** %46, align 8
  %47 = getelementptr inbounds %struct.menu_animation_ctx_entry, %struct.menu_animation_ctx_entry* %7, i32 0, i32 3
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %47, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load float, float* %50, align 4
  %52 = getelementptr inbounds %struct.menu_animation_ctx_entry, %struct.menu_animation_ctx_entry* %7, i32 0, i32 2
  store float %51, float* %52, align 8
  %53 = call i32 @menu_animation_push(%struct.menu_animation_ctx_entry* %7)
  br label %64

54:                                               ; preds = %40
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load float, float* %57, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  store float %58, float* %61, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  store i32 1, i32* %63, align 4
  br label %64

64:                                               ; preds = %54, %43
  br label %81

65:                                               ; preds = %35, %30, %25, %3
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.menu_animation_ctx_entry, %struct.menu_animation_ctx_entry* %7, i32 0, i32 4
  store i32 (%struct.TYPE_8__*)* @ozone_thumbnail_bar_hide_end, i32 (%struct.TYPE_8__*)** %69, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %71 = getelementptr inbounds %struct.menu_animation_ctx_entry, %struct.menu_animation_ctx_entry* %7, i32 0, i32 3
  store %struct.TYPE_8__* %70, %struct.TYPE_8__** %71, align 8
  %72 = getelementptr inbounds %struct.menu_animation_ctx_entry, %struct.menu_animation_ctx_entry* %7, i32 0, i32 2
  store float 0.000000e+00, float* %72, align 8
  %73 = call i32 @menu_animation_push(%struct.menu_animation_ctx_entry* %7)
  br label %80

74:                                               ; preds = %65
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  store float 0.000000e+00, float* %77, align 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %79 = call i32 @ozone_thumbnail_bar_hide_end(%struct.TYPE_8__* %78)
  br label %80

80:                                               ; preds = %74, %68
  br label %81

81:                                               ; preds = %80, %64
  ret void
}

declare dso_local i32 @menu_animation_kill_by_tag(i64*) #1

declare dso_local i32 @menu_animation_push(%struct.menu_animation_ctx_entry*) #1

declare dso_local i32 @ozone_thumbnail_bar_hide_end(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
