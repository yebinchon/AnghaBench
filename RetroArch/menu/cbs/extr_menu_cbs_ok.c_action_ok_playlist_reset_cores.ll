; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_action_ok_playlist_reset_cores.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_action_ok_playlist_reset_cores.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i64, i64)* @action_ok_playlist_reset_cores to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_ok_playlist_reset_cores(i8* %0, i8* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = call i32* (...) @playlist_get_cached()
  store i32* %14, i32** %12, align 8
  store i8* null, i8** %13, align 8
  %15 = load i32*, i32** %12, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %28

18:                                               ; preds = %5
  %19 = load i32*, i32** %12, align 8
  %20 = call i8* @playlist_get_conf_path(i32* %19)
  store i8* %20, i8** %13, align 8
  %21 = load i8*, i8** %13, align 8
  %22 = call i64 @string_is_empty(i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 -1, i32* %6, align 4
  br label %28

25:                                               ; preds = %18
  %26 = load i8*, i8** %13, align 8
  %27 = call i32 @task_push_pl_manager_reset_cores(i8* %26)
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %25, %24, %17
  %29 = load i32, i32* %6, align 4
  ret i32 %29
}

declare dso_local i32* @playlist_get_cached(...) #1

declare dso_local i8* @playlist_get_conf_path(i32*) #1

declare dso_local i64 @string_is_empty(i8*) #1

declare dso_local i32 @task_push_pl_manager_reset_cores(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
