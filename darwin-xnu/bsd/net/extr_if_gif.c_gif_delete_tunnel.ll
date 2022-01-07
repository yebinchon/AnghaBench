; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_gif.c_gif_delete_tunnel.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_gif.c_gif_delete_tunnel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gif_softc = type { i32, i32*, i32* }

@M_IFADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gif_softc*)* @gif_delete_tunnel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gif_delete_tunnel(%struct.gif_softc* %0) #0 {
  %2 = alloca %struct.gif_softc*, align 8
  store %struct.gif_softc* %0, %struct.gif_softc** %2, align 8
  %3 = load %struct.gif_softc*, %struct.gif_softc** %2, align 8
  %4 = call i32 @GIF_LOCK_ASSERT(%struct.gif_softc* %3)
  %5 = load %struct.gif_softc*, %struct.gif_softc** %2, align 8
  %6 = getelementptr inbounds %struct.gif_softc, %struct.gif_softc* %5, i32 0, i32 2
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %struct.gif_softc*, %struct.gif_softc** %2, align 8
  %11 = getelementptr inbounds %struct.gif_softc, %struct.gif_softc* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = ptrtoint i32* %12 to i32
  %14 = load i32, i32* @M_IFADDR, align 4
  %15 = call i32 @FREE(i32 %13, i32 %14)
  %16 = load %struct.gif_softc*, %struct.gif_softc** %2, align 8
  %17 = getelementptr inbounds %struct.gif_softc, %struct.gif_softc* %16, i32 0, i32 2
  store i32* null, i32** %17, align 8
  br label %18

18:                                               ; preds = %9, %1
  %19 = load %struct.gif_softc*, %struct.gif_softc** %2, align 8
  %20 = getelementptr inbounds %struct.gif_softc, %struct.gif_softc* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load %struct.gif_softc*, %struct.gif_softc** %2, align 8
  %25 = getelementptr inbounds %struct.gif_softc, %struct.gif_softc* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = ptrtoint i32* %26 to i32
  %28 = load i32, i32* @M_IFADDR, align 4
  %29 = call i32 @FREE(i32 %27, i32 %28)
  %30 = load %struct.gif_softc*, %struct.gif_softc** %2, align 8
  %31 = getelementptr inbounds %struct.gif_softc, %struct.gif_softc* %30, i32 0, i32 1
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %23, %18
  %33 = load %struct.gif_softc*, %struct.gif_softc** %2, align 8
  %34 = getelementptr inbounds %struct.gif_softc, %struct.gif_softc* %33, i32 0, i32 0
  %35 = call i32 @ROUTE_RELEASE(i32* %34)
  ret void
}

declare dso_local i32 @GIF_LOCK_ASSERT(%struct.gif_softc*) #1

declare dso_local i32 @FREE(i32, i32) #1

declare dso_local i32 @ROUTE_RELEASE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
