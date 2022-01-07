; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/wifi/iperf/components/iperf/extr_iperf.c_iperf_report_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/wifi/iperf/components/iperf/extr_iperf.c_iperf_report_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@s_iperf_ctrl = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@portTICK_PERIOD_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"\0A%16s %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Interval\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Bandwidth\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"%4d-%4d sec       %.2f Mbits/sec\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @iperf_report_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iperf_report_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_iperf_ctrl, i32 0, i32 2, i32 0), align 4
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_iperf_ctrl, i32 0, i32 2, i32 1), align 4
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = mul nsw i32 %10, 1000
  %12 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %13 = sdiv i32 %11, %12
  store i32 %13, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %15

15:                                               ; preds = %44, %1
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_iperf_ctrl, i32 0, i32 0), align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %45

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @vTaskDelay(i32 %20)
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %23, %24
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_iperf_ctrl, i32 0, i32 1), align 4
  %27 = load i32, i32* %6, align 4
  %28 = sub nsw i32 %26, %27
  %29 = mul nsw i32 %28, 8
  %30 = sitofp i32 %29 to double
  %31 = load i32, i32* %3, align 4
  %32 = sitofp i32 %31 to double
  %33 = fdiv double %30, %32
  %34 = fdiv double %33, 1.000000e+06
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %22, i32 %25, double %34)
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_iperf_ctrl, i32 0, i32 1), align 4
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %19
  br label %45

44:                                               ; preds = %19
  br label %15

45:                                               ; preds = %43, %15
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %45
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_iperf_ctrl, i32 0, i32 1), align 4
  %51 = mul nsw i32 %50, 8
  %52 = sitofp i32 %51 to double
  %53 = load i32, i32* %7, align 4
  %54 = sitofp i32 %53 to double
  %55 = fdiv double %52, %54
  %56 = fdiv double %55, 1.000000e+06
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 %49, double %56)
  br label %58

58:                                               ; preds = %48, %45
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_iperf_ctrl, i32 0, i32 0), align 4
  %59 = call i32 @vTaskDelete(i32* null)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @vTaskDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
