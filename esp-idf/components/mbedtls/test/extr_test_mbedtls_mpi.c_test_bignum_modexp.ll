; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mbedtls/test/extr_test_mbedtls_mpi.c_test_bignum_modexp.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mbedtls/test/extr_test_mbedtls_mpi.c_test_bignum_modexp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"%s = (%s ^ %s) mod %s  ret=%d ... \00", align 1
@MBEDTLS_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"\0A Expected '%s' Was '%s' \0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c" FAIL\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" PASS\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i8*, i32)* @test_bignum_modexp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_bignum_modexp(i8* %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [400 x i8], align 16
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %18 = bitcast [400 x i8]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 400, i1 false)
  store i64 0, i64* %16, align 8
  store i32 0, i32* %17, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %19, i8* %20, i8* %21, i8* %22, i32 %23)
  %25 = call i32 @mbedtls_mpi_init(i32* %11)
  %26 = call i32 @mbedtls_mpi_init(i32* %12)
  %27 = call i32 @mbedtls_mpi_init(i32* %13)
  %28 = call i32 @mbedtls_mpi_init(i32* %14)
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @mbedtls_mpi_read_string(i32* %12, i32 16, i8* %29)
  %31 = call i32 @TEST_ASSERT_FALSE(i32 %30)
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @mbedtls_mpi_read_string(i32* %13, i32 16, i8* %32)
  %34 = call i32 @TEST_ASSERT_FALSE(i32 %33)
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @mbedtls_mpi_read_string(i32* %14, i32 16, i8* %35)
  %37 = call i32 @TEST_ASSERT_FALSE(i32 %36)
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @mbedtls_mpi_exp_mod(i32* %11, i32* %12, i32* %13, i32* %14, i32* null)
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %5
  store i32 1, i32* %17, align 4
  br label %42

42:                                               ; preds = %41, %5
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @MBEDTLS_OK, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %42
  %47 = getelementptr inbounds [400 x i8], [400 x i8]* %15, i64 0, i64 0
  %48 = call i32 @mbedtls_mpi_write_string(i32* %11, i32 16, i8* %47, i32 399, i64* %16)
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds [400 x i8], [400 x i8]* %15, i64 0, i64 0
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @strlen(i8* %51)
  %53 = call i64 @memcmp(i8* %49, i8* %50, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %46
  %56 = load i8*, i8** %6, align 8
  %57 = getelementptr inbounds [400 x i8], [400 x i8]* %15, i64 0, i64 0
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %56, i8* %57)
  store i32 1, i32* %17, align 4
  br label %59

59:                                               ; preds = %55, %46
  br label %60

60:                                               ; preds = %59, %42
  %61 = call i32 @mbedtls_mpi_free(i32* %11)
  %62 = call i32 @mbedtls_mpi_free(i32* %12)
  %63 = call i32 @mbedtls_mpi_free(i32* %13)
  %64 = call i32 @mbedtls_mpi_free(i32* %14)
  %65 = load i32, i32* %17, align 4
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %71

69:                                               ; preds = %60
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %67
  %72 = load i32, i32* %17, align 4
  ret i32 %72
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @mbedtls_mpi_init(i32*) #2

declare dso_local i32 @TEST_ASSERT_FALSE(i32) #2

declare dso_local i32 @mbedtls_mpi_read_string(i32*, i32, i8*) #2

declare dso_local i32 @mbedtls_mpi_exp_mod(i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @mbedtls_mpi_write_string(i32*, i32, i8*, i32, i64*) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @mbedtls_mpi_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
