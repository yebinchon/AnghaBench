; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/ibxm/extr_ibxm.c_channel_vibrato.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/ibxm/extr_ibxm.c_channel_vibrato.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.channel*, i32)* @channel_vibrato to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @channel_vibrato(%struct.channel* %0, i32 %1) #0 {
  %3 = alloca %struct.channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.channel* %0, %struct.channel** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.channel*, %struct.channel** %3, align 8
  %7 = load %struct.channel*, %struct.channel** %3, align 8
  %8 = getelementptr inbounds %struct.channel, %struct.channel* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.channel*, %struct.channel** %3, align 8
  %11 = getelementptr inbounds %struct.channel, %struct.channel* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, 3
  %14 = call i32 @channel_waveform(%struct.channel* %6, i32 %9, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.channel*, %struct.channel** %3, align 8
  %17 = getelementptr inbounds %struct.channel, %struct.channel* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %15, %18
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 7, i32 5
  %24 = ashr i32 %19, %23
  %25 = load %struct.channel*, %struct.channel** %3, align 8
  %26 = getelementptr inbounds %struct.channel, %struct.channel* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  ret void
}

declare dso_local i32 @channel_waveform(%struct.channel*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
