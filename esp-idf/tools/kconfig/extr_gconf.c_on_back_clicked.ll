; ModuleID = '/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_gconf.c_on_back_clicked.c'
source_filename = "/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_gconf.c_on_back_clicked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@current = common dso_local global %struct.TYPE_5__* null, align 8
@P_UNKNOWN = common dso_local global i32 0, align 4
@P_MENU = common dso_local global i32 0, align 4
@rootmenu = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@back_btn = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @on_back_clicked(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** @current, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  br label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @P_UNKNOWN, align 4
  br label %21

21:                                               ; preds = %19, %13
  %22 = phi i32 [ %18, %13 ], [ %20, %19 ]
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @P_MENU, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** @current, align 8
  br label %30

30:                                               ; preds = %26, %21
  %31 = call i32 (...) @display_tree_part()
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %33 = icmp eq %struct.TYPE_5__* %32, @rootmenu
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, i32* @back_btn, align 4
  %36 = load i32, i32* @FALSE, align 4
  %37 = call i32 @gtk_widget_set_sensitive(i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %30
  ret void
}

declare dso_local i32 @display_tree_part(...) #1

declare dso_local i32 @gtk_widget_set_sensitive(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
