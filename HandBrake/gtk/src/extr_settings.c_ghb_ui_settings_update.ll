; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_settings.c_ghb_ui_settings_update.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_settings.c_ghb_ui_settings_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"ghb_ui_update() %s\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to find widget for key: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ghb_ui_settings_update(%struct.TYPE_3__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i32*, i32** %8, align 8
  %12 = call i32 @g_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %11)
  %13 = load i32*, i32** %8, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32*, i32** %9, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %4
  store i32 0, i32* %5, align 4
  br label %37

19:                                               ; preds = %15
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = call i32* @GHB_OBJECT(i32 %22, i32* %23)
  store i32* %24, i32** %10, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @g_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32* %28)
  store i32 -1, i32* %5, align 4
  br label %37

30:                                               ; preds = %19
  %31 = load i32*, i32** %10, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @ghb_update_widget(i32* %31, i32* %32)
  %34 = load i32*, i32** %7, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 @ghb_widget_to_setting(i32* %34, i32* %35)
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %30, %27, %18
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @g_debug(i8*, i32*) #1

declare dso_local i32* @GHB_OBJECT(i32, i32*) #1

declare dso_local i32 @ghb_update_widget(i32*, i32*) #1

declare dso_local i32 @ghb_widget_to_setting(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
