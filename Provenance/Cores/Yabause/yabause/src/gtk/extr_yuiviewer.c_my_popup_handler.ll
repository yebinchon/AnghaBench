; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuiviewer.c_my_popup_handler.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuiviewer.c_my_popup_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@GDK_BUTTON_PRESS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*)* @my_popup_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @my_popup_handler(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp ne i32* %8, null
  %10 = zext i1 %9 to i32
  %11 = load i32, i32* @FALSE, align 4
  %12 = call i32 @g_return_val_if_fail(i32 %10, i32 %11)
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @GTK_IS_MENU(i32* %13)
  %15 = load i32, i32* @FALSE, align 4
  %16 = call i32 @g_return_val_if_fail(i32 %14, i32 %15)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = icmp ne %struct.TYPE_5__* %17, null
  %19 = zext i1 %18 to i32
  %20 = load i32, i32* @FALSE, align 4
  %21 = call i32 @g_return_val_if_fail(i32 %19, i32 %20)
  %22 = load i32*, i32** %4, align 8
  %23 = call i32* @GTK_MENU(i32* %22)
  store i32* %23, i32** %6, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @GDK_BUTTON_PRESS, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %47

29:                                               ; preds = %2
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = bitcast %struct.TYPE_5__* %30 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %7, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 3
  br i1 %35, label %36, label %46

36:                                               ; preds = %29
  %37 = load i32*, i32** %6, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @gtk_menu_popup(i32* %37, i32* null, i32* null, i32* null, i32* null, i32 %40, i32 %43)
  %45 = load i32, i32* @TRUE, align 4
  store i32 %45, i32* %3, align 4
  br label %49

46:                                               ; preds = %29
  br label %47

47:                                               ; preds = %46, %2
  %48 = load i32, i32* @FALSE, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %36
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @g_return_val_if_fail(i32, i32) #1

declare dso_local i32 @GTK_IS_MENU(i32*) #1

declare dso_local i32* @GTK_MENU(i32*) #1

declare dso_local i32 @gtk_menu_popup(i32*, i32*, i32*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
