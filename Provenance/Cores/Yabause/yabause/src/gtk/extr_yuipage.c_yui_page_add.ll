; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuipage.c_yui_page_add.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuipage.c_yui_page_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@GTK_SHADOW_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"<b>%s</b>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @yui_page_add(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [1024 x i8], align 16
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = call i32* @gtk_frame_new(i32* null)
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @GTK_BOX(i32* %10)
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* @FALSE, align 4
  %14 = load i32, i32* @TRUE, align 4
  %15 = call i32 @gtk_box_pack_start(i32 %11, i32* %12, i32 %13, i32 %14, i32 0)
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @GTK_FRAME(i32* %16)
  %18 = load i32, i32* @GTK_SHADOW_NONE, align 4
  %19 = call i32 @gtk_frame_set_shadow_type(i32 %17, i32 %18)
  %20 = load i32, i32* @FALSE, align 4
  %21 = call i32* @gtk_vbox_new(i32 %20, i32 0)
  store i32* %21, i32** %7, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @GTK_CONTAINER(i32* %22)
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @gtk_container_add(i32 %23, i32* %24)
  %26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @sprintf(i8* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %30 = call i32* @gtk_label_new(i8* %29)
  store i32* %30, i32** %5, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @GTK_FRAME(i32* %31)
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @gtk_frame_set_label_widget(i32 %32, i32* %33)
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @GTK_LABEL(i32* %35)
  %37 = load i32, i32* @TRUE, align 4
  %38 = call i32 @gtk_label_set_use_markup(i32 %36, i32 %37)
  %39 = load i32*, i32** %7, align 8
  ret i32* %39
}

declare dso_local i32* @gtk_frame_new(i32*) #1

declare dso_local i32 @gtk_box_pack_start(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @GTK_BOX(i32*) #1

declare dso_local i32 @gtk_frame_set_shadow_type(i32, i32) #1

declare dso_local i32 @GTK_FRAME(i32*) #1

declare dso_local i32* @gtk_vbox_new(i32, i32) #1

declare dso_local i32 @gtk_container_add(i32, i32*) #1

declare dso_local i32 @GTK_CONTAINER(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32* @gtk_label_new(i8*) #1

declare dso_local i32 @gtk_frame_set_label_widget(i32, i32*) #1

declare dso_local i32 @gtk_label_set_use_markup(i32, i32) #1

declare dso_local i32 @GTK_LABEL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
