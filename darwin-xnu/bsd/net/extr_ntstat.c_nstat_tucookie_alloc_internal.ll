; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_tucookie_alloc_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_tucookie_alloc_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nstat_tucookie = type { i32, %struct.inpcb* }
%struct.inpcb = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@nstat_malloc_tag = common dso_local global i32 0, align 4
@nstat_mtx = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_NOTOWNED = common dso_local global i32 0, align 4
@WNT_ACQUIRE = common dso_local global i32 0, align 4
@WNT_STOPUSING = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nstat_tucookie* (%struct.inpcb*, i32, i32)* @nstat_tucookie_alloc_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nstat_tucookie* @nstat_tucookie_alloc_internal(%struct.inpcb* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nstat_tucookie*, align 8
  %5 = alloca %struct.inpcb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nstat_tucookie*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @nstat_malloc_tag, align 4
  %10 = call %struct.nstat_tucookie* @OSMalloc(i32 16, i32 %9)
  store %struct.nstat_tucookie* %10, %struct.nstat_tucookie** %8, align 8
  %11 = load %struct.nstat_tucookie*, %struct.nstat_tucookie** %8, align 8
  %12 = icmp eq %struct.nstat_tucookie* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store %struct.nstat_tucookie* null, %struct.nstat_tucookie** %4, align 8
  br label %61

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* @LCK_MTX_ASSERT_NOTOWNED, align 4
  %19 = call i32 @LCK_MTX_ASSERT(i32* @nstat_mtx, i32 %18)
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %25 = load i32, i32* @WNT_ACQUIRE, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @in_pcb_checkstate(%struct.inpcb* %24, i32 %25, i32 %26)
  %28 = load i64, i64* @WNT_STOPUSING, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load %struct.nstat_tucookie*, %struct.nstat_tucookie** %8, align 8
  %32 = load i32, i32* @nstat_malloc_tag, align 4
  %33 = call i32 @OSFree(%struct.nstat_tucookie* %31, i32 16, i32 %32)
  store %struct.nstat_tucookie* null, %struct.nstat_tucookie** %4, align 8
  br label %61

34:                                               ; preds = %23, %20
  %35 = load %struct.nstat_tucookie*, %struct.nstat_tucookie** %8, align 8
  %36 = call i32 @bzero(%struct.nstat_tucookie* %35, i32 16)
  %37 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %38 = load %struct.nstat_tucookie*, %struct.nstat_tucookie** %8, align 8
  %39 = getelementptr inbounds %struct.nstat_tucookie, %struct.nstat_tucookie* %38, i32 0, i32 1
  store %struct.inpcb* %37, %struct.inpcb** %39, align 8
  %40 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %41 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.nstat_tucookie*, %struct.nstat_tucookie** %8, align 8
  %46 = getelementptr inbounds %struct.nstat_tucookie, %struct.nstat_tucookie* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @proc_name(i32 %44, i32 %47, i32 4)
  %49 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %50 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = call i64 @SOCK_PROTO(%struct.TYPE_2__* %51)
  %53 = load i64, i64* @IPPROTO_UDP, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %34
  %56 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %57 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %56, i32 0, i32 0
  %58 = call i32 @OSIncrementAtomic(i32* %57)
  br label %59

59:                                               ; preds = %55, %34
  %60 = load %struct.nstat_tucookie*, %struct.nstat_tucookie** %8, align 8
  store %struct.nstat_tucookie* %60, %struct.nstat_tucookie** %4, align 8
  br label %61

61:                                               ; preds = %59, %30, %13
  %62 = load %struct.nstat_tucookie*, %struct.nstat_tucookie** %4, align 8
  ret %struct.nstat_tucookie* %62
}

declare dso_local %struct.nstat_tucookie* @OSMalloc(i32, i32) #1

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local i64 @in_pcb_checkstate(%struct.inpcb*, i32, i32) #1

declare dso_local i32 @OSFree(%struct.nstat_tucookie*, i32, i32) #1

declare dso_local i32 @bzero(%struct.nstat_tucookie*, i32) #1

declare dso_local i32 @proc_name(i32, i32, i32) #1

declare dso_local i64 @SOCK_PROTO(%struct.TYPE_2__*) #1

declare dso_local i32 @OSIncrementAtomic(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
