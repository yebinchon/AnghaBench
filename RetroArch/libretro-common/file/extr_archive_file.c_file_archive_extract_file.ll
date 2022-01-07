; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/file/extr_archive_file.c_file_archive_extract_file.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/file/extr_archive_file.c_file_archive_extract_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_extract_userdata = type { i8*, i8*, i64, i32, i32, i8*, i32*, %struct.TYPE_2__, i32*, i64, i32*, i32*, %struct.string_list*, i32* }
%struct.TYPE_2__ = type { i32, i64, i32*, i32* }
%struct.string_list = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"|\00", align 1
@file_archive_extract_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @file_archive_extract_file(i8* %0, i64 %1, i8* %2, i8* %3, i8* %4, i64 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.archive_extract_userdata, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.string_list*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  store i32 1, i32* %14, align 4
  %16 = load i8*, i8** %9, align 8
  %17 = call %struct.string_list* @string_split(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct.string_list* %17, %struct.string_list** %15, align 8
  %18 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %13, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %13, i32 0, i32 6
  store i32* null, i32** %21, align 8
  %22 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %13, i32 0, i32 13
  store i32* null, i32** %22, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %13, i32 0, i32 1
  store i8* %23, i8** %24, align 8
  %25 = load i64, i64* %8, align 8
  %26 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %13, i32 0, i32 2
  store i64 %25, i64* %26, align 8
  %27 = load %struct.string_list*, %struct.string_list** %15, align 8
  %28 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %13, i32 0, i32 12
  store %struct.string_list* %27, %struct.string_list** %28, align 8
  %29 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %13, i32 0, i32 11
  store i32* null, i32** %29, align 8
  %30 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %13, i32 0, i32 3
  store i32 0, i32* %30, align 8
  %31 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %13, i32 0, i32 4
  store i32 0, i32* %31, align 4
  %32 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %13, i32 0, i32 10
  store i32* null, i32** %32, align 8
  %33 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %13, i32 0, i32 5
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %13, i32 0, i32 9
  store i64 0, i64* %36, align 8
  %37 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %13, i32 0, i32 8
  store i32* null, i32** %37, align 8
  %38 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %13, i32 0, i32 7
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  store i32* null, i32** %39, align 8
  %40 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %13, i32 0, i32 7
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  store i32* null, i32** %41, align 8
  %42 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %13, i32 0, i32 7
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %13, i32 0, i32 7
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = load %struct.string_list*, %struct.string_list** %15, align 8
  %47 = icmp ne %struct.string_list* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %6
  store i32 0, i32* %14, align 4
  br label %73

49:                                               ; preds = %6
  %50 = load i8*, i8** %7, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = load i32, i32* @file_archive_extract_cb, align 4
  %53 = call i32 @file_archive_walk(i8* %50, i8* %51, i32 %52, %struct.archive_extract_userdata* %13)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %49
  store i32 0, i32* %14, align 4
  br label %73

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %13, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  store i32 0, i32* %14, align 4
  br label %73

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %13, i32 0, i32 6
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @string_is_empty(i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %61
  %67 = load i8*, i8** %11, align 8
  %68 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %13, i32 0, i32 6
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* %12, align 8
  %71 = call i32 @strlcpy(i8* %67, i32* %69, i64 %70)
  br label %72

72:                                               ; preds = %66, %61
  br label %73

73:                                               ; preds = %72, %60, %55, %48
  %74 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %13, i32 0, i32 6
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %13, i32 0, i32 6
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @free(i32* %79)
  br label %81

81:                                               ; preds = %77, %73
  %82 = load %struct.string_list*, %struct.string_list** %15, align 8
  %83 = icmp ne %struct.string_list* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load %struct.string_list*, %struct.string_list** %15, align 8
  %86 = call i32 @string_list_free(%struct.string_list* %85)
  br label %87

87:                                               ; preds = %84, %81
  %88 = load i32, i32* %14, align 4
  ret i32 %88
}

declare dso_local %struct.string_list* @string_split(i8*, i8*) #1

declare dso_local i32 @file_archive_walk(i8*, i8*, i32, %struct.archive_extract_userdata*) #1

declare dso_local i32 @string_is_empty(i32*) #1

declare dso_local i32 @strlcpy(i8*, i32*, i64) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @string_list_free(%struct.string_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
