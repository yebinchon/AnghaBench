; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_enemy.c_A_SPosAttack.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_enemy.c_A_SPosAttack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

@sfx_shotgn = common dso_local global i32 0, align 4
@MISSILERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @A_SPosAttack(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %49

13:                                               ; preds = %1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %15 = load i32, i32* @sfx_shotgn, align 4
  %16 = call i32 @S_StartSound(%struct.TYPE_7__* %14, i32 %15)
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %18 = call i32 @A_FaceTarget(%struct.TYPE_7__* %17)
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @MISSILERANGE, align 4
  %25 = call i32 @P_AimLineAttack(%struct.TYPE_7__* %22, i32 %23, i32 %24)
  store i32 %25, i32* %7, align 4
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %46, %13
  %27 = load i32, i32* %3, align 4
  %28 = icmp slt i32 %27, 3
  br i1 %28, label %29, label %49

29:                                               ; preds = %26
  %30 = load i32, i32* %5, align 4
  %31 = call i32 (...) @P_Random()
  %32 = call i32 (...) @P_Random()
  %33 = sub nsw i32 %31, %32
  %34 = shl i32 %33, 20
  %35 = add nsw i32 %30, %34
  store i32 %35, i32* %4, align 4
  %36 = call i32 (...) @P_Random()
  %37 = srem i32 %36, 5
  %38 = add nsw i32 %37, 1
  %39 = mul nsw i32 %38, 3
  store i32 %39, i32* %6, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @MISSILERANGE, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @P_LineAttack(%struct.TYPE_7__* %40, i32 %41, i32 %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %29
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %26

49:                                               ; preds = %12, %26
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
