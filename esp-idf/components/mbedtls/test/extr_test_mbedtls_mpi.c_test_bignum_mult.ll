; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mbedtls/test/extr_test_mbedtls_mpi.c_test_bignum_mult.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mbedtls/test/extr_test_mbedtls_mpi.c_test_bignum_mult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"mbedtls_mpi_mul_mpi result wrong\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"esp_mpi_mul_mpi_mod result wrong\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i64)* @test_bignum_mult to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_bignum_mult(i8* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [1024 x i8], align 16
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %17 = bitcast [1024 x i8]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %17, i8 0, i64 1024, i1 false)
  store i64 0, i64* %15, align 8
  %18 = call i32 @mbedtls_mpi_init(i32* %9)
  %19 = call i32 @mbedtls_mpi_init(i32* %10)
  %20 = call i32 @mbedtls_mpi_init(i32* %11)
  %21 = call i32 @mbedtls_mpi_init(i32* %12)
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @mbedtls_mpi_read_string(i32* %9, i32 16, i8* %22)
  %24 = call i32 @TEST_ASSERT_FALSE(i32 %23)
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @mbedtls_mpi_read_string(i32* %10, i32 16, i8* %25)
  %27 = call i32 @TEST_ASSERT_FALSE(i32 %26)
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @mbedtls_mpi_read_string(i32* %12, i32 16, i8* %28)
  %30 = call i32 @TEST_ASSERT_FALSE(i32 %29)
  %31 = call i32 @mbedtls_mpi_mul_mpi(i32* %11, i32* %9, i32* %10)
  %32 = call i32 @TEST_ASSERT_FALSE(i32 %31)
  %33 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %34 = call i32 @mbedtls_mpi_write_string(i32* %11, i32 16, i8* %33, i32 1023, i64* %15)
  %35 = load i8*, i8** %7, align 8
  %36 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %37 = call i32 @TEST_ASSERT_EQUAL_STRING_MESSAGE(i8* %35, i8* %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %38 = load i64, i64* %8, align 8
  %39 = icmp ugt i64 %38, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %4
  %41 = call i32 @mbedtls_mpi_init(i32* %13)
  store i32 0, i32* %16, align 4
  br label %42

42:                                               ; preds = %50, %40
  %43 = load i32, i32* %16, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* %8, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load i32, i32* %16, align 4
  %49 = call i32 @mbedtls_mpi_set_bit(i32* %13, i32 %48, i32 1)
  br label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %16, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %16, align 4
  br label %42

53:                                               ; preds = %42
  %54 = call i32 @esp_mpi_mul_mpi_mod(i32* %11, i32* %9, i32* %10, i32* %13)
  %55 = call i32 @TEST_ASSERT_FALSE(i32 %54)
  %56 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %57 = call i32 @mbedtls_mpi_write_string(i32* %11, i32 16, i8* %56, i32 1023, i64* %15)
  %58 = load i8*, i8** %7, align 8
  %59 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %60 = call i32 @TEST_ASSERT_EQUAL_STRING_MESSAGE(i8* %58, i8* %59, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %61 = call i32 @mbedtls_mpi_free(i32* %13)
  br label %62

62:                                               ; preds = %53, %4
  %63 = call i32 @mbedtls_mpi_free(i32* %9)
  %64 = call i32 @mbedtls_mpi_free(i32* %10)
  %65 = call i32 @mbedtls_mpi_free(i32* %11)
  %66 = call i32 @mbedtls_mpi_free(i32* %12)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mbedtls_mpi_init(i32*) #2

declare dso_local i32 @TEST_ASSERT_FALSE(i32) #2

declare dso_local i32 @mbedtls_mpi_read_string(i32*, i32, i8*) #2

declare dso_local i32 @mbedtls_mpi_mul_mpi(i32*, i32*, i32*) #2

declare dso_local i32 @mbedtls_mpi_write_string(i32*, i32, i8*, i32, i64*) #2

declare dso_local i32 @TEST_ASSERT_EQUAL_STRING_MESSAGE(i8*, i8*, i8*) #2

declare dso_local i32 @mbedtls_mpi_set_bit(i32*, i32, i32) #2

declare dso_local i32 @esp_mpi_mul_mpi_mod(i32*, i32*, i32*, i32*) #2

declare dso_local i32 @mbedtls_mpi_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
