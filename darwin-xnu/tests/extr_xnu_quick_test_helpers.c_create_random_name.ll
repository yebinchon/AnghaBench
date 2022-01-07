; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_xnu_quick_test_helpers.c_create_random_name.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_xnu_quick_test_helpers.c_create_random_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@PATH_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"check if path to test file is less than PATH_MAX\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"open file with name %s\00", align 1
@ENOENT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"make sure the name is unique\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_random_name(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca [32 x i8], align 16
  %12 = alloca %struct.stat, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %90, %2
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %16, label %93

16:                                               ; preds = %13
  %17 = call i32 (...) @rand()
  store i32 %17, i32* %9, align 4
  %18 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @sprintf(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %22 = call i64 @strlen(i8* %21)
  %23 = load i8*, i8** %4, align 8
  %24 = call i64 @strlen(i8* %23)
  %25 = add nsw i64 %22, %24
  %26 = add nsw i64 %25, 2
  %27 = load i64, i64* @PATH_MAX, align 8
  %28 = call i32 @T_ASSERT_LT_ULONG(i64 %26, i64 %27, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i8*, i8** %4, align 8
  %30 = call i8* @strrchr(i8* %29, i8 signext 47)
  store i8* %30, i8** %10, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  store i8 0, i8* %32, align 1
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %35 = call i32 @strcat(i8* %33, i8* %34)
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %69

38:                                               ; preds = %16
  %39 = load i8*, i8** %4, align 8
  %40 = load i32, i32* @O_RDWR, align 4
  %41 = load i32, i32* @O_CREAT, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @O_EXCL, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @S_IRUSR, align 4
  %46 = load i32, i32* @S_IWUSR, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @S_IRGRP, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @S_IROTH, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @open(i8* %39, i32 %44, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, -1
  br i1 %54, label %59, label %55

55:                                               ; preds = %38
  %56 = load i64, i64* @errno, align 8
  %57 = load i64, i64* @EEXIST, align 8
  %58 = icmp eq i64 %56, %57
  br label %59

59:                                               ; preds = %55, %38
  %60 = phi i1 [ true, %38 ], [ %58, %55 ]
  %61 = zext i1 %60 to i32
  %62 = load i8*, i8** %4, align 8
  %63 = call i32 (i32, i8*, ...) @T_EXPECT_TRUE(i32 %61, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %62)
  %64 = load i64, i64* @errno, align 8
  %65 = load i64, i64* @EEXIST, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %90

68:                                               ; preds = %59
  br label %89

69:                                               ; preds = %16
  %70 = load i8*, i8** %4, align 8
  %71 = call i32 @stat(i8* %70, %struct.stat* %12)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %69
  %75 = load i64, i64* @errno, align 8
  %76 = load i64, i64* @ENOENT, align 8
  %77 = icmp eq i64 %75, %76
  br label %78

78:                                               ; preds = %74, %69
  %79 = phi i1 [ true, %69 ], [ %77, %74 ]
  %80 = zext i1 %79 to i32
  %81 = call i32 (i32, i8*, ...) @T_EXPECT_TRUE(i32 %80, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %82 = load i64, i64* @errno, align 8
  %83 = load i64, i64* @ENOENT, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  br label %93

86:                                               ; preds = %78
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %6, align 4
  br label %90

89:                                               ; preds = %68
  br label %90

90:                                               ; preds = %89, %86, %67
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %6, align 4
  br label %13

93:                                               ; preds = %85, %13
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, -1
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @close(i32 %97)
  br label %99

99:                                               ; preds = %96, %93
  %100 = load i32, i32* %5, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load i32, i32* %8, align 4
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  store i32 1, i32* %3, align 4
  br label %107

106:                                              ; preds = %102, %99
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %106, %105
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @rand(...) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @T_ASSERT_LT_ULONG(i64, i64, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @T_EXPECT_TRUE(i32, i8*, ...) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
