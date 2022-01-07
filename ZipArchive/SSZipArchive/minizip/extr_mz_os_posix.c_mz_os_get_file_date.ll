; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_os_posix.c_mz_os_get_file_date.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_os_posix.c_mz_os_get_file_date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64 }

@MZ_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@MZ_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mz_os_get_file_date(i8* %0, i64* %1, i64* %2, i64* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.stat, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  store i8* null, i8** %10, align 8
  store i64 0, i64* %11, align 8
  %13 = load i32, i32* @MZ_INTERNAL_ERROR, align 4
  store i32 %13, i32* %12, align 4
  %14 = call i32 @memset(%struct.stat* %9, i32 0, i32 16)
  %15 = load i8*, i8** %5, align 8
  %16 = call i64 @strcmp(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %59

18:                                               ; preds = %4
  %19 = load i8*, i8** %5, align 8
  %20 = call i64 @strlen(i8* %19)
  store i64 %20, i64* %11, align 8
  %21 = load i64, i64* %11, align 8
  %22 = add i64 %21, 1
  %23 = call i64 @malloc(i64 %22)
  %24 = inttoptr i64 %23 to i8*
  store i8* %24, i8** %10, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load i64, i64* %11, align 8
  %28 = add i64 %27, 1
  %29 = call i32 @strncpy(i8* %25, i8* %26, i64 %28)
  %30 = load i8*, i8** %10, align 8
  %31 = call i32 @mz_path_remove_slash(i8* %30)
  %32 = load i8*, i8** %10, align 8
  %33 = call i64 @stat(i8* %32, %struct.stat* %9)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %56

35:                                               ; preds = %18
  %36 = load i64*, i64** %6, align 8
  %37 = icmp ne i64* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64*, i64** %6, align 8
  store i64 %40, i64* %41, align 8
  br label %42

42:                                               ; preds = %38, %35
  %43 = load i64*, i64** %7, align 8
  %44 = icmp ne i64* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64*, i64** %7, align 8
  store i64 %47, i64* %48, align 8
  br label %49

49:                                               ; preds = %45, %42
  %50 = load i64*, i64** %8, align 8
  %51 = icmp ne i64* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i64*, i64** %8, align 8
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %52, %49
  %55 = load i32, i32* @MZ_OK, align 4
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %54, %18
  %57 = load i8*, i8** %10, align 8
  %58 = call i32 @free(i8* %57)
  br label %59

59:                                               ; preds = %56, %4
  %60 = load i32, i32* %12, align 4
  ret i32 %60
}

declare dso_local i32 @memset(%struct.stat*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i32 @mz_path_remove_slash(i8*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
