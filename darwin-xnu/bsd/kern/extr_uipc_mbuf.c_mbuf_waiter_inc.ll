; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_mbuf_waiter_inc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_mbuf_waiter_inc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MC_CL = common dso_local global i64 0, align 8
@MC_MBUF_CL = common dso_local global i64 0, align 8
@MC_BIGCL = common dso_local global i64 0, align 8
@MC_MBUF_BIGCL = common dso_local global i64 0, align 8
@MC_16KCL = common dso_local global i64 0, align 8
@MC_MBUF_16KCL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @mbuf_waiter_inc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mbuf_waiter_inc(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call i32 @m_cache(i64 %5)
  %7 = call i32 @mcache_waiter_inc(i32 %6)
  %8 = load i64, i64* %4, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %44

10:                                               ; preds = %2
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @MC_CL, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i64, i64* @MC_MBUF_CL, align 8
  %16 = call i32 @m_cache(i64 %15)
  %17 = call i32 @mcache_waiter_inc(i32 %16)
  br label %43

18:                                               ; preds = %10
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* @MC_BIGCL, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i64, i64* @MC_MBUF_BIGCL, align 8
  %24 = call i32 @m_cache(i64 %23)
  %25 = call i32 @mcache_waiter_inc(i32 %24)
  br label %42

26:                                               ; preds = %18
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* @MC_16KCL, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i64, i64* @MC_MBUF_16KCL, align 8
  %32 = call i32 @m_cache(i64 %31)
  %33 = call i32 @mcache_waiter_inc(i32 %32)
  br label %41

34:                                               ; preds = %26
  %35 = load i64, i64* @MC_MBUF_CL, align 8
  %36 = call i32 @m_cache(i64 %35)
  %37 = call i32 @mcache_waiter_inc(i32 %36)
  %38 = load i64, i64* @MC_MBUF_BIGCL, align 8
  %39 = call i32 @m_cache(i64 %38)
  %40 = call i32 @mcache_waiter_inc(i32 %39)
  br label %41

41:                                               ; preds = %34, %30
  br label %42

42:                                               ; preds = %41, %22
  br label %43

43:                                               ; preds = %42, %14
  br label %44

44:                                               ; preds = %43, %2
  ret void
}

declare dso_local i32 @mcache_waiter_inc(i32) #1

declare dso_local i32 @m_cache(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
