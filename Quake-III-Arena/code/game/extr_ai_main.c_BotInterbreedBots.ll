; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_main.c_BotInterbreedBots.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_main.c_BotInterbreedBots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i32 }

@MAX_CLIENTS = common dso_local global i32 0, align 4
@botstates = common dso_local global %struct.TYPE_2__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotInterbreedBots() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @MAX_CLIENTS, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %1, align 8
  %10 = alloca float, i64 %8, align 16
  store i64 %8, i64* %2, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %57, %0
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @MAX_CLIENTS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %60

15:                                               ; preds = %11
  %16 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @botstates, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %16, i64 %18
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %22, label %52

22:                                               ; preds = %15
  %23 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @botstates, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %23, i64 %25
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %52

31:                                               ; preds = %22
  %32 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @botstates, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %32, i64 %34
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = mul nsw i32 %38, 2
  %40 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @botstates, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %40, i64 %42
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %39, %46
  %48 = sitofp i32 %47 to float
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds float, float* %10, i64 %50
  store float %48, float* %51, align 4
  br label %56

52:                                               ; preds = %22, %15
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds float, float* %10, i64 %54
  store float -1.000000e+00, float* %55, align 4
  br label %56

56:                                               ; preds = %52, %31
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %11

60:                                               ; preds = %11
  %61 = load i32, i32* @MAX_CLIENTS, align 4
  %62 = call i64 @trap_GeneticParentsAndChildSelection(i32 %61, float* %10, i32* %3, i32* %4, i32* %5)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %95

64:                                               ; preds = %60
  %65 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @botstates, align 8
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %65, i64 %67
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @botstates, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %72, i64 %74
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @botstates, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %79, i64 %81
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @trap_BotInterbreedGoalFuzzyLogic(i32 %71, i32 %78, i32 %85)
  %87 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @botstates, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %87, i64 %89
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @trap_BotMutateGoalFuzzyLogic(i32 %93, i32 1)
  br label %95

95:                                               ; preds = %64, %60
  store i32 0, i32* %6, align 4
  br label %96

96:                                               ; preds = %130, %95
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @MAX_CLIENTS, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %133

100:                                              ; preds = %96
  %101 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @botstates, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %101, i64 %103
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = icmp ne %struct.TYPE_2__* %105, null
  br i1 %106, label %107, label %129

107:                                              ; preds = %100
  %108 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @botstates, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %108, i64 %110
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %107
  %117 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @botstates, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %117, i64 %119
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  store i32 0, i32* %122, align 8
  %123 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @botstates, align 8
  %124 = load i32, i32* %6, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %123, i64 %125
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  store i32 0, i32* %128, align 4
  br label %129

129:                                              ; preds = %116, %107, %100
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %6, align 4
  br label %96

133:                                              ; preds = %96
  %134 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %134)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @trap_GeneticParentsAndChildSelection(i32, float*, i32*, i32*, i32*) #2

declare dso_local i32 @trap_BotInterbreedGoalFuzzyLogic(i32, i32, i32) #2

declare dso_local i32 @trap_BotMutateGoalFuzzyLogic(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
