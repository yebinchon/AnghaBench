; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_sound.c_Sound_ReadConfig.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_sound.c_Sound_ReadConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"SOUND_ENABLED\00", align 1
@Sound_enabled = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"SOUND_RATE\00", align 1
@Sound_desired = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"SOUND_BITS\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"SOUND_FRAG_FRAMES\00", align 1
@TRUE = common dso_local global i32 0, align 4
@Sound_latency = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Sound_ReadConfig(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i64 @strcmp(i8* %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @Util_sscanbool(i8* %12)
  store i32 %13, i32* @Sound_enabled, align 4
  %14 = icmp ne i32 %13, -1
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %3, align 4
  br label %62

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = call i64 @strcmp(i8* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @Util_sscandec(i8* %21)
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Sound_desired, i32 0, i32 0), align 4
  %23 = icmp ne i32 %22, -1
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %3, align 4
  br label %62

25:                                               ; preds = %16
  %26 = load i8*, i8** %4, align 8
  %27 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @Util_sscandec(i8* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 8
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 16
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @FALSE, align 4
  store i32 %38, i32* %3, align 4
  br label %62

39:                                               ; preds = %34, %29
  %40 = load i32, i32* %6, align 4
  %41 = sdiv i32 %40, 8
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Sound_desired, i32 0, i32 1), align 4
  br label %58

42:                                               ; preds = %25
  %43 = load i8*, i8** %4, align 8
  %44 = call i64 @strcmp(i8* %43, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @Util_sscandec(i8* %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %3, align 4
  br label %62

53:                                               ; preds = %46
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Sound_desired, i32 0, i32 2), align 4
  br label %57

55:                                               ; preds = %42
  %56 = load i32, i32* @FALSE, align 4
  store i32 %56, i32* %3, align 4
  br label %62

57:                                               ; preds = %53
  br label %58

58:                                               ; preds = %57, %39
  br label %59

59:                                               ; preds = %58
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* @TRUE, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %55, %51, %37, %20, %11
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @Util_sscanbool(i8*) #1

declare dso_local i32 @Util_sscandec(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
