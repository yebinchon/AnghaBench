; ModuleID = '/home/carl/AnghaBench/esp-idf/components/fatfs/test/extr_test_fatfs_common.c_test_fatfs_pread_file.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/fatfs/test/extr_test_fatfs_common.c_test_fatfs_pread_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDONLY = common dso_local global i32 0, align 4
@fatfs_test_hello_str = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_fatfs_pread_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [32 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = bitcast [32 x i8]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 32, i1 false)
  %7 = load i8*, i8** %2, align 8
  %8 = load i32, i32* @O_RDONLY, align 4
  %9 = call i32 @open(i8* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @TEST_ASSERT_NOT_EQUAL(i32 -1, i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %14 = call i32 @pread(i32 %12, i8* %13, i32 32, i32 0)
  store i32 %14, i32* %5, align 4
  %15 = load i64, i64* @fatfs_test_hello_str, align 8
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %17 = call i32 @strcmp(i64 %15, i8* %16)
  %18 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %17)
  %19 = load i64, i64* @fatfs_test_hello_str, align 8
  %20 = call i32 @strlen(i64 %19)
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @TEST_ASSERT_EQUAL(i32 %20, i32 %21)
  %23 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %24 = call i32 @memset(i8* %23, i32 0, i32 32)
  %25 = load i32, i32* %4, align 4
  %26 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %27 = call i32 @pread(i32 %25, i8* %26, i32 32, i32 1)
  store i32 %27, i32* %5, align 4
  %28 = load i64, i64* @fatfs_test_hello_str, align 8
  %29 = add nsw i64 %28, 1
  %30 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %31 = call i32 @strcmp(i64 %29, i8* %30)
  %32 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %31)
  %33 = load i64, i64* @fatfs_test_hello_str, align 8
  %34 = call i32 @strlen(i64 %33)
  %35 = sub nsw i32 %34, 1
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @TEST_ASSERT_EQUAL(i32 %35, i32 %36)
  %38 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %39 = call i32 @memset(i8* %38, i32 0, i32 32)
  %40 = load i32, i32* %4, align 4
  %41 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %42 = call i32 @pread(i32 %40, i8* %41, i32 32, i32 5)
  store i32 %42, i32* %5, align 4
  %43 = load i64, i64* @fatfs_test_hello_str, align 8
  %44 = add nsw i64 %43, 5
  %45 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %46 = call i32 @strcmp(i64 %44, i8* %45)
  %47 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %46)
  %48 = load i64, i64* @fatfs_test_hello_str, align 8
  %49 = call i32 @strlen(i64 %48)
  %50 = sub nsw i32 %49, 5
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @TEST_ASSERT_EQUAL(i32 %50, i32 %51)
  %53 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %54 = call i32 @memset(i8* %53, i32 0, i32 32)
  %55 = load i32, i32* %4, align 4
  %56 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %57 = call i32 @read(i32 %55, i8* %56, i32 32)
  store i32 %57, i32* %5, align 4
  %58 = load i64, i64* @fatfs_test_hello_str, align 8
  %59 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %60 = call i32 @strcmp(i64 %58, i8* %59)
  %61 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %60)
  %62 = load i64, i64* @fatfs_test_hello_str, align 8
  %63 = call i32 @strlen(i64 %62)
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @TEST_ASSERT_EQUAL(i32 %63, i32 %64)
  %66 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %67 = call i32 @memset(i8* %66, i32 0, i32 32)
  %68 = load i32, i32* %4, align 4
  %69 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %70 = call i32 @pread(i32 %68, i8* %69, i32 32, i32 10)
  store i32 %70, i32* %5, align 4
  %71 = load i64, i64* @fatfs_test_hello_str, align 8
  %72 = add nsw i64 %71, 10
  %73 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %74 = call i32 @strcmp(i64 %72, i8* %73)
  %75 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %74)
  %76 = load i64, i64* @fatfs_test_hello_str, align 8
  %77 = call i32 @strlen(i64 %76)
  %78 = sub nsw i32 %77, 10
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @TEST_ASSERT_EQUAL(i32 %78, i32 %79)
  %81 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %82 = call i32 @memset(i8* %81, i32 0, i32 32)
  %83 = load i32, i32* %4, align 4
  %84 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %85 = load i64, i64* @fatfs_test_hello_str, align 8
  %86 = call i32 @strlen(i64 %85)
  %87 = add nsw i32 %86, 1
  %88 = call i32 @pread(i32 %83, i8* %84, i32 32, i32 %87)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %89)
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @close(i32 %91)
  %93 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %92)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @TEST_ASSERT_NOT_EQUAL(i32, i32) #2

declare dso_local i32 @pread(i32, i8*, i32, i32) #2

declare dso_local i32 @TEST_ASSERT_EQUAL(i32, i32) #2

declare dso_local i32 @strcmp(i64, i8*) #2

declare dso_local i32 @strlen(i64) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @close(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
