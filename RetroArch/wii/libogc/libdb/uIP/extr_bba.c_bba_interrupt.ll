; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_bba.c_bba_interrupt.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_bba.c_bba_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BBA_IR = common dso_local global i32 0, align 4
@BBA_IMR = common dso_local global i32 0, align 4
@BBA_IR_FRAGI = common dso_local global i32 0, align 4
@BBA_IR_RI = common dso_local global i32 0, align 4
@bba_netif = common dso_local global i32 0, align 4
@BBA_IR_REI = common dso_local global i32 0, align 4
@BBA_IR_TI = common dso_local global i32 0, align 4
@BBA_IR_TEI = common dso_local global i32 0, align 4
@BBA_IR_FIFOEI = common dso_local global i32 0, align 4
@BBA_IR_BUSEI = common dso_local global i32 0, align 4
@BBA_IR_RBFI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @bba_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bba_interrupt(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32, i32* @BBA_IR, align 4
  %7 = call i32 @bba_in8(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @BBA_IMR, align 4
  %9 = call i32 @bba_in8(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @BBA_IR_FRAGI, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* @BBA_IR, align 4
  %19 = load i32, i32* @BBA_IR_FRAGI, align 4
  %20 = call i32 @bba_out8(i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %17, %1
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @BBA_IR_RI, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load i32, i32* @bba_netif, align 4
  %28 = call i32 @bba_start_rx(i32 %27, i32 16)
  %29 = load i32, i32* @BBA_IR, align 4
  %30 = load i32, i32* @BBA_IR_RI, align 4
  %31 = call i32 @bba_out8(i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %26, %21
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @BBA_IR_REI, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* @BBA_IR, align 4
  %39 = load i32, i32* @BBA_IR_REI, align 4
  %40 = call i32 @bba_out8(i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %32
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @BBA_IR_TI, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32, i32* @BBA_IR, align 4
  %48 = load i32, i32* @BBA_IR_TI, align 4
  %49 = call i32 @bba_out8(i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %41
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @BBA_IR_TEI, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i32, i32* @BBA_IR, align 4
  %57 = load i32, i32* @BBA_IR_TEI, align 4
  %58 = call i32 @bba_out8(i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %50
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @BBA_IR_FIFOEI, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32, i32* @BBA_IR, align 4
  %66 = load i32, i32* @BBA_IR_FIFOEI, align 4
  %67 = call i32 @bba_out8(i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %64, %59
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @BBA_IR_BUSEI, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load i32, i32* @BBA_IR, align 4
  %75 = load i32, i32* @BBA_IR_BUSEI, align 4
  %76 = call i32 @bba_out8(i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %73, %68
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @BBA_IR_RBFI, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load i32, i32* @bba_netif, align 4
  %84 = call i32 @bba_start_rx(i32 %83, i32 16)
  %85 = load i32, i32* @BBA_IR, align 4
  %86 = load i32, i32* @BBA_IR_RBFI, align 4
  %87 = call i32 @bba_out8(i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %82, %77
  %89 = load i32, i32* %5, align 4
  %90 = load i32*, i32** %2, align 8
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %89
  store i32 %92, i32* %90, align 4
  ret void
}

declare dso_local i32 @bba_in8(i32) #1

declare dso_local i32 @bba_out8(i32, i32) #1

declare dso_local i32 @bba_start_rx(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
