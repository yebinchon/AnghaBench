; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/etc/extr_linux.c_option.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/etc/extr_linux.c_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"-lccdir=\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"/gcc/cpp\00", align 1
@cpp = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"-I\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"/include\00", align 1
@include = common dso_local global i8** null, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"/gcc/include\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"/gcc/crtbegin.o\00", align 1
@ld = common dso_local global i8** null, align 8
@.str.6 = private unnamed_addr constant [3 x i8] c"-L\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"/gcc\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"/gcc/crtend.o\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"/rcc\00", align 1
@com = common dso_local global i8** null, align 8
@.str.10 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"-pg\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"/usr/lib/gcrt1.o\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"-lgmon\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"-b\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"-g\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"-ld=\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"-static\00", align 1
@.str.18 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @option(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i64 @strncmp(i8* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %51

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 8
  %10 = call i8* @concat(i8* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
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
  %21 = call i8* @concat(i8* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %22 = call i8* @concat(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %21)
  %23 = load i8**, i8*** @include, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** %3, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 8
  %27 = call i8* @concat(i8* %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %28 = load i8**, i8*** @ld, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 9
  store i8* %27, i8** %29, align 8
  %30 = load i8*, i8** %3, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 8
  %32 = call i8* @concat(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %31)
  %33 = load i8**, i8*** @ld, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 12
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 8
  %37 = call i8* @concat(i8* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %38 = call i8* @concat(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %37)
  %39 = load i8**, i8*** @ld, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 14
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** %3, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 8
  %43 = call i8* @concat(i8* %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %44 = load i8**, i8*** @ld, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 19
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** %3, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 8
  %48 = call i8* @concat(i8* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %49 = load i8**, i8*** @com, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 0
  store i8* %48, i8** %50, align 8
  br label %98

51:                                               ; preds = %1
  %52 = load i8*, i8** %3, align 8
  %53 = call i64 @strcmp(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i8*, i8** %3, align 8
  %57 = call i64 @strcmp(i8* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %55, %51
  %60 = load i8**, i8*** @ld, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 7
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8** %61, align 8
  %62 = load i8**, i8*** @ld, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 18
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8** %63, align 8
  br label %97

64:                                               ; preds = %55
  %65 = load i8*, i8** %3, align 8
  %66 = call i64 @strcmp(i8* %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %96

69:                                               ; preds = %64
  %70 = load i8*, i8** %3, align 8
  %71 = call i64 @strcmp(i8* %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %95

74:                                               ; preds = %69
  %75 = load i8*, i8** %3, align 8
  %76 = call i64 @strncmp(i8* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i32 4)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load i8*, i8** %3, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 4
  %81 = load i8**, i8*** @ld, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 0
  store i8* %80, i8** %82, align 8
  br label %94

83:                                               ; preds = %74
  %84 = load i8*, i8** %3, align 8
  %85 = call i64 @strcmp(i8* %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load i8**, i8*** @ld, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 3
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i8** %89, align 8
  %90 = load i8**, i8*** @ld, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i64 0, i64 0), i8** %91, align 8
  br label %93

92:                                               ; preds = %83
  store i32 0, i32* %2, align 4
  br label %99

93:                                               ; preds = %87
  br label %94

94:                                               ; preds = %93, %78
  br label %95

95:                                               ; preds = %94, %73
  br label %96

96:                                               ; preds = %95, %68
  br label %97

97:                                               ; preds = %96, %59
  br label %98

98:                                               ; preds = %97, %7
  store i32 1, i32* %2, align 4
  br label %99

99:                                               ; preds = %98, %92
  %100 = load i32, i32* %2, align 4
  ret i32 %100
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
