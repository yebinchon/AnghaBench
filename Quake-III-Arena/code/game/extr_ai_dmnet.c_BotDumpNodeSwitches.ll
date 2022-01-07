; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmnet.c_BotDumpNodeSwitches.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmnet.c_BotDumpNodeSwitches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@MAX_NETNAME = common dso_local global i32 0, align 4
@PRT_MESSAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"%s at %1.1f switched more than %d AI nodes\0A\00", align 1
@MAX_NODESWITCHES = common dso_local global i32 0, align 4
@numnodeswitches = common dso_local global i32 0, align 4
@nodeswitch = common dso_local global i8** null, align 8
@PRT_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotDumpNodeSwitches(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %6 = load i32, i32* @MAX_NETNAME, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %4, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %5, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = trunc i64 %7 to i32
  %14 = call i32 @ClientName(i32 %12, i8* %9, i32 %13)
  %15 = load i32, i32* @PRT_MESSAGE, align 4
  %16 = call i32 (...) @FloatTime()
  %17 = load i32, i32* @MAX_NODESWITCHES, align 4
  %18 = call i32 (i32, i8*, ...) @BotAI_Print(i32 %15, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %9, i32 %16, i32 %17)
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %31, %1
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @numnodeswitches, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load i32, i32* @PRT_MESSAGE, align 4
  %25 = load i8**, i8*** @nodeswitch, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 (i32, i8*, ...) @BotAI_Print(i32 %24, i8* %29)
  br label %31

31:                                               ; preds = %23
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %19

34:                                               ; preds = %19
  %35 = load i32, i32* @PRT_FATAL, align 4
  %36 = call i32 (i32, i8*, ...) @BotAI_Print(i32 %35, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %37)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ClientName(i32, i8*, i32) #2

declare dso_local i32 @BotAI_Print(i32, i8*, ...) #2

declare dso_local i32 @FloatTime(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
