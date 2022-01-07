; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_svcmds.c_Svcmd_EntityList_f.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_svcmds.c_Svcmd_EntityList_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@g_entities = common dso_local global %struct.TYPE_6__* null, align 8
@level = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str = private unnamed_addr constant [5 x i8] c"%3i:\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"ET_GENERAL          \00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"ET_PLAYER           \00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"ET_ITEM             \00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"ET_MISSILE          \00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"ET_MOVER            \00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"ET_BEAM             \00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"ET_PORTAL           \00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"ET_SPEAKER          \00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"ET_PUSH_TRIGGER     \00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"ET_TELEPORT_TRIGGER \00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"ET_INVISIBLE        \00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"ET_GRAPPLE          \00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"%3i                 \00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Svcmd_EntityList_f() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_entities, align 8
  %4 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i64 1
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %2, align 8
  store i32 1, i32* %1, align 4
  br label %5

5:                                                ; preds = %64, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @level, i32 0, i32 0), align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %69

9:                                                ; preds = %5
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  br label %64

15:                                               ; preds = %9
  %16 = load i32, i32* %1, align 4
  %17 = call i32 (i8*, ...) @G_Printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %46 [
    i32 138, label %22
    i32 132, label %24
    i32 135, label %26
    i32 134, label %28
    i32 133, label %30
    i32 139, label %32
    i32 131, label %34
    i32 129, label %36
    i32 130, label %38
    i32 128, label %40
    i32 136, label %42
    i32 137, label %44
  ]

22:                                               ; preds = %15
  %23 = call i32 (i8*, ...) @G_Printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %52

24:                                               ; preds = %15
  %25 = call i32 (i8*, ...) @G_Printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %52

26:                                               ; preds = %15
  %27 = call i32 (i8*, ...) @G_Printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %52

28:                                               ; preds = %15
  %29 = call i32 (i8*, ...) @G_Printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %52

30:                                               ; preds = %15
  %31 = call i32 (i8*, ...) @G_Printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %52

32:                                               ; preds = %15
  %33 = call i32 (i8*, ...) @G_Printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %52

34:                                               ; preds = %15
  %35 = call i32 (i8*, ...) @G_Printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %52

36:                                               ; preds = %15
  %37 = call i32 (i8*, ...) @G_Printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  br label %52

38:                                               ; preds = %15
  %39 = call i32 (i8*, ...) @G_Printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  br label %52

40:                                               ; preds = %15
  %41 = call i32 (i8*, ...) @G_Printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  br label %52

42:                                               ; preds = %15
  %43 = call i32 (i8*, ...) @G_Printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  br label %52

44:                                               ; preds = %15
  %45 = call i32 (i8*, ...) @G_Printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  br label %52

46:                                               ; preds = %15
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i8*, ...) @G_Printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %46, %44, %42, %40, %38, %36, %34, %32, %30, %28, %26, %24, %22
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i8*, ...) @G_Printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %57, %52
  %63 = call i32 (i8*, ...) @G_Printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %14
  %65 = load i32, i32* %1, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %1, align 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 1
  store %struct.TYPE_6__* %68, %struct.TYPE_6__** %2, align 8
  br label %5

69:                                               ; preds = %5
  ret void
}

declare dso_local i32 @G_Printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
