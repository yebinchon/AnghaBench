; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/file/extr_archive_file.c_file_archive_extract_cb.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/file/extr_archive_file.c_file_archive_extract_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_extract_userdata = type { i8*, i32, i32, i32, i32, i32 }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32*, i32, i32, i32, i32, %struct.archive_extract_userdata*)* @file_archive_extract_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_archive_extract_cb(i8* %0, i8* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, %struct.archive_extract_userdata* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.archive_extract_userdata*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct.archive_extract_userdata* %7, %struct.archive_extract_userdata** %17, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = call i8* @path_get_extension(i8* %24)
  store i8* %25, i8** %18, align 8
  %26 = load i8*, i8** %18, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %108

28:                                               ; preds = %8
  %29 = load %struct.archive_extract_userdata*, %struct.archive_extract_userdata** %17, align 8
  %30 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = load i8*, i8** %18, align 8
  %33 = call i64 @string_list_find_elem(i32 %31, i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %108

35:                                               ; preds = %28
  %36 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %37 = zext i32 %36 to i64
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %19, align 8
  %39 = alloca i8, i64 %37, align 16
  store i64 %37, i64* %20, align 8
  %40 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %41 = zext i32 %40 to i64
  %42 = alloca i8, i64 %41, align 16
  store i64 %41, i64* %21, align 8
  store i8* null, i8** %22, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  store i8 0, i8* %43, align 16
  %44 = getelementptr inbounds i8, i8* %39, i64 0
  store i8 0, i8* %44, align 16
  %45 = load %struct.archive_extract_userdata*, %struct.archive_extract_userdata** %17, align 8
  %46 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %35
  %50 = load %struct.archive_extract_userdata*, %struct.archive_extract_userdata** %17, align 8
  %51 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %10, align 8
  %54 = call i32 @path_basename(i8* %53)
  %55 = trunc i64 %37 to i32
  %56 = call i32 @fill_pathname_join(i8* %39, i32 %52, i32 %54, i32 %55)
  br label %65

57:                                               ; preds = %35
  %58 = load %struct.archive_extract_userdata*, %struct.archive_extract_userdata** %17, align 8
  %59 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = call i32 @path_basename(i8* %61)
  %63 = trunc i64 %37 to i32
  %64 = call i32 @fill_pathname_resolve_relative(i8* %39, i8* %60, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %57, %49
  %66 = call i32 @strdup(i8* %39)
  %67 = load %struct.archive_extract_userdata*, %struct.archive_extract_userdata** %17, align 8
  %68 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 8
  %69 = load %struct.archive_extract_userdata*, %struct.archive_extract_userdata** %17, align 8
  %70 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i8* @path_get_archive_delim(i8* %71)
  store i8* %72, i8** %22, align 8
  %73 = load i8*, i8** %22, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %87

75:                                               ; preds = %65
  %76 = load i8*, i8** %22, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = trunc i64 %41 to i32
  %79 = call i32 @strlcpy(i8* %42, i8* %77, i32 %78)
  %80 = load %struct.archive_extract_userdata*, %struct.archive_extract_userdata** %17, align 8
  %81 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @string_is_equal_noncase(i32 %82, i8* %42)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %75
  store i32 1, i32* %9, align 4
  store i32 1, i32* %23, align 4
  br label %106

86:                                               ; preds = %75
  br label %93

87:                                               ; preds = %65
  %88 = load %struct.archive_extract_userdata*, %struct.archive_extract_userdata** %17, align 8
  %89 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = trunc i64 %41 to i32
  %92 = call i32 @strlcpy(i8* %42, i8* %90, i32 %91)
  br label %93

93:                                               ; preds = %87, %86
  %94 = load i8*, i8** %11, align 8
  %95 = load i32*, i32** %12, align 8
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* %15, align 4
  %99 = load %struct.archive_extract_userdata*, %struct.archive_extract_userdata** %17, align 8
  %100 = call i64 @file_archive_perform_mode(i8* %39, i8* %94, i32* %95, i32 %96, i32 %97, i32 %98, i32 0, %struct.archive_extract_userdata* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %93
  %103 = load %struct.archive_extract_userdata*, %struct.archive_extract_userdata** %17, align 8
  %104 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %103, i32 0, i32 1
  store i32 1, i32* %104, align 8
  br label %105

105:                                              ; preds = %102, %93
  store i32 0, i32* %9, align 4
  store i32 1, i32* %23, align 4
  br label %106

106:                                              ; preds = %105, %85
  %107 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %107)
  br label %109

108:                                              ; preds = %28, %8
  store i32 1, i32* %9, align 4
  br label %109

109:                                              ; preds = %108, %106
  %110 = load i32, i32* %9, align 4
  ret i32 %110
}

declare dso_local i8* @path_get_extension(i8*) #1

declare dso_local i64 @string_list_find_elem(i32, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @fill_pathname_join(i8*, i32, i32, i32) #1

declare dso_local i32 @path_basename(i8*) #1

declare dso_local i32 @fill_pathname_resolve_relative(i8*, i8*, i32, i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i8* @path_get_archive_delim(i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @string_is_equal_noncase(i32, i8*) #1

declare dso_local i64 @file_archive_perform_mode(i8*, i8*, i32*, i32, i32, i32, i32, %struct.archive_extract_userdata*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
