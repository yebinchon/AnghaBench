; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_retroarch.c_path_get_ptr.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_retroarch.c_path_get_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@path_content = common dso_local global i8* null, align 8
@path_default_shader_preset = common dso_local global i8* null, align 8
@path_main_basename = common dso_local global i8* null, align 8
@path_core_options_file = common dso_local global i8* null, align 8
@subsystem_path = common dso_local global i8* null, align 8
@path_config_file = common dso_local global i8* null, align 8
@path_config_append_file = common dso_local global i8* null, align 8
@path_libretro = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @path_get_ptr(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %34 [
    i32 134, label %5
    i32 131, label %7
    i32 137, label %9
    i32 132, label %11
    i32 128, label %17
    i32 136, label %19
    i32 135, label %25
    i32 133, label %31
    i32 129, label %33
    i32 130, label %33
  ]

5:                                                ; preds = %1
  %6 = load i8*, i8** @path_content, align 8
  store i8* %6, i8** %2, align 8
  br label %35

7:                                                ; preds = %1
  %8 = load i8*, i8** @path_default_shader_preset, align 8
  store i8* %8, i8** %2, align 8
  br label %35

9:                                                ; preds = %1
  %10 = load i8*, i8** @path_main_basename, align 8
  store i8* %10, i8** %2, align 8
  br label %35

11:                                               ; preds = %1
  %12 = call i32 @path_is_empty(i32 132)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = load i8*, i8** @path_core_options_file, align 8
  store i8* %15, i8** %2, align 8
  br label %35

16:                                               ; preds = %11
  br label %34

17:                                               ; preds = %1
  %18 = load i8*, i8** @subsystem_path, align 8
  store i8* %18, i8** %2, align 8
  br label %35

19:                                               ; preds = %1
  %20 = call i32 @path_is_empty(i32 136)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = load i8*, i8** @path_config_file, align 8
  store i8* %23, i8** %2, align 8
  br label %35

24:                                               ; preds = %19
  br label %34

25:                                               ; preds = %1
  %26 = call i32 @path_is_empty(i32 135)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = load i8*, i8** @path_config_append_file, align 8
  store i8* %29, i8** %2, align 8
  br label %35

30:                                               ; preds = %25
  br label %34

31:                                               ; preds = %1
  %32 = load i8*, i8** @path_libretro, align 8
  store i8* %32, i8** %2, align 8
  br label %35

33:                                               ; preds = %1, %1
  br label %34

34:                                               ; preds = %1, %33, %30, %24, %16
  store i8* null, i8** %2, align 8
  br label %35

35:                                               ; preds = %34, %31, %28, %22, %17, %14, %9, %7, %5
  %36 = load i8*, i8** %2, align 8
  ret i8* %36
}

declare dso_local i32 @path_is_empty(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
