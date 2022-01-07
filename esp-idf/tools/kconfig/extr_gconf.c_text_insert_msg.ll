; ModuleID = '/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_gconf.c_text_insert_msg.c'
source_filename = "/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_gconf.c_text_insert_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@text_w = common dso_local global i32 0, align 4
@tag1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@tag2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @text_insert_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @text_insert_msg(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  store i8* %9, i8** %8, align 8
  %10 = load i32, i32* @text_w, align 4
  %11 = call i32 @GTK_TEXT_VIEW(i32 %10)
  %12 = call i32* @gtk_text_view_get_buffer(i32 %11)
  store i32* %12, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @gtk_text_buffer_get_bounds(i32* %13, i32* %6, i32* %7)
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @gtk_text_buffer_delete(i32* %15, i32* %6, i32* %7)
  %17 = load i32, i32* @text_w, align 4
  %18 = call i32 @GTK_TEXT_VIEW(i32 %17)
  %19 = call i32 @gtk_text_view_set_left_margin(i32 %18, i32 15)
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @gtk_text_buffer_get_end_iter(i32* %20, i32* %7)
  %22 = load i32*, i32** %5, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = load i32, i32* @tag1, align 4
  %25 = call i32 @gtk_text_buffer_insert_with_tags(i32* %22, i32* %7, i8* %23, i32 -1, i32 %24, i32* null)
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @gtk_text_buffer_insert_at_cursor(i32* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @gtk_text_buffer_get_end_iter(i32* %28, i32* %7)
  %30 = load i32*, i32** %5, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load i32, i32* @tag2, align 4
  %33 = call i32 @gtk_text_buffer_insert_with_tags(i32* %30, i32* %7, i8* %31, i32 -1, i32 %32, i32* null)
  ret void
}

declare dso_local i32* @gtk_text_view_get_buffer(i32) #1

declare dso_local i32 @GTK_TEXT_VIEW(i32) #1

declare dso_local i32 @gtk_text_buffer_get_bounds(i32*, i32*, i32*) #1

declare dso_local i32 @gtk_text_buffer_delete(i32*, i32*, i32*) #1

declare dso_local i32 @gtk_text_view_set_left_margin(i32, i32) #1

declare dso_local i32 @gtk_text_buffer_get_end_iter(i32*, i32*) #1

declare dso_local i32 @gtk_text_buffer_insert_with_tags(i32*, i32*, i8*, i32, i32, i32*) #1

declare dso_local i32 @gtk_text_buffer_insert_at_cursor(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
