; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_dhm.c_load_file.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_dhm.c_load_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@MBEDTLS_ERR_DHM_FILE_IO_ERROR = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@MBEDTLS_ERR_DHM_ALLOC_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"-----BEGIN \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i64*)* @load_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_file(i8* %0, i8** %1, i64* %2) #0 {
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
  %14 = load i32, i32* @MBEDTLS_ERR_DHM_FILE_IO_ERROR, align 4
  store i32 %14, i32* %4, align 4
  br label %82

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
  %25 = load i32, i32* @MBEDTLS_ERR_DHM_FILE_IO_ERROR, align 4
  store i32 %25, i32* %4, align 4
  br label %82

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
  br i1 %35, label %44, label %36

36:                                               ; preds = %26
  %37 = load i64*, i64** %7, align 8
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %38, 1
  %40 = call i64 @mbedtls_calloc(i32 1, i64 %39)
  %41 = inttoptr i64 %40 to i8*
  %42 = load i8**, i8*** %6, align 8
  store i8* %41, i8** %42, align 8
  %43 = icmp eq i8* %41, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %36, %26
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @fclose(i32* %45)
  %47 = load i32, i32* @MBEDTLS_ERR_DHM_ALLOC_FAILED, align 4
  store i32 %47, i32* %4, align 4
  br label %82

48:                                               ; preds = %36
  %49 = load i8**, i8*** %6, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = load i64*, i64** %7, align 8
  %52 = load i64, i64* %51, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = call i64 @fread(i8* %50, i32 1, i64 %52, i32* %53)
  %55 = load i64*, i64** %7, align 8
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %54, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %48
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @fclose(i32* %59)
  %61 = load i8**, i8*** %6, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @mbedtls_free(i8* %62)
  %64 = load i32, i32* @MBEDTLS_ERR_DHM_FILE_IO_ERROR, align 4
  store i32 %64, i32* %4, align 4
  br label %82

65:                                               ; preds = %48
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @fclose(i32* %66)
  %68 = load i8**, i8*** %6, align 8
  %69 = load i8*, i8** %68, align 8
  %70 = load i64*, i64** %7, align 8
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  store i8 0, i8* %72, align 1
  %73 = load i8**, i8*** %6, align 8
  %74 = load i8*, i8** %73, align 8
  %75 = call i32* @strstr(i8* %74, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %65
  %78 = load i64*, i64** %7, align 8
  %79 = load i64, i64* %78, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %78, align 8
  br label %81

81:                                               ; preds = %77, %65
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %58, %44, %22, %13
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @mbedtls_calloc(i32, i64) #1

declare dso_local i64 @fread(i8*, i32, i64, i32*) #1

declare dso_local i32 @mbedtls_free(i8*) #1

declare dso_local i32* @strstr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
