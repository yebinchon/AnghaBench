; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_turnstile.c_turnstile_update_inheritor_turnstile_priority_chain.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_turnstile.c_turnstile_update_inheritor_turnstile_priority_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.turnstile = type { i32, i32, %struct.turnstile* }

@FALSE = common dso_local global i32 0, align 4
@TURNSTILE_INHERITOR_TURNSTILE = common dso_local global i32 0, align 4
@TURNSTILE_NULL = common dso_local global %struct.turnstile* null, align 8
@TSU_NO_PRI_CHANGE_NEEDED = common dso_local global i32 0, align 4
@TSU_TURNSTILE_ARG = common dso_local global i32 0, align 4
@TSU_NO_INHERITOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.turnstile**, i32, i32)* @turnstile_update_inheritor_turnstile_priority_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @turnstile_update_inheritor_turnstile_priority_chain(%struct.turnstile** %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.turnstile**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.turnstile*, align 8
  %9 = alloca %struct.turnstile*, align 8
  %10 = alloca i32, align 4
  store %struct.turnstile** %0, %struct.turnstile*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.turnstile**, %struct.turnstile*** %4, align 8
  %13 = load %struct.turnstile*, %struct.turnstile** %12, align 8
  store %struct.turnstile* %13, %struct.turnstile** %8, align 8
  %14 = load %struct.turnstile*, %struct.turnstile** %8, align 8
  %15 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %14, i32 0, i32 2
  %16 = load %struct.turnstile*, %struct.turnstile** %15, align 8
  store %struct.turnstile* %16, %struct.turnstile** %9, align 8
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %10, align 4
  %21 = load %struct.turnstile*, %struct.turnstile** %8, align 8
  %22 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @TURNSTILE_INHERITOR_TURNSTILE, align 4
  %25 = and i32 %23, %24
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.turnstile*, %struct.turnstile** @TURNSTILE_NULL, align 8
  %28 = load %struct.turnstile**, %struct.turnstile*** %4, align 8
  store %struct.turnstile* %27, %struct.turnstile** %28, align 8
  %29 = load %struct.turnstile*, %struct.turnstile** %9, align 8
  %30 = load %struct.turnstile*, %struct.turnstile** %8, align 8
  %31 = call i32 @turnstile_need_turnstile_promotion_update(%struct.turnstile* %29, %struct.turnstile* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %50, label %34

34:                                               ; preds = %3
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %50, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  %40 = load i32, i32* @TSU_NO_PRI_CHANGE_NEEDED, align 4
  %41 = load i32, i32* @TSU_TURNSTILE_ARG, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.turnstile*, %struct.turnstile** %8, align 8
  %46 = call i32 @turnstile_stats_update(i32 %39, i32 %44, %struct.turnstile* %45)
  %47 = load %struct.turnstile*, %struct.turnstile** %8, align 8
  %48 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %47, i32 0, i32 1
  %49 = call i32 @waitq_unlock(i32* %48)
  br label %93

50:                                               ; preds = %34, %3
  %51 = load %struct.turnstile*, %struct.turnstile** %9, align 8
  %52 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %51, i32 0, i32 1
  %53 = call i32 @waitq_lock(i32* %52)
  %54 = load %struct.turnstile*, %struct.turnstile** %9, align 8
  %55 = load %struct.turnstile*, %struct.turnstile** %8, align 8
  %56 = call i32 @turnstile_update_turnstile_promotion_locked(%struct.turnstile* %54, %struct.turnstile* %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %87, label %59

59:                                               ; preds = %50
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %87, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  %65 = load %struct.turnstile*, %struct.turnstile** %9, align 8
  %66 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %65, i32 0, i32 2
  %67 = load %struct.turnstile*, %struct.turnstile** %66, align 8
  %68 = icmp ne %struct.turnstile* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i32, i32* @TSU_NO_PRI_CHANGE_NEEDED, align 4
  br label %73

71:                                               ; preds = %62
  %72 = load i32, i32* @TSU_NO_INHERITOR, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  %75 = load i32, i32* @TSU_TURNSTILE_ARG, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* %6, align 4
  %78 = or i32 %76, %77
  %79 = load %struct.turnstile*, %struct.turnstile** %8, align 8
  %80 = call i32 @turnstile_stats_update(i32 %64, i32 %78, %struct.turnstile* %79)
  %81 = load %struct.turnstile*, %struct.turnstile** %9, align 8
  %82 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %81, i32 0, i32 1
  %83 = call i32 @waitq_unlock(i32* %82)
  %84 = load %struct.turnstile*, %struct.turnstile** %8, align 8
  %85 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %84, i32 0, i32 1
  %86 = call i32 @waitq_unlock(i32* %85)
  br label %93

87:                                               ; preds = %59, %50
  %88 = load %struct.turnstile*, %struct.turnstile** %8, align 8
  %89 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %88, i32 0, i32 1
  %90 = call i32 @waitq_unlock(i32* %89)
  %91 = load %struct.turnstile*, %struct.turnstile** %9, align 8
  %92 = load %struct.turnstile**, %struct.turnstile*** %4, align 8
  store %struct.turnstile* %91, %struct.turnstile** %92, align 8
  br label %93

93:                                               ; preds = %87, %73, %37
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @turnstile_need_turnstile_promotion_update(%struct.turnstile*, %struct.turnstile*) #1

declare dso_local i32 @turnstile_stats_update(i32, i32, %struct.turnstile*) #1

declare dso_local i32 @waitq_unlock(i32*) #1

declare dso_local i32 @waitq_lock(i32*) #1

declare dso_local i32 @turnstile_update_turnstile_promotion_locked(%struct.turnstile*, %struct.turnstile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
