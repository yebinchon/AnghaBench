; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/smp/extr_smp_cmac.c_cmac_prepare_last_block.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/smp/extr_smp_cmac.c_cmac_prepare_last_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [25 x i8] c"cmac_prepare_last_block \00", align 1
@cmac_cb = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@BT_OCTET16_LEN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"flag = %d round = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @cmac_prepare_last_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmac_prepare_last_block(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = call i32 @SMP_TRACE_EVENT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmac_cb, i32 0, i32 0), align 8
  %8 = load i32, i32* @BT_OCTET16_LEN, align 4
  %9 = srem i32 %7, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmac_cb, i32 0, i32 0), align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i64, i64* @TRUE, align 8
  br label %18

16:                                               ; preds = %11, %2
  %17 = load i64, i64* @FALSE, align 8
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i64 [ %15, %14 ], [ %17, %16 ]
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmac_cb, i32 0, i32 2), align 8
  %22 = call i32 @SMP_TRACE_DEBUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %20, i32 %21)
  %23 = load i64, i64* %5, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmac_cb, i32 0, i32 1), align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @smp_xor_128(i32* %27, i32 %28)
  br label %40

30:                                               ; preds = %18
  %31 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmac_cb, i32 0, i32 1), align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmac_cb, i32 0, i32 0), align 8
  %34 = srem i32 %33, 16
  %35 = call i32 @padding(i32* %32, i32 %34)
  %36 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmac_cb, i32 0, i32 1), align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @smp_xor_128(i32* %37, i32 %38)
  br label %40

40:                                               ; preds = %30, %25
  ret void
}

declare dso_local i32 @SMP_TRACE_EVENT(i8*) #1

declare dso_local i32 @SMP_TRACE_DEBUG(i8*, i64, i32) #1

declare dso_local i32 @smp_xor_128(i32*, i32) #1

declare dso_local i32 @padding(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
