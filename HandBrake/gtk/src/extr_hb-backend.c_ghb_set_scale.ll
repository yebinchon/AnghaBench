; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_ghb_set_scale.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_ghb_set_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32 }

@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"PictureModulus\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"scale_width\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"scale_height\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"PictureLooseCrop\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"PictureTopCrop\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"PictureBottomCrop\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"PictureLeftCrop\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"PictureRightCrop\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"autoscale\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"PictureKeepRatio\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"PicturePARWidth\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"PicturePARHeight\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"PictureDisplayWidth\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"PictureDisplayHeight\00", align 1
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ghb_set_scale(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %190

13:                                               ; preds = %2
  %14 = load i64, i64* @TRUE, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @ghb_set_scale_settings(i32 %19, i32 %20)
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = call i32 @ghb_update_summary_info(%struct.TYPE_7__* %22)
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = call i32 @ghb_picture_settings_deps(%struct.TYPE_7__* %24)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @ghb_settings_combo_int(i32 %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %29, i32* %6, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32* @GHB_WIDGET(i32 %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32* %33, i32** %5, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @GTK_SPIN_BUTTON(i32* %34)
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @gtk_spin_button_set_increments(i32 %35, i32 %36, i32 16)
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32* @GHB_WIDGET(i32 %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32* %41, i32** %5, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @GTK_SPIN_BUTTON(i32* %42)
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @gtk_spin_button_set_increments(i32 %43, i32 %44, i32 16)
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @ghb_dict_get_bool(i32 %48, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  store i64 %49, i64* %7, align 8
  %50 = load i64, i64* %7, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %85

52:                                               ; preds = %13
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32* @GHB_WIDGET(i32 %55, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  store i32* %56, i32** %5, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @GTK_SPIN_BUTTON(i32* %57)
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @gtk_spin_button_set_increments(i32 %58, i32 %59, i32 16)
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32* @GHB_WIDGET(i32 %63, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  store i32* %64, i32** %5, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @GTK_SPIN_BUTTON(i32* %65)
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @gtk_spin_button_set_increments(i32 %66, i32 %67, i32 16)
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32* @GHB_WIDGET(i32 %71, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  store i32* %72, i32** %5, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @GTK_SPIN_BUTTON(i32* %73)
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @gtk_spin_button_set_increments(i32 %74, i32 %75, i32 16)
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32* @GHB_WIDGET(i32 %79, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  store i32* %80, i32** %5, align 8
  %81 = load i32*, i32** %5, align 8
  %82 = call i32 @GTK_SPIN_BUTTON(i32* %81)
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @gtk_spin_button_set_increments(i32 %82, i32 %83, i32 16)
  br label %114

85:                                               ; preds = %13
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32* @GHB_WIDGET(i32 %88, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  store i32* %89, i32** %5, align 8
  %90 = load i32*, i32** %5, align 8
  %91 = call i32 @GTK_SPIN_BUTTON(i32* %90)
  %92 = call i32 @gtk_spin_button_set_increments(i32 %91, i32 2, i32 16)
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i32* @GHB_WIDGET(i32 %95, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  store i32* %96, i32** %5, align 8
  %97 = load i32*, i32** %5, align 8
  %98 = call i32 @GTK_SPIN_BUTTON(i32* %97)
  %99 = call i32 @gtk_spin_button_set_increments(i32 %98, i32 2, i32 16)
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32* @GHB_WIDGET(i32 %102, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  store i32* %103, i32** %5, align 8
  %104 = load i32*, i32** %5, align 8
  %105 = call i32 @GTK_SPIN_BUTTON(i32* %104)
  %106 = call i32 @gtk_spin_button_set_increments(i32 %105, i32 2, i32 16)
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = call i32* @GHB_WIDGET(i32 %109, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  store i32* %110, i32** %5, align 8
  %111 = load i32*, i32** %5, align 8
  %112 = call i32 @GTK_SPIN_BUTTON(i32* %111)
  %113 = call i32 @gtk_spin_button_set_increments(i32 %112, i32 2, i32 16)
  br label %114

114:                                              ; preds = %85, %52
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @ghb_ui_update_from_settings(%struct.TYPE_7__* %115, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %118)
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @ghb_ui_update_from_settings(%struct.TYPE_7__* %120, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %123)
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @ghb_ui_update_from_settings(%struct.TYPE_7__* %125, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %128)
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @ghb_ui_update_from_settings(%struct.TYPE_7__* %130, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %133)
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @ghb_ui_update_from_settings(%struct.TYPE_7__* %135, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %138)
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @ghb_ui_update_from_settings(%struct.TYPE_7__* %140, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %143)
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @ghb_ui_update_from_settings(%struct.TYPE_7__* %145, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %148)
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @ghb_ui_update_from_settings(%struct.TYPE_7__* %150, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %153)
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @ghb_ui_update_from_settings(%struct.TYPE_7__* %155, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %158)
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @ghb_ui_update_from_settings(%struct.TYPE_7__* %160, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %163)
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @ghb_ui_update_from_settings(%struct.TYPE_7__* %165, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 %168)
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @ghb_ui_update_from_settings(%struct.TYPE_7__* %170, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 %173)
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @ghb_ui_update_from_settings(%struct.TYPE_7__* %175, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32 %178)
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @ghb_ui_update_from_settings(%struct.TYPE_7__* %180, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i32 %183)
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %186 = call i32 @ghb_update_display_aspect_label(%struct.TYPE_7__* %185)
  %187 = load i64, i64* @FALSE, align 8
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 0
  store i64 %187, i64* %189, align 8
  br label %190

190:                                              ; preds = %114, %12
  ret void
}

declare dso_local i32 @ghb_set_scale_settings(i32, i32) #1

declare dso_local i32 @ghb_update_summary_info(%struct.TYPE_7__*) #1

declare dso_local i32 @ghb_picture_settings_deps(%struct.TYPE_7__*) #1

declare dso_local i32 @ghb_settings_combo_int(i32, i8*) #1

declare dso_local i32* @GHB_WIDGET(i32, i8*) #1

declare dso_local i32 @gtk_spin_button_set_increments(i32, i32, i32) #1

declare dso_local i32 @GTK_SPIN_BUTTON(i32*) #1

declare dso_local i64 @ghb_dict_get_bool(i32, i8*) #1

declare dso_local i32 @ghb_ui_update_from_settings(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @ghb_update_display_aspect_label(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
