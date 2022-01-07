; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_os_posix.c_mz_os_utf8_string_create.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_os_posix.c_mz_os_utf8_string_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MZ_ENCODING_CODEPAGE_437 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"CP437\00", align 1
@MZ_ENCODING_CODEPAGE_932 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"CP932\00", align 1
@MZ_ENCODING_CODEPAGE_936 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"CP936\00", align 1
@MZ_ENCODING_CODEPAGE_950 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"CP950\00", align 1
@MZ_ENCODING_UTF8 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @mz_os_utf8_string_create(i8* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* null, i8** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %82

16:                                               ; preds = %2
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @MZ_ENCODING_CODEPAGE_437, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %46

21:                                               ; preds = %16
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @MZ_ENCODING_CODEPAGE_932, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %45

26:                                               ; preds = %21
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @MZ_ENCODING_CODEPAGE_936, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %44

31:                                               ; preds = %26
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @MZ_ENCODING_CODEPAGE_950, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %43

36:                                               ; preds = %31
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @MZ_ENCODING_UTF8, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  br label %42

41:                                               ; preds = %36
  store i32* null, i32** %3, align 8
  br label %82

42:                                               ; preds = %40
  br label %43

43:                                               ; preds = %42, %35
  br label %44

44:                                               ; preds = %43, %30
  br label %45

45:                                               ; preds = %44, %25
  br label %46

46:                                               ; preds = %45, %20
  %47 = load i8*, i8** %7, align 8
  %48 = call i64 @iconv_open(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %47)
  store i64 %48, i64* %6, align 8
  %49 = load i64, i64* %6, align 8
  %50 = icmp eq i64 %49, -1
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32* null, i32** %3, align 8
  br label %82

52:                                               ; preds = %46
  %53 = load i8*, i8** %4, align 8
  %54 = call i64 @strlen(i8* %53)
  store i64 %54, i64* %9, align 8
  %55 = load i64, i64* %9, align 8
  %56 = mul i64 %55, 2
  store i64 %56, i64* %10, align 8
  %57 = load i64, i64* %10, align 8
  %58 = add i64 %57, 1
  %59 = call i64 @MZ_ALLOC(i64 %58)
  %60 = inttoptr i64 %59 to i32*
  store i32* %60, i32** %11, align 8
  %61 = load i32*, i32** %11, align 8
  store i32* %61, i32** %12, align 8
  %62 = load i32*, i32** %11, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %52
  %65 = load i32*, i32** %11, align 8
  %66 = load i64, i64* %10, align 8
  %67 = add i64 %66, 1
  %68 = call i32 @memset(i32* %65, i32 0, i64 %67)
  %69 = load i64, i64* %6, align 8
  %70 = bitcast i32** %12 to i8**
  %71 = call i64 @iconv(i64 %69, i8** %4, i64* %9, i8** %70, i64* %10)
  store i64 %71, i64* %8, align 8
  br label %72

72:                                               ; preds = %64, %52
  %73 = load i64, i64* %6, align 8
  %74 = call i32 @iconv_close(i64 %73)
  %75 = load i64, i64* %8, align 8
  %76 = icmp eq i64 %75, -1
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32*, i32** %11, align 8
  %79 = call i32 @MZ_FREE(i32* %78)
  store i32* null, i32** %11, align 8
  br label %80

80:                                               ; preds = %77, %72
  %81 = load i32*, i32** %11, align 8
  store i32* %81, i32** %3, align 8
  br label %82

82:                                               ; preds = %80, %51, %41, %15
  %83 = load i32*, i32** %3, align 8
  ret i32* %83
}

declare dso_local i64 @iconv_open(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @MZ_ALLOC(i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i64 @iconv(i64, i8**, i64*, i8**, i64*) #1

declare dso_local i32 @iconv_close(i64) #1

declare dso_local i32 @MZ_FREE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
