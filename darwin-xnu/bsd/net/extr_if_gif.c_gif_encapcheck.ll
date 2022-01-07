; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_gif.c_gif_encapcheck.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_gif.c_gif_encapcheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.ip = type { i32 }
%struct.gif_softc = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbuf*, i32, i32, i8*)* @gif_encapcheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gif_encapcheck(%struct.mbuf* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ip, align 4
  %12 = alloca %struct.gif_softc*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load i8*, i8** %9, align 8
  %14 = bitcast i8* %13 to %struct.gif_softc*
  store %struct.gif_softc* %14, %struct.gif_softc** %12, align 8
  %15 = load %struct.gif_softc*, %struct.gif_softc** %12, align 8
  %16 = icmp eq %struct.gif_softc* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %5, align 4
  br label %48

19:                                               ; preds = %4
  %20 = load %struct.gif_softc*, %struct.gif_softc** %12, align 8
  %21 = call i32 @GIF_LOCK(%struct.gif_softc* %20)
  %22 = load %struct.gif_softc*, %struct.gif_softc** %12, align 8
  %23 = getelementptr inbounds %struct.gif_softc, %struct.gif_softc* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @ifnet_flags(i32 %24)
  %26 = load i32, i32* @IFF_UP, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %44

30:                                               ; preds = %19
  %31 = load %struct.gif_softc*, %struct.gif_softc** %12, align 8
  %32 = getelementptr inbounds %struct.gif_softc, %struct.gif_softc* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = icmp ne %struct.TYPE_3__* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.gif_softc*, %struct.gif_softc** %12, align 8
  %37 = getelementptr inbounds %struct.gif_softc, %struct.gif_softc* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = icmp ne %struct.TYPE_4__* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %35, %30
  br label %44

41:                                               ; preds = %35
  %42 = load i32, i32* %8, align 4
  switch i32 %42, label %43 [
  ]

43:                                               ; preds = %41
  br label %44

44:                                               ; preds = %43, %40, %29
  %45 = load %struct.gif_softc*, %struct.gif_softc** %12, align 8
  %46 = call i32 @GIF_UNLOCK(%struct.gif_softc* %45)
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %44, %17
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @GIF_LOCK(%struct.gif_softc*) #1

declare dso_local i32 @ifnet_flags(i32) #1

declare dso_local i32 @GIF_UNLOCK(%struct.gif_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
