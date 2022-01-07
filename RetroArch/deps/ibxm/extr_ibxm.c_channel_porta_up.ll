; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/ibxm/extr_ibxm.c_channel_porta_up.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/ibxm/extr_ibxm.c_channel_porta_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.channel*, i32)* @channel_porta_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @channel_porta_up(%struct.channel* %0, i32 %1) #0 {
  %3 = alloca %struct.channel*, align 8
  %4 = alloca i32, align 4
  store %struct.channel* %0, %struct.channel** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, 240
  switch i32 %6, label %36 [
    i32 224, label %7
    i32 240, label %21
  ]

7:                                                ; preds = %2
  %8 = load %struct.channel*, %struct.channel** %3, align 8
  %9 = getelementptr inbounds %struct.channel, %struct.channel* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %7
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, 15
  %15 = sext i32 %14 to i64
  %16 = load %struct.channel*, %struct.channel** %3, align 8
  %17 = getelementptr inbounds %struct.channel, %struct.channel* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %18, %15
  store i64 %19, i64* %17, align 8
  br label %20

20:                                               ; preds = %12, %7
  br label %50

21:                                               ; preds = %2
  %22 = load %struct.channel*, %struct.channel** %3, align 8
  %23 = getelementptr inbounds %struct.channel, %struct.channel* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, 15
  %29 = shl i32 %28, 2
  %30 = sext i32 %29 to i64
  %31 = load %struct.channel*, %struct.channel** %3, align 8
  %32 = getelementptr inbounds %struct.channel, %struct.channel* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %33, %30
  store i64 %34, i64* %32, align 8
  br label %35

35:                                               ; preds = %26, %21
  br label %50

36:                                               ; preds = %2
  %37 = load %struct.channel*, %struct.channel** %3, align 8
  %38 = getelementptr inbounds %struct.channel, %struct.channel* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load i32, i32* %4, align 4
  %43 = shl i32 %42, 2
  %44 = sext i32 %43 to i64
  %45 = load %struct.channel*, %struct.channel** %3, align 8
  %46 = getelementptr inbounds %struct.channel, %struct.channel* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %47, %44
  store i64 %48, i64* %46, align 8
  br label %49

49:                                               ; preds = %41, %36
  br label %50

50:                                               ; preds = %49, %35, %20
  %51 = load %struct.channel*, %struct.channel** %3, align 8
  %52 = getelementptr inbounds %struct.channel, %struct.channel* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.channel*, %struct.channel** %3, align 8
  %57 = getelementptr inbounds %struct.channel, %struct.channel* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %55, %50
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
