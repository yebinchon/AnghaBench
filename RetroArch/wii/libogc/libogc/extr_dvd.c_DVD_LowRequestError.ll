; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_dvd.c_DVD_LowRequestError.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_dvd.c_DVD_LowRequestError.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i64 }

@__dvd_callback = common dso_local global i32 0, align 4
@__dvd_stopnextint = common dso_local global i64 0, align 8
@DVD_REQUESTERROR = common dso_local global i32 0, align 4
@_diReg = common dso_local global i32* null, align 8
@DVD_DI_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DVD_LowRequestError(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.timespec, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  store i32 %4, i32* @__dvd_callback, align 4
  store i64 0, i64* @__dvd_stopnextint, align 8
  %5 = load i32, i32* @DVD_REQUESTERROR, align 4
  %6 = load i32*, i32** @_diReg, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 2
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* @DVD_DI_START, align 4
  %9 = load i32*, i32** @_diReg, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 7
  store i32 %8, i32* %10, align 4
  %11 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0
  store i32 10, i32* %11, align 8
  %12 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = call i32 @__SetupTimeoutAlarm(%struct.timespec* %3)
  ret i32 1
}

declare dso_local i32 @__SetupTimeoutAlarm(%struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
