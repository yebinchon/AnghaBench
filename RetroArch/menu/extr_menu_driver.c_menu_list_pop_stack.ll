; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_list_pop_stack.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_list_pop_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_9__*, i64, i32 }
%struct.TYPE_9__ = type { i64 }

@MENU_LIST_PLAIN = common dso_local global i32 0, align 4
@RARCH_MENU_CTL_LIST_FREE = common dso_local global i32 0, align 4
@MENU_ENTRIES_CTL_SET_REFRESH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64*, i32)* @menu_list_pop_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @menu_list_pop_stack(i32* %0, i64 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_8__, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = trunc i64 %15 to i32
  %17 = call %struct.TYPE_9__* @menu_list_get(i32* %14, i32 %16)
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %12, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @menu_list_get_stack_size(i32* %18, i64 %19)
  %21 = icmp sle i32 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %63

23:                                               ; preds = %4
  %24 = load i32, i32* @MENU_LIST_PLAIN, align 4
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 4
  store i32 %24, i32* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = call i32 @menu_driver_list_cache(%struct.TYPE_8__* %10)
  br label %31

31:                                               ; preds = %29, %23
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %31
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  store %struct.TYPE_9__* %37, %struct.TYPE_9__** %38, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %41, 1
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store i64 %42, i64* %43, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %46, 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  store i64 %47, i64* %48, align 8
  %49 = load i32, i32* @RARCH_MENU_CTL_LIST_FREE, align 4
  %50 = call i32 @menu_driver_ctl(i32 %49, %struct.TYPE_8__* %13)
  br label %51

51:                                               ; preds = %36, %31
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %53 = load i64*, i64** %8, align 8
  %54 = call i32 @file_list_pop(%struct.TYPE_9__* %52, i64* %53)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %56 = call i32 @menu_driver_list_set_selection(%struct.TYPE_9__* %55)
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %51
  %60 = load i32, i32* @MENU_ENTRIES_CTL_SET_REFRESH, align 4
  %61 = call i32 @menu_entries_ctl(i32 %60, i32* %11)
  br label %62

62:                                               ; preds = %59, %51
  store i32 1, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %22
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local %struct.TYPE_9__* @menu_list_get(i32*, i32) #1

declare dso_local i32 @menu_list_get_stack_size(i32*, i64) #1

declare dso_local i32 @menu_driver_list_cache(%struct.TYPE_8__*) #1

declare dso_local i32 @menu_driver_ctl(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @file_list_pop(%struct.TYPE_9__*, i64*) #1

declare dso_local i32 @menu_driver_list_set_selection(%struct.TYPE_9__*) #1

declare dso_local i32 @menu_entries_ctl(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
