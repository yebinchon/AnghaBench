; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_list_switch.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_list_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64, i32, float, i32, i32, i64, i32, i32, i32 }
%struct.TYPE_18__ = type { float, i32, i32*, i32*, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }

@XMB_DELAY = common dso_local global i32 0, align 4
@EASING_OUT_QUAD = common dso_local global i32 0, align 4
@MENU_THUMBNAIL_RIGHT = common dso_local global i32 0, align 4
@MENU_THUMBNAIL_LEFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*)* @xmb_list_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmb_list_switch(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_18__, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  store i32 -1, i32* %4, align 4
  %8 = call i32* @menu_entries_get_selection_buf_ptr(i32 0)
  store i32* %8, i32** %5, align 8
  %9 = call i64 (...) @menu_navigation_get_selection()
  store i64 %9, i64* %6, align 8
  %10 = call %struct.TYPE_17__* (...) @config_get_ptr()
  store %struct.TYPE_17__* %10, %struct.TYPE_17__** %7, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  br label %19

19:                                               ; preds = %18, %1
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %26 = call i32 @xmb_list_switch_horizontal_list(%struct.TYPE_16__* %25)
  %27 = load i32, i32* @XMB_DELAY, align 4
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %3, i32 0, i32 5
  store i32 %27, i32* %28, align 4
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 3
  %31 = load float, float* %30, align 4
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = sitofp i64 %34 to float
  %36 = fneg float %35
  %37 = fmul float %31, %36
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %3, i32 0, i32 0
  store float %37, float* %38, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 9
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %3, i32 0, i32 2
  store i32* %40, i32** %41, align 8
  %42 = load i32, i32* @EASING_OUT_QUAD, align 4
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %3, i32 0, i32 4
  store i32 %42, i32* %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %3, i32 0, i32 1
  store i32 -1, i32* %44, align 4
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %3, i32 0, i32 3
  store i32* null, i32** %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %3, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %19
  %50 = call i32 @menu_animation_push(%struct.TYPE_18__* %3)
  br label %51

51:                                               ; preds = %49, %19
  store i32 -1, i32* %4, align 4
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %54, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  store i32 1, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %51
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 8
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %4, align 4
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @xmb_list_switch_old(%struct.TYPE_16__* %61, i32 %64, i32 %65, i32 %68)
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %60
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* %4, align 4
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @xmb_list_switch_new(%struct.TYPE_16__* %76, i32* %77, i32 %78, i64 %79)
  br label %81

81:                                               ; preds = %75, %60
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 8
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @MENU_THUMBNAIL_RIGHT, align 4
  %92 = call i64 @menu_thumbnail_is_enabled(i32 %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %81
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @MENU_THUMBNAIL_LEFT, align 4
  %99 = call i64 @menu_thumbnail_is_enabled(i32 %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %134

101:                                              ; preds = %94, %81
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %103 = call i32 @xmb_unload_thumbnail_textures(%struct.TYPE_16__* %102)
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 6
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %133

108:                                              ; preds = %101
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %110 = call i32 @xmb_set_thumbnail_content(%struct.TYPE_16__* %109, i32* null)
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @MENU_THUMBNAIL_RIGHT, align 4
  %115 = call i64 @menu_thumbnail_is_enabled(i32 %113, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %108
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %119 = call i32 @xmb_update_thumbnail_path(%struct.TYPE_16__* %118, i32 0, i8 signext 82)
  br label %120

120:                                              ; preds = %117, %108
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @MENU_THUMBNAIL_LEFT, align 4
  %125 = call i64 @menu_thumbnail_is_enabled(i32 %123, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %120
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %129 = call i32 @xmb_update_thumbnail_path(%struct.TYPE_16__* %128, i32 0, i8 signext 76)
  br label %130

130:                                              ; preds = %127, %120
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %132 = call i32 @xmb_update_thumbnail_image(%struct.TYPE_16__* %131)
  br label %133

133:                                              ; preds = %130, %101
  br label %134

134:                                              ; preds = %133, %94
  ret void
}

declare dso_local i32* @menu_entries_get_selection_buf_ptr(i32) #1

declare dso_local i64 @menu_navigation_get_selection(...) #1

declare dso_local %struct.TYPE_17__* @config_get_ptr(...) #1

declare dso_local i32 @xmb_list_switch_horizontal_list(%struct.TYPE_16__*) #1

declare dso_local i32 @menu_animation_push(%struct.TYPE_18__*) #1

declare dso_local i32 @xmb_list_switch_old(%struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local i32 @xmb_list_switch_new(%struct.TYPE_16__*, i32*, i32, i64) #1

declare dso_local i64 @menu_thumbnail_is_enabled(i32, i32) #1

declare dso_local i32 @xmb_unload_thumbnail_textures(%struct.TYPE_16__*) #1

declare dso_local i32 @xmb_set_thumbnail_content(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @xmb_update_thumbnail_path(%struct.TYPE_16__*, i32, i8 signext) #1

declare dso_local i32 @xmb_update_thumbnail_image(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
