; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/ibxm/extr_ibxm.c_channel_porta_down.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/ibxm/extr_ibxm.c_channel_porta_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.channel*, i32)* @channel_porta_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @channel_porta_down(%struct.channel* %0, i32 %1) #0 {
  %3 = alloca %struct.channel*, align 8
  %4 = alloca i32, align 4
  store %struct.channel* %0, %struct.channel** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.channel*, %struct.channel** %3, align 8
  %6 = getelementptr inbounds %struct.channel, %struct.channel* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %61

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, 240
  switch i32 %11, label %39 [
    i32 224, label %12
    i32 240, label %25
  ]

12:                                               ; preds = %9
  %13 = load %struct.channel*, %struct.channel** %3, align 8
  %14 = getelementptr inbounds %struct.channel, %struct.channel* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, 15
  %20 = load %struct.channel*, %struct.channel** %3, align 8
  %21 = getelementptr inbounds %struct.channel, %struct.channel* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, %19
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %17, %12
  br label %52

25:                                               ; preds = %9
  %26 = load %struct.channel*, %struct.channel** %3, align 8
  %27 = getelementptr inbounds %struct.channel, %struct.channel* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, 15
  %33 = shl i32 %32, 2
  %34 = load %struct.channel*, %struct.channel** %3, align 8
  %35 = getelementptr inbounds %struct.channel, %struct.channel* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %30, %25
  br label %52

39:                                               ; preds = %9
  %40 = load %struct.channel*, %struct.channel** %3, align 8
  %41 = getelementptr inbounds %struct.channel, %struct.channel* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load i32, i32* %4, align 4
  %46 = shl i32 %45, 2
  %47 = load %struct.channel*, %struct.channel** %3, align 8
  %48 = getelementptr inbounds %struct.channel, %struct.channel* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %44, %39
  br label %52

52:                                               ; preds = %51, %38, %24
  %53 = load %struct.channel*, %struct.channel** %3, align 8
  %54 = getelementptr inbounds %struct.channel, %struct.channel* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp sgt i32 %55, 65535
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load %struct.channel*, %struct.channel** %3, align 8
  %59 = getelementptr inbounds %struct.channel, %struct.channel* %58, i32 0, i32 0
  store i32 65535, i32* %59, align 4
  br label %60

60:                                               ; preds = %57, %52
  br label %61

61:                                               ; preds = %60, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
