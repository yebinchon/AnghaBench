; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/arch/gc/netif/extr_gcif.c___bba_recv_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/arch/gc/netif/extr_gcif.c___bba_recv_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BBA_NCRB = common dso_local global i64 0, align 8
@BBA_NCRB_AB = common dso_local global i32 0, align 4
@BBA_NCRB_CA = common dso_local global i32 0, align 4
@BBA_NCRB_2_PACKETS_PER_INT = common dso_local global i32 0, align 4
@BBA_SI_ACTRL2 = common dso_local global i64 0, align 8
@BBA_RXINTT = common dso_local global i64 0, align 8
@BBA_MISC2 = common dso_local global i64 0, align 8
@BBA_MISC2_AUTORCVR = common dso_local global i32 0, align 4
@BBA_TLBP = common dso_local global i32 0, align 4
@BBA_INIT_TLBP = common dso_local global i32 0, align 4
@BBA_BP = common dso_local global i32 0, align 4
@BBA_INIT_BP = common dso_local global i32 0, align 4
@BBA_RHBP = common dso_local global i32 0, align 4
@BBA_INIT_RHBP = common dso_local global i32 0, align 4
@BBA_RWP = common dso_local global i32 0, align 4
@BBA_INIT_RWP = common dso_local global i32 0, align 4
@BBA_RRP = common dso_local global i32 0, align 4
@BBA_INIT_RRP = common dso_local global i32 0, align 4
@BBA_GCA = common dso_local global i64 0, align 8
@BBA_GCA_ARXERRB = common dso_local global i32 0, align 4
@BBA_NCRA = common dso_local global i64 0, align 8
@BBA_NCRA_SR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @__bba_recv_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__bba_recv_init() #0 {
  %1 = load i64, i64* @BBA_NCRB, align 8
  %2 = load i32, i32* @BBA_NCRB_AB, align 4
  %3 = load i32, i32* @BBA_NCRB_CA, align 4
  %4 = or i32 %2, %3
  %5 = load i32, i32* @BBA_NCRB_2_PACKETS_PER_INT, align 4
  %6 = or i32 %4, %5
  %7 = call i32 @bba_out8(i64 %1, i32 %6)
  %8 = load i64, i64* @BBA_SI_ACTRL2, align 8
  %9 = call i32 @bba_out8(i64 %8, i32 116)
  %10 = load i64, i64* @BBA_RXINTT, align 8
  %11 = call i32 @bba_out8(i64 %10, i32 0)
  %12 = load i64, i64* @BBA_RXINTT, align 8
  %13 = add nsw i64 %12, 1
  %14 = call i32 @bba_out8(i64 %13, i32 6)
  %15 = load i64, i64* @BBA_MISC2, align 8
  %16 = load i32, i32* @BBA_MISC2_AUTORCVR, align 4
  %17 = call i32 @bba_out8(i64 %15, i32 %16)
  %18 = load i32, i32* @BBA_TLBP, align 4
  %19 = load i32, i32* @BBA_INIT_TLBP, align 4
  %20 = call i32 @bba_out12(i32 %18, i32 %19)
  %21 = load i32, i32* @BBA_BP, align 4
  %22 = load i32, i32* @BBA_INIT_BP, align 4
  %23 = call i32 @bba_out12(i32 %21, i32 %22)
  %24 = load i32, i32* @BBA_RHBP, align 4
  %25 = load i32, i32* @BBA_INIT_RHBP, align 4
  %26 = call i32 @bba_out12(i32 %24, i32 %25)
  %27 = load i32, i32* @BBA_RWP, align 4
  %28 = load i32, i32* @BBA_INIT_RWP, align 4
  %29 = call i32 @bba_out12(i32 %27, i32 %28)
  %30 = load i32, i32* @BBA_RRP, align 4
  %31 = load i32, i32* @BBA_INIT_RRP, align 4
  %32 = call i32 @bba_out12(i32 %30, i32 %31)
  %33 = load i64, i64* @BBA_GCA, align 8
  %34 = load i32, i32* @BBA_GCA_ARXERRB, align 4
  %35 = call i32 @bba_out8(i64 %33, i32 %34)
  %36 = load i64, i64* @BBA_NCRA, align 8
  %37 = load i32, i32* @BBA_NCRA_SR, align 4
  %38 = call i32 @bba_out8(i64 %36, i32 %37)
  ret void
}

declare dso_local i32 @bba_out8(i64, i32) #1

declare dso_local i32 @bba_out12(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
