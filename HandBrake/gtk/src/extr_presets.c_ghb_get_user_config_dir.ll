; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_presets.c_ghb_get_user_config_dir.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_presets.c_ghb_get_user_config_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ghb\00", align 1
@override_user_config_dir = common dso_local global i8* null, align 8
@G_FILE_TEST_IS_DIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c".ghb\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"./\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@G_DIR_SEPARATOR_S = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ghb_get_user_config_dir(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %9 = load i8*, i8** @override_user_config_dir, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i8*, i8** @override_user_config_dir, align 8
  store i8* %12, i8** %3, align 8
  br label %15

13:                                               ; preds = %1
  %14 = call i8* (...) @g_get_user_config_dir()
  store i8* %14, i8** %3, align 8
  br label %15

15:                                               ; preds = %13, %11
  %16 = load i8*, i8** %3, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %15
  %19 = load i8*, i8** %3, align 8
  %20 = load i32, i32* @G_FILE_TEST_IS_DIR, align 4
  %21 = call i32 @g_file_test(i8* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18, %15
  %24 = call i8* (...) @g_get_home_dir()
  store i8* %24, i8** %3, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %25

25:                                               ; preds = %23, %18
  %26 = load i8*, i8** %3, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = load i8*, i8** %3, align 8
  %30 = load i32, i32* @G_FILE_TEST_IS_DIR, align 4
  %31 = call i32 @g_file_test(i8* %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28, %25
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %34

34:                                               ; preds = %33, %28
  %35 = load i8*, i8** %3, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = call i8* @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %35, i8* %36)
  store i8* %37, i8** %5, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* @G_FILE_TEST_IS_DIR, align 4
  %40 = call i32 @g_file_test(i8* %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %34
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @g_mkdir(i8* %43, i32 493)
  br label %45

45:                                               ; preds = %42, %34
  %46 = load i8*, i8** %2, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %82

48:                                               ; preds = %45
  %49 = load i8*, i8** %2, align 8
  %50 = load i32, i32* @G_DIR_SEPARATOR_S, align 4
  %51 = call i8** @g_strsplit(i8* %49, i32 %50, i32 -1)
  store i8** %51, i8*** %6, align 8
  store i64 0, i64* %7, align 8
  br label %52

52:                                               ; preds = %76, %48
  %53 = load i8**, i8*** %6, align 8
  %54 = load i64, i64* %7, align 8
  %55 = getelementptr inbounds i8*, i8** %53, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %79

58:                                               ; preds = %52
  %59 = load i8*, i8** %5, align 8
  %60 = load i8**, i8*** %6, align 8
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds i8*, i8** %60, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = call i8* @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %59, i8* %63)
  store i8* %64, i8** %8, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = call i32 @g_free(i8* %65)
  %67 = load i8*, i8** %8, align 8
  store i8* %67, i8** %5, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = load i32, i32* @G_FILE_TEST_IS_DIR, align 4
  %70 = call i32 @g_file_test(i8* %68, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %58
  %73 = load i8*, i8** %5, align 8
  %74 = call i32 @g_mkdir(i8* %73, i32 493)
  br label %75

75:                                               ; preds = %72, %58
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %7, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %7, align 8
  br label %52

79:                                               ; preds = %52
  %80 = load i8**, i8*** %6, align 8
  %81 = call i32 @g_strfreev(i8** %80)
  br label %82

82:                                               ; preds = %79, %45
  %83 = load i8*, i8** %5, align 8
  ret i8* %83
}

declare dso_local i8* @g_get_user_config_dir(...) #1

declare dso_local i32 @g_file_test(i8*, i32) #1

declare dso_local i8* @g_get_home_dir(...) #1

declare dso_local i8* @g_strdup_printf(i8*, i8*, i8*) #1

declare dso_local i32 @g_mkdir(i8*, i32) #1

declare dso_local i8** @g_strsplit(i8*, i32, i32) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @g_strfreev(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
