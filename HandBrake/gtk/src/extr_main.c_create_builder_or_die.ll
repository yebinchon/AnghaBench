; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_main.c_create_builder_or_die.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_main.c_create_builder_or_die.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"/fr/handbrake/ghb/ui/ghb.ui\00", align 1
@.str.1 = private unnamed_addr constant [91 x i8] c"<b><big>Unable to create %s.</big></b>\0A\0AInternal error. Could not parse UI description.\0A%s\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"create_builder_or_die()\0A\00", align 1
@GTK_DIALOG_MODAL = common dso_local global i32 0, align 4
@GTK_MESSAGE_ERROR = common dso_local global i32 0, align 4
@GTK_BUTTONS_CLOSE = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @create_builder_or_die(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  store i64 0, i64* %3, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %4, align 8
  %12 = call i32* (...) @ghb_ui_get_resource()
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i32* @g_resource_lookup_data(i32* %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 0, i32* null)
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call i32* @g_bytes_get_data(i32* %15, i32* %6)
  store i32* %16, i32** %5, align 8
  %17 = call i32* @N_(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.1, i64 0, i64 0))
  store i32* %17, i32** %9, align 8
  %18 = call i32 @g_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %19 = call i32* (...) @gtk_builder_new()
  store i32* %19, i32** %10, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load i32*, i32** %10, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = call i64 @gtk_builder_add_from_string(i32* %23, i32* %24, i32 -1, %struct.TYPE_3__** %4)
  store i64 %25, i64* %3, align 8
  br label %26

26:                                               ; preds = %22, %1
  %27 = load i32*, i32** %10, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i64, i64* %3, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %50, label %32

32:                                               ; preds = %29, %26
  %33 = load i32, i32* @GTK_DIALOG_MODAL, align 4
  %34 = load i32, i32* @GTK_MESSAGE_ERROR, align 4
  %35 = load i32, i32* @GTK_BUTTONS_CLOSE, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = call i32 @gettext(i32* %36)
  %38 = load i32*, i32** %2, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32* @gtk_message_dialog_new_with_markup(i32* null, i32 %33, i32 %34, i32 %35, i32 %37, i32* %38, i32 %41)
  store i32* %42, i32** %11, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = call i32 @GTK_DIALOG(i32* %43)
  %45 = call i32 @gtk_dialog_run(i32 %44)
  %46 = load i32*, i32** %11, align 8
  %47 = call i32 @gtk_widget_destroy(i32* %46)
  %48 = load i32, i32* @EXIT_FAILURE, align 4
  %49 = call i32 @exit(i32 %48) #3
  unreachable

50:                                               ; preds = %29
  %51 = load i32*, i32** %10, align 8
  ret i32* %51
}

declare dso_local i32* @ghb_ui_get_resource(...) #1

declare dso_local i32* @g_resource_lookup_data(i32*, i8*, i32, i32*) #1

declare dso_local i32* @g_bytes_get_data(i32*, i32*) #1

declare dso_local i32* @N_(i8*) #1

declare dso_local i32 @g_debug(i8*) #1

declare dso_local i32* @gtk_builder_new(...) #1

declare dso_local i64 @gtk_builder_add_from_string(i32*, i32*, i32, %struct.TYPE_3__**) #1

declare dso_local i32* @gtk_message_dialog_new_with_markup(i32*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @gettext(i32*) #1

declare dso_local i32 @gtk_dialog_run(i32) #1

declare dso_local i32 @GTK_DIALOG(i32*) #1

declare dso_local i32 @gtk_widget_destroy(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
