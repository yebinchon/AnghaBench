; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_pcnt.c_pcnt_counter_resume.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_pcnt.c_pcnt_counter_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@PCNT_UNIT_MAX = common dso_local global i32 0, align 4
@PCNT_UNIT_ERR_STR = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@pcnt_spinlock = common dso_local global i32 0, align 4
@PCNT_CNT_PAUSE_U0_S = common dso_local global i64 0, align 8
@PCNT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcnt_counter_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @PCNT_UNIT_MAX, align 4
  %5 = icmp slt i32 %3, %4
  %6 = zext i1 %5 to i32
  %7 = load i32, i32* @PCNT_UNIT_ERR_STR, align 4
  %8 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %9 = call i32 @PCNT_CHECK(i32 %6, i32 %7, i32 %8)
  %10 = call i32 @PCNT_ENTER_CRITICAL(i32* @pcnt_spinlock)
  %11 = load i64, i64* @PCNT_CNT_PAUSE_U0_S, align 8
  %12 = load i32, i32* %2, align 4
  %13 = mul nsw i32 %12, 2
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %11, %14
  %16 = call i32 @BIT(i64 %15)
  %17 = xor i32 %16, -1
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @PCNT, i32 0, i32 0, i32 0), align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @PCNT, i32 0, i32 0, i32 0), align 4
  %20 = call i32 @PCNT_EXIT_CRITICAL(i32* @pcnt_spinlock)
  %21 = load i32, i32* @ESP_OK, align 4
  ret i32 %21
}

declare dso_local i32 @PCNT_CHECK(i32, i32, i32) #1

declare dso_local i32 @PCNT_ENTER_CRITICAL(i32*) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @PCNT_EXIT_CRITICAL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
