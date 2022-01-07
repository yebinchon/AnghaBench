; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_path_is_empty.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_path_is_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@path_default_shader_preset = common dso_local global i32 0, align 4
@subsystem_path = common dso_local global i32 0, align 4
@path_config_file = common dso_local global i32 0, align 4
@path_core_options_file = common dso_local global i32 0, align 4
@path_config_append_file = common dso_local global i32 0, align 4
@path_content = common dso_local global i32 0, align 4
@path_libretro = common dso_local global i32 0, align 4
@path_main_basename = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @path_is_empty(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %54 [
    i32 131, label %5
    i32 128, label %11
    i32 136, label %17
    i32 132, label %23
    i32 135, label %29
    i32 134, label %35
    i32 133, label %41
    i32 137, label %47
    i32 129, label %53
    i32 130, label %53
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @path_default_shader_preset, align 4
  %7 = call i32 @string_is_empty(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  store i32 1, i32* %2, align 4
  br label %55

10:                                               ; preds = %5
  br label %54

11:                                               ; preds = %1
  %12 = load i32, i32* @subsystem_path, align 4
  %13 = call i32 @string_is_empty(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %55

16:                                               ; preds = %11
  br label %54

17:                                               ; preds = %1
  %18 = load i32, i32* @path_config_file, align 4
  %19 = call i32 @string_is_empty(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 1, i32* %2, align 4
  br label %55

22:                                               ; preds = %17
  br label %54

23:                                               ; preds = %1
  %24 = load i32, i32* @path_core_options_file, align 4
  %25 = call i32 @string_is_empty(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 1, i32* %2, align 4
  br label %55

28:                                               ; preds = %23
  br label %54

29:                                               ; preds = %1
  %30 = load i32, i32* @path_config_append_file, align 4
  %31 = call i32 @string_is_empty(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 1, i32* %2, align 4
  br label %55

34:                                               ; preds = %29
  br label %54

35:                                               ; preds = %1
  %36 = load i32, i32* @path_content, align 4
  %37 = call i32 @string_is_empty(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 1, i32* %2, align 4
  br label %55

40:                                               ; preds = %35
  br label %54

41:                                               ; preds = %1
  %42 = load i32, i32* @path_libretro, align 4
  %43 = call i32 @string_is_empty(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 1, i32* %2, align 4
  br label %55

46:                                               ; preds = %41
  br label %54

47:                                               ; preds = %1
  %48 = load i32, i32* @path_main_basename, align 4
  %49 = call i32 @string_is_empty(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 1, i32* %2, align 4
  br label %55

52:                                               ; preds = %47
  br label %54

53:                                               ; preds = %1, %1
  br label %54

54:                                               ; preds = %1, %53, %52, %46, %40, %34, %28, %22, %16, %10
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %51, %45, %39, %33, %27, %21, %15, %9
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @string_is_empty(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
