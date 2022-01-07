; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_pspr.c_A_BFGSpray.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_pspr.c_A_BFGSpray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@ANG90 = common dso_local global i32 0, align 4
@FRACUNIT = common dso_local global i32 0, align 4
@linetarget = common dso_local global %struct.TYPE_6__* null, align 8
@MT_EXTRABFG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @A_BFGSpray(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %72, %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 40
  br i1 %9, label %10, label %75

10:                                               ; preds = %7
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @ANG90, align 4
  %15 = sdiv i32 %14, 2
  %16 = sub nsw i32 %13, %15
  %17 = load i32, i32* @ANG90, align 4
  %18 = sdiv i32 %17, 40
  %19 = load i32, i32* %3, align 4
  %20 = mul nsw i32 %18, %19
  %21 = add nsw i32 %16, %20
  store i32 %21, i32* %6, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @FRACUNIT, align 4
  %27 = mul nsw i32 1024, %26
  %28 = call i32 @P_AimLineAttack(i32 %24, i32 %25, i32 %27)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @linetarget, align 8
  %30 = icmp ne %struct.TYPE_6__* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %10
  br label %72

32:                                               ; preds = %10
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @linetarget, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @linetarget, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @linetarget, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** @linetarget, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = ashr i32 %44, 2
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %41, %46
  %48 = load i32, i32* @MT_EXTRABFG, align 4
  %49 = call i32 @P_SpawnMobj(i32 %35, i32 %38, i64 %47, i32 %48)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %59, %32
  %51 = load i32, i32* %4, align 4
  %52 = icmp slt i32 %51, 15
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = call i32 (...) @P_Random()
  %55 = and i32 %54, 7
  %56 = add nsw i32 %55, 1
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %53
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %50

62:                                               ; preds = %50
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** @linetarget, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @P_DamageMobj(%struct.TYPE_6__* %63, i32 %66, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %62, %31
  %73 = load i32, i32* %3, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %3, align 4
  br label %7

75:                                               ; preds = %7
  ret void
}

declare dso_local i32 @P_AimLineAttack(i32, i32, i32) #1

declare dso_local i32 @P_SpawnMobj(i32, i32, i64, i32) #1

declare dso_local i32 @P_Random(...) #1

declare dso_local i32 @P_DamageMobj(%struct.TYPE_6__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
