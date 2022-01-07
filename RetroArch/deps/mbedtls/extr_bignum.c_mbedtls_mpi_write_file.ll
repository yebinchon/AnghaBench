; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_bignum.c_mbedtls_mpi_write_file.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_bignum.c_mbedtls_mpi_write_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_MPI_RW_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MBEDTLS_ERR_MPI_FILE_IO_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_write_file(i8* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %17 = load i32, i32* @MBEDTLS_MPI_RW_BUFFER_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %14, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %15, align 8
  %21 = trunc i64 %18 to i32
  %22 = call i32 @memset(i8* %20, i32 0, i32 %21)
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sub i64 %18, 2
  %26 = trunc i64 %25 to i32
  %27 = call i32 @mbedtls_mpi_write_string(i32* %23, i32 %24, i8* %20, i32 %26, i64* %11)
  %28 = call i32 @MBEDTLS_MPI_CHK(i32 %27)
  %29 = load i8*, i8** %6, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %32

32:                                               ; preds = %31, %4
  %33 = load i8*, i8** %6, align 8
  %34 = call i64 @strlen(i8* %33)
  store i64 %34, i64* %13, align 8
  %35 = call i64 @strlen(i8* %20)
  store i64 %35, i64* %12, align 8
  %36 = load i64, i64* %12, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %12, align 8
  %38 = getelementptr inbounds i8, i8* %20, i64 %36
  store i8 13, i8* %38, align 1
  %39 = load i64, i64* %12, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %12, align 8
  %41 = getelementptr inbounds i8, i8* %20, i64 %39
  store i8 10, i8* %41, align 1
  %42 = load i32*, i32** %9, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %60

44:                                               ; preds = %32
  %45 = load i8*, i8** %6, align 8
  %46 = load i64, i64* %13, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = call i64 @fwrite(i8* %45, i32 1, i64 %46, i32* %47)
  %49 = load i64, i64* %13, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %57, label %51

51:                                               ; preds = %44
  %52 = load i64, i64* %12, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = call i64 @fwrite(i8* %20, i32 1, i64 %52, i32* %53)
  %55 = load i64, i64* %12, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %51, %44
  %58 = load i32, i32* @MBEDTLS_ERR_MPI_FILE_IO_ERROR, align 4
  store i32 %58, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %66

59:                                               ; preds = %51
  br label %63

60:                                               ; preds = %32
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @mbedtls_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %61, i8* %20)
  br label %63

63:                                               ; preds = %60, %59
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %66

66:                                               ; preds = %64, %57
  %67 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %67)
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @MBEDTLS_MPI_CHK(i32) #2

declare dso_local i32 @mbedtls_mpi_write_string(i32*, i32, i8*, i32, i64*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @fwrite(i8*, i32, i64, i32*) #2

declare dso_local i32 @mbedtls_printf(i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
