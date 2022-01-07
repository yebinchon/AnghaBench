; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_database_cue.c_cue_next_file.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_database_cue.c_cue_next_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_TOKEN_LEN = common dso_local global i32 0, align 4
@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"FILE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cue_next_file(i32* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* @MAX_TOKEN_LEN, align 4
  %13 = call i64 @malloc(i32 %12)
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %10, align 8
  %15 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %16 = call i64 @malloc(i32 %15)
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** %11, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 0, i8* %19, align 1
  %20 = load i8*, i8** %11, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %23 = call i32 @fill_pathname_basedir(i8* %20, i8* %21, i32 %22)
  %24 = load i8*, i8** %10, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  store i8 0, i8* %25, align 1
  br label %26

26:                                               ; preds = %46, %4
  %27 = load i32*, i32** %5, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load i32, i32* @MAX_TOKEN_LEN, align 4
  %30 = call i64 @get_token(i32* %27, i8* %28, i32 %29)
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %26
  %33 = load i8*, i8** %10, align 8
  %34 = call i64 @string_is_equal_noncase(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = load i32*, i32** %5, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = load i32, i32* @MAX_TOKEN_LEN, align 4
  %40 = call i64 @get_token(i32* %37, i8* %38, i32 %39)
  %41 = load i8*, i8** %7, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @fill_pathname_join(i8* %41, i8* %42, i8* %43, i64 %44)
  store i32 1, i32* %9, align 4
  br label %47

46:                                               ; preds = %32
  br label %26

47:                                               ; preds = %36, %26
  %48 = load i8*, i8** %11, align 8
  %49 = call i32 @free(i8* %48)
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @free(i8* %50)
  %52 = load i32, i32* %9, align 4
  ret i32 %52
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @fill_pathname_basedir(i8*, i8*, i32) #1

declare dso_local i64 @get_token(i32*, i8*, i32) #1

declare dso_local i64 @string_is_equal_noncase(i8*, i8*) #1

declare dso_local i32 @fill_pathname_join(i8*, i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
