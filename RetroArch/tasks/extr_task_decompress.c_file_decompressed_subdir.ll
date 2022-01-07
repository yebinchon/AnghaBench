; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_decompress.c_file_decompressed_subdir.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_decompress.c_file_decompressed_subdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_extract_userdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i8*, i32 }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@CALLBACK_ERROR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Failed to deflate %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32*, i32, i32, i32, i32, %struct.archive_extract_userdata*)* @file_decompressed_subdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_decompressed_subdir(i8* %0, i8* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, %struct.archive_extract_userdata* %7) #0 {
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
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8, align 1
  %23 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct.archive_extract_userdata* %7, %struct.archive_extract_userdata** %17, align 8
  %24 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %18, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %19, align 8
  %28 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %20, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = call i32 @strlen(i8* %31)
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %21, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load i64, i64* %21, align 8
  %36 = sub i64 %35, 1
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  store i8 %38, i8* %22, align 1
  %39 = getelementptr inbounds i8, i8* %30, i64 0
  store i8 0, i8* %39, align 16
  %40 = getelementptr inbounds i8, i8* %27, i64 0
  store i8 0, i8* %40, align 16
  %41 = load i8, i8* %22, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 47
  br i1 %43, label %48, label %44

44:                                               ; preds = %8
  %45 = load i8, i8* %22, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 92
  br i1 %47, label %48, label %49

48:                                               ; preds = %44, %8
  store i32 1, i32* %9, align 4
  store i32 1, i32* %23, align 4
  br label %111

49:                                               ; preds = %44
  %50 = load i8*, i8** %10, align 8
  %51 = load %struct.archive_extract_userdata*, %struct.archive_extract_userdata** %17, align 8
  %52 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i8* @strstr(i8* %50, i8* %55)
  %57 = load i8*, i8** %10, align 8
  %58 = icmp ne i8* %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  store i32 1, i32* %9, align 4
  store i32 1, i32* %23, align 4
  br label %111

60:                                               ; preds = %49
  %61 = load %struct.archive_extract_userdata*, %struct.archive_extract_userdata** %17, align 8
  %62 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @strlen(i8* %65)
  %67 = add nsw i32 %66, 1
  %68 = load i8*, i8** %10, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  store i8* %70, i8** %10, align 8
  %71 = load %struct.archive_extract_userdata*, %struct.archive_extract_userdata** %17, align 8
  %72 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = trunc i64 %29 to i32
  %78 = call i32 @fill_pathname_join(i8* %30, i32 %75, i8* %76, i32 %77)
  %79 = trunc i64 %25 to i32
  %80 = call i32 @fill_pathname_basedir(i8* %27, i8* %30, i32 %79)
  %81 = call i32 @path_mkdir(i8* %27)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %60
  br label %96

84:                                               ; preds = %60
  %85 = load i8*, i8** %11, align 8
  %86 = load i32*, i32** %12, align 8
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* %16, align 4
  %91 = load %struct.archive_extract_userdata*, %struct.archive_extract_userdata** %17, align 8
  %92 = call i32 @file_archive_perform_mode(i8* %30, i8* %85, i32* %86, i32 %87, i32 %88, i32 %89, i32 %90, %struct.archive_extract_userdata* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %84
  br label %96

95:                                               ; preds = %84
  store i32 1, i32* %9, align 4
  store i32 1, i32* %23, align 4
  br label %111

96:                                               ; preds = %94, %83
  %97 = load i32, i32* @CALLBACK_ERROR_SIZE, align 4
  %98 = call i64 @malloc(i32 %97)
  %99 = inttoptr i64 %98 to i8*
  %100 = load %struct.archive_extract_userdata*, %struct.archive_extract_userdata** %17, align 8
  %101 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  store i8* %99, i8** %103, align 8
  %104 = load %struct.archive_extract_userdata*, %struct.archive_extract_userdata** %17, align 8
  %105 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %104, i32 0, i32 0
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = load i32, i32* @CALLBACK_ERROR_SIZE, align 4
  %110 = call i32 @snprintf(i8* %108, i32 %109, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %30)
  store i32 0, i32* %9, align 4
  store i32 1, i32* %23, align 4
  br label %111

111:                                              ; preds = %96, %95, %59, %48
  %112 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %112)
  %113 = load i32, i32* %9, align 4
  ret i32 %113
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i8* @strstr(i8*, i8*) #2

declare dso_local i32 @fill_pathname_join(i8*, i32, i8*, i32) #2

declare dso_local i32 @fill_pathname_basedir(i8*, i8*, i32) #2

declare dso_local i32 @path_mkdir(i8*) #2

declare dso_local i32 @file_archive_perform_mode(i8*, i8*, i32*, i32, i32, i32, i32, %struct.archive_extract_userdata*) #2

declare dso_local i64 @malloc(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
