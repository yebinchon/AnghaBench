; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_callbacks.c_ghb_error_dialog.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_callbacks.c_ghb_error_dialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GTK_DIALOG_MODAL = common dso_local global i32 0, align 4
@GTK_BUTTONS_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@GTK_RESPONSE_CANCEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ghb_error_dialog(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* @GTK_DIALOG_MODAL, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @GTK_BUTTONS_NONE, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = call i32* @gtk_message_dialog_new(i32* %10, i32 %11, i32 %12, i32 %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %14)
  store i32* %15, i32** %9, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = call i32 @GTK_DIALOG(i32* %16)
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* @GTK_RESPONSE_CANCEL, align 4
  %20 = call i32 @gtk_dialog_add_buttons(i32 %17, i32* %18, i32 %19, i32* null)
  %21 = load i32*, i32** %9, align 8
  %22 = call i32 @GTK_DIALOG(i32* %21)
  %23 = call i32 @gtk_dialog_run(i32 %22)
  %24 = load i32*, i32** %9, align 8
  %25 = call i32 @gtk_widget_destroy(i32* %24)
  ret void
}

declare dso_local i32* @gtk_message_dialog_new(i32*, i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @gtk_dialog_add_buttons(i32, i32*, i32, i32*) #1

declare dso_local i32 @GTK_DIALOG(i32*) #1

declare dso_local i32 @gtk_dialog_run(i32) #1

declare dso_local i32 @gtk_widget_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
