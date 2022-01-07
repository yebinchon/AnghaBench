; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_dynaddr_update.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_dynaddr_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_ktable = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*, i32, %struct.pfr_walktree*)* }
%struct.pfr_walktree = type { %struct.pfi_dynaddr*, i32 }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32, %struct.pfr_walktree*)* }
%struct.pfi_dynaddr = type { i64, i64, i64 }

@pf_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@PFRW_DYNADDR_UPDATE = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@pfr_walktree = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pfr_dynaddr_update(%struct.pfr_ktable* %0, %struct.pfi_dynaddr* %1) #0 {
  %3 = alloca %struct.pfr_ktable*, align 8
  %4 = alloca %struct.pfi_dynaddr*, align 8
  %5 = alloca %struct.pfr_walktree, align 8
  store %struct.pfr_ktable* %0, %struct.pfr_ktable** %3, align 8
  store %struct.pfi_dynaddr* %1, %struct.pfi_dynaddr** %4, align 8
  %6 = load i32, i32* @pf_lock, align 4
  %7 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %8 = call i32 @LCK_MTX_ASSERT(i32 %6, i32 %7)
  %9 = call i32 @bzero(%struct.pfr_walktree* %5, i32 16)
  %10 = load i32, i32* @PFRW_DYNADDR_UPDATE, align 4
  %11 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %5, i32 0, i32 1
  store i32 %10, i32* %11, align 8
  %12 = load %struct.pfi_dynaddr*, %struct.pfi_dynaddr** %4, align 8
  %13 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %5, i32 0, i32 0
  store %struct.pfi_dynaddr* %12, %struct.pfi_dynaddr** %13, align 8
  %14 = load %struct.pfi_dynaddr*, %struct.pfi_dynaddr** %4, align 8
  %15 = getelementptr inbounds %struct.pfi_dynaddr, %struct.pfi_dynaddr* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load %struct.pfi_dynaddr*, %struct.pfi_dynaddr** %4, align 8
  %17 = getelementptr inbounds %struct.pfi_dynaddr, %struct.pfi_dynaddr* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load %struct.pfi_dynaddr*, %struct.pfi_dynaddr** %4, align 8
  %19 = getelementptr inbounds %struct.pfi_dynaddr, %struct.pfi_dynaddr* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.pfi_dynaddr*, %struct.pfi_dynaddr** %4, align 8
  %24 = getelementptr inbounds %struct.pfi_dynaddr, %struct.pfi_dynaddr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @AF_INET, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %22, %2
  %29 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %30 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32 (%struct.TYPE_4__*, i32, %struct.pfr_walktree*)*, i32 (%struct.TYPE_4__*, i32, %struct.pfr_walktree*)** %32, align 8
  %34 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %35 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i32, i32* @pfr_walktree, align 4
  %38 = call i32 %33(%struct.TYPE_4__* %36, i32 %37, %struct.pfr_walktree* %5)
  br label %39

39:                                               ; preds = %28, %22
  %40 = load %struct.pfi_dynaddr*, %struct.pfi_dynaddr** %4, align 8
  %41 = getelementptr inbounds %struct.pfi_dynaddr, %struct.pfi_dynaddr* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load %struct.pfi_dynaddr*, %struct.pfi_dynaddr** %4, align 8
  %46 = getelementptr inbounds %struct.pfi_dynaddr, %struct.pfi_dynaddr* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @AF_INET6, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %44, %39
  %51 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %52 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32 (%struct.TYPE_3__*, i32, %struct.pfr_walktree*)*, i32 (%struct.TYPE_3__*, i32, %struct.pfr_walktree*)** %54, align 8
  %56 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %57 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = load i32, i32* @pfr_walktree, align 4
  %60 = call i32 %55(%struct.TYPE_3__* %58, i32 %59, %struct.pfr_walktree* %5)
  br label %61

61:                                               ; preds = %50, %44
  ret void
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @bzero(%struct.pfr_walktree*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
