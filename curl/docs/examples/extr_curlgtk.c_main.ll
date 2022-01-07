; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_curlgtk.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_curlgtk.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@GTK_WINDOW_TOPLEVEL = common dso_local global i32 0, align 4
@GTK_SHADOW_OUT = common dso_local global i32 0, align 4
@GTK_SHADOW_IN = common dso_local global i32 0, align 4
@Bar = common dso_local global i32* null, align 8
@my_thread = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"can't create the thread\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %11 = call i32 @curl_global_init(i32 %10)
  %12 = call i32 @g_thread_init(i32* null)
  %13 = call i32 @gtk_init(i32* %4, i8*** %5)
  %14 = load i32, i32* @GTK_WINDOW_TOPLEVEL, align 4
  %15 = call i32* @gtk_window_new(i32 %14)
  store i32* %15, i32** %6, align 8
  %16 = call i32* @gtk_frame_new(i32* null)
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @GTK_FRAME(i32* %17)
  %19 = load i32, i32* @GTK_SHADOW_OUT, align 4
  %20 = call i32 @gtk_frame_set_shadow_type(i32 %18, i32 %19)
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @GTK_CONTAINER(i32* %21)
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @gtk_container_add(i32 %22, i32* %23)
  %25 = call i32* @gtk_frame_new(i32* null)
  store i32* %25, i32** %8, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @GTK_FRAME(i32* %26)
  %28 = load i32, i32* @GTK_SHADOW_IN, align 4
  %29 = call i32 @gtk_frame_set_shadow_type(i32 %27, i32 %28)
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @GTK_CONTAINER(i32* %30)
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @gtk_container_add(i32 %31, i32* %32)
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @GTK_CONTAINER(i32* %34)
  %36 = call i32 @gtk_container_set_border_width(i32 %35, i32 5)
  %37 = call i64 @gtk_adjustment_new(i32 0, i32 0, i32 100, i32 0, i32 0, i32 0)
  %38 = inttoptr i64 %37 to i32*
  store i32* %38, i32** %9, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = call i32* @gtk_progress_bar_new_with_adjustment(i32* %39)
  store i32* %40, i32** @Bar, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @GTK_CONTAINER(i32* %41)
  %43 = load i32*, i32** @Bar, align 8
  %44 = call i32 @gtk_container_add(i32 %42, i32* %43)
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @gtk_widget_show_all(i32* %45)
  %47 = load i8**, i8*** %5, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 1
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* @FALSE, align 4
  %51 = call i32 @g_thread_create(i32* @my_thread, i8* %49, i32 %50, i32* null)
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %2
  %57 = call i32 @g_warning(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %2
  %59 = call i32 (...) @gdk_threads_enter()
  %60 = call i32 (...) @gtk_main()
  %61 = call i32 (...) @gdk_threads_leave()
  ret i32 0
}

declare dso_local i32 @curl_global_init(i32) #1

declare dso_local i32 @g_thread_init(i32*) #1

declare dso_local i32 @gtk_init(i32*, i8***) #1

declare dso_local i32* @gtk_window_new(i32) #1

declare dso_local i32* @gtk_frame_new(i32*) #1

declare dso_local i32 @gtk_frame_set_shadow_type(i32, i32) #1

declare dso_local i32 @GTK_FRAME(i32*) #1

declare dso_local i32 @gtk_container_add(i32, i32*) #1

declare dso_local i32 @GTK_CONTAINER(i32*) #1

declare dso_local i32 @gtk_container_set_border_width(i32, i32) #1

declare dso_local i64 @gtk_adjustment_new(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32* @gtk_progress_bar_new_with_adjustment(i32*) #1

declare dso_local i32 @gtk_widget_show_all(i32*) #1

declare dso_local i32 @g_thread_create(i32*, i8*, i32, i32*) #1

declare dso_local i32 @g_warning(i8*) #1

declare dso_local i32 @gdk_threads_enter(...) #1

declare dso_local i32 @gtk_main(...) #1

declare dso_local i32 @gdk_threads_leave(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
