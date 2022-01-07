; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_gif.c_gif_output.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_gif.c_gif_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.gif_softc = type { i32, %struct.sockaddr*, %struct.sockaddr* }
%struct.sockaddr = type { i32 }

@M_BCAST = common dso_local global i32 0, align 4
@M_MCAST = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@EJUSTRETURN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_9__*)* @gif_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gif_output(i32 %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.gif_softc*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.gif_softc* @ifnet_softc(i32 %9)
  store %struct.gif_softc* %10, %struct.gif_softc** %5, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.gif_softc*, %struct.gif_softc** %5, align 8
  %12 = call i32 @GIF_LOCK(%struct.gif_softc* %11)
  %13 = load %struct.gif_softc*, %struct.gif_softc** %5, align 8
  %14 = getelementptr inbounds %struct.gif_softc, %struct.gif_softc* %13, i32 0, i32 1
  %15 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  store %struct.sockaddr* %15, %struct.sockaddr** %6, align 8
  %16 = load %struct.gif_softc*, %struct.gif_softc** %5, align 8
  %17 = getelementptr inbounds %struct.gif_softc, %struct.gif_softc* %16, i32 0, i32 2
  %18 = load %struct.sockaddr*, %struct.sockaddr** %17, align 8
  store %struct.sockaddr* %18, %struct.sockaddr** %7, align 8
  %19 = load %struct.gif_softc*, %struct.gif_softc** %5, align 8
  %20 = call i32 @GIF_UNLOCK(%struct.gif_softc* %19)
  %21 = load i32, i32* @M_BCAST, align 4
  %22 = load i32, i32* @M_MCAST, align 4
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @ifnet_flags(i32 %29)
  %31 = load i32, i32* @IFF_UP, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %2
  %35 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %36 = icmp eq %struct.sockaddr* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %39 = icmp eq %struct.sockaddr* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %37, %34, %2
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @ifnet_touch_lastchange(i32 %41)
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %44 = call i32 @m_freem(%struct.TYPE_9__* %43)
  %45 = load i32, i32* @ENETDOWN, align 4
  store i32 %45, i32* %8, align 4
  br label %64

46:                                               ; preds = %37
  %47 = load i32, i32* %3, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %49 = load %struct.gif_softc*, %struct.gif_softc** %5, align 8
  %50 = getelementptr inbounds %struct.gif_softc, %struct.gif_softc* %49, i32 0, i32 0
  %51 = call i32 @bpf_tap_out(i32 %47, i32 0, %struct.TYPE_9__* %48, i32* %50, i32 4)
  %52 = load %struct.gif_softc*, %struct.gif_softc** %5, align 8
  %53 = call i32 @GIF_LOCK(%struct.gif_softc* %52)
  %54 = load %struct.gif_softc*, %struct.gif_softc** %5, align 8
  %55 = getelementptr inbounds %struct.gif_softc, %struct.gif_softc* %54, i32 0, i32 1
  %56 = load %struct.sockaddr*, %struct.sockaddr** %55, align 8
  %57 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %59 [
  ]

59:                                               ; preds = %46
  %60 = load i32, i32* @ENETDOWN, align 4
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %59
  %62 = load %struct.gif_softc*, %struct.gif_softc** %5, align 8
  %63 = call i32 @GIF_UNLOCK(%struct.gif_softc* %62)
  br label %64

64:                                               ; preds = %61, %40
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @ifnet_stat_increment_out(i32 %68, i32 0, i32 0, i32 1)
  br label %77

70:                                               ; preds = %64
  %71 = load i32, i32* %3, align 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @ifnet_stat_increment_out(i32 %71, i32 1, i32 %75, i32 0)
  br label %77

77:                                               ; preds = %70, %67
  %78 = load i32, i32* %8, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32, i32* @EJUSTRETURN, align 4
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %80, %77
  %83 = load i32, i32* %8, align 4
  ret i32 %83
}

declare dso_local %struct.gif_softc* @ifnet_softc(i32) #1

declare dso_local i32 @GIF_LOCK(%struct.gif_softc*) #1

declare dso_local i32 @GIF_UNLOCK(%struct.gif_softc*) #1

declare dso_local i32 @ifnet_flags(i32) #1

declare dso_local i32 @ifnet_touch_lastchange(i32) #1

declare dso_local i32 @m_freem(%struct.TYPE_9__*) #1

declare dso_local i32 @bpf_tap_out(i32, i32, %struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @ifnet_stat_increment_out(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
