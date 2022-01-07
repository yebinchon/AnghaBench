; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_multi.c_domore_getsock.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_multi.c_domore_getsock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@GETSOCK_BLANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*, i32*)* @domore_getsock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @domore_getsock(%struct.connectdata* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i32*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %7 = icmp ne %struct.connectdata* %6, null
  br i1 %7, label %8, label %26

8:                                                ; preds = %2
  %9 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %10 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = bitcast {}** %12 to i32 (%struct.connectdata*, i32*)**
  %14 = load i32 (%struct.connectdata*, i32*)*, i32 (%struct.connectdata*, i32*)** %13, align 8
  %15 = icmp ne i32 (%struct.connectdata*, i32*)* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %8
  %17 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %18 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = bitcast {}** %20 to i32 (%struct.connectdata*, i32*)**
  %22 = load i32 (%struct.connectdata*, i32*)*, i32 (%struct.connectdata*, i32*)** %21, align 8
  %23 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 %22(%struct.connectdata* %23, i32* %24)
  store i32 %25, i32* %3, align 4
  br label %28

26:                                               ; preds = %8, %2
  %27 = load i32, i32* @GETSOCK_BLANK, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %26, %16
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
