; ModuleID = '/home/carl/AnghaBench/Cello/benchmarks/ext/extr_cleantxt.c_main.c'
source_filename = "/home/carl/AnghaBench/Cello/benchmarks/ext/extr_cleantxt.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOF = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Usage: cleantxt <file>\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@stdin = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"ERROR: fail to open the input file.\0A\00", align 1
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* @EOF, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @stderr, align 4
  %13 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %70

14:                                               ; preds = %2
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @strcmp(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i32* @fopen(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %27

25:                                               ; preds = %14
  %26 = load i32*, i32** @stdin, align 8
  br label %27

27:                                               ; preds = %25, %20
  %28 = phi i32* [ %24, %20 ], [ %26, %25 ]
  store i32* %28, i32** %6, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @stderr, align 4
  %33 = call i32 @fprintf(i32 %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %70

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %60, %34
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @feof(i32* %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br i1 %39, label %40, label %61

40:                                               ; preds = %35
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @fgetc(i32* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i64 @isgraph(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %47, 9
  br i1 %48, label %55, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %7, align 4
  %51 = icmp eq i32 %50, 10
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %7, align 4
  %54 = icmp eq i32 %53, 32
  br i1 %54, label %55, label %60

55:                                               ; preds = %52, %49, %46, %40
  %56 = load i32, i32* %7, align 4
  %57 = trunc i32 %56 to i8
  %58 = load i32, i32* @stdout, align 4
  %59 = call i32 @fputc(i8 signext %57, i32 %58)
  br label %60

60:                                               ; preds = %55, %52
  br label %35

61:                                               ; preds = %35
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 10
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* @stdout, align 4
  %66 = call i32 @fputc(i8 signext 10, i32 %65)
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @fclose(i32* %68)
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %67, %31, %11
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i32 @fgetc(i32*) #1

declare dso_local i64 @isgraph(i32) #1

declare dso_local i32 @fputc(i8 signext, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
