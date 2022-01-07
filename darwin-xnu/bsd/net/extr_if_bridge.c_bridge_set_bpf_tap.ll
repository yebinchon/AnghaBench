; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bridge.c_bridge_set_bpf_tap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bridge.c_bridge_set_bpf_tap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bridge_softc = type { i32, i32*, i32* }

@SCF_DETACHING = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @bridge_set_bpf_tap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bridge_set_bpf_tap(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.bridge_softc*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @ifnet_softc(i32 %9)
  %11 = inttoptr i64 %10 to %struct.bridge_softc*
  store %struct.bridge_softc* %11, %struct.bridge_softc** %8, align 8
  %12 = load %struct.bridge_softc*, %struct.bridge_softc** %8, align 8
  %13 = icmp eq %struct.bridge_softc* %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %3
  %15 = load %struct.bridge_softc*, %struct.bridge_softc** %8, align 8
  %16 = getelementptr inbounds %struct.bridge_softc, %struct.bridge_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @SCF_DETACHING, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14, %3
  %22 = load i32, i32* @ENODEV, align 4
  store i32 %22, i32* %4, align 4
  br label %52

23:                                               ; preds = %14
  %24 = load %struct.bridge_softc*, %struct.bridge_softc** %8, align 8
  %25 = call i32 @bridge_in_bsd_mode(%struct.bridge_softc* %24)
  %26 = call i32 @ASSERT(i32 %25)
  %27 = load i32, i32* %6, align 4
  switch i32 %27, label %50 [
    i32 131, label %28
    i32 130, label %33
    i32 128, label %38
    i32 129, label %43
  ]

28:                                               ; preds = %23
  %29 = load %struct.bridge_softc*, %struct.bridge_softc** %8, align 8
  %30 = getelementptr inbounds %struct.bridge_softc, %struct.bridge_softc* %29, i32 0, i32 1
  store i32* null, i32** %30, align 8
  %31 = load %struct.bridge_softc*, %struct.bridge_softc** %8, align 8
  %32 = getelementptr inbounds %struct.bridge_softc, %struct.bridge_softc* %31, i32 0, i32 2
  store i32* null, i32** %32, align 8
  br label %51

33:                                               ; preds = %23
  %34 = load i8*, i8** %7, align 8
  %35 = bitcast i8* %34 to i32*
  %36 = load %struct.bridge_softc*, %struct.bridge_softc** %8, align 8
  %37 = getelementptr inbounds %struct.bridge_softc, %struct.bridge_softc* %36, i32 0, i32 2
  store i32* %35, i32** %37, align 8
  br label %51

38:                                               ; preds = %23
  %39 = load i8*, i8** %7, align 8
  %40 = bitcast i8* %39 to i32*
  %41 = load %struct.bridge_softc*, %struct.bridge_softc** %8, align 8
  %42 = getelementptr inbounds %struct.bridge_softc, %struct.bridge_softc* %41, i32 0, i32 1
  store i32* %40, i32** %42, align 8
  br label %51

43:                                               ; preds = %23
  %44 = load i8*, i8** %7, align 8
  %45 = bitcast i8* %44 to i32*
  %46 = load %struct.bridge_softc*, %struct.bridge_softc** %8, align 8
  %47 = getelementptr inbounds %struct.bridge_softc, %struct.bridge_softc* %46, i32 0, i32 1
  store i32* %45, i32** %47, align 8
  %48 = load %struct.bridge_softc*, %struct.bridge_softc** %8, align 8
  %49 = getelementptr inbounds %struct.bridge_softc, %struct.bridge_softc* %48, i32 0, i32 2
  store i32* %45, i32** %49, align 8
  br label %51

50:                                               ; preds = %23
  br label %51

51:                                               ; preds = %50, %43, %38, %33, %28
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %21
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i64 @ifnet_softc(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @bridge_in_bsd_mode(%struct.bridge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
