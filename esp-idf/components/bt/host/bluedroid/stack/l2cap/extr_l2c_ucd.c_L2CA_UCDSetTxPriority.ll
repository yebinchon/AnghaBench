; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_ucd.c_L2CA_UCDSetTxPriority.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_ucd.c_L2CA_UCDSetTxPriority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [57 x i8] c"L2CA_UCDSetTxPriority()  priority: 0x%02x  BDA: %08x%04x\00", align 1
@BT_TRANSPORT_BR_EDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"L2CAP - no LCB for L2CA_UCDSetTxPriority\00", align 1
@FALSE = common dso_local global i32 0, align 4
@L2CAP_CONNECTIONLESS_CID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"L2CAP - no CCB for L2CA_UCDSetTxPriority\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @L2CA_UCDSetTxPriority(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = shl i32 %11, 24
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = shl i32 %15, 16
  %17 = add nsw i32 %12, %16
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %20, 8
  %22 = add nsw i32 %17, %21
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 3
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %22, %25
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 4
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 8
  %31 = load i32*, i32** %4, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 5
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %30, %33
  %35 = call i32 @L2CAP_TRACE_API(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %26, i32 %34)
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* @BT_TRANSPORT_BR_EDR, align 4
  %38 = call i32* @l2cu_find_lcb_by_bd_addr(i32* %36, i32 %37)
  store i32* %38, i32** %6, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %2
  %41 = call i32 @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %3, align 4
  br label %56

43:                                               ; preds = %2
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* @L2CAP_CONNECTIONLESS_CID, align 4
  %46 = call i32* @l2cu_find_ccb_by_cid(i32* %44, i32 %45)
  store i32* %46, i32** %7, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = call i32 @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* @FALSE, align 4
  store i32 %50, i32* %3, align 4
  br label %56

51:                                               ; preds = %43
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @l2cu_change_pri_ccb(i32* %52, i32 %53)
  %55 = load i32, i32* @TRUE, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %51, %48, %40
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @L2CAP_TRACE_API(i8*, i32, i32, i32) #1

declare dso_local i32* @l2cu_find_lcb_by_bd_addr(i32*, i32) #1

declare dso_local i32 @L2CAP_TRACE_WARNING(i8*) #1

declare dso_local i32* @l2cu_find_ccb_by_cid(i32*, i32) #1

declare dso_local i32 @l2cu_change_pri_ccb(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
