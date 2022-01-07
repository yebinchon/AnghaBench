; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/linux/extr_xenv.c_x11h_minimize.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/linux/extr_xenv.c_x11h_minimize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 (i32*, %struct.TYPE_11__*)*, i32 (i32*, i32)*, i32 (i32*, i32, i32*)*, i32 (i32*, i32, i32, i32, i32, i32)*, i32 (i32*, i32)*, i32 (i32*, i32, i32, i32, i32, i32)*, i32 (i32*, i32, i32, %struct.TYPE_10__*)*, i32 (i32*, i32, i32)*, i32 (i32*, i32, %struct.TYPE_9__*)*, i32*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

@g_xstuff = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@False = common dso_local global i32 0, align 4
@CWOverrideRedirect = common dso_local global i32 0, align 4
@StateHint = common dso_local global i32 0, align 4
@IconicState = common dso_local global i32 0, align 4
@True = common dso_local global i32 0, align 4
@GrabModeAsync = common dso_local global i32 0, align 4
@CurrentTime = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @x11h_minimize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x11h_minimize() #0 {
  %1 = alloca %struct.TYPE_10__, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__, align 4
  %8 = alloca %struct.TYPE_11__, align 4
  %9 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @g_xstuff, i32 0, i32 9), align 8
  store i32* %9, i32** %2, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @g_xstuff, i32 0, i32 10), align 8
  store i32 %10, i32* %3, align 4
  %11 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @g_xstuff, i32 0, i32 9), align 8
  %12 = call i32 @DefaultScreen(i32* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @g_xstuff, i32 0, i32 7), align 8
  %14 = load i32*, i32** %2, align 8
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 %13(i32* %14, i32 %15, i32 %16)
  %18 = load i32, i32* @False, align 4
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load i32 (i32*, i32, i32, %struct.TYPE_10__*)*, i32 (i32*, i32, i32, %struct.TYPE_10__*)** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @g_xstuff, i32 0, i32 6), align 8
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @CWOverrideRedirect, align 4
  %24 = call i32 %20(i32* %21, i32 %22, i32 %23, %struct.TYPE_10__* %1)
  %25 = load i32, i32* @StateHint, align 4
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @IconicState, align 4
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load i32 (i32*, i32, %struct.TYPE_9__*)*, i32 (i32*, i32, %struct.TYPE_9__*)** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @g_xstuff, i32 0, i32 8), align 8
  %30 = load i32*, i32** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i32 %29(i32* %30, i32 %31, %struct.TYPE_9__* %7)
  %33 = load i32 (i32*, i32)*, i32 (i32*, i32)** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @g_xstuff, i32 0, i32 4), align 8
  %34 = load i32*, i32** %2, align 8
  %35 = load i32, i32* %3, align 4
  %36 = call i32 %33(i32* %34, i32 %35)
  br label %37

37:                                               ; preds = %47, %0
  %38 = load i64 (i32*, %struct.TYPE_11__*)*, i64 (i32*, %struct.TYPE_11__*)** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @g_xstuff, i32 0, i32 0), align 8
  %39 = load i32*, i32** %2, align 8
  %40 = call i64 %38(i32* %39, %struct.TYPE_11__* %8)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %46 [
    i32 128, label %45
  ]

45:                                               ; preds = %42
  br label %49

46:                                               ; preds = %42
  br label %47

47:                                               ; preds = %46
  br label %37

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48, %45
  %50 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @g_xstuff, i32 0, i32 7), align 8
  %51 = load i32*, i32** %2, align 8
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 %50(i32* %51, i32 %52, i32 %53)
  %55 = call i32 (...) @x11h_wait_vmstate()
  %56 = load i32, i32* @True, align 4
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  store i32 %56, i32* %57, align 4
  %58 = load i32 (i32*, i32, i32, %struct.TYPE_10__*)*, i32 (i32*, i32, i32, %struct.TYPE_10__*)** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @g_xstuff, i32 0, i32 6), align 8
  %59 = load i32*, i32** %2, align 8
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @CWOverrideRedirect, align 4
  %62 = call i32 %58(i32* %59, i32 %60, i32 %61, %struct.TYPE_10__* %1)
  %63 = load i32*, i32** %2, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @DisplayWidth(i32* %63, i32 %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32*, i32** %2, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @DisplayHeight(i32* %66, i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32 (i32*, i32, i32, i32, i32, i32)*, i32 (i32*, i32, i32, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @g_xstuff, i32 0, i32 5), align 8
  %70 = load i32*, i32** %2, align 8
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 %69(i32* %70, i32 %71, i32 0, i32 0, i32 %72, i32 %73)
  %75 = load i32 (i32*, i32)*, i32 (i32*, i32)** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @g_xstuff, i32 0, i32 4), align 8
  %76 = load i32*, i32** %2, align 8
  %77 = load i32, i32* %3, align 4
  %78 = call i32 %75(i32* %76, i32 %77)
  %79 = load i32 (i32*, i32, i32, i32, i32, i32)*, i32 (i32*, i32, i32, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @g_xstuff, i32 0, i32 3), align 8
  %80 = load i32*, i32** %2, align 8
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* @False, align 4
  %83 = load i32, i32* @GrabModeAsync, align 4
  %84 = load i32, i32* @GrabModeAsync, align 4
  %85 = load i32, i32* @CurrentTime, align 4
  %86 = call i32 %79(i32* %80, i32 %81, i32 %82, i32 %83, i32 %84, i32 %85)
  %87 = load i32 (i32*, i32, i32*)*, i32 (i32*, i32, i32*)** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @g_xstuff, i32 0, i32 2), align 8
  %88 = load i32*, i32** %2, align 8
  %89 = call i32 %87(i32* %88, i32 1, i32* null)
  %90 = load i32 (i32*, i32)*, i32 (i32*, i32)** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @g_xstuff, i32 0, i32 1), align 8
  %91 = load i32*, i32** %2, align 8
  %92 = load i32, i32* @False, align 4
  %93 = call i32 %90(i32* %91, i32 %92)
  ret i32 0
}

declare dso_local i32 @DefaultScreen(i32*) #1

declare dso_local i32 @x11h_wait_vmstate(...) #1

declare dso_local i32 @DisplayWidth(i32*, i32) #1

declare dso_local i32 @DisplayHeight(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
