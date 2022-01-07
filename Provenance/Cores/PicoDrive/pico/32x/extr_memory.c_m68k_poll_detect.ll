; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_memory.c_m68k_poll_detect.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_memory.c_m68k_poll_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64 }
%struct.TYPE_4__ = type { i32 }

@m68k_poll = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@SekNotPolling = common dso_local global i64 0, align 8
@POLL_THRESHOLD = common dso_local global i64 0, align 8
@Pico32x = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@EL_32X = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"m68k poll addr %08x, cyc %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @m68k_poll_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m68k_poll_detect(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = sub nsw i32 %8, 2
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @m68k_poll, i32 0, i32 0), align 8
  %11 = icmp sle i32 %9, %10
  br i1 %11, label %12, label %47

12:                                               ; preds = %3
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @m68k_poll, i32 0, i32 0), align 8
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %14, 2
  %16 = icmp sle i32 %13, %15
  br i1 %16, label %17, label %47

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @m68k_poll, i32 0, i32 1), align 4
  %20 = sub nsw i32 %18, %19
  %21 = icmp sle i32 %20, 64
  br i1 %21, label %22, label %47

22:                                               ; preds = %17
  %23 = load i64, i64* @SekNotPolling, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %47, label %25

25:                                               ; preds = %22
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @m68k_poll, i32 0, i32 2), align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @m68k_poll, i32 0, i32 2), align 8
  %28 = load i64, i64* @POLL_THRESHOLD, align 8
  %29 = icmp sgt i64 %26, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %25
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico32x, i32 0, i32 0), align 4
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @EL_32X, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @m68k_poll, i32 0, i32 1), align 4
  %40 = sub nsw i32 %38, %39
  %41 = call i32 @elprintf(i32 %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40)
  store i32 1, i32* %7, align 4
  br label %42

42:                                               ; preds = %35, %30
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico32x, i32 0, i32 0), align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico32x, i32 0, i32 0), align 4
  br label %46

46:                                               ; preds = %42, %25
  br label %49

47:                                               ; preds = %22, %17, %12, %3
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @m68k_poll, i32 0, i32 2), align 8
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @m68k_poll, i32 0, i32 0), align 8
  store i64 0, i64* @SekNotPolling, align 8
  br label %49

49:                                               ; preds = %47, %46
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @m68k_poll, i32 0, i32 1), align 4
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local i32 @elprintf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
