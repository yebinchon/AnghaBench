; ModuleID = '/home/carl/AnghaBench/esp-idf/components/fatfs/test/extr_test_fatfs_common.c_test_fatfs_open_max_files.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/fatfs/test/extr_test_fatfs_common.c_test_fatfs_open_max_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"%s_%d.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_fatfs_open_max_files(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i64, align 8
  %7 = alloca [32 x i8], align 16
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i32** @calloc(i64 %9, i32 8)
  store i32** %10, i32*** %5, align 8
  store i64 0, i64* %6, align 8
  br label %11

11:                                               ; preds = %30, %2
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* %4, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %11
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %17 = load i8*, i8** %3, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @snprintf(i8* %16, i32 32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %17, i64 %18)
  %20 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %21 = call i32* @fopen(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32**, i32*** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds i32*, i32** %22, i64 %23
  store i32* %21, i32** %24, align 8
  %25 = load i32**, i32*** %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds i32*, i32** %25, i64 %26
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @TEST_ASSERT_NOT_NULL(i32* %28)
  br label %30

30:                                               ; preds = %15
  %31 = load i64, i64* %6, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %6, align 8
  br label %11

33:                                               ; preds = %11
  store i64 0, i64* %8, align 8
  br label %34

34:                                               ; preds = %44, %33
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %4, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = load i32**, i32*** %5, align 8
  %40 = load i64, i64* %8, align 8
  %41 = getelementptr inbounds i32*, i32** %39, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @fclose(i32* %42)
  br label %44

44:                                               ; preds = %38
  %45 = load i64, i64* %8, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %8, align 8
  br label %34

47:                                               ; preds = %34
  %48 = load i32**, i32*** %5, align 8
  %49 = call i32 @free(i32** %48)
  ret void
}

declare dso_local i32** @calloc(i64, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i64) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @TEST_ASSERT_NOT_NULL(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
