; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_menu_pico.c_me_list_get_next.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_menu_pico.c_me_list_get_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }

@me_list_i = common dso_local global %struct.TYPE_7__* null, align 8
@e_menu_table = common dso_local global %struct.TYPE_7__** null, align 8
@me_list_table = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @me_list_get_next() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_7__*, %struct.TYPE_7__** @me_list_i, align 8
  %4 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 1
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** @me_list_i, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** @me_list_i, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** @me_list_i, align 8
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %1, align 8
  br label %46

11:                                               ; preds = %0
  store i32 0, i32* %2, align 4
  br label %12

12:                                               ; preds = %27, %11
  %13 = load i32, i32* %2, align 4
  %14 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @e_menu_table, align 8
  %15 = call i32 @array_size(%struct.TYPE_7__** %14)
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %12
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** @me_list_table, align 8
  %19 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @e_menu_table, align 8
  %20 = load i32, i32* %2, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %19, i64 %21
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = icmp eq %struct.TYPE_7__* %18, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %30

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %2, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %2, align 4
  br label %12

30:                                               ; preds = %25, %12
  %31 = load i32, i32* %2, align 4
  %32 = add nsw i32 %31, 1
  %33 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @e_menu_table, align 8
  %34 = call i32 @array_size(%struct.TYPE_7__** %33)
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @e_menu_table, align 8
  %38 = load i32, i32* %2, align 4
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %37, i64 %40
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  store %struct.TYPE_7__* %42, %struct.TYPE_7__** @me_list_i, align 8
  store %struct.TYPE_7__* %42, %struct.TYPE_7__** @me_list_table, align 8
  br label %44

43:                                               ; preds = %30
  store %struct.TYPE_7__* null, %struct.TYPE_7__** @me_list_i, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** @me_list_table, align 8
  br label %44

44:                                               ; preds = %43, %36
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** @me_list_i, align 8
  store %struct.TYPE_7__* %45, %struct.TYPE_7__** %1, align 8
  br label %46

46:                                               ; preds = %44, %9
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  ret %struct.TYPE_7__* %47
}

declare dso_local i32 @array_size(%struct.TYPE_7__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
