; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/miniupnpc/extr_minissdpc.c_getDevicesFromMiniSSDPD.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/miniupnpc/extr_minissdpc.c_getDevicesFromMiniSSDPD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.UPNPDev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.UPNPDev* @getDevicesFromMiniSSDPD(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.UPNPDev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.UPNPDev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.UPNPDev* null, %struct.UPNPDev** %8, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @connectToMiniSSDPD(i8* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load i32*, i32** %7, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* %9, align 4
  %20 = load i32*, i32** %7, align 8
  store i32 %19, i32* %20, align 4
  br label %21

21:                                               ; preds = %18, %15
  store %struct.UPNPDev* null, %struct.UPNPDev** %4, align 8
  br label %43

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @requestDevicesFromMiniSSDPD(i32 %23, i8* %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load i32*, i32** %7, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %10, align 4
  %33 = load i32*, i32** %7, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %31, %28
  br label %39

35:                                               ; preds = %22
  %36 = load i32, i32* %9, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = call %struct.UPNPDev* @receiveDevicesFromMiniSSDPD(i32 %36, i32* %37)
  store %struct.UPNPDev* %38, %struct.UPNPDev** %8, align 8
  br label %39

39:                                               ; preds = %35, %34
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @disconnectFromMiniSSDPD(i32 %40)
  %42 = load %struct.UPNPDev*, %struct.UPNPDev** %8, align 8
  store %struct.UPNPDev* %42, %struct.UPNPDev** %4, align 8
  br label %43

43:                                               ; preds = %39, %21
  %44 = load %struct.UPNPDev*, %struct.UPNPDev** %4, align 8
  ret %struct.UPNPDev* %44
}

declare dso_local i32 @connectToMiniSSDPD(i8*) #1

declare dso_local i32 @requestDevicesFromMiniSSDPD(i32, i8*) #1

declare dso_local %struct.UPNPDev* @receiveDevicesFromMiniSSDPD(i32, i32*) #1

declare dso_local i32 @disconnectFromMiniSSDPD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
