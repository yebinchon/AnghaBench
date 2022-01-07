; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/etc/extr_irix.c_option.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/etc/extr_irix.c_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"-lccdir=\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"/cpp\00", align 1
@cpp = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"-I\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"/include\00", align 1
@include = common dso_local global i8** null, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"/rcc\00", align 1
@com = common dso_local global i8** null, align 8
@.str.5 = private unnamed_addr constant [3 x i8] c"-L\00", align 1
@ld = common dso_local global i8** null, align 8
@.str.6 = private unnamed_addr constant [3 x i8] c"-g\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"/usr/lib/mcrt1.o\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"-b\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @option(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i64 @strncmp(i8* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %29

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 8
  %10 = call i8* @concat(i8* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i8**, i8*** @cpp, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  store i8* %10, i8** %12, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 8
  %15 = call i8* @concat(i8* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %16 = call i8* @concat(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %15)
  %17 = load i8**, i8*** @include, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  store i8* %16, i8** %18, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 8
  %21 = call i8* @concat(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %22 = load i8**, i8*** @com, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 8
  %26 = call i8* @concat(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %25)
  %27 = load i8**, i8*** @ld, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 17
  store i8* %26, i8** %28, align 8
  br label %50

29:                                               ; preds = %1
  %30 = load i8*, i8** %3, align 8
  %31 = call i64 @strcmp(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %49

34:                                               ; preds = %29
  %35 = load i8*, i8** %3, align 8
  %36 = call i64 @strcmp(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i8**, i8*** @ld, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 12
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8** %40, align 8
  br label %48

41:                                               ; preds = %34
  %42 = load i8*, i8** %3, align 8
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %47

46:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %51

47:                                               ; preds = %45
  br label %48

48:                                               ; preds = %47, %38
  br label %49

49:                                               ; preds = %48, %33
  br label %50

50:                                               ; preds = %49, %7
  store i32 1, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %46
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @concat(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
