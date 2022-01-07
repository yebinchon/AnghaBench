; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/ozone/extr_ozone_sidebar.c_ozone_sidebar_update_collapse.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/ozone/extr_ozone_sidebar.c_ozone_sidebar_update_collapse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_13__, %struct.TYPE_12__, i64 }
%struct.TYPE_13__ = type { float, float, float }
%struct.TYPE_12__ = type { float }
%struct.TYPE_14__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.menu_animation_ctx_entry = type { i64, float*, float, i32 (%struct.TYPE_15__*)*, i32, %struct.TYPE_15__*, i32 }

@EASING_OUT_QUAD = common dso_local global i32 0, align 4
@ANIMATION_CURSOR_DURATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ozone_sidebar_update_collapse(%struct.TYPE_15__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.menu_animation_ctx_entry, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = call %struct.TYPE_14__* (...) @config_get_ptr()
  store %struct.TYPE_14__* %9, %struct.TYPE_14__** %5, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %11 = call i32 @ozone_is_playlist(%struct.TYPE_15__* %10, i32 0)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = ptrtoint i32* %13 to i64
  store i64 %14, i64* %7, align 8
  %15 = load i32, i32* @EASING_OUT_QUAD, align 4
  %16 = getelementptr inbounds %struct.menu_animation_ctx_entry, %struct.menu_animation_ctx_entry* %8, i32 0, i32 6
  store i32 %15, i32* %16, align 8
  %17 = load i64, i64* %7, align 8
  %18 = getelementptr inbounds %struct.menu_animation_ctx_entry, %struct.menu_animation_ctx_entry* %8, i32 0, i32 0
  store i64 %17, i64* %18, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %20 = getelementptr inbounds %struct.menu_animation_ctx_entry, %struct.menu_animation_ctx_entry* %8, i32 0, i32 5
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %20, align 8
  %21 = load i32, i32* @ANIMATION_CURSOR_DURATION, align 4
  %22 = getelementptr inbounds %struct.menu_animation_ctx_entry, %struct.menu_animation_ctx_entry* %8, i32 0, i32 4
  store i32 %21, i32* %22, align 8
  %23 = call i32 @menu_animation_kill_by_tag(i64* %7)
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %72

32:                                               ; preds = %29
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %72, label %37

37:                                               ; preds = %32, %2
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.menu_animation_ctx_entry, %struct.menu_animation_ctx_entry* %8, i32 0, i32 3
  store i32 (%struct.TYPE_15__*)* @ozone_sidebar_collapse_end, i32 (%struct.TYPE_15__*)** %41, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.menu_animation_ctx_entry, %struct.menu_animation_ctx_entry* %8, i32 0, i32 1
  store float* %44, float** %45, align 8
  %46 = getelementptr inbounds %struct.menu_animation_ctx_entry, %struct.menu_animation_ctx_entry* %8, i32 0, i32 2
  store float 0.000000e+00, float* %46, align 8
  %47 = call i32 @menu_animation_push(%struct.menu_animation_ctx_entry* %8)
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.menu_animation_ctx_entry, %struct.menu_animation_ctx_entry* %8, i32 0, i32 1
  store float* %50, float** %51, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  %55 = load float, float* %54, align 4
  %56 = getelementptr inbounds %struct.menu_animation_ctx_entry, %struct.menu_animation_ctx_entry* %8, i32 0, i32 2
  store float %55, float* %56, align 8
  %57 = call i32 @menu_animation_push(%struct.menu_animation_ctx_entry* %8)
  br label %71

58:                                               ; preds = %37
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  store float 0.000000e+00, float* %61, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  %65 = load float, float* %64, align 4
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  store float %65, float* %68, align 4
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %70 = call i32 @ozone_sidebar_collapse_end(%struct.TYPE_15__* %69)
  br label %71

71:                                               ; preds = %58, %40
  br label %124

72:                                               ; preds = %32, %29
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %123, label %80

80:                                               ; preds = %77
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %123, label %86

86:                                               ; preds = %80, %72
  %87 = load i32, i32* %4, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %109

89:                                               ; preds = %86
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  store i32 0, i32* %91, align 8
  %92 = getelementptr inbounds %struct.menu_animation_ctx_entry, %struct.menu_animation_ctx_entry* %8, i32 0, i32 3
  store i32 (%struct.TYPE_15__*)* null, i32 (%struct.TYPE_15__*)** %92, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.menu_animation_ctx_entry, %struct.menu_animation_ctx_entry* %8, i32 0, i32 1
  store float* %95, float** %96, align 8
  %97 = getelementptr inbounds %struct.menu_animation_ctx_entry, %struct.menu_animation_ctx_entry* %8, i32 0, i32 2
  store float 1.000000e+00, float* %97, align 8
  %98 = call i32 @menu_animation_push(%struct.menu_animation_ctx_entry* %8)
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.menu_animation_ctx_entry, %struct.menu_animation_ctx_entry* %8, i32 0, i32 1
  store float* %101, float** %102, align 8
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 2
  %106 = load float, float* %105, align 4
  %107 = getelementptr inbounds %struct.menu_animation_ctx_entry, %struct.menu_animation_ctx_entry* %8, i32 0, i32 2
  store float %106, float* %107, align 8
  %108 = call i32 @menu_animation_push(%struct.menu_animation_ctx_entry* %8)
  br label %122

109:                                              ; preds = %86
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  store float 1.000000e+00, float* %112, align 8
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 2
  %116 = load float, float* %115, align 4
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 0
  store float %116, float* %119, align 4
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  store i32 0, i32* %121, align 8
  br label %122

122:                                              ; preds = %109, %89
  br label %123

123:                                              ; preds = %122, %80, %77
  br label %124

124:                                              ; preds = %123, %71
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* %4, align 4
  %128 = call i32 @ozone_entries_update_thumbnail_bar(%struct.TYPE_15__* %125, i32 %126, i32 %127)
  ret void
}

declare dso_local %struct.TYPE_14__* @config_get_ptr(...) #1

declare dso_local i32 @ozone_is_playlist(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @menu_animation_kill_by_tag(i64*) #1

declare dso_local i32 @ozone_sidebar_collapse_end(%struct.TYPE_15__*) #1

declare dso_local i32 @menu_animation_push(%struct.menu_animation_ctx_entry*) #1

declare dso_local i32 @ozone_entries_update_thumbnail_bar(%struct.TYPE_15__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
