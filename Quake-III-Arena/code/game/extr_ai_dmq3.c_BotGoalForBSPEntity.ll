; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmq3.c_BotGoalForBSPEntity.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmq3.c_BotGoalForBSPEntity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32 }

@MAX_INFO_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"classname\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotGoalForBSPEntity(i8* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [10 x i32], align 16
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %15 = load i32, i32* @MAX_INFO_STRING, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %6, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = call i32 @memset(%struct.TYPE_4__* %19, i32 0, i32 16)
  %21 = call i32 @trap_AAS_NextBSPEntity(i32 0)
  store i32 %21, i32* %11, align 4
  br label %22

22:                                               ; preds = %77, %2
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %80

25:                                               ; preds = %22
  %26 = load i32, i32* %11, align 4
  %27 = trunc i64 %16 to i32
  %28 = call i32 @trap_AAS_ValueForBSPEpairKey(i32 %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %18, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %77

31:                                               ; preds = %25
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @strcmp(i8* %18, i8* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %76, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %11, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @trap_AAS_VectorForBSPEpairKey(i32 %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @qfalse, align 4
  store i32 %41, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %82

42:                                               ; preds = %35
  %43 = load i32*, i32** %8, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @VectorCopy(i32* %43, i32* %46)
  %48 = load i32*, i32** %8, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @VectorCopy(i32* %48, i32* %49)
  %51 = load i32*, i32** %9, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %53, 32
  store i32 %54, i32* %52, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = call i32 @VectorCopy(i32* %55, i32* %56)
  %58 = load i32*, i32** %10, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 32
  store i32 %61, i32* %59, align 4
  %62 = load i32*, i32** %9, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0
  %65 = call i32 @trap_AAS_TraceAreas(i32* %62, i32* %63, i32* %64, i32* null, i32 10)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %42
  %69 = load i32, i32* @qfalse, align 4
  store i32 %69, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %82

70:                                               ; preds = %42
  %71 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0
  %72 = load i32, i32* %71, align 16
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* @qtrue, align 4
  store i32 %75, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %82

76:                                               ; preds = %31
  br label %77

77:                                               ; preds = %76, %30
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @trap_AAS_NextBSPEntity(i32 %78)
  store i32 %79, i32* %11, align 4
  br label %22

80:                                               ; preds = %22
  %81 = load i32, i32* @qfalse, align 4
  store i32 %81, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %82

82:                                               ; preds = %80, %70, %68, %40
  %83 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %83)
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #2

declare dso_local i32 @trap_AAS_NextBSPEntity(i32) #2

declare dso_local i32 @trap_AAS_ValueForBSPEpairKey(i32, i8*, i8*, i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @trap_AAS_VectorForBSPEpairKey(i32, i8*, i32*) #2

declare dso_local i32 @VectorCopy(i32*, i32*) #2

declare dso_local i32 @trap_AAS_TraceAreas(i32*, i32*, i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
