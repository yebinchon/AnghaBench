; ModuleID = '/home/carl/AnghaBench/esp-idf/components/fatfs/test/extr_test_fatfs_common.c_test_fatfs_can_opendir.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/fatfs/test/extr_test_fatfs_common.c_test_fatfs_can_opendir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"test_opd.txt\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"test_opendir\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_fatfs_can_opendir(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [64 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dirent*, align 8
  store i8* %0, i8** %2, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %8 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %9 = load i8*, i8** %2, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @snprintf(i8* %8, i32 64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %9, i8* %10)
  %12 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %13 = call i32 @unlink(i8* %12)
  %14 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %15 = call i32 @test_fatfs_create_file_with_text(i8* %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %16 = load i8*, i8** %2, align 8
  %17 = call i32* @opendir(i8* %16)
  store i32* %17, i32** %5, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @TEST_ASSERT_NOT_NULL(i32* %18)
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %1, %34
  %21 = load i32*, i32** %5, align 8
  %22 = call %struct.dirent* @readdir(i32* %21)
  store %struct.dirent* %22, %struct.dirent** %7, align 8
  %23 = load %struct.dirent*, %struct.dirent** %7, align 8
  %24 = icmp ne %struct.dirent* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %35

26:                                               ; preds = %20
  %27 = load %struct.dirent*, %struct.dirent** %7, align 8
  %28 = getelementptr inbounds %struct.dirent, %struct.dirent* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %4, align 8
  %31 = call i64 @strcasecmp(i32 %29, i8* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 1, i32* %6, align 4
  br label %35

34:                                               ; preds = %26
  br label %20

35:                                               ; preds = %33, %25
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @TEST_ASSERT_TRUE(i32 %36)
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @closedir(i32* %38)
  %40 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %39)
  %41 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %42 = call i32 @unlink(i8* %41)
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @test_fatfs_create_file_with_text(i8*, i8*) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local i32 @TEST_ASSERT_NOT_NULL(i32*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @strcasecmp(i32, i8*) #1

declare dso_local i32 @TEST_ASSERT_TRUE(i32) #1

declare dso_local i32 @TEST_ASSERT_EQUAL(i32, i32) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
