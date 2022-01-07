; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/arch/gc/netif/extr_gcif.c___bba_rx_err.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/arch/gc/netif/extr_gcif.c___bba_rx_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bba_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32, i32, i32, i32, i32 }

@BBA_RX_STATUS_RERR = common dso_local global i32 0, align 4
@BBA_RX_STATUS_BF = common dso_local global i32 0, align 4
@BBA_RX_STATUS_CRC = common dso_local global i32 0, align 4
@BBA_RX_STATUS_FO = common dso_local global i32 0, align 4
@BBA_RX_STATUS_RW = common dso_local global i32 0, align 4
@BBA_RX_STATUS_RF = common dso_local global i32 0, align 4
@BBA_RX_STATUS_FAE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"__bba_rx_err(%02x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.bba_priv*)* @__bba_rx_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__bba_rx_err(i32 %0, %struct.bba_priv* %1) #0 {
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
  %11 = and i32 %10, 255
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load %struct.bba_priv*, %struct.bba_priv** %4, align 8
  %15 = getelementptr inbounds %struct.bba_priv, %struct.bba_priv* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  %19 = load %struct.bba_priv*, %struct.bba_priv** %4, align 8
  %20 = getelementptr inbounds %struct.bba_priv, %struct.bba_priv* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %21, align 8
  br label %118

24:                                               ; preds = %2
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @BBA_RX_STATUS_RERR, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %101

29:                                               ; preds = %24
  %30 = load %struct.bba_priv*, %struct.bba_priv** %4, align 8
  %31 = getelementptr inbounds %struct.bba_priv, %struct.bba_priv* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %32, align 8
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @BBA_RX_STATUS_BF, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %29
  %40 = load %struct.bba_priv*, %struct.bba_priv** %4, align 8
  %41 = getelementptr inbounds %struct.bba_priv, %struct.bba_priv* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %39, %29
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @BBA_RX_STATUS_CRC, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load %struct.bba_priv*, %struct.bba_priv** %4, align 8
  %52 = getelementptr inbounds %struct.bba_priv, %struct.bba_priv* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %50, %45
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @BBA_RX_STATUS_FO, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load %struct.bba_priv*, %struct.bba_priv** %4, align 8
  %63 = getelementptr inbounds %struct.bba_priv, %struct.bba_priv* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %61, %56
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @BBA_RX_STATUS_RW, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load %struct.bba_priv*, %struct.bba_priv** %4, align 8
  %74 = getelementptr inbounds %struct.bba_priv, %struct.bba_priv* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %72, %67
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* @BBA_RX_STATUS_RF, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load %struct.bba_priv*, %struct.bba_priv** %4, align 8
  %85 = getelementptr inbounds %struct.bba_priv, %struct.bba_priv* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %83, %78
  %90 = load i32, i32* %3, align 4
  %91 = load i32, i32* @BBA_RX_STATUS_BF, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load %struct.bba_priv*, %struct.bba_priv** %4, align 8
  %96 = getelementptr inbounds %struct.bba_priv, %struct.bba_priv* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %94, %89
  br label %101

101:                                              ; preds = %100, %24
  %102 = load i32, i32* %3, align 4
  %103 = load i32, i32* @BBA_RX_STATUS_FAE, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %101
  %107 = load %struct.bba_priv*, %struct.bba_priv** %4, align 8
  %108 = getelementptr inbounds %struct.bba_priv, %struct.bba_priv* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, 1
  store i64 %111, i64* %109, align 8
  %112 = load %struct.bba_priv*, %struct.bba_priv** %4, align 8
  %113 = getelementptr inbounds %struct.bba_priv, %struct.bba_priv* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 8
  br label %117

117:                                              ; preds = %106, %101
  br label %118

118:                                              ; preds = %117, %13
  %119 = load i64, i64* %5, align 8
  %120 = load %struct.bba_priv*, %struct.bba_priv** %4, align 8
  %121 = getelementptr inbounds %struct.bba_priv, %struct.bba_priv* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %119, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %118
  %126 = load i32, i32* %3, align 4
  %127 = sext i32 %126 to i64
  %128 = inttoptr i64 %127 to i8*
  %129 = call i32 @LWIP_ERROR(i8* %128)
  br label %130

130:                                              ; preds = %125, %118
  %131 = load %struct.bba_priv*, %struct.bba_priv** %4, align 8
  %132 = getelementptr inbounds %struct.bba_priv, %struct.bba_priv* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  ret i64 %134
}

declare dso_local i32 @LWIP_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
