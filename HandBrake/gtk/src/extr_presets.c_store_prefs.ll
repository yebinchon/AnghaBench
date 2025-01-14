; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_presets.c_store_prefs.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_presets.c_store_prefs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@prefs_timeout_id = common dso_local global i64 0, align 8
@delayed_store_prefs = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @store_prefs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @store_prefs() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = load i64, i64* @prefs_timeout_id, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %0
  %6 = call i32* (...) @g_main_context_default()
  store i32* %6, i32** %1, align 8
  %7 = load i32*, i32** %1, align 8
  %8 = load i64, i64* @prefs_timeout_id, align 8
  %9 = call i32* @g_main_context_find_source_by_id(i32* %7, i64 %8)
  store i32* %9, i32** %2, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %5
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @g_source_destroy(i32* %13)
  br label %15

15:                                               ; preds = %12, %5
  br label %16

16:                                               ; preds = %15, %0
  %17 = load i64, i64* @delayed_store_prefs, align 8
  %18 = trunc i64 %17 to i32
  %19 = call i64 @g_timeout_add_seconds(i32 1, i32 %18, i32* null)
  store i64 %19, i64* @prefs_timeout_id, align 8
  ret void
}

declare dso_local i32* @g_main_context_default(...) #1

declare dso_local i32* @g_main_context_find_source_by_id(i32*, i64) #1

declare dso_local i32 @g_source_destroy(i32*) #1

declare dso_local i64 @g_timeout_add_seconds(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
