; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_retroarch.c_dir_is_empty.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_retroarch.c_dir_is_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dir_system = common dso_local global i32 0, align 4
@dir_savefile = common dso_local global i32 0, align 4
@current_savefile_dir = common dso_local global i32 0, align 4
@dir_savestate = common dso_local global i32 0, align 4
@current_savestate_dir = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dir_is_empty(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %21 [
    i32 128, label %5
    i32 130, label %8
    i32 133, label %11
    i32 129, label %14
    i32 132, label %17
    i32 131, label %20
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @dir_system, align 4
  %7 = call i32 @string_is_empty(i32 %6)
  store i32 %7, i32* %2, align 4
  br label %22

8:                                                ; preds = %1
  %9 = load i32, i32* @dir_savefile, align 4
  %10 = call i32 @string_is_empty(i32 %9)
  store i32 %10, i32* %2, align 4
  br label %22

11:                                               ; preds = %1
  %12 = load i32, i32* @current_savefile_dir, align 4
  %13 = call i32 @string_is_empty(i32 %12)
  store i32 %13, i32* %2, align 4
  br label %22

14:                                               ; preds = %1
  %15 = load i32, i32* @dir_savestate, align 4
  %16 = call i32 @string_is_empty(i32 %15)
  store i32 %16, i32* %2, align 4
  br label %22

17:                                               ; preds = %1
  %18 = load i32, i32* @current_savestate_dir, align 4
  %19 = call i32 @string_is_empty(i32 %18)
  store i32 %19, i32* %2, align 4
  br label %22

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %1, %20
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %17, %14, %11, %8, %5
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @string_is_empty(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
