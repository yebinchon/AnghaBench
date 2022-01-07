; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/arch/gc/netif/extr_gcif.c___bba_tx_err.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/arch/gc/netif/extr_gcif.c___bba_tx_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bba_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32 }

@BBA_TX_STATUS_TERR = common dso_local global i32 0, align 4
@BBA_TX_STATUS_CCMASK = common dso_local global i32 0, align 4
@BBA_TX_STATUS_CRSLOST = common dso_local global i32 0, align 4
@BBA_TX_STATUS_UF = common dso_local global i32 0, align 4
@BBA_TX_STATUS_OWC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"__bba_tx_err(%02x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.bba_priv*)* @__bba_tx_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__bba_tx_err(i32 %0, %struct.bba_priv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bba_priv*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.bba_priv* %1, %struct.bba_priv** %4, align 8
  %6 = load %struct.bba_priv*, %struct.bba_priv** %4, align 8
  %7 = getelementptr inbounds %struct.bba_priv, %struct.bba_priv* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %5, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @BBA_TX_STATUS_TERR, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %67

14:                                               ; preds = %2
  %15 = load %struct.bba_priv*, %struct.bba_priv** %4, align 8
  %16 = getelementptr inbounds %struct.bba_priv, %struct.bba_priv* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* %17, align 8
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @BBA_TX_STATUS_CCMASK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %14
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @BBA_TX_STATUS_CCMASK, align 4
  %27 = and i32 %25, %26
  %28 = load %struct.bba_priv*, %struct.bba_priv** %4, align 8
  %29 = getelementptr inbounds %struct.bba_priv, %struct.bba_priv* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, %27
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %24, %14
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @BBA_TX_STATUS_CRSLOST, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.bba_priv*, %struct.bba_priv** %4, align 8
  %40 = getelementptr inbounds %struct.bba_priv, %struct.bba_priv* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %38, %33
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @BBA_TX_STATUS_UF, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.bba_priv*, %struct.bba_priv** %4, align 8
  %51 = getelementptr inbounds %struct.bba_priv, %struct.bba_priv* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %49, %44
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @BBA_TX_STATUS_OWC, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.bba_priv*, %struct.bba_priv** %4, align 8
  %62 = getelementptr inbounds %struct.bba_priv, %struct.bba_priv* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %60, %55
  br label %67

67:                                               ; preds = %66, %2
  %68 = load i64, i64* %5, align 8
  %69 = load %struct.bba_priv*, %struct.bba_priv** %4, align 8
  %70 = getelementptr inbounds %struct.bba_priv, %struct.bba_priv* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %68, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %67
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = inttoptr i64 %76 to i8*
  %78 = call i32 @LWIP_ERROR(i8* %77)
  br label %79

79:                                               ; preds = %74, %67
  %80 = load %struct.bba_priv*, %struct.bba_priv** %4, align 8
  %81 = getelementptr inbounds %struct.bba_priv, %struct.bba_priv* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  ret i64 %83
}

declare dso_local i32 @LWIP_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
