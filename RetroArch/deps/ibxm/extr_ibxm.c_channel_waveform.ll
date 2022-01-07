; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/ibxm/extr_ibxm.c_channel_waveform.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/ibxm/extr_ibxm.c_channel_waveform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel = type { i32 }

@sine_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.channel*, i32, i32)* @channel_waveform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @channel_waveform(%struct.channel* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.channel* %0, %struct.channel** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %9 [
    i32 6, label %23
    i32 1, label %29
    i32 7, label %29
    i32 2, label %35
    i32 5, label %35
    i32 3, label %41
    i32 8, label %41
  ]

9:                                                ; preds = %3
  %10 = load i32*, i32** @sine_table, align 8
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, 31
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %10, i64 %13
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 32
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %9
  %20 = load i32, i32* %7, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %19, %9
  br label %55

23:                                               ; preds = %3
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 32
  %26 = and i32 %25, 63
  %27 = shl i32 %26, 3
  %28 = sub nsw i32 %27, 255
  store i32 %28, i32* %7, align 4
  br label %55

29:                                               ; preds = %3, %3
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 32
  %32 = and i32 %31, 63
  %33 = shl i32 %32, 3
  %34 = sub nsw i32 255, %33
  store i32 %34, i32* %7, align 4
  br label %55

35:                                               ; preds = %3, %3
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, 32
  %38 = icmp sgt i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 255, i32 -255
  store i32 %40, i32* %7, align 4
  br label %55

41:                                               ; preds = %3, %3
  %42 = load %struct.channel*, %struct.channel** %4, align 8
  %43 = getelementptr inbounds %struct.channel, %struct.channel* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %44, 20
  %46 = sub nsw i32 %45, 255
  store i32 %46, i32* %7, align 4
  %47 = load %struct.channel*, %struct.channel** %4, align 8
  %48 = getelementptr inbounds %struct.channel, %struct.channel* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %49, 65
  %51 = add nsw i32 %50, 17
  %52 = and i32 %51, 536870911
  %53 = load %struct.channel*, %struct.channel** %4, align 8
  %54 = getelementptr inbounds %struct.channel, %struct.channel* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %41, %35, %29, %23, %22
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
