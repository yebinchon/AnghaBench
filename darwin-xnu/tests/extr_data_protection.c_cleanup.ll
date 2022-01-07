; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_data_protection.c_cleanup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_data_protection.c_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Cleaning up\E2\80\A6\00", align 1
@g_subdir_fd = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Cleanup: closing fd %d\00", align 1
@g_subdirpath = common dso_local global i64* null, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"Cleanup: removing %s\00", align 1
@g_fd = common dso_local global i64 0, align 8
@g_filepath = common dso_local global i64* null, align 8
@g_dir_fd = common dso_local global i64 0, align 8
@g_dirpath = common dso_local global i64* null, align 8
@g_test_tempdir = common dso_local global i64* null, align 8
@TEMP_DIR_TEMPLATE = common dso_local global i32 0, align 4
@g_passcode_set = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"Cleanup: unlocking device\00", align 1
@TEST_PASSCODE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"Warning: failed to unlock device in cleanup\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Cleanup: clearing passcode\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"Warning: failed to clear passcode in cleanup\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cleanup() #0 {
  %1 = call i32 (i8*, ...) @T_LOG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %2 = load i64, i64* @g_subdir_fd, align 8
  %3 = icmp sge i64 %2, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %0
  %5 = load i64, i64* @g_subdir_fd, align 8
  %6 = call i32 (i8*, ...) @T_LOG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %5)
  %7 = load i64, i64* @g_subdir_fd, align 8
  %8 = call i32 @close(i64 %7)
  br label %9

9:                                                ; preds = %4, %0
  %10 = load i64*, i64** @g_subdirpath, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load i64*, i64** @g_subdirpath, align 8
  %16 = call i32 (i8*, ...) @T_LOG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64* %15)
  %17 = load i64*, i64** @g_subdirpath, align 8
  %18 = call i32 @rmdir(i64* %17)
  br label %19

19:                                               ; preds = %14, %9
  %20 = load i64, i64* @g_fd, align 8
  %21 = icmp sge i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i64, i64* @g_fd, align 8
  %24 = call i32 (i8*, ...) @T_LOG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %23)
  %25 = load i64, i64* @g_fd, align 8
  %26 = call i32 @close(i64 %25)
  br label %27

27:                                               ; preds = %22, %19
  %28 = load i64*, i64** @g_filepath, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i64*, i64** @g_filepath, align 8
  %34 = call i32 (i8*, ...) @T_LOG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64* %33)
  %35 = load i64*, i64** @g_filepath, align 8
  %36 = call i32 @unlink(i64* %35)
  br label %37

37:                                               ; preds = %32, %27
  %38 = load i64, i64* @g_dir_fd, align 8
  %39 = icmp sge i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i64, i64* @g_dir_fd, align 8
  %42 = call i32 (i8*, ...) @T_LOG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %41)
  %43 = load i64, i64* @g_dir_fd, align 8
  %44 = call i32 @close(i64 %43)
  br label %45

45:                                               ; preds = %40, %37
  %46 = load i64*, i64** @g_dirpath, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load i64*, i64** @g_dirpath, align 8
  %52 = call i32 (i8*, ...) @T_LOG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64* %51)
  %53 = load i64*, i64** @g_dirpath, align 8
  %54 = call i32 @rmdir(i64* %53)
  br label %55

55:                                               ; preds = %50, %45
  %56 = load i64*, i64** @g_test_tempdir, align 8
  %57 = load i32, i32* @TEMP_DIR_TEMPLATE, align 4
  %58 = call i64 @strcmp(i64* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load i64*, i64** @g_test_tempdir, align 8
  %62 = call i32 (i8*, ...) @T_LOG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64* %61)
  %63 = load i64*, i64** @g_test_tempdir, align 8
  %64 = call i32 @rmdir(i64* %63)
  br label %65

65:                                               ; preds = %60, %55
  %66 = load i64, i64* @g_passcode_set, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %65
  %69 = call i32 (i8*, ...) @T_LOG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %70 = load i32, i32* @TEST_PASSCODE, align 4
  %71 = call i64 @unlock_device(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = call i32 (i8*, ...) @T_LOG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %68
  %76 = call i32 (i8*, ...) @T_LOG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %77 = load i32, i32* @TEST_PASSCODE, align 4
  %78 = call i64 @clear_passcode(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = call i32 (i8*, ...) @T_LOG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %75
  br label %83

83:                                               ; preds = %82, %65
  ret void
}

declare dso_local i32 @T_LOG(i8*, ...) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @rmdir(i64*) #1

declare dso_local i32 @unlink(i64*) #1

declare dso_local i64 @strcmp(i64*, i32) #1

declare dso_local i64 @unlock_device(i32) #1

declare dso_local i64 @clear_passcode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
