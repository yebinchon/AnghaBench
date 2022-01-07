; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_ntptime.c_ntp_gettime1.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_ntptime.c_ntp_gettime1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntptimeval = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.timespec = type { i64, i32 }

@last_time_maxerror_update = common dso_local global i64 0, align 8
@MAXFREQ = common dso_local global i32 0, align 4
@time_maxerror = common dso_local global i32 0, align 4
@time_esterror = common dso_local global i32 0, align 4
@time_tai = common dso_local global i32 0, align 4
@time_state = common dso_local global i32 0, align 4
@time_status = common dso_local global i32 0, align 4
@TIME_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ntptimeval*)* @ntp_gettime1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ntp_gettime1(%struct.ntptimeval* %0) #0 {
  %2 = alloca %struct.ntptimeval*, align 8
  %3 = alloca %struct.timespec, align 8
  store %struct.ntptimeval* %0, %struct.ntptimeval** %2, align 8
  %4 = call i32 (...) @NTP_ASSERT_LOCKED()
  %5 = call i32 @nanotime(%struct.timespec* %3)
  %6 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.ntptimeval*, %struct.ntptimeval** %2, align 8
  %9 = getelementptr inbounds %struct.ntptimeval, %struct.ntptimeval* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i64 %7, i64* %10, align 8
  %11 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.ntptimeval*, %struct.ntptimeval** %2, align 8
  %14 = getelementptr inbounds %struct.ntptimeval, %struct.ntptimeval* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store i32 %12, i32* %15, align 8
  %16 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @last_time_maxerror_update, align 8
  %19 = icmp ugt i64 %17, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %1
  %21 = load i32, i32* @MAXFREQ, align 4
  %22 = sdiv i32 %21, 1000
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @last_time_maxerror_update, align 8
  %27 = sub i64 %25, %26
  %28 = mul i64 %23, %27
  %29 = load i32, i32* @time_maxerror, align 4
  %30 = sext i32 %29 to i64
  %31 = add i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* @time_maxerror, align 4
  %33 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* @last_time_maxerror_update, align 8
  br label %35

35:                                               ; preds = %20, %1
  %36 = load i32, i32* @time_maxerror, align 4
  %37 = load %struct.ntptimeval*, %struct.ntptimeval** %2, align 8
  %38 = getelementptr inbounds %struct.ntptimeval, %struct.ntptimeval* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @time_esterror, align 4
  %40 = load %struct.ntptimeval*, %struct.ntptimeval** %2, align 8
  %41 = getelementptr inbounds %struct.ntptimeval, %struct.ntptimeval* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @time_tai, align 4
  %43 = load %struct.ntptimeval*, %struct.ntptimeval** %2, align 8
  %44 = getelementptr inbounds %struct.ntptimeval, %struct.ntptimeval* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @time_state, align 4
  %46 = load %struct.ntptimeval*, %struct.ntptimeval** %2, align 8
  %47 = getelementptr inbounds %struct.ntptimeval, %struct.ntptimeval* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @time_status, align 4
  %49 = call i64 @ntp_is_time_error(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %35
  %52 = load i32, i32* @TIME_ERROR, align 4
  %53 = load %struct.ntptimeval*, %struct.ntptimeval** %2, align 8
  %54 = getelementptr inbounds %struct.ntptimeval, %struct.ntptimeval* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %51, %35
  ret void
}

declare dso_local i32 @NTP_ASSERT_LOCKED(...) #1

declare dso_local i32 @nanotime(%struct.timespec*) #1

declare dso_local i64 @ntp_is_time_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
