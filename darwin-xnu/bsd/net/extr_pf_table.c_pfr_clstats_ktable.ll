; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_clstats_ktable.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_clstats_ktable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_ktable = type { i32, i64, i64, i32, i32 }
%struct.pfr_kentryworkq = type { i32 }

@pf_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pfr_ktable*, i32, i32)* @pfr_clstats_ktable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pfr_clstats_ktable(%struct.pfr_ktable* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pfr_ktable*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pfr_kentryworkq, align 4
  store %struct.pfr_ktable* %0, %struct.pfr_ktable** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @pf_lock, align 4
  %9 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %10 = call i32 @LCK_MTX_ASSERT(i32 %8, i32 %9)
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.pfr_ktable*, %struct.pfr_ktable** %4, align 8
  %15 = call i32 @pfr_enqueue_addrs(%struct.pfr_ktable* %14, %struct.pfr_kentryworkq* %7, i32* null, i32 0)
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @pfr_clstats_kentries(%struct.pfr_kentryworkq* %7, i32 %16, i32 0)
  br label %18

18:                                               ; preds = %13, %3
  %19 = load %struct.pfr_ktable*, %struct.pfr_ktable** %4, align 8
  %20 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @bzero(i32 %21, i32 4)
  %23 = load %struct.pfr_ktable*, %struct.pfr_ktable** %4, align 8
  %24 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @bzero(i32 %25, i32 4)
  %27 = load %struct.pfr_ktable*, %struct.pfr_ktable** %4, align 8
  %28 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load %struct.pfr_ktable*, %struct.pfr_ktable** %4, align 8
  %30 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.pfr_ktable*, %struct.pfr_ktable** %4, align 8
  %33 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  ret void
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @pfr_enqueue_addrs(%struct.pfr_ktable*, %struct.pfr_kentryworkq*, i32*, i32) #1

declare dso_local i32 @pfr_clstats_kentries(%struct.pfr_kentryworkq*, i32, i32) #1

declare dso_local i32 @bzero(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
