; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509_crt.c_mbedtls_x509_crt_parse_path.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509_crt.c_mbedtls_x509_crt_parse_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.dirent = type { i32 }

@MBEDTLS_X509_MAX_FILE_PATH_LEN = common dso_local global i32 0, align 4
@MBEDTLS_ERR_X509_FILE_IO_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@MBEDTLS_ERR_X509_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@CP_ACP = common dso_local global i32 0, align 4
@ERROR_NO_MORE_FILES = common dso_local global i64 0, align 8
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@MAX_PATH = common dso_local global i32 0, align 4
@MBEDTLS_ERR_THREADING_MUTEX_ERROR = common dso_local global i32 0, align 4
@MBEDTLS_ERR_X509_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@mbedtls_threading_readdir_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_crt_parse_path(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.stat, align 4
  %10 = alloca %struct.dirent*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %15 = load i32, i32* @MBEDTLS_X509_MAX_FILE_PATH_LEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i32* @opendir(i8* %19)
  store i32* %20, i32** %13, align 8
  %21 = load i32*, i32** %13, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @MBEDTLS_ERR_X509_FILE_IO_ERROR, align 4
  store i32 %24, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %75

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %69, %56, %25
  %27 = load i32*, i32** %13, align 8
  %28 = call %struct.dirent* @readdir(i32* %27)
  store %struct.dirent* %28, %struct.dirent** %10, align 8
  %29 = icmp ne %struct.dirent* %28, null
  br i1 %29, label %30, label %70

30:                                               ; preds = %26
  %31 = trunc i64 %16 to i32
  %32 = load i8*, i8** %5, align 8
  %33 = load %struct.dirent*, %struct.dirent** %10, align 8
  %34 = getelementptr inbounds %struct.dirent, %struct.dirent* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @mbedtls_snprintf(i8* %18, i32 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %32, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %30
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp uge i64 %41, %16
  br i1 %42, label %43, label %45

43:                                               ; preds = %39, %30
  %44 = load i32, i32* @MBEDTLS_ERR_X509_BUFFER_TOO_SMALL, align 4
  store i32 %44, i32* %6, align 4
  br label %71

45:                                               ; preds = %39
  %46 = call i32 @stat(i8* %18, %struct.stat* %9)
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* @MBEDTLS_ERR_X509_FILE_IO_ERROR, align 4
  store i32 %49, i32* %6, align 4
  br label %71

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %50
  %52 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @S_ISREG(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  br label %26

57:                                               ; preds = %51
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @mbedtls_x509_crt_parse_file(i32* %58, i8* %18)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %69

65:                                               ; preds = %57
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %65, %62
  br label %26

70:                                               ; preds = %26
  br label %71

71:                                               ; preds = %70, %48, %43
  %72 = load i32*, i32** %13, align 8
  %73 = call i32 @closedir(i32* %72)
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %75

75:                                               ; preds = %71, %23
  %76 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %76)
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @opendir(i8*) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i32 @mbedtls_snprintf(i8*, i32, i8*, i8*, i32) #2

declare dso_local i32 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @S_ISREG(i32) #2

declare dso_local i32 @mbedtls_x509_crt_parse_file(i32*, i8*) #2

declare dso_local i32 @closedir(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
