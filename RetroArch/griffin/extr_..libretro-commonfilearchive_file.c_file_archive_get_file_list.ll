; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonfilearchive_file.c_file_archive_get_file_list.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonfilearchive_file.c_file_archive_get_file_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }
%struct.archive_extract_userdata = type { i32, i32, i8*, %struct.string_list*, %struct.TYPE_2__, i32*, i64, i32*, i32*, i64, i32*, i32*, i32*, i32 }
%struct.TYPE_2__ = type { i32, i64, i32*, i32* }

@file_archive_get_file_list_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.string_list* @file_archive_get_file_list(i8* %0, i8* %1) #0 {
  %3 = alloca %struct.string_list*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.archive_extract_userdata, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %6, i32 0, i32 13
  %8 = load i32, i32* %7, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @strlcpy(i32 %8, i8* %9, i32 4)
  %11 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %6, i32 0, i32 12
  store i32* null, i32** %11, align 8
  %12 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %6, i32 0, i32 11
  store i32* null, i32** %12, align 8
  %13 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %6, i32 0, i32 10
  store i32* null, i32** %13, align 8
  %14 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %6, i32 0, i32 9
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %6, i32 0, i32 8
  store i32* null, i32** %15, align 8
  %16 = call %struct.string_list* (...) @string_list_new()
  %17 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %6, i32 0, i32 3
  store %struct.string_list* %16, %struct.string_list** %17, align 8
  %18 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %6, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %6, i32 0, i32 1
  store i32 1, i32* %19, align 4
  %20 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %6, i32 0, i32 7
  store i32* null, i32** %20, align 8
  %21 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %6, i32 0, i32 2
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %6, i32 0, i32 6
  store i64 0, i64* %24, align 8
  %25 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %6, i32 0, i32 5
  store i32* null, i32** %25, align 8
  %26 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %6, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  store i32* null, i32** %27, align 8
  %28 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %6, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  store i32* null, i32** %29, align 8
  %30 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %6, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %6, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %6, i32 0, i32 3
  %35 = load %struct.string_list*, %struct.string_list** %34, align 8
  %36 = icmp ne %struct.string_list* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %2
  br label %48

38:                                               ; preds = %2
  %39 = load i8*, i8** %4, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* @file_archive_get_file_list_cb, align 4
  %42 = call i32 @file_archive_walk(i8* %39, i8* %40, i32 %41, %struct.archive_extract_userdata* %6)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  br label %48

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %6, i32 0, i32 3
  %47 = load %struct.string_list*, %struct.string_list** %46, align 8
  store %struct.string_list* %47, %struct.string_list** %3, align 8
  br label %57

48:                                               ; preds = %44, %37
  %49 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %6, i32 0, i32 3
  %50 = load %struct.string_list*, %struct.string_list** %49, align 8
  %51 = icmp ne %struct.string_list* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %6, i32 0, i32 3
  %54 = load %struct.string_list*, %struct.string_list** %53, align 8
  %55 = call i32 @string_list_free(%struct.string_list* %54)
  br label %56

56:                                               ; preds = %52, %48
  store %struct.string_list* null, %struct.string_list** %3, align 8
  br label %57

57:                                               ; preds = %56, %45
  %58 = load %struct.string_list*, %struct.string_list** %3, align 8
  ret %struct.string_list* %58
}

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local %struct.string_list* @string_list_new(...) #1

declare dso_local i32 @file_archive_walk(i8*, i8*, i32, %struct.archive_extract_userdata*) #1

declare dso_local i32 @string_list_free(%struct.string_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
