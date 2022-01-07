; ModuleID = '/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_gconf.c_on_save_as1_activate.c'
source_filename = "/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_gconf.c_on_save_as1_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"Save file as...\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@store_filename = common dso_local global i32 0, align 4
@gtk_widget_destroy = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @on_save_as1_activate(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %7 = call i32* @gtk_file_selection_new(i32 %6)
  store i32* %7, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call %struct.TYPE_2__* @GTK_FILE_SELECTION(i32* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @GTK_OBJECT(i32 %11)
  %13 = load i32, i32* @store_filename, align 4
  %14 = call i32 @G_CALLBACK(i32 %13)
  %15 = load i32*, i32** %5, align 8
  %16 = ptrtoint i32* %15 to i32
  %17 = call i32 @g_signal_connect(i32 %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %14, i32 %16)
  %18 = load i32*, i32** %5, align 8
  %19 = call %struct.TYPE_2__* @GTK_FILE_SELECTION(i32* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @GTK_OBJECT(i32 %21)
  %23 = load i32, i32* @gtk_widget_destroy, align 4
  %24 = call i32 @G_CALLBACK(i32 %23)
  %25 = load i32*, i32** %5, align 8
  %26 = ptrtoint i32* %25 to i32
  %27 = call i32 @g_signal_connect_swapped(i32 %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %26)
  %28 = load i32*, i32** %5, align 8
  %29 = call %struct.TYPE_2__* @GTK_FILE_SELECTION(i32* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @GTK_OBJECT(i32 %31)
  %33 = load i32, i32* @gtk_widget_destroy, align 4
  %34 = call i32 @G_CALLBACK(i32 %33)
  %35 = load i32*, i32** %5, align 8
  %36 = ptrtoint i32* %35 to i32
  %37 = call i32 @g_signal_connect_swapped(i32 %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %36)
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @gtk_widget_show(i32* %38)
  ret void
}

declare dso_local i32* @gtk_file_selection_new(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @g_signal_connect(i32, i8*, i32, i32) #1

declare dso_local i32 @GTK_OBJECT(i32) #1

declare dso_local %struct.TYPE_2__* @GTK_FILE_SELECTION(i32*) #1

declare dso_local i32 @G_CALLBACK(i32) #1

declare dso_local i32 @g_signal_connect_swapped(i32, i8*, i32, i32) #1

declare dso_local i32 @gtk_widget_show(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
