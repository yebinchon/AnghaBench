; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_chassis-frontend.c_chassis_frontend_write_pidfile.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_chassis-frontend.c_chassis_frontend_write_pidfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_WRONLY = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@G_FILE_ERROR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s: open(%s) failed: %s\00", align 1
@G_STRLOC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"%s: write(%s) of %s failed: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chassis_frontend_write_pidfile(i8* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* @O_WRONLY, align 4
  %11 = load i32, i32* @O_TRUNC, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @O_CREAT, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @open(i8* %9, i32 %14, i32 384)
  store i32 %15, i32* %6, align 4
  %16 = icmp eq i32 -1, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %2
  %18 = load i32**, i32*** %5, align 8
  %19 = load i32, i32* @G_FILE_ERROR, align 4
  %20 = load i32, i32* @errno, align 4
  %21 = call i32 @g_file_error_from_errno(i32 %20)
  %22 = load i32, i32* @G_STRLOC, align 4
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* @errno, align 4
  %25 = call i32 @g_strerror(i32 %24)
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i32*
  %28 = call i32 (i32**, i32, i32, i8*, i32, i8*, i32*, ...) @g_set_error(i32** %18, i32 %19, i32 %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %22, i8* %23, i32* %27)
  store i32 -1, i32* %3, align 4
  br label %55

29:                                               ; preds = %2
  %30 = call i32 (...) @getpid()
  %31 = call i32* @g_strdup_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  store i32* %31, i32** %8, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @strlen(i32* %34)
  %36 = call i64 @write(i32 %32, i32* %33, i32 %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %29
  %39 = load i32**, i32*** %5, align 8
  %40 = load i32, i32* @G_FILE_ERROR, align 4
  %41 = load i32, i32* @errno, align 4
  %42 = call i32 @g_file_error_from_errno(i32 %41)
  %43 = load i32, i32* @G_STRLOC, align 4
  %44 = load i8*, i8** %4, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* @errno, align 4
  %47 = call i32 @g_strerror(i32 %46)
  %48 = call i32 (i32**, i32, i32, i8*, i32, i8*, i32*, ...) @g_set_error(i32** %39, i32 %40, i32 %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %43, i8* %44, i32* %45, i32 %47)
  store i32 -1, i32* %7, align 4
  br label %49

49:                                               ; preds = %38, %29
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @g_free(i32* %50)
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @close(i32 %52)
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %49, %17
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @g_set_error(i32**, i32, i32, i8*, i32, i8*, i32*, ...) #1

declare dso_local i32 @g_file_error_from_errno(i32) #1

declare dso_local i32 @g_strerror(i32) #1

declare dso_local i32* @g_strdup_printf(i8*, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i64 @write(i32, i32*, i32) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @g_free(i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
