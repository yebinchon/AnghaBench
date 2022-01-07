; ModuleID = '/home/carl/AnghaBench/Craft/deps/glew/src/extr_glewinfo.c_glewParseArgs.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glew/src/extr_glewinfo.c_glewParseArgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"-display\00", align 1
@GL_TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"-visual\00", align 1
@GL_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @glewParseArgs(i32 %0, i8** %1, i8** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %65, %4
  %12 = load i32, i32* %10, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %66

15:                                               ; preds = %11
  %16 = load i8**, i8*** %7, align 8
  %17 = load i32, i32* %10, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8*, i8** %16, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %15
  %24 = load i32, i32* %10, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @GL_TRUE, align 4
  store i32 %29, i32* %5, align 4
  br label %68

30:                                               ; preds = %23
  %31 = load i8**, i8*** %7, align 8
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %10, align 4
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i8*, i8** %31, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = load i8**, i8*** %8, align 8
  store i8* %36, i8** %37, align 8
  br label %65

38:                                               ; preds = %15
  %39 = load i8**, i8*** %7, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %62, label %46

46:                                               ; preds = %38
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp sge i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @GL_TRUE, align 4
  store i32 %52, i32* %5, align 4
  br label %68

53:                                               ; preds = %46
  %54 = load i8**, i8*** %7, align 8
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i8*, i8** %54, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @strtol(i8* %59, i32* null, i32 0)
  %61 = load i32*, i32** %9, align 8
  store i32 %60, i32* %61, align 4
  br label %64

62:                                               ; preds = %38
  %63 = load i32, i32* @GL_TRUE, align 4
  store i32 %63, i32* %5, align 4
  br label %68

64:                                               ; preds = %53
  br label %65

65:                                               ; preds = %64, %30
  br label %11

66:                                               ; preds = %11
  %67 = load i32, i32* @GL_FALSE, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %66, %62, %51, %28
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
