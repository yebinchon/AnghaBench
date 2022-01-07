; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_turnstile.c_turnstile_update_turnstile_promotion.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_turnstile.c_turnstile_update_turnstile_promotion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.turnstile = type { i32, i64 }

@TSU_NO_PRI_CHANGE_NEEDED = common dso_local global i32 0, align 4
@TSU_TURNSTILE_ARG = common dso_local global i32 0, align 4
@TSU_BOOST_ARG = common dso_local global i32 0, align 4
@TSU_NO_INHERITOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.turnstile*, %struct.turnstile*)* @turnstile_update_turnstile_promotion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @turnstile_update_turnstile_promotion(%struct.turnstile* %0, %struct.turnstile* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.turnstile*, align 8
  %5 = alloca %struct.turnstile*, align 8
  %6 = alloca i64, align 8
  store %struct.turnstile* %0, %struct.turnstile** %4, align 8
  store %struct.turnstile* %1, %struct.turnstile** %5, align 8
  %7 = load %struct.turnstile*, %struct.turnstile** %4, align 8
  %8 = load %struct.turnstile*, %struct.turnstile** %5, align 8
  %9 = call i64 @turnstile_need_turnstile_promotion_update(%struct.turnstile* %7, %struct.turnstile* %8)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @TSU_NO_PRI_CHANGE_NEEDED, align 4
  %14 = load i32, i32* @TSU_TURNSTILE_ARG, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @TSU_BOOST_ARG, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.turnstile*, %struct.turnstile** %5, align 8
  %19 = call i32 @turnstile_stats_update(i32 1, i32 %17, %struct.turnstile* %18)
  %20 = load i64, i64* %6, align 8
  store i64 %20, i64* %3, align 8
  br label %52

21:                                               ; preds = %2
  %22 = load %struct.turnstile*, %struct.turnstile** %4, align 8
  %23 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %22, i32 0, i32 0
  %24 = call i32 @waitq_lock(i32* %23)
  %25 = load %struct.turnstile*, %struct.turnstile** %4, align 8
  %26 = load %struct.turnstile*, %struct.turnstile** %5, align 8
  %27 = call i64 @turnstile_update_turnstile_promotion_locked(%struct.turnstile* %25, %struct.turnstile* %26)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %47, label %30

30:                                               ; preds = %21
  %31 = load %struct.turnstile*, %struct.turnstile** %4, align 8
  %32 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @TSU_NO_PRI_CHANGE_NEEDED, align 4
  br label %39

37:                                               ; preds = %30
  %38 = load i32, i32* @TSU_NO_INHERITOR, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  %41 = load i32, i32* @TSU_TURNSTILE_ARG, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @TSU_BOOST_ARG, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.turnstile*, %struct.turnstile** %5, align 8
  %46 = call i32 @turnstile_stats_update(i32 1, i32 %44, %struct.turnstile* %45)
  br label %47

47:                                               ; preds = %39, %21
  %48 = load %struct.turnstile*, %struct.turnstile** %4, align 8
  %49 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %48, i32 0, i32 0
  %50 = call i32 @waitq_unlock(i32* %49)
  %51 = load i64, i64* %6, align 8
  store i64 %51, i64* %3, align 8
  br label %52

52:                                               ; preds = %47, %12
  %53 = load i64, i64* %3, align 8
  ret i64 %53
}

declare dso_local i64 @turnstile_need_turnstile_promotion_update(%struct.turnstile*, %struct.turnstile*) #1

declare dso_local i32 @turnstile_stats_update(i32, i32, %struct.turnstile*) #1

declare dso_local i32 @waitq_lock(i32*) #1

declare dso_local i64 @turnstile_update_turnstile_promotion_locked(%struct.turnstile*, %struct.turnstile*) #1

declare dso_local i32 @waitq_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
