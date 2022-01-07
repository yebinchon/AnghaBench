; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_turnstile.c_thread_update_turnstile_promotion.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_turnstile.c_thread_update_turnstile_promotion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.turnstile = type { i32 }

@TSU_NO_PRI_CHANGE_NEEDED = common dso_local global i32 0, align 4
@TSU_TURNSTILE_ARG = common dso_local global i32 0, align 4
@TSU_BOOST_ARG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.turnstile*)* @thread_update_turnstile_promotion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @thread_update_turnstile_promotion(i32 %0, %struct.turnstile* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.turnstile*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.turnstile* %1, %struct.turnstile** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.turnstile*, %struct.turnstile** %5, align 8
  %9 = call i64 @thread_needs_turnstile_promotion_update(i32 %7, %struct.turnstile* %8)
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
  br label %42

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @thread_lock(i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.turnstile*, %struct.turnstile** %5, align 8
  %26 = call i64 @thread_update_turnstile_promotion_locked(i32 %24, %struct.turnstile* %25)
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @thread_get_update_flags_for_turnstile_propagation_stoppage(i32 %30)
  %32 = load i32, i32* @TSU_TURNSTILE_ARG, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @TSU_BOOST_ARG, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.turnstile*, %struct.turnstile** %5, align 8
  %37 = call i32 @turnstile_stats_update(i32 1, i32 %35, %struct.turnstile* %36)
  br label %38

38:                                               ; preds = %29, %21
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @thread_unlock(i32 %39)
  %41 = load i64, i64* %6, align 8
  store i64 %41, i64* %3, align 8
  br label %42

42:                                               ; preds = %38, %12
  %43 = load i64, i64* %3, align 8
  ret i64 %43
}

declare dso_local i64 @thread_needs_turnstile_promotion_update(i32, %struct.turnstile*) #1

declare dso_local i32 @turnstile_stats_update(i32, i32, %struct.turnstile*) #1

declare dso_local i32 @thread_lock(i32) #1

declare dso_local i64 @thread_update_turnstile_promotion_locked(i32, %struct.turnstile*) #1

declare dso_local i32 @thread_get_update_flags_for_turnstile_propagation_stoppage(i32) #1

declare dso_local i32 @thread_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
