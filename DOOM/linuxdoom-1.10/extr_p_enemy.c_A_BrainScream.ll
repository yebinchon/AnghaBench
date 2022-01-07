; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_enemy.c_A_BrainScream.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_enemy.c_A_BrainScream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@FRACUNIT = common dso_local global i32 0, align 4
@MT_ROCKET = common dso_local global i32 0, align 4
@S_BRAINEXPLODE1 = common dso_local global i32 0, align 4
@sfx_bosdth = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @A_BrainScream(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @FRACUNIT, align 4
  %11 = mul nsw i32 196, %10
  %12 = sub nsw i32 %9, %11
  store i32 %12, i32* %3, align 4
  br label %13

13:                                               ; preds = %60, %1
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @FRACUNIT, align 4
  %19 = mul nsw i32 320, %18
  %20 = add nsw i32 %17, %19
  %21 = icmp slt i32 %14, %20
  br i1 %21, label %22, label %65

22:                                               ; preds = %13
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @FRACUNIT, align 4
  %27 = mul nsw i32 320, %26
  %28 = sub nsw i32 %25, %27
  store i32 %28, i32* %4, align 4
  %29 = call i32 (...) @P_Random()
  %30 = mul nsw i32 %29, 2
  %31 = load i32, i32* @FRACUNIT, align 4
  %32 = mul nsw i32 %30, %31
  %33 = add nsw i32 128, %32
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @MT_ROCKET, align 4
  %38 = call %struct.TYPE_5__* @P_SpawnMobj(i32 %34, i32 %35, i32 %36, i32 %37)
  store %struct.TYPE_5__* %38, %struct.TYPE_5__** %6, align 8
  %39 = call i32 (...) @P_Random()
  %40 = mul nsw i32 %39, 512
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %44 = load i32, i32* @S_BRAINEXPLODE1, align 4
  %45 = call i32 @P_SetMobjState(%struct.TYPE_5__* %43, i32 %44)
  %46 = call i32 (...) @P_Random()
  %47 = and i32 %46, 7
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %54, 1
  br i1 %55, label %56, label %59

56:                                               ; preds = %22
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 3
  store i32 1, i32* %58, align 4
  br label %59

59:                                               ; preds = %56, %22
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* @FRACUNIT, align 4
  %62 = mul nsw i32 %61, 8
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %3, align 4
  br label %13

65:                                               ; preds = %13
  %66 = load i32, i32* @sfx_bosdth, align 4
  %67 = call i32 @S_StartSound(i32* null, i32 %66)
  ret void
}

declare dso_local i32 @P_Random(...) #1

declare dso_local %struct.TYPE_5__* @P_SpawnMobj(i32, i32, i32, i32) #1

declare dso_local i32 @P_SetMobjState(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @S_StartSound(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
