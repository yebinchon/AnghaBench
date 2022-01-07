; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_entry_bind_key_set.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_entry_bind_key_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.retro_keybind = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @menu_entry_bind_key_set(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.retro_keybind*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = call %struct.TYPE_13__* @menu_entries_get_selection_buf_ptr_internal(i32 0)
  store %struct.TYPE_13__* %9, %struct.TYPE_13__** %5, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %11 = icmp ne %struct.TYPE_13__* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = load i64, i64* %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_12__*
  br label %22

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %21, %12
  %23 = phi %struct.TYPE_12__* [ %20, %12 ], [ null, %21 ]
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %6, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %25 = icmp ne %struct.TYPE_12__* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  br label %31

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30, %26
  %32 = phi %struct.TYPE_11__* [ %29, %26 ], [ null, %30 ]
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %7, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %34 = icmp ne %struct.TYPE_11__* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.retro_keybind*
  br label %43

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42, %35
  %44 = phi %struct.retro_keybind* [ %41, %35 ], [ null, %42 ]
  store %struct.retro_keybind* %44, %struct.retro_keybind** %8, align 8
  %45 = load %struct.retro_keybind*, %struct.retro_keybind** %8, align 8
  %46 = icmp ne %struct.retro_keybind* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load i64, i64* %4, align 8
  %49 = trunc i64 %48 to i32
  %50 = load %struct.retro_keybind*, %struct.retro_keybind** %8, align 8
  %51 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %47, %43
  ret void
}

declare dso_local %struct.TYPE_13__* @menu_entries_get_selection_buf_ptr_internal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
