; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_goal.c_BotLoadItemWeights.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_goal.c_BotLoadItemWeights.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (i32, i8*)* }
%struct.TYPE_4__ = type { i32, i32 }

@BLERR_CANNOTLOADITEMWEIGHTS = common dso_local global i32 0, align 4
@botimport = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@PRT_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"couldn't load weights\0A\00", align 1
@itemconfig = common dso_local global i32 0, align 4
@BLERR_NOERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotLoadItemWeights(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.TYPE_4__* @BotGoalStateFromHandle(i32 %7)
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %6, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %10 = icmp ne %struct.TYPE_4__* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @BLERR_CANNOTLOADITEMWEIGHTS, align 4
  store i32 %12, i32* %3, align 4
  br label %41

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @ReadWeightConfig(i8* %14)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %13
  %23 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @botimport, i32 0, i32 0), align 8
  %24 = load i32, i32* @PRT_FATAL, align 4
  %25 = call i32 %23(i32 %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @BLERR_CANNOTLOADITEMWEIGHTS, align 4
  store i32 %26, i32* %3, align 4
  br label %41

27:                                               ; preds = %13
  %28 = load i32, i32* @itemconfig, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* @BLERR_CANNOTLOADITEMWEIGHTS, align 4
  store i32 %31, i32* %3, align 4
  br label %41

32:                                               ; preds = %27
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @itemconfig, align 4
  %37 = call i32 @ItemWeightIndex(i32 %35, i32 %36)
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @BLERR_NOERROR, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %32, %30, %22, %11
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.TYPE_4__* @BotGoalStateFromHandle(i32) #1

declare dso_local i32 @ReadWeightConfig(i8*) #1

declare dso_local i32 @ItemWeightIndex(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
