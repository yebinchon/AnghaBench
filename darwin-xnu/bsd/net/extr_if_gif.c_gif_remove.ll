; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_gif.c_gif_remove.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_gif.c_gif_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.gif_softc* }
%struct.gif_softc = type { i32, i32*, i32* }

@gif_mtx = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IFGIF_DETACHING = common dso_local global i32 0, align 4
@gifs = common dso_local global i32 0, align 4
@gif_link = common dso_local global i32 0, align 4
@ngif = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*)* @gif_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gif_remove(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.gif_softc*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  store i32 0, i32* %3, align 4
  store %struct.gif_softc* null, %struct.gif_softc** %4, align 8
  %5 = load i32, i32* @gif_mtx, align 4
  %6 = call i32 @lck_mtx_lock(i32 %5)
  %7 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %8 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %7, i32 0, i32 0
  %9 = load %struct.gif_softc*, %struct.gif_softc** %8, align 8
  store %struct.gif_softc* %9, %struct.gif_softc** %4, align 8
  %10 = load %struct.gif_softc*, %struct.gif_softc** %4, align 8
  %11 = icmp eq %struct.gif_softc* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %3, align 4
  br label %38

14:                                               ; preds = %1
  %15 = load %struct.gif_softc*, %struct.gif_softc** %4, align 8
  %16 = call i32 @GIF_LOCK(%struct.gif_softc* %15)
  %17 = load %struct.gif_softc*, %struct.gif_softc** %4, align 8
  %18 = getelementptr inbounds %struct.gif_softc, %struct.gif_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @IFGIF_DETACHING, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %3, align 4
  br label %38

25:                                               ; preds = %14
  %26 = load i32, i32* @IFGIF_DETACHING, align 4
  %27 = load %struct.gif_softc*, %struct.gif_softc** %4, align 8
  %28 = getelementptr inbounds %struct.gif_softc, %struct.gif_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.gif_softc*, %struct.gif_softc** %4, align 8
  %32 = load i32, i32* @gif_link, align 4
  %33 = call i32 @TAILQ_REMOVE(i32* @gifs, %struct.gif_softc* %31, i32 %32)
  %34 = load i32, i32* @ngif, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* @ngif, align 4
  %36 = load %struct.gif_softc*, %struct.gif_softc** %4, align 8
  %37 = call i32 @gif_delete_tunnel(%struct.gif_softc* %36)
  br label %38

38:                                               ; preds = %25, %23, %12
  %39 = load %struct.gif_softc*, %struct.gif_softc** %4, align 8
  %40 = icmp ne %struct.gif_softc* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load %struct.gif_softc*, %struct.gif_softc** %4, align 8
  %43 = call i32 @GIF_UNLOCK(%struct.gif_softc* %42)
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32, i32* @gif_mtx, align 4
  %46 = call i32 @lck_mtx_unlock(i32 %45)
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @GIF_LOCK(%struct.gif_softc*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.gif_softc*, i32) #1

declare dso_local i32 @gif_delete_tunnel(%struct.gif_softc*) #1

declare dso_local i32 @GIF_UNLOCK(%struct.gif_softc*) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
