; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_team.c_Team_ResetFlag.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_team.c_Team_ResetFlag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"team_CTF_redflag\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"team_CTF_blueflag\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"team_CTF_neutralflag\00", align 1
@classname = common dso_local global i32 0, align 4
@FL_DROPPED_ITEM = common dso_local global i32 0, align 4
@FLAG_ATBASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @Team_ResetFlag(i32 %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  %7 = load i32, i32* %3, align 4
  switch i32 %7, label %11 [
    i32 128, label %8
    i32 130, label %9
    i32 129, label %10
  ]

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %12

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %12

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %12

11:                                               ; preds = %1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  br label %40

12:                                               ; preds = %10, %9, %8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  br label %13

13:                                               ; preds = %34, %12
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = load i32, i32* @classname, align 4
  %16 = call i32 @FOFS(i32 %15)
  %17 = load i8*, i8** %4, align 8
  %18 = call %struct.TYPE_7__* @G_Find(%struct.TYPE_7__* %14, i32 %16, i8* %17)
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %5, align 8
  %19 = icmp ne %struct.TYPE_7__* %18, null
  br i1 %19, label %20, label %35

20:                                               ; preds = %13
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @FL_DROPPED_ITEM, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = call i32 @G_FreeEntity(%struct.TYPE_7__* %28)
  br label %34

30:                                               ; preds = %20
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** %6, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = call i32 @RespawnItem(%struct.TYPE_7__* %32)
  br label %34

34:                                               ; preds = %30, %27
  br label %13

35:                                               ; preds = %13
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @FLAG_ATBASE, align 4
  %38 = call i32 @Team_SetFlagStatus(i32 %36, i32 %37)
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %2, align 8
  br label %40

40:                                               ; preds = %35, %11
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  ret %struct.TYPE_7__* %41
}

declare dso_local %struct.TYPE_7__* @G_Find(%struct.TYPE_7__*, i32, i8*) #1

declare dso_local i32 @FOFS(i32) #1

declare dso_local i32 @G_FreeEntity(%struct.TYPE_7__*) #1

declare dso_local i32 @RespawnItem(%struct.TYPE_7__*) #1

declare dso_local i32 @Team_SetFlagStatus(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
