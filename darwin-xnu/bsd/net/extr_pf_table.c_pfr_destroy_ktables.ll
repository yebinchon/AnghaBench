; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_destroy_ktables.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_destroy_ktables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_ktableworkq = type { i32 }
%struct.pfr_ktable = type { i32 }

@pf_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@pfrkt_workq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pfr_ktableworkq*, i32)* @pfr_destroy_ktables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pfr_destroy_ktables(%struct.pfr_ktableworkq* %0, i32 %1) #0 {
  %3 = alloca %struct.pfr_ktableworkq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pfr_ktable*, align 8
  %6 = alloca %struct.pfr_ktable*, align 8
  store %struct.pfr_ktableworkq* %0, %struct.pfr_ktableworkq** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @pf_lock, align 4
  %8 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %9 = call i32 @LCK_MTX_ASSERT(i32 %7, i32 %8)
  %10 = load %struct.pfr_ktableworkq*, %struct.pfr_ktableworkq** %3, align 8
  %11 = call %struct.pfr_ktable* @SLIST_FIRST(%struct.pfr_ktableworkq* %10)
  store %struct.pfr_ktable* %11, %struct.pfr_ktable** %5, align 8
  br label %12

12:                                               ; preds = %22, %2
  %13 = load %struct.pfr_ktable*, %struct.pfr_ktable** %5, align 8
  %14 = icmp ne %struct.pfr_ktable* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = load %struct.pfr_ktable*, %struct.pfr_ktable** %5, align 8
  %17 = load i32, i32* @pfrkt_workq, align 4
  %18 = call %struct.pfr_ktable* @SLIST_NEXT(%struct.pfr_ktable* %16, i32 %17)
  store %struct.pfr_ktable* %18, %struct.pfr_ktable** %6, align 8
  %19 = load %struct.pfr_ktable*, %struct.pfr_ktable** %5, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @pfr_destroy_ktable(%struct.pfr_ktable* %19, i32 %20)
  br label %22

22:                                               ; preds = %15
  %23 = load %struct.pfr_ktable*, %struct.pfr_ktable** %6, align 8
  store %struct.pfr_ktable* %23, %struct.pfr_ktable** %5, align 8
  br label %12

24:                                               ; preds = %12
  ret void
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local %struct.pfr_ktable* @SLIST_FIRST(%struct.pfr_ktableworkq*) #1

declare dso_local %struct.pfr_ktable* @SLIST_NEXT(%struct.pfr_ktable*, i32) #1

declare dso_local i32 @pfr_destroy_ktable(%struct.pfr_ktable*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
