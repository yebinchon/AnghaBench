; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_devices.c_Devices_H_LoadProceed.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_devices.c_Devices_H_LoadProceed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Devices_ICAX1Z = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@runBinFile = common dso_local global i8* null, align 8
@initBinFile = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@Devices_ICAX2Z = common dso_local global i32 0, align 4
@BINLOAD_start_binloading = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @Devices_H_LoadProceed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Devices_H_LoadProceed(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %22

5:                                                ; preds = %1
  %6 = load i32, i32* @Devices_ICAX1Z, align 4
  %7 = call i32 @MEMORY_dGetByte(i32 %6)
  switch i32 %7, label %18 [
    i32 4, label %8
    i32 5, label %11
    i32 6, label %14
    i32 7, label %17
  ]

8:                                                ; preds = %5
  %9 = load i8*, i8** @TRUE, align 8
  store i8* %9, i8** @runBinFile, align 8
  %10 = load i8*, i8** @TRUE, align 8
  store i8* %10, i8** @initBinFile, align 8
  br label %21

11:                                               ; preds = %5
  %12 = load i8*, i8** @TRUE, align 8
  store i8* %12, i8** @runBinFile, align 8
  %13 = load i8*, i8** @FALSE, align 8
  store i8* %13, i8** @initBinFile, align 8
  br label %21

14:                                               ; preds = %5
  %15 = load i8*, i8** @FALSE, align 8
  store i8* %15, i8** @runBinFile, align 8
  %16 = load i8*, i8** @TRUE, align 8
  store i8* %16, i8** @initBinFile, align 8
  br label %21

17:                                               ; preds = %5
  br label %18

18:                                               ; preds = %5, %17
  %19 = load i8*, i8** @FALSE, align 8
  store i8* %19, i8** @runBinFile, align 8
  %20 = load i8*, i8** @FALSE, align 8
  store i8* %20, i8** @initBinFile, align 8
  br label %21

21:                                               ; preds = %18, %14, %11, %8
  br label %32

22:                                               ; preds = %1
  %23 = load i32, i32* @Devices_ICAX2Z, align 4
  %24 = call i32 @MEMORY_dGetByte(i32 %23)
  %25 = icmp slt i32 %24, 128
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i8*, i8** @TRUE, align 8
  store i8* %27, i8** @runBinFile, align 8
  br label %30

28:                                               ; preds = %22
  %29 = load i8*, i8** @FALSE, align 8
  store i8* %29, i8** @runBinFile, align 8
  br label %30

30:                                               ; preds = %28, %26
  %31 = load i8*, i8** @TRUE, align 8
  store i8* %31, i8** @initBinFile, align 8
  br label %32

32:                                               ; preds = %30, %21
  %33 = load i8*, i8** @TRUE, align 8
  store i8* %33, i8** @BINLOAD_start_binloading, align 8
  %34 = call i32 (...) @Devices_H_BinLoaderCont()
  ret void
}

declare dso_local i32 @MEMORY_dGetByte(i32) #1

declare dso_local i32 @Devices_H_BinLoaderCont(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
