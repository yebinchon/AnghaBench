; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/ibxm/extr_ibxm.c_channel_tremor.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/ibxm/extr_ibxm.c_channel_tremor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel = type { i64, i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.channel*)* @channel_tremor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @channel_tremor(%struct.channel* %0) #0 {
  %2 = alloca %struct.channel*, align 8
  store %struct.channel* %0, %struct.channel** %2, align 8
  %3 = load %struct.channel*, %struct.channel** %2, align 8
  %4 = getelementptr inbounds %struct.channel, %struct.channel* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.channel*, %struct.channel** %2, align 8
  %7 = getelementptr inbounds %struct.channel, %struct.channel* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp sge i64 %5, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.channel*, %struct.channel** %2, align 8
  %12 = getelementptr inbounds %struct.channel, %struct.channel* %11, i32 0, i32 2
  store i32 -64, i32* %12, align 8
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.channel*, %struct.channel** %2, align 8
  %15 = getelementptr inbounds %struct.channel, %struct.channel* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.channel*, %struct.channel** %2, align 8
  %18 = getelementptr inbounds %struct.channel, %struct.channel* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.channel*, %struct.channel** %2, align 8
  %21 = getelementptr inbounds %struct.channel, %struct.channel* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  %24 = icmp sge i64 %16, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %13
  %26 = load %struct.channel*, %struct.channel** %2, align 8
  %27 = getelementptr inbounds %struct.channel, %struct.channel* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.channel*, %struct.channel** %2, align 8
  %29 = getelementptr inbounds %struct.channel, %struct.channel* %28, i32 0, i32 2
  store i32 0, i32* %29, align 8
  br label %30

30:                                               ; preds = %25, %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
