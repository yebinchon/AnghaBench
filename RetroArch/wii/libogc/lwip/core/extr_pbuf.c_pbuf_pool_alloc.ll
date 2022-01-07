; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/core/extr_pbuf.c_pbuf_pool_alloc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/core/extr_pbuf.c_pbuf_pool_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pbuf = type { %struct.pbuf* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i32 }

@old_level = common dso_local global i32 0, align 4
@pbuf_pool_free_lock = common dso_local global i64 0, align 8
@pbuf_pool_alloc_lock = common dso_local global i32 0, align 4
@pbuf_pool = common dso_local global %struct.pbuf* null, align 8
@lwip_stats = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pbuf* ()* @pbuf_pool_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pbuf* @pbuf_pool_alloc() #0 {
  %1 = alloca %struct.pbuf*, align 8
  %2 = alloca %struct.pbuf*, align 8
  store %struct.pbuf* null, %struct.pbuf** %2, align 8
  %3 = load i32, i32* @old_level, align 4
  %4 = call i32 @SYS_ARCH_DECL_PROTECT(i32 %3)
  %5 = load i32, i32* @old_level, align 4
  %6 = call i32 @SYS_ARCH_PROTECT(i32 %5)
  %7 = load i64, i64* @pbuf_pool_free_lock, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store %struct.pbuf* null, %struct.pbuf** %1, align 8
  br label %26

10:                                               ; preds = %0
  store i32 1, i32* @pbuf_pool_alloc_lock, align 4
  %11 = load i64, i64* @pbuf_pool_free_lock, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %10
  %14 = load %struct.pbuf*, %struct.pbuf** @pbuf_pool, align 8
  store %struct.pbuf* %14, %struct.pbuf** %2, align 8
  %15 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %16 = icmp ne %struct.pbuf* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %19 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %18, i32 0, i32 0
  %20 = load %struct.pbuf*, %struct.pbuf** %19, align 8
  store %struct.pbuf* %20, %struct.pbuf** @pbuf_pool, align 8
  br label %21

21:                                               ; preds = %17, %13
  br label %22

22:                                               ; preds = %21, %10
  store i32 0, i32* @pbuf_pool_alloc_lock, align 4
  %23 = load i32, i32* @old_level, align 4
  %24 = call i32 @SYS_ARCH_UNPROTECT(i32 %23)
  %25 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  store %struct.pbuf* %25, %struct.pbuf** %1, align 8
  br label %26

26:                                               ; preds = %22, %9
  %27 = load %struct.pbuf*, %struct.pbuf** %1, align 8
  ret %struct.pbuf* %27
}

declare dso_local i32 @SYS_ARCH_DECL_PROTECT(i32) #1

declare dso_local i32 @SYS_ARCH_PROTECT(i32) #1

declare dso_local i32 @SYS_ARCH_UNPROTECT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
