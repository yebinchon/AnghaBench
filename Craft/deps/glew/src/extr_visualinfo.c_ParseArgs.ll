; ModuleID = '/home/carl/AnghaBench/Craft/deps/glew/src/extr_visualinfo.c_ParseArgs.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glew/src/extr_visualinfo.c_ParseArgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"-display\00", align 1
@GL_TRUE = common dso_local global i32 0, align 4
@display = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"-visual\00", align 1
@visual = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@GL_FALSE = common dso_local global i32 0, align 4
@displaystdout = common dso_local global i32 0, align 4
@showall = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ParseArgs(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %67, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %70

11:                                               ; preds = %7
  %12 = load i8**, i8*** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8*, i8** %12, i64 %14
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %11
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @GL_TRUE, align 4
  store i32 %25, i32* %3, align 4
  br label %72

26:                                               ; preds = %19
  %27 = load i8**, i8*** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** @display, align 8
  br label %67

32:                                               ; preds = %11
  %33 = load i8**, i8*** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %54, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @GL_TRUE, align 4
  store i32 %46, i32* %3, align 4
  br label %72

47:                                               ; preds = %40
  %48 = load i8**, i8*** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @strtol(i8* %52, i32* null, i32 0)
  store i32 %53, i32* @visual, align 4
  br label %66

54:                                               ; preds = %32
  %55 = load i8**, i8*** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @strcmp(i8* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %54
  %63 = load i32, i32* @GL_TRUE, align 4
  store i32 %63, i32* %3, align 4
  br label %72

64:                                               ; preds = %54
  %65 = load i32, i32* @GL_TRUE, align 4
  store i32 %65, i32* %3, align 4
  br label %72

66:                                               ; preds = %47
  br label %67

67:                                               ; preds = %66, %26
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %7

70:                                               ; preds = %7
  %71 = load i32, i32* @GL_FALSE, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %64, %62, %45, %24
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
