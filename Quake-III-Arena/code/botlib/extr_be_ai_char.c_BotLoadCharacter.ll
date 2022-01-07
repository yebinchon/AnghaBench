; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_char.c_BotLoadCharacter.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_char.c_BotLoadCharacter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i8*, float, i8*)* }

@botimport = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PRT_MESSAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"loaded cached skill %f from %s\0A\00", align 1
@botcharacters = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotLoadCharacter(i8* %0, float %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store float %1, float* %5, align 4
  %9 = load float, float* %5, align 4
  %10 = fpext float %9 to double
  %11 = fcmp olt double %10, 1.000000e+00
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store float 1.000000e+00, float* %5, align 4
  br label %19

13:                                               ; preds = %2
  %14 = load float, float* %5, align 4
  %15 = fpext float %14 to double
  %16 = fcmp ogt double %15, 5.000000e+00
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store float 5.000000e+00, float* %5, align 4
  br label %18

18:                                               ; preds = %17, %13
  br label %19

19:                                               ; preds = %18, %12
  %20 = load float, float* %5, align 4
  %21 = fpext float %20 to double
  %22 = fcmp oeq double %21, 1.000000e+00
  br i1 %22, label %31, label %23

23:                                               ; preds = %19
  %24 = load float, float* %5, align 4
  %25 = fpext float %24 to double
  %26 = fcmp oeq double %25, 4.000000e+00
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load float, float* %5, align 4
  %29 = fpext float %28 to double
  %30 = fcmp oeq double %29, 5.000000e+00
  br i1 %30, label %31, label %36

31:                                               ; preds = %27, %23, %19
  %32 = load i8*, i8** %4, align 8
  %33 = load float, float* %5, align 4
  %34 = fptosi float %33 to i32
  %35 = call i32 @BotLoadCharacterSkill(i8* %32, i32 %34)
  store i32 %35, i32* %3, align 4
  br label %97

36:                                               ; preds = %27
  %37 = load i8*, i8** %4, align 8
  %38 = load float, float* %5, align 4
  %39 = call i32 @BotFindCachedCharacter(i8* %37, float %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load i32 (i32, i8*, float, i8*)*, i32 (i32, i8*, float, i8*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @botimport, i32 0, i32 0), align 8
  %44 = load i32, i32* @PRT_MESSAGE, align 4
  %45 = load float, float* %5, align 4
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 %43(i32 %44, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), float %45, i8* %46)
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %3, align 4
  br label %97

49:                                               ; preds = %36
  %50 = load float, float* %5, align 4
  %51 = fpext float %50 to double
  %52 = fcmp olt double %51, 4.000000e+00
  br i1 %52, label %53, label %67

53:                                               ; preds = %49
  %54 = load i8*, i8** %4, align 8
  %55 = call i32 @BotLoadCharacterSkill(i8* %54, i32 1)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %97

59:                                               ; preds = %53
  %60 = load i8*, i8** %4, align 8
  %61 = call i32 @BotLoadCharacterSkill(i8* %60, i32 4)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %3, align 4
  br label %97

66:                                               ; preds = %59
  br label %81

67:                                               ; preds = %49
  %68 = load i8*, i8** %4, align 8
  %69 = call i32 @BotLoadCharacterSkill(i8* %68, i32 4)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  store i32 0, i32* %3, align 4
  br label %97

73:                                               ; preds = %67
  %74 = load i8*, i8** %4, align 8
  %75 = call i32 @BotLoadCharacterSkill(i8* %74, i32 5)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %3, align 4
  br label %97

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %80, %66
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load float, float* %5, align 4
  %85 = call i32 @BotInterpolateCharacters(i32 %82, i32 %83, float %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %81
  store i32 0, i32* %3, align 4
  br label %97

89:                                               ; preds = %81
  %90 = load i32*, i32** @botcharacters, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @BotDumpCharacter(i32 %94)
  %96 = load i32, i32* %8, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %89, %88, %78, %72, %64, %58, %42, %31
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @BotLoadCharacterSkill(i8*, i32) #1

declare dso_local i32 @BotFindCachedCharacter(i8*, float) #1

declare dso_local i32 @BotInterpolateCharacters(i32, i32, float) #1

declare dso_local i32 @BotDumpCharacter(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
