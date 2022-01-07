; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_xnu_quick_test_helpers.c_create_target_directory.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_xnu_quick_test_helpers.c_create_target_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@PATH_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"check target path too long - \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"xnu_quick_test-%d\00", align 1
@.str.4 = private unnamed_addr constant [106 x i8] c"check target path plus our test directory name is too long: target path - \22%s\22 test directory name - \22%s\22\00", align 1
@g_target_path = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@S_IRWXU = common dso_local global i32 0, align 4
@S_IRWXG = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [78 x i8] c"test directory creation failed - \22%s\22 \0Amkdir call failed with error %d - \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @create_target_directory(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [64 x i8], align 16
  store i8* %0, i8** %2, align 8
  %7 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %7, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %11

11:                                               ; preds = %10, %1
  %12 = load i8*, i8** %2, align 8
  %13 = call i64 @strlen(i8* %12)
  %14 = load i32, i32* @PATH_MAX, align 4
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 (i64, i64, i8*, i8*, ...) @T_ASSERT_LT(i64 %13, i64 %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %81, %11
  %20 = call i32 (...) @rand()
  store i32 %20, i32* %5, align 4
  %21 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @sprintf(i8* %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %22)
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %25 = call i64 @strlen(i8* %24)
  %26 = load i8*, i8** %2, align 8
  %27 = call i64 @strlen(i8* %26)
  %28 = add i64 %25, %27
  %29 = add i64 %28, 2
  %30 = load i32, i32* @PATH_MAX, align 4
  %31 = sext i32 %30 to i64
  %32 = load i8*, i8** %2, align 8
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %34 = call i32 (i64, i64, i8*, i8*, ...) @T_ASSERT_LT(i64 %29, i64 %31, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.4, i64 0, i64 0), i8* %32, i8* %33)
  %35 = load i8*, i8** @g_target_path, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  store i8 0, i8* %36, align 1
  %37 = load i8*, i8** @g_target_path, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8*, i8** %2, align 8
  %40 = call i32 @strcat(i8* %38, i8* %39)
  %41 = load i8*, i8** @g_target_path, align 8
  %42 = load i8*, i8** %2, align 8
  %43 = call i64 @strlen(i8* %42)
  %44 = sub i64 %43, 1
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 47
  br i1 %48, label %49, label %53

49:                                               ; preds = %19
  %50 = load i8*, i8** @g_target_path, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  %52 = call i32 @strcat(i8* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %53

53:                                               ; preds = %49, %19
  %54 = load i8*, i8** @g_target_path, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %57 = call i32 @strcat(i8* %55, i8* %56)
  %58 = load i8*, i8** @g_target_path, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i32, i32* @S_IRWXU, align 4
  %61 = load i32, i32* @S_IRWXG, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @S_IROTH, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @mkdir(i8* %59, i32 %64)
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* %3, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %53
  br label %82

69:                                               ; preds = %53
  %70 = load i32, i32* @errno, align 4
  store i32 %70, i32* %3, align 4
  %71 = load i32, i32* @EEXIST, align 4
  %72 = load i32, i32* %3, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load i8*, i8** @g_target_path, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  %77 = load i32, i32* @errno, align 4
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @strerror(i32 %78)
  %80 = call i32 @T_ASSERT_FAIL(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.6, i64 0, i64 0), i8* %76, i32 %77, i32 %79)
  br label %81

81:                                               ; preds = %74, %69
  br label %19

82:                                               ; preds = %68
  ret void
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @T_ASSERT_LT(i64, i64, i8*, i8*, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @mkdir(i8*, i32) #1

declare dso_local i32 @T_ASSERT_FAIL(i8*, i8*, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
