; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..depsibxmibxm.c_channel_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..depsibxmibxm.c_channel_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel = type { i32, i32, %struct.TYPE_4__*, i32*, i32, %struct.replay* }
%struct.TYPE_4__ = type { i32* }
%struct.replay = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.channel*, %struct.replay*, i32)* @channel_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @channel_init(%struct.channel* %0, %struct.replay* %1, i32 %2) #0 {
  %4 = alloca %struct.channel*, align 8
  %5 = alloca %struct.replay*, align 8
  %6 = alloca i32, align 4
  store %struct.channel* %0, %struct.channel** %4, align 8
  store %struct.replay* %1, %struct.replay** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.channel*, %struct.channel** %4, align 8
  %8 = call i32 @memset(%struct.channel* %7, i32 0, i32 40)
  %9 = load %struct.replay*, %struct.replay** %5, align 8
  %10 = load %struct.channel*, %struct.channel** %4, align 8
  %11 = getelementptr inbounds %struct.channel, %struct.channel* %10, i32 0, i32 5
  store %struct.replay* %9, %struct.replay** %11, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.channel*, %struct.channel** %4, align 8
  %14 = getelementptr inbounds %struct.channel, %struct.channel* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.replay*, %struct.replay** %5, align 8
  %16 = getelementptr inbounds %struct.replay, %struct.replay* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.channel*, %struct.channel** %4, align 8
  %25 = getelementptr inbounds %struct.channel, %struct.channel* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  %26 = load %struct.replay*, %struct.replay** %5, align 8
  %27 = getelementptr inbounds %struct.replay, %struct.replay* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 0
  %32 = load %struct.channel*, %struct.channel** %4, align 8
  %33 = getelementptr inbounds %struct.channel, %struct.channel* %32, i32 0, i32 2
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %33, align 8
  %34 = load %struct.channel*, %struct.channel** %4, align 8
  %35 = getelementptr inbounds %struct.channel, %struct.channel* %34, i32 0, i32 2
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load %struct.channel*, %struct.channel** %4, align 8
  %41 = getelementptr inbounds %struct.channel, %struct.channel* %40, i32 0, i32 3
  store i32* %39, i32** %41, align 8
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  %44 = mul nsw i32 %43, 11259375
  %45 = load %struct.channel*, %struct.channel** %4, align 8
  %46 = getelementptr inbounds %struct.channel, %struct.channel* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  ret void
}

declare dso_local i32 @memset(%struct.channel*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
