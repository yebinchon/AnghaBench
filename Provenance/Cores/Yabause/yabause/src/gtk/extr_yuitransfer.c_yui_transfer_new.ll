; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuitransfer.c_yui_transfer_new.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuitransfer.c_yui_transfer_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @yui_transfer_new(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %5 = call i32 (...) @yui_transfer_get_type()
  %6 = call i32 @g_object_new(i32 %5, i32* null)
  %7 = call i32* @GTK_WIDGET(i32 %6)
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32* @YUI_TRANSFERT(i32* %8)
  store i32* %9, i32** %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @gtk_widget_show_all(i32* %10)
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @yui_transfer_check(i32* %12)
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @yui_window_start(i32* %14)
  %16 = load i32*, i32** %3, align 8
  ret i32* %16
}

declare dso_local i32* @GTK_WIDGET(i32) #1

declare dso_local i32 @g_object_new(i32, i32*) #1

declare dso_local i32 @yui_transfer_get_type(...) #1

declare dso_local i32* @YUI_TRANSFERT(i32*) #1

declare dso_local i32 @gtk_widget_show_all(i32*) #1

declare dso_local i32 @yui_transfer_check(i32*) #1

declare dso_local i32 @yui_window_start(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
