; ModuleID = '/home/carl/AnghaBench/AppImageKit/src/extr_appimagetool.c_find_arch.c'
source_filename = "/home/carl/AnghaBench/AppImageKit/src/extr_appimagetool.c_find_arch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@G_FILE_TEST_IS_SYMLINK = common dso_local global i32 0, align 4
@G_FILE_TEST_IS_DIR = common dso_local global i32 0, align 4
@G_FILE_TEST_IS_EXECUTABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @find_arch(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32* @g_dir_open(i32* %10, i32 0, i32* null)
  store i32* %11, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %57

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %53, %14
  %16 = load i32*, i32** %7, align 8
  %17 = call i32* @g_dir_read_name(i32* %16)
  store i32* %17, i32** %9, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %54

19:                                               ; preds = %15
  %20 = load i32*, i32** %4, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = call i32* @g_build_filename(i32* %20, i32* %21, i32* null)
  store i32* %22, i32** %8, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* @G_FILE_TEST_IS_SYMLINK, align 4
  %25 = call i64 @g_file_test(i32* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %53

28:                                               ; preds = %19
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* @G_FILE_TEST_IS_DIR, align 4
  %31 = call i64 @g_file_test(i32* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32*, i32** %8, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load i32*, i32** %6, align 8
  call void @find_arch(i32* %34, i32* %35, i32* %36)
  br label %52

37:                                               ; preds = %28
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* @G_FILE_TEST_IS_EXECUTABLE, align 4
  %40 = call i64 @g_file_test(i32* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load i32*, i32** %5, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = call i64 @g_pattern_match_simple(i32* %43, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42, %37
  %48 = load i32*, i32** %8, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @guess_arch_of_file(i32* %48, i32* %49)
  br label %51

51:                                               ; preds = %47, %42
  br label %52

52:                                               ; preds = %51, %33
  br label %53

53:                                               ; preds = %52, %27
  br label %15

54:                                               ; preds = %15
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @g_dir_close(i32* %55)
  br label %62

57:                                               ; preds = %3
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* @errno, align 4
  %60 = call i32 @g_strerror(i32 %59)
  %61 = call i32 @g_warning(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %58, i32 %60)
  br label %62

62:                                               ; preds = %57, %54
  ret void
}

declare dso_local i32* @g_dir_open(i32*, i32, i32*) #1

declare dso_local i32* @g_dir_read_name(i32*) #1

declare dso_local i32* @g_build_filename(i32*, i32*, i32*) #1

declare dso_local i64 @g_file_test(i32*, i32) #1

declare dso_local i64 @g_pattern_match_simple(i32*, i32*) #1

declare dso_local i32 @guess_arch_of_file(i32*, i32*) #1

declare dso_local i32 @g_dir_close(i32*) #1

declare dso_local i32 @g_warning(i8*, i32*, i32) #1

declare dso_local i32 @g_strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
