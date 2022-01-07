; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonfilearchive_file.c_file_archive_filename_split.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonfilearchive_file.c_file_archive_filename_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }
%union.string_list_elem_attr = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.string_list* (i8*)* @file_archive_filename_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.string_list* @file_archive_filename_split(i8* %0) #0 {
  %2 = alloca %struct.string_list*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %union.string_list_elem_attr, align 8
  %5 = alloca %struct.string_list*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %7 = call %struct.string_list* (...) @string_list_new()
  store %struct.string_list* %7, %struct.string_list** %5, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i8* @path_get_archive_delim(i8* %8)
  store i8* %9, i8** %6, align 8
  %10 = bitcast %union.string_list_elem_attr* %4 to i64*
  store i64 0, i64* %10, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %43

13:                                               ; preds = %1
  %14 = load %struct.string_list*, %struct.string_list** %5, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = ptrtoint i8* %16 to i64
  %19 = ptrtoint i8* %17 to i64
  %20 = sub i64 %18, %19
  %21 = trunc i64 %20 to i32
  %22 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %4, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @string_list_append_n(%struct.string_list* %14, i8* %15, i32 %21, i64 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %13
  br label %54

27:                                               ; preds = %13
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %6, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i8, i8* %30, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = load %struct.string_list*, %struct.string_list** %5, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %4, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @string_list_append(%struct.string_list* %34, i8* %35, i64 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  br label %54

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41, %27
  br label %52

43:                                               ; preds = %1
  %44 = load %struct.string_list*, %struct.string_list** %5, align 8
  %45 = load i8*, i8** %3, align 8
  %46 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %4, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @string_list_append(%struct.string_list* %44, i8* %45, i64 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %43
  br label %54

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51, %42
  %53 = load %struct.string_list*, %struct.string_list** %5, align 8
  store %struct.string_list* %53, %struct.string_list** %2, align 8
  br label %57

54:                                               ; preds = %50, %40, %26
  %55 = load %struct.string_list*, %struct.string_list** %5, align 8
  %56 = call i32 @string_list_free(%struct.string_list* %55)
  store %struct.string_list* null, %struct.string_list** %2, align 8
  br label %57

57:                                               ; preds = %54, %52
  %58 = load %struct.string_list*, %struct.string_list** %2, align 8
  ret %struct.string_list* %58
}

declare dso_local %struct.string_list* @string_list_new(...) #1

declare dso_local i8* @path_get_archive_delim(i8*) #1

declare dso_local i32 @string_list_append_n(%struct.string_list*, i8*, i32, i64) #1

declare dso_local i32 @string_list_append(%struct.string_list*, i8*, i64) #1

declare dso_local i32 @string_list_free(%struct.string_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
