; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_client.c_SelectInitialSpawnPoint.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_client.c_SelectInitialSpawnPoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@classname = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"info_player_deathmatch\00", align 1
@vec3_origin = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @SelectInitialSpawnPoint(i32* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %6, align 8
  br label %7

7:                                                ; preds = %20, %2
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %9 = load i32, i32* @classname, align 4
  %10 = call i32 @FOFS(i32 %9)
  %11 = call %struct.TYPE_9__* @G_Find(%struct.TYPE_9__* %8, i32 %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %6, align 8
  %12 = icmp ne %struct.TYPE_9__* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %7
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 1
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %21

20:                                               ; preds = %13
  br label %7

21:                                               ; preds = %19, %7
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = icmp ne %struct.TYPE_9__* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %26 = call i64 @SpotWouldTelefrag(%struct.TYPE_9__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %24, %21
  %29 = load i32, i32* @vec3_origin, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call %struct.TYPE_9__* @SelectSpawnPoint(i32 %29, i32* %30, i32* %31)
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %3, align 8
  br label %51

33:                                               ; preds = %24
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @VectorCopy(i32 %37, i32* %38)
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 9
  store i32 %43, i32* %41, align 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @VectorCopy(i32 %47, i32* %48)
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %50, %struct.TYPE_9__** %3, align 8
  br label %51

51:                                               ; preds = %33, %28
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %52
}

declare dso_local %struct.TYPE_9__* @G_Find(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i32 @FOFS(i32) #1

declare dso_local i64 @SpotWouldTelefrag(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @SelectSpawnPoint(i32, i32*, i32*) #1

declare dso_local i32 @VectorCopy(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
