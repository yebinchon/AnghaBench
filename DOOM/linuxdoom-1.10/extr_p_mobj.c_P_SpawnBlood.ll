; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_mobj.c_P_SpawnBlood.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_mobj.c_P_SpawnBlood.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@MT_BLOOD = common dso_local global i32 0, align 4
@FRACUNIT = common dso_local global i32 0, align 4
@S_BLOOD2 = common dso_local global i32 0, align 4
@S_BLOOD3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @P_SpawnBlood(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = call i32 (...) @P_Random()
  %11 = call i32 (...) @P_Random()
  %12 = sub nsw i32 %10, %11
  %13 = shl i32 %12, 10
  %14 = load i32, i32* %7, align 4
  %15 = add nsw i32 %14, %13
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @MT_BLOOD, align 4
  %20 = call %struct.TYPE_4__* @P_SpawnMobj(i32 %16, i32 %17, i32 %18, i32 %19)
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %9, align 8
  %21 = load i32, i32* @FRACUNIT, align 4
  %22 = mul nsw i32 %21, 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = call i32 (...) @P_Random()
  %26 = and i32 %25, 3
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %33, 1
  br i1 %34, label %35, label %38

35:                                               ; preds = %4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i32 1, i32* %37, align 4
  br label %38

38:                                               ; preds = %35, %4
  %39 = load i32, i32* %8, align 4
  %40 = icmp sle i32 %39, 12
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = icmp sge i32 %42, 9
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %46 = load i32, i32* @S_BLOOD2, align 4
  %47 = call i32 @P_SetMobjState(%struct.TYPE_4__* %45, i32 %46)
  br label %56

48:                                               ; preds = %41, %38
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 9
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %53 = load i32, i32* @S_BLOOD3, align 4
  %54 = call i32 @P_SetMobjState(%struct.TYPE_4__* %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %48
  br label %56

56:                                               ; preds = %55, %44
  ret void
}

declare dso_local i32 @P_Random(...) #1

declare dso_local %struct.TYPE_4__* @P_SpawnMobj(i32, i32, i32, i32) #1

declare dso_local i32 @P_SetMobjState(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
