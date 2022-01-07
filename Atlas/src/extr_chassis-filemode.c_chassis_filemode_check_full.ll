; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_chassis-filemode.c_chassis_filemode_check_full.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_chassis-filemode.c_chassis_filemode_check_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@G_FILE_ERROR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"cannot stat(%s): %s\00", align 1
@S_IFMT = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@G_FILE_ERROR_INVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"%s isn't a regular file\00", align 1
@G_FILE_ERROR_PERM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"permissions of %s aren't secure (0660 or stricter required)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chassis_filemode_check_full(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca %struct.stat, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @stat(i32* %10, %struct.stat* %8)
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = load i32**, i32*** %7, align 8
  %15 = load i32, i32* @G_FILE_ERROR, align 4
  %16 = load i32, i32* @errno, align 4
  %17 = call i32 @g_file_error_from_errno(i32 %16)
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* @errno, align 4
  %20 = call i32 @g_strerror(i32 %19)
  %21 = call i32 (i32**, i32, i32, i8*, i32*, ...) @g_set_error(i32** %14, i32 %15, i32 %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* %18, i32 %20)
  store i32 -1, i32* %4, align 4
  br label %48

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @S_IFMT, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @S_IFREG, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = load i32**, i32*** %7, align 8
  %32 = load i32, i32* @G_FILE_ERROR, align 4
  %33 = load i32, i32* @G_FILE_ERROR_INVAL, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 (i32**, i32, i32, i8*, i32*, ...) @g_set_error(i32** %31, i32 %32, i32 %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32* %34)
  store i32 -1, i32* %4, align 4
  br label %48

36:                                               ; preds = %22
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i32**, i32*** %7, align 8
  %43 = load i32, i32* @G_FILE_ERROR, align 4
  %44 = load i32, i32* @G_FILE_ERROR_PERM, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 (i32**, i32, i32, i8*, i32*, ...) @g_set_error(i32** %42, i32 %43, i32 %44, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32* %45)
  store i32 1, i32* %4, align 4
  br label %48

47:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %41, %30, %13
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @stat(i32*, %struct.stat*) #1

declare dso_local i32 @g_set_error(i32**, i32, i32, i8*, i32*, ...) #1

declare dso_local i32 @g_file_error_from_errno(i32) #1

declare dso_local i32 @g_strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
