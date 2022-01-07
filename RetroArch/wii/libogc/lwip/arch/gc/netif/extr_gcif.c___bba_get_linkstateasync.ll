; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/arch/gc/netif/extr_gcif.c___bba_get_linkstateasync.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/arch/gc/netif/extr_gcif.c___bba_get_linkstateasync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bba_priv = type { i32 }

@TB_USPERSEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bba_priv*)* @__bba_get_linkstateasync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bba_get_linkstateasync(%struct.bba_priv* %0) #0 {
  %2 = alloca %struct.bba_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bba_priv* %0, %struct.bba_priv** %2, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %22, %1
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 10000
  br i1 %8, label %9, label %25

9:                                                ; preds = %6
  %10 = call i32 @udelay(i32 500)
  %11 = load %struct.bba_priv*, %struct.bba_priv** %2, align 8
  %12 = call i32 @__linkstate(%struct.bba_priv* %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, 240
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %9
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %25

21:                                               ; preds = %16, %9
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %6

25:                                               ; preds = %20, %6
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 10000
  br i1 %27, label %28, label %38

28:                                               ; preds = %25
  store i32 1, i32* %5, align 4
  %29 = load i32, i32* %3, align 4
  %30 = and i32 %29, 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  store i32 2, i32* %5, align 4
  br label %33

33:                                               ; preds = %32, %28
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @TB_USPERSEC, align 4
  %36 = mul nsw i32 %34, %35
  %37 = call i32 @udelay(i32 %36)
  br label %38

38:                                               ; preds = %33, %25
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %39, 10000
  %41 = zext i1 %40 to i32
  ret i32 %41
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @__linkstate(%struct.bba_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
