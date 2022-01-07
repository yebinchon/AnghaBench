; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_cmds.c_Cmd_Tell_f.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_cmds.c_Cmd_Tell_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@MAX_TOKEN_CHARS = common dso_local global i32 0, align 4
@level = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@g_entities = common dso_local global %struct.TYPE_13__* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"tell: %s to %s: %s\0A\00", align 1
@SAY_TELL = common dso_local global i32 0, align 4
@SVF_BOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @Cmd_Tell_f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Cmd_Tell_f(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %9 = load i32, i32* @MAX_TOKEN_CHARS, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = call i32 (...) @trap_Argc()
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 1, i32* %8, align 4
  br label %84

16:                                               ; preds = %1
  %17 = trunc i64 %10 to i32
  %18 = call i32 @trap_Argv(i32 1, i8* %12, i32 %17)
  %19 = call i32 @atoi(i8* %12)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 0), align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %16
  store i32 1, i32* %8, align 4
  br label %84

27:                                               ; preds = %22
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** @g_entities, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i64 %30
  store %struct.TYPE_13__* %31, %struct.TYPE_13__** %4, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %33 = icmp ne %struct.TYPE_13__* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %27
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = icmp ne %struct.TYPE_11__* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %39, %34, %27
  store i32 1, i32* %8, align 4
  br label %84

45:                                               ; preds = %39
  %46 = call i8* @ConcatArgs(i32 2)
  store i8* %46, i8** %5, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 @G_LogPrintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %58, i8* %59)
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %63 = load i32, i32* @SAY_TELL, align 4
  %64 = load i8*, i8** %5, align 8
  %65 = call i32 @G_Say(%struct.TYPE_13__* %61, %struct.TYPE_13__* %62, i32 %63, i8* %64)
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %68 = icmp ne %struct.TYPE_13__* %66, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %45
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @SVF_BOT, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %69
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %80 = load i32, i32* @SAY_TELL, align 4
  %81 = load i8*, i8** %5, align 8
  %82 = call i32 @G_Say(%struct.TYPE_13__* %78, %struct.TYPE_13__* %79, i32 %80, i8* %81)
  br label %83

83:                                               ; preds = %77, %69, %45
  store i32 0, i32* %8, align 4
  br label %84

84:                                               ; preds = %83, %44, %26, %15
  %85 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %85)
  %86 = load i32, i32* %8, align 4
  switch i32 %86, label %88 [
    i32 0, label %87
    i32 1, label %87
  ]

87:                                               ; preds = %84, %84
  ret void

88:                                               ; preds = %84
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trap_Argc(...) #2

declare dso_local i32 @trap_Argv(i32, i8*, i32) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i8* @ConcatArgs(i32) #2

declare dso_local i32 @G_LogPrintf(i8*, i32, i32, i8*) #2

declare dso_local i32 @G_Say(%struct.TYPE_13__*, %struct.TYPE_13__*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
