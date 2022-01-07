; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuiinputentry.c_yui_input_entry_keypress.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuiinputentry.c_yui_input_entry_keypress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 (i32, i8*, i32)*, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i8*, i32 }

@PERCore = common dso_local global %struct.TYPE_7__* null, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s.%s.1\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yui_input_entry_keypress(i32* %0, %struct.TYPE_5__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [100 x i8], align 16
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** @PERCore, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %4, align 4
  br label %51

15:                                               ; preds = %3
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** @PERCore, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %17, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %23 = call i32 %18(i32 %21, i8* %22, i32 100)
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @GTK_ENTRY(i32* %24)
  %26 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %27 = call i32 @gtk_entry_set_text(i32 %25, i8* %26)
  %28 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @gtk_widget_get_parent(i32* %29)
  %31 = call %struct.TYPE_6__* @YUI_INPUT_ENTRY(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = call i32 @sprintf(i8* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %33, i8* %35)
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @gtk_widget_get_parent(i32* %37)
  %39 = call %struct.TYPE_6__* @YUI_INPUT_ENTRY(i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** @PERCore, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @g_key_file_set_integer(i32 %41, i32 %44, i8* %45, i32 %48)
  %50 = load i32, i32* @TRUE, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %15, %13
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @gtk_entry_set_text(i32, i8*) #1

declare dso_local i32 @GTK_ENTRY(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local %struct.TYPE_6__* @YUI_INPUT_ENTRY(i32) #1

declare dso_local i32 @gtk_widget_get_parent(i32*) #1

declare dso_local i32 @g_key_file_set_integer(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
