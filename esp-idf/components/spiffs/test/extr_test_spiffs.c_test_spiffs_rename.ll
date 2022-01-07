; ModuleID = '/home/carl/AnghaBench/esp-idf/components/spiffs/test/extr_test_spiffs.c_test_spiffs_rename.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/spiffs/test/extr_test_spiffs.c_test_spiffs_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"%s_dst.txt\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%s_src.txt\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@EOF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@SEEK_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_spiffs_rename(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [64 x i8], align 16
  %4 = alloca [64 x i8], align 16
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %9 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 @snprintf(i8* %9, i32 64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @snprintf(i8* %12, i32 64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  %15 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %16 = call i32 @unlink(i8* %15)
  %17 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %18 = call i32 @unlink(i8* %17)
  %19 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %20 = call i32* @fopen(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %20, i32** %5, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @TEST_ASSERT_NOT_NULL(i32* %21)
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %32, %1
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 400
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load i32, i32* @EOF, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @fputs(i8* %28, i32* %29)
  %31 = call i32 @TEST_ASSERT_NOT_EQUAL(i32 %27, i32 %30)
  br label %32

32:                                               ; preds = %26
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %23

35:                                               ; preds = %23
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @fclose(i32* %36)
  %38 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %37)
  %39 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %40 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %41 = call i32 @rename(i8* %39, i8* %40)
  %42 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %41)
  %43 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %44 = call i32* @fopen(i8* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %45 = call i32 @TEST_ASSERT_NULL(i32* %44)
  %46 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %47 = call i32* @fopen(i8* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %47, i32** %8, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @TEST_ASSERT_NOT_NULL(i32* %48)
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* @SEEK_END, align 4
  %52 = call i32 @fseek(i32* %50, i32 0, i32 %51)
  %53 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %52)
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @ftell(i32* %54)
  %56 = call i32 @TEST_ASSERT_EQUAL(i32 4000, i32 %55)
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @fclose(i32* %57)
  %59 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %58)
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

declare dso_local i32 @rename(i8*, i8*) #1

declare dso_local i32 @TEST_ASSERT_NULL(i32*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @ftell(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
