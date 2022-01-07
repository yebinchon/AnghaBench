; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/file/extr_archive_file.c_file_archive_get_file_list_cb.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/file/extr_archive_file.c_file_archive_get_file_list_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_extract_userdata = type { i32 }
%union.string_list_elem_attr = type { i64 }
%struct.string_list = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@RARCH_COMPRESSED_FILE_IN_ARCHIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32*, i32, i32, i32, i32, %struct.archive_extract_userdata*)* @file_archive_get_file_list_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_archive_get_file_list_cb(i8* %0, i8* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, %struct.archive_extract_userdata* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.archive_extract_userdata*, align 8
  %18 = alloca %union.string_list_elem_attr, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8, align 1
  %21 = alloca %struct.string_list*, align 8
  %22 = alloca i8*, align 8
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct.archive_extract_userdata* %7, %struct.archive_extract_userdata** %17, align 8
  %23 = bitcast %union.string_list_elem_attr* %18 to i64*
  store i64 0, i64* %23, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %71

26:                                               ; preds = %8
  %27 = load i8*, i8** %10, align 8
  %28 = call i64 @strlen(i8* %27)
  store i64 %28, i64* %19, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i64, i64* %19, align 8
  %31 = sub i64 %30, 1
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i8, i8* %32, align 1
  store i8 %33, i8* %20, align 1
  store %struct.string_list* null, %struct.string_list** %21, align 8
  %34 = load i8, i8* %20, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 47
  br i1 %36, label %41, label %37

37:                                               ; preds = %26
  %38 = load i8, i8* %20, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 92
  br i1 %40, label %41, label %44

41:                                               ; preds = %37, %26
  %42 = load %struct.string_list*, %struct.string_list** %21, align 8
  %43 = call i32 @string_list_free(%struct.string_list* %42)
  store i32 0, i32* %9, align 4
  br label %79

44:                                               ; preds = %37
  %45 = load i8*, i8** %11, align 8
  %46 = call %struct.string_list* @string_split(i8* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct.string_list* %46, %struct.string_list** %21, align 8
  %47 = load %struct.string_list*, %struct.string_list** %21, align 8
  %48 = icmp ne %struct.string_list* %47, null
  br i1 %48, label %49, label %70

49:                                               ; preds = %44
  %50 = load i8*, i8** %10, align 8
  %51 = call i8* @path_get_extension(i8* %50)
  store i8* %51, i8** %22, align 8
  %52 = load i8*, i8** %22, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load %struct.string_list*, %struct.string_list** %21, align 8
  %56 = call i32 @string_list_free(%struct.string_list* %55)
  store i32 0, i32* %9, align 4
  br label %79

57:                                               ; preds = %49
  %58 = load %struct.string_list*, %struct.string_list** %21, align 8
  %59 = load i8*, i8** %22, align 8
  %60 = call i32 @string_list_find_elem_prefix(%struct.string_list* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = load %struct.string_list*, %struct.string_list** %21, align 8
  %64 = call i32 @string_list_free(%struct.string_list* %63)
  store i32 -1, i32* %9, align 4
  br label %79

65:                                               ; preds = %57
  %66 = load i64, i64* @RARCH_COMPRESSED_FILE_IN_ARCHIVE, align 8
  %67 = bitcast %union.string_list_elem_attr* %18 to i64*
  store i64 %66, i64* %67, align 8
  %68 = load %struct.string_list*, %struct.string_list** %21, align 8
  %69 = call i32 @string_list_free(%struct.string_list* %68)
  br label %70

70:                                               ; preds = %65, %44
  br label %71

71:                                               ; preds = %70, %8
  %72 = load %struct.archive_extract_userdata*, %struct.archive_extract_userdata** %17, align 8
  %73 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i8*, i8** %10, align 8
  %76 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %18, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @string_list_append(i32 %74, i8* %75, i64 %77)
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %71, %62, %54, %41
  %80 = load i32, i32* %9, align 4
  ret i32 %80
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @string_list_free(%struct.string_list*) #1

declare dso_local %struct.string_list* @string_split(i8*, i8*) #1

declare dso_local i8* @path_get_extension(i8*) #1

declare dso_local i32 @string_list_find_elem_prefix(%struct.string_list*, i8*, i8*) #1

declare dso_local i32 @string_list_append(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
