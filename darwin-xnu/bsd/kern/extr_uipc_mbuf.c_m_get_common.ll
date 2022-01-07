; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_m_get_common.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_m_get_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }

@MCR_NOSLEEP = common dso_local global i32 0, align 4
@MCR_TRYHARD = common dso_local global i32 0, align 4
@MC_MBUF = common dso_local global i32 0, align 4
@MT_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* (i32, i16, i32)* @m_get_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @m_get_common(i32 %0, i16 signext %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @MSLEEPF(i32 %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @MCR_NOSLEEP, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32, i32* @MCR_TRYHARD, align 4
  %17 = load i32, i32* %8, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %8, align 4
  br label %19

19:                                               ; preds = %15, %3
  %20 = load i32, i32* @MC_MBUF, align 4
  %21 = call i32 @m_cache(i32 %20)
  %22 = load i32, i32* %8, align 4
  %23 = call %struct.mbuf* @mcache_alloc(i32 %21, i32 %22)
  store %struct.mbuf* %23, %struct.mbuf** %7, align 8
  %24 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %25 = icmp ne %struct.mbuf* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %19
  %27 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i16, i16* %5, align 2
  %30 = call i32 @MBUF_INIT(%struct.mbuf* %27, i32 %28, i16 signext %29)
  %31 = load i16, i16* %5, align 2
  %32 = call i32 @mtype_stat_inc(i16 signext %31)
  %33 = load i32, i32* @MT_FREE, align 4
  %34 = call i32 @mtype_stat_dec(i32 %33)
  br label %35

35:                                               ; preds = %26, %19
  %36 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  ret %struct.mbuf* %36
}

declare dso_local i32 @MSLEEPF(i32) #1

declare dso_local %struct.mbuf* @mcache_alloc(i32, i32) #1

declare dso_local i32 @m_cache(i32) #1

declare dso_local i32 @MBUF_INIT(%struct.mbuf*, i32, i16 signext) #1

declare dso_local i32 @mtype_stat_inc(i16 signext) #1

declare dso_local i32 @mtype_stat_dec(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
