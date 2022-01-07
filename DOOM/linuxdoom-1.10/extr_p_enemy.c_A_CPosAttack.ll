; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_enemy.c_A_CPosAttack.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_enemy.c_A_CPosAttack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

@sfx_shotgn = common dso_local global i32 0, align 4
@MISSILERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @A_CPosAttack(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %41

12:                                               ; preds = %1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %14 = load i32, i32* @sfx_shotgn, align 4
  %15 = call i32 @S_StartSound(%struct.TYPE_7__* %13, i32 %14)
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %17 = call i32 @A_FaceTarget(%struct.TYPE_7__* %16)
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %4, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @MISSILERANGE, align 4
  %24 = call i32 @P_AimLineAttack(%struct.TYPE_7__* %21, i32 %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 (...) @P_Random()
  %27 = call i32 (...) @P_Random()
  %28 = sub nsw i32 %26, %27
  %29 = shl i32 %28, 20
  %30 = add nsw i32 %25, %29
  store i32 %30, i32* %3, align 4
  %31 = call i32 (...) @P_Random()
  %32 = srem i32 %31, 5
  %33 = add nsw i32 %32, 1
  %34 = mul nsw i32 %33, 3
  store i32 %34, i32* %5, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @MISSILERANGE, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @P_LineAttack(%struct.TYPE_7__* %35, i32 %36, i32 %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @S_StartSound(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @A_FaceTarget(%struct.TYPE_7__*) #1

declare dso_local i32 @P_AimLineAttack(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @P_Random(...) #1

declare dso_local i32 @P_LineAttack(%struct.TYPE_7__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
