; ModuleID = '/home/carl/AnghaBench/darwin-xnu/SETUP/config/extr_main.c_get_word.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/SETUP/config/extr_main.c_get_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_word.line = internal global [80 x i8] zeroinitializer, align 16
@EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"|\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_word(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  br label %6

6:                                                ; preds = %18, %1
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @getc(i32* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @EOF, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %6
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 32
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 9
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %19

18:                                               ; preds = %14, %11
  br label %6

19:                                               ; preds = %17, %6
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @EOF, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* @EOF, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** %2, align 8
  br label %68

27:                                               ; preds = %19
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %28, 10
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i8* null, i8** %2, align 8
  br label %68

31:                                               ; preds = %27
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %32, 124
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %68

35:                                               ; preds = %31
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @get_word.line, i64 0, i64 0), i8** %5, align 8
  %36 = load i32, i32* %4, align 4
  %37 = trunc i32 %36 to i8
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %5, align 8
  store i8 %37, i8* %38, align 1
  br label %40

40:                                               ; preds = %50, %35
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @getc(i32* %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* @EOF, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  %46 = load i32, i32* %4, align 4
  %47 = call i64 @isspace(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %55

50:                                               ; preds = %45
  %51 = load i32, i32* %4, align 4
  %52 = trunc i32 %51 to i8
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %5, align 8
  store i8 %52, i8* %53, align 1
  br label %40

55:                                               ; preds = %49, %40
  %56 = load i8*, i8** %5, align 8
  store i8 0, i8* %56, align 1
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @EOF, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i32, i32* @EOF, align 4
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to i8*
  store i8* %63, i8** %2, align 8
  br label %68

64:                                               ; preds = %55
  %65 = load i32, i32* %4, align 4
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 @ungetc(i32 %65, i32* %66)
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @get_word.line, i64 0, i64 0), i8** %2, align 8
  br label %68

68:                                               ; preds = %64, %60, %34, %30, %23
  %69 = load i8*, i8** %2, align 8
  ret i8* %69
}

declare dso_local i32 @getc(i32*) #1

declare dso_local i64 @isspace(i32) #1

declare dso_local i32 @ungetc(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
