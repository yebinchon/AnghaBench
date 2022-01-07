; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_list_switch.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_list_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i64, i32, float, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { float, i32, i32*, i32*, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_20__ = type { i32 }

@STRIPES_DELAY = common dso_local global i32 0, align 4
@EASING_OUT_QUAD = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*)* @stripes_list_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stripes_list_switch(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca %struct.TYPE_21__, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_20__, align 4
  %9 = alloca %struct.TYPE_20__, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  store i32 -1, i32* %4, align 4
  %10 = call i32* @menu_entries_get_selection_buf_ptr(i32 0)
  store i32* %10, i32** %5, align 8
  %11 = call i64 (...) @menu_navigation_get_selection()
  store i64 %11, i64* %6, align 8
  %12 = call %struct.TYPE_19__* (...) @config_get_ptr()
  store %struct.TYPE_19__* %12, %struct.TYPE_19__** %7, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  br label %21

21:                                               ; preds = %20, %1
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %28 = call i32 @stripes_list_switch_horizontal_list(%struct.TYPE_18__* %27)
  %29 = load i32, i32* @STRIPES_DELAY, align 4
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %3, i32 0, i32 5
  store i32 %29, i32* %30, align 4
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 3
  %33 = load float, float* %32, align 4
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sitofp i64 %36 to float
  %38 = fneg float %37
  %39 = fmul float %33, %38
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %3, i32 0, i32 0
  store float %39, float* %40, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 7
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %3, i32 0, i32 2
  store i32* %42, i32** %43, align 8
  %44 = load i32, i32* @EASING_OUT_QUAD, align 4
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %3, i32 0, i32 4
  store i32 %44, i32* %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %3, i32 0, i32 1
  store i32 -1, i32* %46, align 4
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %3, i32 0, i32 3
  store i32* null, i32** %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %3, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %21
  %52 = call i32 @menu_animation_push(%struct.TYPE_21__* %3)
  br label %53

53:                                               ; preds = %51, %21
  store i32 -1, i32* %4, align 4
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  store i32 1, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %53
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @stripes_list_switch_old(%struct.TYPE_18__* %63, i32 %66, i32 %67, i32 %70)
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %62
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = load i32, i32* %4, align 4
  %81 = load i64, i64* %6, align 8
  %82 = call i32 @stripes_list_switch_new(%struct.TYPE_18__* %78, i32* %79, i32 %80, i64 %81)
  br label %83

83:                                               ; preds = %77, %62
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = trunc i64 %86 to i32
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 8
  %90 = call i32 @stripes_thumbnails_ident(i8 signext 82)
  %91 = load i32, i32* @MENU_ENUM_LABEL_VALUE_OFF, align 4
  %92 = call i32 @msg_hash_to_str(i32 %91)
  %93 = call i32 @string_is_equal(i32 %90, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %113, label %95

95:                                               ; preds = %83
  %96 = call i32 @menu_entry_init(%struct.TYPE_20__* %8)
  %97 = load i64, i64* %6, align 8
  %98 = call i32 @menu_entry_get(%struct.TYPE_20__* %8, i32 0, i64 %97, i32* null, i32 1)
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @string_is_empty(i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %95
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @stripes_set_thumbnail_content(%struct.TYPE_18__* %104, i32 %106, i32 0)
  br label %108

108:                                              ; preds = %103, %95
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %110 = call i32 @stripes_update_thumbnail_path(%struct.TYPE_18__* %109, i32 0, i8 signext 82)
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %112 = call i32 @stripes_update_thumbnail_image(%struct.TYPE_18__* %111)
  br label %113

113:                                              ; preds = %108, %83
  %114 = call i32 @stripes_thumbnails_ident(i8 signext 76)
  %115 = load i32, i32* @MENU_ENUM_LABEL_VALUE_OFF, align 4
  %116 = call i32 @msg_hash_to_str(i32 %115)
  %117 = call i32 @string_is_equal(i32 %114, i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %137, label %119

119:                                              ; preds = %113
  %120 = call i32 @menu_entry_init(%struct.TYPE_20__* %9)
  %121 = load i64, i64* %6, align 8
  %122 = call i32 @menu_entry_get(%struct.TYPE_20__* %9, i32 0, i64 %121, i32* null, i32 1)
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @string_is_empty(i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %119
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @stripes_set_thumbnail_content(%struct.TYPE_18__* %128, i32 %130, i32 0)
  br label %132

132:                                              ; preds = %127, %119
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %134 = call i32 @stripes_update_thumbnail_path(%struct.TYPE_18__* %133, i32 0, i8 signext 76)
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %136 = call i32 @stripes_update_thumbnail_image(%struct.TYPE_18__* %135)
  br label %137

137:                                              ; preds = %132, %113
  ret void
}

declare dso_local i32* @menu_entries_get_selection_buf_ptr(i32) #1

declare dso_local i64 @menu_navigation_get_selection(...) #1

declare dso_local %struct.TYPE_19__* @config_get_ptr(...) #1

declare dso_local i32 @stripes_list_switch_horizontal_list(%struct.TYPE_18__*) #1

declare dso_local i32 @menu_animation_push(%struct.TYPE_21__*) #1

declare dso_local i32 @stripes_list_switch_old(%struct.TYPE_18__*, i32, i32, i32) #1

declare dso_local i32 @stripes_list_switch_new(%struct.TYPE_18__*, i32*, i32, i64) #1

declare dso_local i32 @string_is_equal(i32, i32) #1

declare dso_local i32 @stripes_thumbnails_ident(i8 signext) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i32 @menu_entry_init(%struct.TYPE_20__*) #1

declare dso_local i32 @menu_entry_get(%struct.TYPE_20__*, i32, i64, i32*, i32) #1

declare dso_local i32 @string_is_empty(i32) #1

declare dso_local i32 @stripes_set_thumbnail_content(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @stripes_update_thumbnail_path(%struct.TYPE_18__*, i32, i8 signext) #1

declare dso_local i32 @stripes_update_thumbnail_image(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
