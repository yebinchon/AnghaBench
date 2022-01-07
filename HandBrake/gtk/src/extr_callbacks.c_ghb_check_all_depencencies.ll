; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_callbacks.c_ghb_check_all_depencencies.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_callbacks.c_ghb_check_all_depencencies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"ghb_check_all_depencencies ()\00", align 1
@rev_map = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to find dependent widget %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ghb_check_all_depencencies(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %9 = call i32 @g_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %10 = load i32*, i32** @rev_map, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %57

13:                                               ; preds = %1
  %14 = load i32*, i32** @rev_map, align 8
  %15 = call i32 @ghb_dict_iter_init(i32* %14)
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %56, %28, %13
  %17 = load i32*, i32** @rev_map, align 8
  %18 = call i64 @ghb_dict_iter_next(i32* %17, i32* %3, i32** %4, i32** %5)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %57

20:                                               ; preds = %16
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = call i32* @gtk_builder_get_object(i32 %23, i32* %24)
  store i32* %25, i32** %6, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @g_message(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32* %29)
  br label %16

31:                                               ; preds = %20
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = call i64 @dep_check(%struct.TYPE_4__* %32, i32* %33, i64* %8)
  store i64 %34, i64* %7, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @GTK_WIDGET(i32* %35)
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @gtk_widget_set_sensitive(i32 %36, i64 %37)
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @GTK_WIDGET(i32* %39)
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @gtk_widget_set_can_focus(i32 %40, i64 %41)
  %43 = load i64, i64* %7, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %31
  %46 = load i64, i64* %8, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @GTK_WIDGET(i32* %49)
  %51 = call i32 @gtk_widget_hide(i32 %50)
  br label %56

52:                                               ; preds = %45, %31
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @GTK_WIDGET(i32* %53)
  %55 = call i32 @gtk_widget_show(i32 %54)
  br label %56

56:                                               ; preds = %52, %48
  br label %16

57:                                               ; preds = %12, %16
  ret void
}

declare dso_local i32 @g_debug(i8*) #1

declare dso_local i32 @ghb_dict_iter_init(i32*) #1

declare dso_local i64 @ghb_dict_iter_next(i32*, i32*, i32**, i32**) #1

declare dso_local i32* @gtk_builder_get_object(i32, i32*) #1

declare dso_local i32 @g_message(i8*, i32*) #1

declare dso_local i64 @dep_check(%struct.TYPE_4__*, i32*, i64*) #1

declare dso_local i32 @gtk_widget_set_sensitive(i32, i64) #1

declare dso_local i32 @GTK_WIDGET(i32*) #1

declare dso_local i32 @gtk_widget_set_can_focus(i32, i64) #1

declare dso_local i32 @gtk_widget_hide(i32) #1

declare dso_local i32 @gtk_widget_show(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
