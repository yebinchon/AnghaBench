; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_main.c_yui_conf.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_main.c_yui_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inifile = common dso_local global i32 0, align 4
@keyfile = common dso_local global i32 0, align 4
@yui = common dso_local global i32 0, align 4
@GTK_DIALOG_MODAL = common dso_local global i32 0, align 4
@GTK_MESSAGE_WARNING = common dso_local global i32 0, align 4
@GTK_BUTTONS_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"You must restart Yabause before the changes take effect.\00", align 1
@G_KEY_FILE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @yui_conf() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = call i32* (...) @create_dialog1()
  store i32* %5, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @GTK_DIALOG(i32* %6)
  %8 = call i32 @gtk_dialog_run(i32 %7)
  store i32 %8, i32* %1, align 4
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @gtk_widget_destroy(i32* %9)
  %11 = load i32, i32* %1, align 4
  switch i32 %11, label %38 [
    i32 128, label %12
    i32 129, label %33
  ]

12:                                               ; preds = %0
  %13 = load i32, i32* @inifile, align 4
  %14 = load i32, i32* @keyfile, align 4
  %15 = call i32 @g_key_file_to_data(i32 %14, i32 0, i32 0)
  %16 = call i32 @g_file_set_contents(i32 %13, i32 %15, i32 -1, i32 0)
  %17 = call i32 (...) @yui_settings_load()
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %12
  %21 = load i32, i32* @yui, align 4
  %22 = call i32 @GTK_WINDOW(i32 %21)
  %23 = load i32, i32* @GTK_DIALOG_MODAL, align 4
  %24 = load i32, i32* @GTK_MESSAGE_WARNING, align 4
  %25 = load i32, i32* @GTK_BUTTONS_OK, align 4
  %26 = call i32* @gtk_message_dialog_new(i32 %22, i32 %23, i32 %24, i32 %25, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  store i32* %26, i32** %4, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @GTK_DIALOG(i32* %27)
  %29 = call i32 @gtk_dialog_run(i32 %28)
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @gtk_widget_destroy(i32* %30)
  br label %32

32:                                               ; preds = %20, %12
  br label %38

33:                                               ; preds = %0
  %34 = load i32, i32* @keyfile, align 4
  %35 = load i32, i32* @inifile, align 4
  %36 = load i32, i32* @G_KEY_FILE_NONE, align 4
  %37 = call i32 @g_key_file_load_from_file(i32 %34, i32 %35, i32 %36, i32 0)
  br label %38

38:                                               ; preds = %0, %33, %32
  ret void
}

declare dso_local i32* @create_dialog1(...) #1

declare dso_local i32 @gtk_dialog_run(i32) #1

declare dso_local i32 @GTK_DIALOG(i32*) #1

declare dso_local i32 @gtk_widget_destroy(i32*) #1

declare dso_local i32 @g_file_set_contents(i32, i32, i32, i32) #1

declare dso_local i32 @g_key_file_to_data(i32, i32, i32) #1

declare dso_local i32 @yui_settings_load(...) #1

declare dso_local i32* @gtk_message_dialog_new(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @GTK_WINDOW(i32) #1

declare dso_local i32 @g_key_file_load_from_file(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
