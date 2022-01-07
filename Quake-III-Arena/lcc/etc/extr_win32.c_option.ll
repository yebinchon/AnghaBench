; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/etc/extr_win32.c_option.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/etc/extr_win32.c_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"-lccdir=\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"\\cpp.exe\00", align 1
@cpp = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"-I\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"\\include\00", align 1
@include = common dso_local global i8** null, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"\\rcc.exe\00", align 1
@com = common dso_local global i8** null, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"\\liblcc.lib\00", align 1
@ld = common dso_local global i8** null, align 8
@.str.6 = private unnamed_addr constant [3 x i8] c"-b\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"-ld=\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @option(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i64 @strncmp(i8* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %45

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 8
  %10 = call i8* @replace(i8* %9, i8 signext 47, i8 signext 92)
  store i8* %10, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @strlen(i8* %12)
  %14 = sub nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %11, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 92
  br i1 %19, label %20, label %27

20:                                               ; preds = %7
  %21 = load i8*, i8** %3, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @strlen(i8* %22)
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %21, i64 %25
  store i8 0, i8* %26, align 1
  br label %27

27:                                               ; preds = %20, %7
  %28 = load i8*, i8** %3, align 8
  %29 = call i8* @concat(i8* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i8**, i8*** @cpp, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  store i8* %29, i8** %31, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = call i8* @concat(i8* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %34 = call i8* @concat(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  %35 = load i8**, i8*** @include, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** %3, align 8
  %38 = call i8* @concat(i8* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %39 = load i8**, i8*** @com, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 0
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** %3, align 8
  %42 = call i8* @concat(i8* %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %43 = load i8**, i8*** @ld, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 8
  store i8* %42, i8** %44, align 8
  br label %62

45:                                               ; preds = %1
  %46 = load i8*, i8** %3, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %61

50:                                               ; preds = %45
  %51 = load i8*, i8** %3, align 8
  %52 = call i64 @strncmp(i8* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 4)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i8*, i8** %3, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 4
  %57 = load i8**, i8*** @ld, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 0
  store i8* %56, i8** %58, align 8
  br label %60

59:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %63

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %60, %49
  br label %62

62:                                               ; preds = %61, %27
  store i32 1, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %59
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @replace(i8*, i8 signext, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @concat(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
