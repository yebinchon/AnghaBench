; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_smooth-gtk-thread.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_smooth-gtk-thread.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@GTK_WINDOW_TOPLEVEL = common dso_local global i32 0, align 4
@GTK_SHADOW_OUT = common dso_local global i32 0, align 4
@GTK_SHADOW_IN = common dso_local global i32 0, align 4
@pulse_bar = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"pulse_id\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"gtk_widget_show_all\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"delete-event\00", align 1
@cb_delete = common dso_local global i32 0, align 4
@create_thread = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"can't create the thread\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"gdk_threads_leave\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %12 = call i32 @curl_global_init(i32 %11)
  %13 = call i32 @g_thread_init(i32* null)
  %14 = call i32 (...) @gdk_threads_init()
  %15 = call i32 (...) @gdk_threads_enter()
  %16 = call i32 @gtk_init(i32* %4, i8*** %5)
  %17 = load i32, i32* @GTK_WINDOW_TOPLEVEL, align 4
  %18 = call i32* @gtk_window_new(i32 %17)
  store i32* %18, i32** %6, align 8
  %19 = call i32* @gtk_frame_new(i32* null)
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @GTK_FRAME(i32* %20)
  %22 = load i32, i32* @GTK_SHADOW_OUT, align 4
  %23 = call i32 @gtk_frame_set_shadow_type(i32 %21, i32 %22)
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @GTK_CONTAINER(i32* %24)
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @gtk_container_add(i32 %25, i32* %26)
  %28 = call i32* @gtk_frame_new(i32* null)
  store i32* %28, i32** %8, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @GTK_FRAME(i32* %29)
  %31 = load i32, i32* @GTK_SHADOW_IN, align 4
  %32 = call i32 @gtk_frame_set_shadow_type(i32 %30, i32 %31)
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @GTK_CONTAINER(i32* %33)
  %35 = call i32 @gtk_container_set_border_width(i32 %34, i32 5)
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @GTK_CONTAINER(i32* %36)
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @gtk_container_add(i32 %37, i32* %38)
  %40 = call i32* (...) @gtk_progress_bar_new()
  store i32* %40, i32** %9, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @GTK_PROGRESS_BAR(i32* %41)
  %43 = call i32 @gtk_progress_bar_pulse(i32 %42)
  %44 = load i32, i32* @pulse_bar, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @g_timeout_add(i32 300, i32 %44, i32* %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @G_OBJECT(i32* %47)
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @GINT_TO_POINTER(i32 %49)
  %51 = call i32 @g_object_set_data(i32 %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @GTK_CONTAINER(i32* %52)
  %54 = load i32*, i32** %9, align 8
  %55 = call i32 @gtk_container_add(i32 %53, i32* %54)
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @gtk_widget_show_all(i32* %56)
  %58 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @G_OBJECT(i32* %59)
  %61 = load i32, i32* @cb_delete, align 4
  %62 = call i32 @G_CALLBACK(i32 %61)
  %63 = call i32 @g_signal_connect(i32 %60, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %62, i32* null)
  %64 = load i32*, i32** %9, align 8
  %65 = load i32, i32* @FALSE, align 4
  %66 = call i32 @g_thread_create(i32* @create_thread, i32* %64, i32 %65, i32* null)
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %2
  %72 = call i32 @g_warning(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %2
  %74 = call i32 (...) @gtk_main()
  %75 = call i32 (...) @gdk_threads_leave()
  %76 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @curl_global_init(i32) #1

declare dso_local i32 @g_thread_init(i32*) #1

declare dso_local i32 @gdk_threads_init(...) #1

declare dso_local i32 @gdk_threads_enter(...) #1

declare dso_local i32 @gtk_init(i32*, i8***) #1

declare dso_local i32* @gtk_window_new(i32) #1

declare dso_local i32* @gtk_frame_new(i32*) #1

declare dso_local i32 @gtk_frame_set_shadow_type(i32, i32) #1

declare dso_local i32 @GTK_FRAME(i32*) #1

declare dso_local i32 @gtk_container_add(i32, i32*) #1

declare dso_local i32 @GTK_CONTAINER(i32*) #1

declare dso_local i32 @gtk_container_set_border_width(i32, i32) #1

declare dso_local i32* @gtk_progress_bar_new(...) #1

declare dso_local i32 @gtk_progress_bar_pulse(i32) #1

declare dso_local i32 @GTK_PROGRESS_BAR(i32*) #1

declare dso_local i32 @g_timeout_add(i32, i32, i32*) #1

declare dso_local i32 @g_object_set_data(i32, i8*, i32) #1

declare dso_local i32 @G_OBJECT(i32*) #1

declare dso_local i32 @GINT_TO_POINTER(i32) #1

declare dso_local i32 @gtk_widget_show_all(i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @g_signal_connect(i32, i8*, i32, i32*) #1

declare dso_local i32 @G_CALLBACK(i32) #1

declare dso_local i32 @g_thread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @g_warning(i8*) #1

declare dso_local i32 @gtk_main(...) #1

declare dso_local i32 @gdk_threads_leave(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
