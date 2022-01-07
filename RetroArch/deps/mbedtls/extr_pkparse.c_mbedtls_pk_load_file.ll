; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pkparse.c_mbedtls_pk_load_file.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pkparse.c_mbedtls_pk_load_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@MBEDTLS_ERR_PK_FILE_IO_ERROR = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@MBEDTLS_ERR_PK_ALLOC_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"-----BEGIN \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_pk_load_file(i8* %0, i8** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32* @fopen(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %8, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @MBEDTLS_ERR_PK_FILE_IO_ERROR, align 4
  store i32 %14, i32* %4, align 4
  br label %81

15:                                               ; preds = %3
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* @SEEK_END, align 4
  %18 = call i32 @fseek(i32* %16, i32 0, i32 %17)
  %19 = load i32*, i32** %8, align 8
  %20 = call i64 @ftell(i32* %19)
  store i64 %20, i64* %9, align 8
  %21 = icmp eq i64 %20, -1
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @fclose(i32* %23)
  %25 = load i32, i32* @MBEDTLS_ERR_PK_FILE_IO_ERROR, align 4
  store i32 %25, i32* %4, align 4
  br label %81

26:                                               ; preds = %15
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* @SEEK_SET, align 4
  %29 = call i32 @fseek(i32* %27, i32 0, i32 %28)
  %30 = load i64, i64* %9, align 8
  %31 = load i64*, i64** %7, align 8
  store i64 %30, i64* %31, align 8
  %32 = load i64*, i64** %7, align 8
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %33, 1
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %26
  %37 = load i64*, i64** %7, align 8
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %38, 1
  %40 = call i8* @mbedtls_calloc(i32 1, i64 %39)
  %41 = load i8**, i8*** %6, align 8
  store i8* %40, i8** %41, align 8
  %42 = icmp eq i8* %40, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %36, %26
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @fclose(i32* %44)
  %46 = load i32, i32* @MBEDTLS_ERR_PK_ALLOC_FAILED, align 4
  store i32 %46, i32* %4, align 4
  br label %81

47:                                               ; preds = %36
  %48 = load i8**, i8*** %6, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = load i64*, i64** %7, align 8
  %51 = load i64, i64* %50, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = call i64 @fread(i8* %49, i32 1, i64 %51, i32* %52)
  %54 = load i64*, i64** %7, align 8
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %53, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %47
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 @fclose(i32* %58)
  %60 = load i8**, i8*** %6, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @mbedtls_free(i8* %61)
  %63 = load i32, i32* @MBEDTLS_ERR_PK_FILE_IO_ERROR, align 4
  store i32 %63, i32* %4, align 4
  br label %81

64:                                               ; preds = %47
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @fclose(i32* %65)
  %67 = load i8**, i8*** %6, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = load i64*, i64** %7, align 8
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  store i8 0, i8* %71, align 1
  %72 = load i8**, i8*** %6, align 8
  %73 = load i8*, i8** %72, align 8
  %74 = call i32* @strstr(i8* %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %64
  %77 = load i64*, i64** %7, align 8
  %78 = load i64, i64* %77, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %77, align 8
  br label %80

80:                                               ; preds = %76, %64
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %57, %43, %22, %13
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i8* @mbedtls_calloc(i32, i64) #1

declare dso_local i64 @fread(i8*, i32, i64, i32*) #1

declare dso_local i32 @mbedtls_free(i8*) #1

declare dso_local i32* @strstr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
