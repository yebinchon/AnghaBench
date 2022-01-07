; ModuleID = '/home/carl/AnghaBench/esp-idf/components/fatfs/test/extr_test_fatfs_common.c_test_fatfs_lseek.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/fatfs/test/extr_test_fatfs_common.c_test_fatfs_lseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"wb+\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"0123456789\0A\00", align 1
@SEEK_CUR = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"abc\0A\00", align 1
@__const.test_fatfs_lseek.ref_buf = private unnamed_addr constant [19 x i8] c"0123456789\0A\00\00\00abc\0A\00", align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_fatfs_lseek(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [20 x i8], align 16
  %5 = alloca [19 x i8], align 16
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i32* @fopen(i8* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @TEST_ASSERT_NOT_NULL(i32* %8)
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @fprintf(i32* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %12 = call i32 @TEST_ASSERT_EQUAL(i32 11, i32 %11)
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* @SEEK_CUR, align 4
  %15 = call i32 @fseek(i32* %13, i32 -2, i32 %14)
  %16 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %15)
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @fgetc(i32* %17)
  %19 = call i32 @TEST_ASSERT_EQUAL(i32 57, i32 %18)
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* @SEEK_SET, align 4
  %22 = call i32 @fseek(i32* %20, i32 3, i32 %21)
  %23 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @fgetc(i32* %24)
  %26 = call i32 @TEST_ASSERT_EQUAL(i32 51, i32 %25)
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* @SEEK_END, align 4
  %29 = call i32 @fseek(i32* %27, i32 -3, i32 %28)
  %30 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %29)
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @fgetc(i32* %31)
  %33 = call i32 @TEST_ASSERT_EQUAL(i32 56, i32 %32)
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* @SEEK_END, align 4
  %36 = call i32 @fseek(i32* %34, i32 3, i32 %35)
  %37 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %36)
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @ftell(i32* %38)
  %40 = call i32 @TEST_ASSERT_EQUAL(i32 14, i32 %39)
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @fprintf(i32* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %43 = call i32 @TEST_ASSERT_EQUAL(i32 4, i32 %42)
  %44 = load i32*, i32** %3, align 8
  %45 = load i32, i32* @SEEK_END, align 4
  %46 = call i32 @fseek(i32* %44, i32 0, i32 %45)
  %47 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %46)
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @ftell(i32* %48)
  %50 = call i32 @TEST_ASSERT_EQUAL(i32 18, i32 %49)
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* @SEEK_SET, align 4
  %53 = call i32 @fseek(i32* %51, i32 0, i32 %52)
  %54 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %53)
  %55 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @fread(i8* %55, i32 1, i32 20, i32* %56)
  %58 = call i32 @TEST_ASSERT_EQUAL(i32 18, i32 %57)
  %59 = bitcast [19 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %59, i8* align 16 getelementptr inbounds ([19 x i8], [19 x i8]* @__const.test_fatfs_lseek.ref_buf, i32 0, i32 0), i64 19, i1 false)
  %60 = getelementptr inbounds [19 x i8], [19 x i8]* %5, i64 0, i64 0
  %61 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %62 = call i32 @TEST_ASSERT_EQUAL_INT8_ARRAY(i8* %60, i8* %61, i32 18)
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 @fclose(i32* %63)
  %65 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %64)
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @TEST_ASSERT_NOT_NULL(i32*) #1

declare dso_local i32 @TEST_ASSERT_EQUAL(i32, i32) #1

declare dso_local i32 @fprintf(i32*, i8*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @fgetc(i32*) #1

declare dso_local i32 @ftell(i32*) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @TEST_ASSERT_EQUAL_INT8_ARRAY(i8*, i8*, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
