; ModuleID = '/home/carl/AnghaBench/AppImageKit/src/extr_appimagetool.c_find_first_matching_file_nonrecursive.c'
source_filename = "/home/carl/AnghaBench/AppImageKit/src/extr_appimagetool.c_find_first_matching_file_nonrecursive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@G_FILE_TEST_IS_REGULAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @find_first_matching_file_nonrecursive(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32* @g_dir_open(i32* %9, i32 0, i32* null)
  store i32* %10, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %38

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %34, %13
  %15 = load i32*, i32** %6, align 8
  %16 = call i32* @g_dir_read_name(i32* %15)
  store i32* %16, i32** %8, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %35

18:                                               ; preds = %14
  %19 = load i32*, i32** %4, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = call i32* @g_build_filename(i32* %19, i32* %20, i32* null)
  store i32* %21, i32** %7, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* @G_FILE_TEST_IS_REGULAR, align 4
  %24 = call i64 @g_file_test(i32* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %18
  %27 = load i32*, i32** %5, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = call i64 @g_pattern_match_simple(i32* %27, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32*, i32** %7, align 8
  store i32* %32, i32** %3, align 8
  br label %44

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %18
  br label %14

35:                                               ; preds = %14
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @g_dir_close(i32* %36)
  br label %43

38:                                               ; preds = %2
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* @errno, align 4
  %41 = call i32 @g_strerror(i32 %40)
  %42 = call i32 @g_warning(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %39, i32 %41)
  br label %43

43:                                               ; preds = %38, %35
  store i32* null, i32** %3, align 8
  br label %44

44:                                               ; preds = %43, %31
  %45 = load i32*, i32** %3, align 8
  ret i32* %45
}

declare dso_local i32* @g_dir_open(i32*, i32, i32*) #1

declare dso_local i32* @g_dir_read_name(i32*) #1

declare dso_local i32* @g_build_filename(i32*, i32*, i32*) #1

declare dso_local i64 @g_file_test(i32*, i32) #1

declare dso_local i64 @g_pattern_match_simple(i32*, i32*) #1

declare dso_local i32 @g_dir_close(i32*) #1

declare dso_local i32 @g_warning(i8*, i32*, i32) #1

declare dso_local i32 @g_strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
