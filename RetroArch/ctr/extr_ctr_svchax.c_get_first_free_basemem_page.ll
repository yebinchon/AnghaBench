; ModuleID = '/home/carl/AnghaBench/RetroArch/ctr/extr_ctr_svchax.c_get_first_free_basemem_page.c'
source_filename = "/home/carl/AnghaBench/RetroArch/ctr/extr_ctr_svchax.c_get_first_free_basemem_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MEMREGION_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @get_first_free_basemem_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_first_free_basemem_page(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @MEMREGION_BASE, align 4
  %7 = call i32 @osGetMemRegionUsed(i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = call i32 @svcGetSystemInfo(i32* %3, i32 2, i32 0)
  %9 = load i32, i32* %3, align 4
  %10 = add nsw i32 442368, %9
  %11 = call i64 (...) @osGetKernelVersion()
  %12 = call i64 @SYSTEM_VERSION(i32 2, i32 49, i32 0)
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load i32, i32* %2, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 8192, i32 4096
  br label %20

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %19, %14
  %21 = phi i32 [ %18, %14 ], [ 0, %19 ]
  %22 = add nsw i32 %10, %21
  store i32 %22, i32* %5, align 4
  %23 = call i64 (...) @osGetKernelVersion()
  %24 = call i64 @SYSTEM_VERSION(i32 2, i32 40, i32 0)
  %25 = icmp sgt i64 %23, %24
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 -536870912, i32 -268435456
  %28 = load i32, i32* %2, align 4
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 268435456, i32 134217728
  %32 = add i32 %27, %31
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %5, align 4
  %35 = sub nsw i32 %33, %34
  %36 = sub i32 %32, %35
  %37 = sub i32 %36, 4096
  ret i32 %37
}

declare dso_local i32 @osGetMemRegionUsed(i32) #1

declare dso_local i32 @svcGetSystemInfo(i32*, i32, i32) #1

declare dso_local i64 @osGetKernelVersion(...) #1

declare dso_local i64 @SYSTEM_VERSION(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
