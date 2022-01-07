; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_tbladdr_copyout.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_tbladdr_copyout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_addr_wrap = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.pfr_ktable* }
%struct.pfr_ktable = type { i32, i32, %struct.pfr_ktable* }

@pf_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@PF_ADDR_TABLE = common dso_local global i64 0, align 8
@PFR_TFLAG_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pf_tbladdr_copyout(%struct.pf_addr_wrap* %0) #0 {
  %2 = alloca %struct.pf_addr_wrap*, align 8
  %3 = alloca %struct.pfr_ktable*, align 8
  store %struct.pf_addr_wrap* %0, %struct.pf_addr_wrap** %2, align 8
  %4 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %2, align 8
  %5 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = load %struct.pfr_ktable*, %struct.pfr_ktable** %6, align 8
  store %struct.pfr_ktable* %7, %struct.pfr_ktable** %3, align 8
  %8 = load i32, i32* @pf_lock, align 4
  %9 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %10 = call i32 @LCK_MTX_ASSERT(i32 %8, i32 %9)
  %11 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %2, align 8
  %12 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PF_ADDR_TABLE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %18 = icmp eq %struct.pfr_ktable* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %1
  br label %56

20:                                               ; preds = %16
  %21 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %22 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @PFR_TFLAG_ACTIVE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %20
  %28 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %29 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %28, i32 0, i32 2
  %30 = load %struct.pfr_ktable*, %struct.pfr_ktable** %29, align 8
  %31 = icmp ne %struct.pfr_ktable* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %34 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %33, i32 0, i32 2
  %35 = load %struct.pfr_ktable*, %struct.pfr_ktable** %34, align 8
  store %struct.pfr_ktable* %35, %struct.pfr_ktable** %3, align 8
  br label %36

36:                                               ; preds = %32, %27, %20
  %37 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %2, align 8
  %38 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store %struct.pfr_ktable* null, %struct.pfr_ktable** %39, align 8
  %40 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %41 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @PFR_TFLAG_ACTIVE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %36
  %47 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %48 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  br label %51

50:                                               ; preds = %36
  br label %51

51:                                               ; preds = %50, %46
  %52 = phi i32 [ %49, %46 ], [ -1, %50 ]
  %53 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %2, align 8
  %54 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  br label %56

56:                                               ; preds = %51, %19
  ret void
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
