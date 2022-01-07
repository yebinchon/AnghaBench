; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_dvd.c_DVD_LowReadmem.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_dvd.c_DVD_LowReadmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__dvd_finalreadmemcb = common dso_local global i32 0, align 4
@__dvd_usrdata = common dso_local global i8* null, align 8
@__dvd_readmemcb = common dso_local global i32 0, align 4
@__dvd_callback = common dso_local global i32 0, align 4
@__dvd_stopnextint = common dso_local global i64 0, align 8
@DVD_FWREADMEM = common dso_local global i32 0, align 4
@_diReg = common dso_local global i32* null, align 8
@DVD_DI_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DVD_LowReadmem(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* @__dvd_finalreadmemcb, align 4
  %8 = load i8*, i8** %5, align 8
  store i8* %8, i8** @__dvd_usrdata, align 8
  %9 = load i32, i32* @__dvd_readmemcb, align 4
  store i32 %9, i32* @__dvd_callback, align 4
  store i64 0, i64* @__dvd_stopnextint, align 8
  %10 = load i32, i32* @DVD_FWREADMEM, align 4
  %11 = load i32*, i32** @_diReg, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 2
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32*, i32** @_diReg, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 3
  store i32 %13, i32* %15, align 4
  %16 = load i32*, i32** @_diReg, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 4
  store i32 65536, i32* %17, align 4
  %18 = load i32, i32* @DVD_DI_START, align 4
  %19 = load i32*, i32** @_diReg, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 7
  store i32 %18, i32* %20, align 4
  ret i32 1
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
