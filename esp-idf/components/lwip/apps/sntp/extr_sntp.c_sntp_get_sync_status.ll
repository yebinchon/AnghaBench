; ModuleID = '/home/carl/AnghaBench/esp-idf/components/lwip/apps/sntp/extr_sntp.c_sntp_get_sync_status.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/lwip/apps/sntp/extr_sntp.c_sntp_get_sync_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

@SNTP_SYNC_STATUS_RESET = common dso_local global i64 0, align 8
@sntp_sync_status = common dso_local global i64 0, align 8
@SNTP_SYNC_STATUS_COMPLETED = common dso_local global i64 0, align 8
@SNTP_SYNC_STATUS_IN_PROGRESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sntp_get_sync_status() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.timeval, align 8
  %4 = load i64, i64* @SNTP_SYNC_STATUS_RESET, align 8
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* @sntp_sync_status, align 8
  store i64 %5, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = load i64, i64* @SNTP_SYNC_STATUS_COMPLETED, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %0
  %10 = load i64, i64* @SNTP_SYNC_STATUS_RESET, align 8
  %11 = call i32 @sntp_set_sync_status(i64 %10)
  %12 = load i64, i64* @SNTP_SYNC_STATUS_COMPLETED, align 8
  store i64 %12, i64* %1, align 8
  br label %34

13:                                               ; preds = %0
  %14 = load i64, i64* %2, align 8
  %15 = load i64, i64* @SNTP_SYNC_STATUS_IN_PROGRESS, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %13
  %18 = call i32 @adjtime(i32* null, %struct.timeval* %3)
  %19 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i64, i64* @SNTP_SYNC_STATUS_RESET, align 8
  %28 = call i32 @sntp_set_sync_status(i64 %27)
  %29 = load i64, i64* @SNTP_SYNC_STATUS_COMPLETED, align 8
  store i64 %29, i64* %1, align 8
  br label %32

30:                                               ; preds = %22, %17
  %31 = load i64, i64* @SNTP_SYNC_STATUS_IN_PROGRESS, align 8
  store i64 %31, i64* %1, align 8
  br label %32

32:                                               ; preds = %30, %26
  br label %33

33:                                               ; preds = %32, %13
  br label %34

34:                                               ; preds = %33, %9
  %35 = load i64, i64* %1, align 8
  ret i64 %35
}

declare dso_local i32 @sntp_set_sync_status(i64) #1

declare dso_local i32 @adjtime(i32*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
