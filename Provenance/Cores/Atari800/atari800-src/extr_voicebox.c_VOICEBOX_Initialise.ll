; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_voicebox.c_VOICEBOX_Initialise.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_voicebox.c_VOICEBOX_Initialise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"-voicebox\00", align 1
@TRUE = common dso_local global i32 0, align 4
@VOICEBOX_enabled = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@VOICEBOX_ii = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"-voiceboxii\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"\09-voicebox        Emulate the Alien Group Voice Box I\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"\09-voiceboxii      Emulate the Alien Group Voice Box II\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @VOICEBOX_Initialise(i32* %0, i8** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8** %1, i8*** %4, align 8
  store i32 1, i32* %6, align 4
  store i32 1, i32* %5, align 4
  br label %7

7:                                                ; preds = %58, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %61

12:                                               ; preds = %7
  %13 = load i8**, i8*** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8*, i8** %13, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @strcmp(i8* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load i32, i32* @TRUE, align 4
  store i32 %21, i32* @VOICEBOX_enabled, align 4
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* @VOICEBOX_ii, align 4
  br label %57

23:                                               ; preds = %12
  %24 = load i8**, i8*** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load i32, i32* @TRUE, align 4
  store i32 %32, i32* @VOICEBOX_enabled, align 4
  %33 = load i32, i32* @TRUE, align 4
  store i32 %33, i32* @VOICEBOX_ii, align 4
  br label %56

34:                                               ; preds = %23
  %35 = load i8**, i8*** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @strcmp(i8* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = call i32 @Log_print(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  %44 = call i32 @Log_print(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %34
  %46 = load i8**, i8*** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = load i8**, i8*** %4, align 8
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i8*, i8** %51, i64 %54
  store i8* %50, i8** %55, align 8
  br label %56

56:                                               ; preds = %45, %31
  br label %57

57:                                               ; preds = %56, %20
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %7

61:                                               ; preds = %7
  %62 = load i32, i32* %6, align 4
  %63 = load i32*, i32** %3, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* @TRUE, align 4
  ret i32 %64
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @Log_print(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
