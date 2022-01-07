; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_bba.c_bba_calc_response.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_bba.c_bba_calc_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uip_netif = type { i64 }
%struct.bba_priv = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"bba_calc_response()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uip_netif*, i32)* @bba_calc_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bba_calc_response(%struct.uip_netif* %0, i32 %1) #0 {
  %3 = alloca %struct.uip_netif*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bba_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.uip_netif* %0, %struct.uip_netif** %3, align 8
  store i32 %1, i32* %4, align 4
  %17 = load %struct.uip_netif*, %struct.uip_netif** %3, align 8
  %18 = getelementptr inbounds %struct.uip_netif, %struct.uip_netif* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.bba_priv*
  store %struct.bba_priv* %20, %struct.bba_priv** %8, align 8
  %21 = call i32 @UIP_LOG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.bba_priv*, %struct.bba_priv** %8, align 8
  %23 = getelementptr inbounds %struct.bba_priv, %struct.bba_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %5, align 4
  %25 = load %struct.bba_priv*, %struct.bba_priv** %8, align 8
  %26 = getelementptr inbounds %struct.bba_priv, %struct.bba_priv* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @_SHIFTR(i32 %27, i32 8, i32 8)
  store i32 %28, i32* %6, align 4
  %29 = load %struct.bba_priv*, %struct.bba_priv** %8, align 8
  %30 = getelementptr inbounds %struct.bba_priv, %struct.bba_priv* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 255
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %33, -16777216
  %35 = lshr i32 %34, 24
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %4, align 4
  %37 = and i32 %36, 16711680
  %38 = ashr i32 %37, 16
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %4, align 4
  %40 = and i32 %39, 65280
  %41 = ashr i32 %40, 8
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %4, align 4
  %43 = and i32 %42, 255
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = mul nsw i32 %45, 193
  %47 = add nsw i32 %44, %46
  %48 = add nsw i32 %47, 24
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %48, %49
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %11, align 4
  %53 = mul nsw i32 %51, %52
  %54 = add nsw i32 %53, 144
  %55 = xor i32 %50, %54
  %56 = and i32 %55, 255
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %57, %58
  %60 = add nsw i32 %59, 144
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %61, %62
  %64 = sub nsw i32 %63, 193
  %65 = xor i32 %60, %64
  %66 = and i32 %65, 255
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 200
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %5, align 4
  %72 = mul nsw i32 %71, 35
  %73 = add nsw i32 %70, %72
  %74 = xor i32 %73, 25
  %75 = add nsw i32 %69, %74
  %76 = xor i32 %68, %75
  %77 = and i32 %76, 255
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 193
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 200
  %83 = xor i32 %82, 144
  %84 = add nsw i32 %80, %83
  %85 = xor i32 %79, %84
  %86 = and i32 %85, 255
  store i32 %86, i32* %16, align 4
  %87 = load i32, i32* %13, align 4
  %88 = shl i32 %87, 24
  %89 = load i32, i32* %14, align 4
  %90 = shl i32 %89, 16
  %91 = or i32 %88, %90
  %92 = load i32, i32* %15, align 4
  %93 = shl i32 %92, 8
  %94 = or i32 %91, %93
  %95 = load i32, i32* %16, align 4
  %96 = or i32 %94, %95
  ret i32 %96
}

declare dso_local i32 @UIP_LOG(i8*) #1

declare dso_local i32 @_SHIFTR(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
