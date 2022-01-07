; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_database.c_task_database_iterate.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_database.c_task_database_iterate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @task_database_iterate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @task_database_iterate(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %7, align 8
  %10 = call i8* @database_info_get_current_element_name(i32* %9)
  store i8* %10, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %61

14:                                               ; preds = %3
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @database_info_get_type(i32* %15)
  %17 = icmp eq i32 %16, 132
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = load i8*, i8** %8, align 8
  %20 = call i64 @path_contains_compressed_file(i8* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @database_info_set_type(i32* %23, i32 131)
  br label %25

25:                                               ; preds = %22, %18
  br label %26

26:                                               ; preds = %25, %14
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @database_info_get_type(i32* %27)
  switch i32 %28, label %59 [
    i32 132, label %29
    i32 131, label %34
    i32 130, label %40
    i32 128, label %46
    i32 133, label %52
    i32 129, label %58
  ]

29:                                               ; preds = %26
  %30 = load i32*, i32** %6, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @task_database_iterate_playlist(i32* %30, i32* %31, i8* %32)
  store i32 %33, i32* %4, align 4
  br label %61

34:                                               ; preds = %26
  %35 = load i32*, i32** %5, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @task_database_iterate_playlist_archive(i32* %35, i32* %36, i32* %37, i8* %38)
  store i32 %39, i32* %4, align 4
  br label %61

40:                                               ; preds = %26
  %41 = load i32*, i32** %5, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @task_database_iterate_playlist_lutro(i32* %41, i32* %42, i32* %43, i8* %44)
  store i32 %45, i32* %4, align 4
  br label %61

46:                                               ; preds = %26
  %47 = load i32*, i32** %5, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @task_database_iterate_serial_lookup(i32* %47, i32* %48, i32* %49, i8* %50)
  store i32 %51, i32* %4, align 4
  br label %61

52:                                               ; preds = %26
  %53 = load i32*, i32** %5, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @task_database_iterate_crc_lookup(i32* %53, i32* %54, i32* %55, i8* %56, i32* null)
  store i32 %57, i32* %4, align 4
  br label %61

58:                                               ; preds = %26
  br label %59

59:                                               ; preds = %26, %58
  br label %60

60:                                               ; preds = %59
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %52, %46, %40, %34, %29, %13
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i8* @database_info_get_current_element_name(i32*) #1

declare dso_local i32 @database_info_get_type(i32*) #1

declare dso_local i64 @path_contains_compressed_file(i8*) #1

declare dso_local i32 @database_info_set_type(i32*, i32) #1

declare dso_local i32 @task_database_iterate_playlist(i32*, i32*, i8*) #1

declare dso_local i32 @task_database_iterate_playlist_archive(i32*, i32*, i32*, i8*) #1

declare dso_local i32 @task_database_iterate_playlist_lutro(i32*, i32*, i32*, i8*) #1

declare dso_local i32 @task_database_iterate_serial_lookup(i32*, i32*, i32*, i8*) #1

declare dso_local i32 @task_database_iterate_crc_lookup(i32*, i32*, i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
