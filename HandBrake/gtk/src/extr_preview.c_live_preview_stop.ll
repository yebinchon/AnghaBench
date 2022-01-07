; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_preview.c_live_preview_stop.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_preview.c_live_preview_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"live_preview_play_image\00", align 1
@GHB_PLAY_ICON = common dso_local global i32 0, align 4
@GHB_ICON_SIZE_BUTTON = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@PREVIEW_STATE_IMAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"live_preview_progress\00", align 1
@GST_STATE_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @live_preview_stop(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %39

12:                                               ; preds = %1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @GHB_WIDGET(i32 %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %17 = call i32* @GTK_IMAGE(i32 %16)
  store i32* %17, i32** %3, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* @GHB_PLAY_ICON, align 4
  %20 = load i32, i32* @GHB_ICON_SIZE_BUTTON, align 4
  %21 = call i32 @ghb_image_set_from_icon_name(i32* %18, i32 %19, i32 %20)
  %22 = load i32, i32* @TRUE, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  store i32 %22, i32* %26, align 4
  %27 = load i32, i32* @PREVIEW_STATE_IMAGE, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 %27, i32* %31, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @GHB_WIDGET(i32 %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %36 = call i32* @GTK_RANGE(i32 %35)
  store i32* %36, i32** %4, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @gtk_range_set_value(i32* %37, i32 0)
  br label %39

39:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32* @GTK_IMAGE(i32) #1

declare dso_local i32 @GHB_WIDGET(i32, i8*) #1

declare dso_local i32 @ghb_image_set_from_icon_name(i32*, i32, i32) #1

declare dso_local i32* @GTK_RANGE(i32) #1

declare dso_local i32 @gtk_range_set_value(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
