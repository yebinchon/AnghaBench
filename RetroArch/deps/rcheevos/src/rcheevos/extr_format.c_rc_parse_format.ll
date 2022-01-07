; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/rcheevos/src/rcheevos/extr_format.c_rc_parse_format.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/rcheevos/src/rcheevos/extr_format.c_rc_parse_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"RAMES\00", align 1
@RC_FORMAT_FRAMES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"IME\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"IMESECS\00", align 1
@RC_FORMAT_SECONDS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"ECS\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"CORE\00", align 1
@RC_FORMAT_SCORE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"ILLISECS\00", align 1
@RC_FORMAT_CENTISECS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"OINTS\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"ALUE\00", align 1
@RC_FORMAT_VALUE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"THER\00", align 1
@RC_FORMAT_OTHER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rc_parse_format(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %5, i8** %3, align 8
  %6 = load i8, i8* %4, align 1
  %7 = sext i8 %6 to i32
  switch i32 %7, label %70 [
    i32 70, label %8
    i32 84, label %15
    i32 83, label %29
    i32 77, label %42
    i32 80, label %49
    i32 86, label %56
    i32 79, label %63
  ]

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = load i32, i32* @RC_FORMAT_FRAMES, align 4
  store i32 %13, i32* %2, align 4
  br label %72

14:                                               ; preds = %8
  br label %70

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @RC_FORMAT_FRAMES, align 4
  store i32 %20, i32* %2, align 4
  br label %72

21:                                               ; preds = %15
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @RC_FORMAT_SECONDS, align 4
  store i32 %26, i32* %2, align 4
  br label %72

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %27
  br label %70

29:                                               ; preds = %1
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @RC_FORMAT_SECONDS, align 4
  store i32 %34, i32* %2, align 4
  br label %72

35:                                               ; preds = %29
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* @RC_FORMAT_SCORE, align 4
  store i32 %40, i32* %2, align 4
  br label %72

41:                                               ; preds = %35
  br label %70

42:                                               ; preds = %1
  %43 = load i8*, i8** %3, align 8
  %44 = call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* @RC_FORMAT_CENTISECS, align 4
  store i32 %47, i32* %2, align 4
  br label %72

48:                                               ; preds = %42
  br label %70

49:                                               ; preds = %1
  %50 = load i8*, i8** %3, align 8
  %51 = call i32 @strcmp(i8* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* @RC_FORMAT_SCORE, align 4
  store i32 %54, i32* %2, align 4
  br label %72

55:                                               ; preds = %49
  br label %70

56:                                               ; preds = %1
  %57 = load i8*, i8** %3, align 8
  %58 = call i32 @strcmp(i8* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* @RC_FORMAT_VALUE, align 4
  store i32 %61, i32* %2, align 4
  br label %72

62:                                               ; preds = %56
  br label %70

63:                                               ; preds = %1
  %64 = load i8*, i8** %3, align 8
  %65 = call i32 @strcmp(i8* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* @RC_FORMAT_OTHER, align 4
  store i32 %68, i32* %2, align 4
  br label %72

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %1, %69, %62, %55, %48, %41, %28, %14
  %71 = load i32, i32* @RC_FORMAT_VALUE, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %70, %67, %60, %53, %46, %39, %33, %25, %19, %12
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
