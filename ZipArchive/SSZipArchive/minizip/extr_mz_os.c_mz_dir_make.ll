; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_os.c_mz_dir_make.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_os.c_mz_dir_make.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MZ_OK = common dso_local global i64 0, align 8
@MZ_MEM_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mz_dir_make(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  %9 = load i64, i64* @MZ_OK, align 8
  store i64 %9, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8 0, i8* %8, align 1
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @strlen(i8* %10)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp sle i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %84

15:                                               ; preds = %1
  %16 = load i64, i64* %5, align 8
  %17 = add nsw i64 %16, 1
  %18 = call i64 @MZ_ALLOC(i64 %17)
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i64, i64* @MZ_MEM_ERROR, align 8
  store i64 %23, i64* %2, align 8
  br label %84

24:                                               ; preds = %15
  %25 = load i8*, i8** %6, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @strcpy(i8* %25, i8* %26)
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @mz_path_remove_slash(i8* %28)
  %30 = load i8*, i8** %6, align 8
  %31 = call i64 @mz_os_make_dir(i8* %30)
  store i64 %31, i64* %4, align 8
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @MZ_OK, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %80

35:                                               ; preds = %24
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  store i8* %37, i8** %7, align 8
  br label %38

38:                                               ; preds = %35, %74
  br label %39

39:                                               ; preds = %56, %38
  %40 = load i8*, i8** %7, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load i8*, i8** %7, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 92
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i8*, i8** %7, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 47
  br label %54

54:                                               ; preds = %49, %44, %39
  %55 = phi i1 [ false, %44 ], [ false, %39 ], [ %53, %49 ]
  br i1 %55, label %56, label %59

56:                                               ; preds = %54
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  store i8* %58, i8** %7, align 8
  br label %39

59:                                               ; preds = %54
  %60 = load i8*, i8** %7, align 8
  %61 = load i8, i8* %60, align 1
  store i8 %61, i8* %8, align 1
  %62 = load i8*, i8** %7, align 8
  store i8 0, i8* %62, align 1
  %63 = load i8*, i8** %6, align 8
  %64 = call i64 @mz_os_make_dir(i8* %63)
  store i64 %64, i64* %4, align 8
  %65 = load i64, i64* %4, align 8
  %66 = load i64, i64* @MZ_OK, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %79

69:                                               ; preds = %59
  %70 = load i8, i8* %8, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %79

74:                                               ; preds = %69
  %75 = load i8, i8* %8, align 1
  %76 = load i8*, i8** %7, align 8
  store i8 %75, i8* %76, align 1
  %77 = load i8*, i8** %7, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  store i8* %78, i8** %7, align 8
  br label %38

79:                                               ; preds = %73, %68
  br label %80

80:                                               ; preds = %79, %24
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 @MZ_FREE(i8* %81)
  %83 = load i64, i64* %4, align 8
  store i64 %83, i64* %2, align 8
  br label %84

84:                                               ; preds = %80, %22, %14
  %85 = load i64, i64* %2, align 8
  ret i64 %85
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @MZ_ALLOC(i64) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @mz_path_remove_slash(i8*) #1

declare dso_local i64 @mz_os_make_dir(i8*) #1

declare dso_local i32 @MZ_FREE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
