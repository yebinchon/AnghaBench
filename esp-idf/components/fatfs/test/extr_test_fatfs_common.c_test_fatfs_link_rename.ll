; ModuleID = '/home/carl/AnghaBench/esp-idf/components/fatfs/test/extr_test_fatfs_common.c_test_fatfs_link_rename.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/fatfs/test/extr_test_fatfs_common.c_test_fatfs_link_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"%s_cpy.txt\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%s_dst.txt\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%s_src.txt\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@EOF = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@SEEK_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_fatfs_link_rename(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [64 x i8], align 16
  %4 = alloca [64 x i8], align 16
  %5 = alloca [64 x i8], align 16
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %11 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 @snprintf(i8* %11, i32 64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 @snprintf(i8* %14, i32 64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  %17 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %18 = load i8*, i8** %2, align 8
  %19 = call i32 @snprintf(i8* %17, i32 64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %18)
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %21 = call i32 @unlink(i8* %20)
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %23 = call i32 @unlink(i8* %22)
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %25 = call i32 @unlink(i8* %24)
  %26 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %27 = call i32* @fopen(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32* %27, i32** %6, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @TEST_ASSERT_NOT_NULL(i32* %28)
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %39, %1
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 4000
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load i32, i32* @EOF, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @fputs(i8* %35, i32* %36)
  %38 = call i32 @TEST_ASSERT_NOT_EQUAL(i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %33
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %30

42:                                               ; preds = %30
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @fclose(i32* %43)
  %45 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %44)
  %46 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %47 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %48 = call i32 @link(i8* %46, i8* %47)
  %49 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %48)
  %50 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %51 = call i32* @fopen(i8* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32* %51, i32** %9, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = call i32 @TEST_ASSERT_NOT_NULL(i32* %52)
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* @SEEK_END, align 4
  %56 = call i32 @fseek(i32* %54, i32 0, i32 %55)
  %57 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %56)
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @ftell(i32* %58)
  %60 = call i32 @TEST_ASSERT_EQUAL(i32 40000, i32 %59)
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 @fclose(i32* %61)
  %63 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %62)
  %64 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %65 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %66 = call i32 @rename(i8* %64, i8* %65)
  %67 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %66)
  %68 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %69 = call i32* @fopen(i8* %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %70 = call i32 @TEST_ASSERT_NULL(i32* %69)
  %71 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %72 = call i32* @fopen(i8* %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32* %72, i32** %10, align 8
  %73 = load i32*, i32** %10, align 8
  %74 = call i32 @TEST_ASSERT_NOT_NULL(i32* %73)
  %75 = load i32*, i32** %10, align 8
  %76 = load i32, i32* @SEEK_END, align 4
  %77 = call i32 @fseek(i32* %75, i32 0, i32 %76)
  %78 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %77)
  %79 = load i32*, i32** %10, align 8
  %80 = call i32 @ftell(i32* %79)
  %81 = call i32 @TEST_ASSERT_EQUAL(i32 40000, i32 %80)
  %82 = load i32*, i32** %10, align 8
  %83 = call i32 @fclose(i32* %82)
  %84 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %83)
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @TEST_ASSERT_NOT_NULL(i32*) #1

declare dso_local i32 @TEST_ASSERT_NOT_EQUAL(i32, i32) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @TEST_ASSERT_EQUAL(i32, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @link(i8*, i8*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @ftell(i32*) #1

declare dso_local i32 @rename(i8*, i8*) #1

declare dso_local i32 @TEST_ASSERT_NULL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
