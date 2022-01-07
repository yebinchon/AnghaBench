; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonfilearchive_file.c_file_archive_compressed_read.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonfilearchive_file.c_file_archive_compressed_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_archive_file_backend = type { i32 (i32, i32, i8**, i8*)* }
%struct.string_list = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @file_archive_compressed_read(i8* %0, i8** %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.file_archive_file_backend*, align 8
  %11 = alloca %struct.string_list*, align 8
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.file_archive_file_backend* null, %struct.file_archive_file_backend** %10, align 8
  store %struct.string_list* null, %struct.string_list** %11, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %4
  %15 = load i8*, i8** %8, align 8
  %16 = call i64 @path_is_valid(i8* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32*, i32** %9, align 8
  store i32 0, i32* %19, align 4
  store i32 1, i32* %5, align 4
  br label %65

20:                                               ; preds = %14, %4
  %21 = load i8*, i8** %6, align 8
  %22 = call %struct.string_list* @file_archive_filename_split(i8* %21)
  store %struct.string_list* %22, %struct.string_list** %11, align 8
  %23 = load %struct.string_list*, %struct.string_list** %11, align 8
  %24 = getelementptr inbounds %struct.string_list, %struct.string_list* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sle i32 %25, 1
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load %struct.string_list*, %struct.string_list** %11, align 8
  %29 = call i32 @string_list_free(%struct.string_list* %28)
  %30 = load i32*, i32** %9, align 8
  store i32 0, i32* %30, align 4
  store i32 0, i32* %5, align 4
  br label %65

31:                                               ; preds = %20
  %32 = load %struct.string_list*, %struct.string_list** %11, align 8
  %33 = getelementptr inbounds %struct.string_list, %struct.string_list* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.file_archive_file_backend* @file_archive_get_file_backend(i32 %37)
  store %struct.file_archive_file_backend* %38, %struct.file_archive_file_backend** %10, align 8
  %39 = load %struct.file_archive_file_backend*, %struct.file_archive_file_backend** %10, align 8
  %40 = getelementptr inbounds %struct.file_archive_file_backend, %struct.file_archive_file_backend* %39, i32 0, i32 0
  %41 = load i32 (i32, i32, i8**, i8*)*, i32 (i32, i32, i8**, i8*)** %40, align 8
  %42 = load %struct.string_list*, %struct.string_list** %11, align 8
  %43 = getelementptr inbounds %struct.string_list, %struct.string_list* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.string_list*, %struct.string_list** %11, align 8
  %49 = getelementptr inbounds %struct.string_list, %struct.string_list* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i8**, i8*** %7, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 %41(i32 %47, i32 %53, i8** %54, i8* %55)
  %57 = load i32*, i32** %9, align 8
  store i32 %56, i32* %57, align 4
  %58 = load %struct.string_list*, %struct.string_list** %11, align 8
  %59 = call i32 @string_list_free(%struct.string_list* %58)
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, -1
  br i1 %62, label %63, label %64

63:                                               ; preds = %31
  store i32 1, i32* %5, align 4
  br label %65

64:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %64, %63, %27, %18
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i64 @path_is_valid(i8*) #1

declare dso_local %struct.string_list* @file_archive_filename_split(i8*) #1

declare dso_local i32 @string_list_free(%struct.string_list*) #1

declare dso_local %struct.file_archive_file_backend* @file_archive_get_file_backend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
