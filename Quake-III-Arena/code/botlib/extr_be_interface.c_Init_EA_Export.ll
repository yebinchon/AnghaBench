; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_interface.c_Init_EA_Export.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_interface.c_Init_EA_Export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EA_Command = common dso_local global i32 0, align 4
@EA_Say = common dso_local global i32 0, align 4
@EA_SayTeam = common dso_local global i32 0, align 4
@EA_Action = common dso_local global i32 0, align 4
@EA_Gesture = common dso_local global i32 0, align 4
@EA_Talk = common dso_local global i32 0, align 4
@EA_Attack = common dso_local global i32 0, align 4
@EA_Use = common dso_local global i32 0, align 4
@EA_Respawn = common dso_local global i32 0, align 4
@EA_Crouch = common dso_local global i32 0, align 4
@EA_MoveUp = common dso_local global i32 0, align 4
@EA_MoveDown = common dso_local global i32 0, align 4
@EA_MoveForward = common dso_local global i32 0, align 4
@EA_MoveBack = common dso_local global i32 0, align 4
@EA_MoveLeft = common dso_local global i32 0, align 4
@EA_MoveRight = common dso_local global i32 0, align 4
@EA_SelectWeapon = common dso_local global i32 0, align 4
@EA_Jump = common dso_local global i32 0, align 4
@EA_DelayedJump = common dso_local global i32 0, align 4
@EA_Move = common dso_local global i32 0, align 4
@EA_View = common dso_local global i32 0, align 4
@EA_GetInput = common dso_local global i32 0, align 4
@EA_EndRegular = common dso_local global i32 0, align 4
@EA_ResetInput = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @Init_EA_Export to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Init_EA_Export(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load i32, i32* @EA_Command, align 4
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 23
  store i32 %3, i32* %5, align 4
  %6 = load i32, i32* @EA_Say, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 22
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @EA_SayTeam, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 21
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @EA_Action, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 20
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @EA_Gesture, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 19
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @EA_Talk, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 18
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @EA_Attack, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 17
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @EA_Use, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 16
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @EA_Respawn, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 15
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @EA_Crouch, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 14
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @EA_MoveUp, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 13
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @EA_MoveDown, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 12
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @EA_MoveForward, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 11
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @EA_MoveBack, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 10
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @EA_MoveLeft, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 9
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @EA_MoveRight, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 8
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @EA_SelectWeapon, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 7
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @EA_Jump, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 6
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @EA_DelayedJump, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @EA_Move, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @EA_View, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @EA_GetInput, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @EA_EndRegular, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @EA_ResetInput, align 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
