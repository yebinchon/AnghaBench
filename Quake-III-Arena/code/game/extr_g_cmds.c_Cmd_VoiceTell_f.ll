; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_cmds.c_Cmd_VoiceTell_f.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_cmds.c_Cmd_VoiceTell_f.c"
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
@.str = private unnamed_addr constant [21 x i8] c"vtell: %s to %s: %s\0A\00", align 1
@SAY_TELL = common dso_local global i32 0, align 4
@SVF_BOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i32)* @Cmd_VoiceTell_f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Cmd_VoiceTell_f(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* @MAX_TOKEN_CHARS, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = call i32 (...) @trap_Argc()
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 1, i32* %10, align 4
  br label %88

18:                                               ; preds = %2
  %19 = trunc i64 %12 to i32
  %20 = call i32 @trap_Argv(i32 1, i8* %14, i32 %19)
  %21 = call i32 @atoi(i8* %14)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 0), align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %18
  store i32 1, i32* %10, align 4
  br label %88

29:                                               ; preds = %24
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** @g_entities, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i64 %32
  store %struct.TYPE_13__* %33, %struct.TYPE_13__** %6, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %35 = icmp ne %struct.TYPE_13__* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %29
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = icmp ne %struct.TYPE_11__* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %41, %36, %29
  store i32 1, i32* %10, align 4
  br label %88

47:                                               ; preds = %41
  %48 = call i8* @ConcatArgs(i32 2)
  store i8* %48, i8** %7, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @G_LogPrintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %60, i8* %61)
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %65 = load i32, i32* @SAY_TELL, align 4
  %66 = load i8*, i8** %7, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @G_Voice(%struct.TYPE_13__* %63, %struct.TYPE_13__* %64, i32 %65, i8* %66, i32 %67)
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %71 = icmp ne %struct.TYPE_13__* %69, %70
  br i1 %71, label %72, label %87

72:                                               ; preds = %47
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @SVF_BOT, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %72
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %83 = load i32, i32* @SAY_TELL, align 4
  %84 = load i8*, i8** %7, align 8
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @G_Voice(%struct.TYPE_13__* %81, %struct.TYPE_13__* %82, i32 %83, i8* %84, i32 %85)
  br label %87

87:                                               ; preds = %80, %72, %47
  store i32 0, i32* %10, align 4
  br label %88

88:                                               ; preds = %87, %46, %28, %17
  %89 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %89)
  %90 = load i32, i32* %10, align 4
  switch i32 %90, label %92 [
    i32 0, label %91
    i32 1, label %91
  ]

91:                                               ; preds = %88, %88
  ret void

92:                                               ; preds = %88
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trap_Argc(...) #2

declare dso_local i32 @trap_Argv(i32, i8*, i32) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i8* @ConcatArgs(i32) #2

declare dso_local i32 @G_LogPrintf(i8*, i32, i32, i8*) #2

declare dso_local i32 @G_Voice(%struct.TYPE_13__*, %struct.TYPE_13__*, i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
