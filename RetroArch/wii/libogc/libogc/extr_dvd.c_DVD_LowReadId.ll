; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_dvd.c_DVD_LowReadId.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_dvd.c_DVD_LowReadId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i64 }

@__dvd_callback = common dso_local global i32 0, align 4
@__dvd_stopnextint = common dso_local global i64 0, align 8
@DVD_READDISKID = common dso_local global i32 0, align 4
@_diReg = common dso_local global i32* null, align 8
@DVD_DISKIDSIZE = common dso_local global i32 0, align 4
@DVD_DI_DMA = common dso_local global i32 0, align 4
@DVD_DI_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DVD_LowReadId(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.timespec, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  store i32 %6, i32* @__dvd_callback, align 4
  store i64 0, i64* @__dvd_stopnextint, align 8
  %7 = load i32, i32* @DVD_READDISKID, align 4
  %8 = load i32*, i32** @_diReg, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 2
  store i32 %7, i32* %9, align 4
  %10 = load i32*, i32** @_diReg, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 3
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* @DVD_DISKIDSIZE, align 4
  %13 = load i32*, i32** @_diReg, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 4
  store i32 %12, i32* %14, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = ptrtoint i32* %15 to i32
  %17 = load i32*, i32** @_diReg, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 5
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @DVD_DISKIDSIZE, align 4
  %20 = load i32*, i32** @_diReg, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 6
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @DVD_DI_DMA, align 4
  %23 = load i32, i32* @DVD_DI_START, align 4
  %24 = or i32 %22, %23
  %25 = load i32*, i32** @_diReg, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 7
  store i32 %24, i32* %26, align 4
  %27 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  store i32 10, i32* %27, align 8
  %28 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = call i32 @__SetupTimeoutAlarm(%struct.timespec* %5)
  ret i32 1
}

declare dso_local i32 @__SetupTimeoutAlarm(%struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
