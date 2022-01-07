; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/arch/gc/netif/extr_gcif.c_bba_calc_response.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/arch/gc/netif/extr_gcif.c_bba_calc_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bba_priv = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bba_priv*, i32)* @bba_calc_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bba_calc_response(%struct.bba_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.bba_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.bba_priv* %0, %struct.bba_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = load %struct.bba_priv*, %struct.bba_priv** %3, align 8
  %17 = getelementptr inbounds %struct.bba_priv, %struct.bba_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %13, align 4
  %19 = load %struct.bba_priv*, %struct.bba_priv** %3, align 8
  %20 = getelementptr inbounds %struct.bba_priv, %struct.bba_priv* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @_SHIFTR(i32 %21, i32 8, i32 8)
  store i32 %22, i32* %14, align 4
  %23 = load %struct.bba_priv*, %struct.bba_priv** %3, align 8
  %24 = getelementptr inbounds %struct.bba_priv, %struct.bba_priv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @_SHIFTR(i32 %25, i32 0, i32 8)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @_SHIFTR(i32 %27, i32 24, i32 8)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @_SHIFTR(i32 %29, i32 16, i32 8)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @_SHIFTR(i32 %31, i32 8, i32 8)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @_SHIFTR(i32 %33, i32 0, i32 8)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = mul nsw i32 %36, 193
  %38 = add nsw i32 %35, %37
  %39 = add nsw i32 %38, 24
  %40 = load i32, i32* %13, align 4
  %41 = add nsw i32 %39, %40
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %7, align 4
  %44 = mul nsw i32 %42, %43
  %45 = add nsw i32 %44, 144
  %46 = xor i32 %41, %45
  %47 = and i32 %46, 255
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %48, %49
  %51 = add nsw i32 %50, 144
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %52, %53
  %55 = sub nsw i32 %54, 193
  %56 = xor i32 %51, %55
  %57 = and i32 %56, 255
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 200
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %13, align 4
  %63 = mul nsw i32 %62, 35
  %64 = add nsw i32 %61, %63
  %65 = xor i32 %64, 25
  %66 = add nsw i32 %60, %65
  %67 = xor i32 %59, %66
  %68 = and i32 %67, 255
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 193
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %15, align 4
  %73 = add nsw i32 %72, 200
  %74 = xor i32 %73, 144
  %75 = add nsw i32 %71, %74
  %76 = xor i32 %70, %75
  %77 = and i32 %76, 255
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %9, align 4
  %79 = shl i32 %78, 24
  %80 = load i32, i32* %10, align 4
  %81 = shl i32 %80, 16
  %82 = or i32 %79, %81
  %83 = load i32, i32* %11, align 4
  %84 = shl i32 %83, 8
  %85 = or i32 %82, %84
  %86 = load i32, i32* %12, align 4
  %87 = or i32 %85, %86
  ret i32 %87
}

declare dso_local i32 @_SHIFTR(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
