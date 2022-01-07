; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_chapters.c_find_widget.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_chapters.c_find_widget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @find_widget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @find_widget(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %7, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32*, i32** %5, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %2
  store i32* null, i32** %3, align 8
  br label %58

16:                                               ; preds = %12
  %17 = load i32*, i32** %4, align 8
  %18 = call i8* @gtk_widget_get_name(i32* %17)
  store i8* %18, i8** %6, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load i8*, i8** %6, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @strncmp(i8* %22, i32* %23, i32 80)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = load i32*, i32** %4, align 8
  store i32* %27, i32** %3, align 8
  br label %58

28:                                               ; preds = %21, %16
  %29 = load i32*, i32** %4, align 8
  %30 = call i64 @GTK_IS_CONTAINER(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %56

32:                                               ; preds = %28
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @GTK_CONTAINER(i32* %33)
  %35 = call %struct.TYPE_4__* @gtk_container_get_children(i32 %34)
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %9, align 8
  br label %36

36:                                               ; preds = %49, %32
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %38 = icmp ne %struct.TYPE_4__* %37, null
  br i1 %38, label %39, label %53

39:                                               ; preds = %36
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32* @GTK_WIDGET(i32 %42)
  %44 = load i32*, i32** %5, align 8
  %45 = call i32* @find_widget(i32* %43, i32* %44)
  store i32* %45, i32** %7, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %53

49:                                               ; preds = %39
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  store %struct.TYPE_4__* %52, %struct.TYPE_4__** %9, align 8
  br label %36

53:                                               ; preds = %48, %36
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %55 = call i32 @g_list_free(%struct.TYPE_4__* %54)
  br label %56

56:                                               ; preds = %53, %28
  %57 = load i32*, i32** %7, align 8
  store i32* %57, i32** %3, align 8
  br label %58

58:                                               ; preds = %56, %26, %15
  %59 = load i32*, i32** %3, align 8
  ret i32* %59
}

declare dso_local i8* @gtk_widget_get_name(i32*) #1

declare dso_local i32 @strncmp(i8*, i32*, i32) #1

declare dso_local i64 @GTK_IS_CONTAINER(i32*) #1

declare dso_local %struct.TYPE_4__* @gtk_container_get_children(i32) #1

declare dso_local i32 @GTK_CONTAINER(i32*) #1

declare dso_local i32* @GTK_WIDGET(i32) #1

declare dso_local i32 @g_list_free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
