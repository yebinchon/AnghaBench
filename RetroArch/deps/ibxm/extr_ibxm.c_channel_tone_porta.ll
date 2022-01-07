; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/ibxm/extr_ibxm.c_channel_tone_porta.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/ibxm/extr_ibxm.c_channel_tone_porta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.channel*)* @channel_tone_porta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @channel_tone_porta(%struct.channel* %0) #0 {
  %2 = alloca %struct.channel*, align 8
  store %struct.channel* %0, %struct.channel** %2, align 8
  %3 = load %struct.channel*, %struct.channel** %2, align 8
  %4 = getelementptr inbounds %struct.channel, %struct.channel* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %7, label %64

7:                                                ; preds = %1
  %8 = load %struct.channel*, %struct.channel** %2, align 8
  %9 = getelementptr inbounds %struct.channel, %struct.channel* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.channel*, %struct.channel** %2, align 8
  %12 = getelementptr inbounds %struct.channel, %struct.channel* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %10, %13
  br i1 %14, label %15, label %39

15:                                               ; preds = %7
  %16 = load %struct.channel*, %struct.channel** %2, align 8
  %17 = getelementptr inbounds %struct.channel, %struct.channel* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = shl i32 %18, 2
  %20 = sext i32 %19 to i64
  %21 = load %struct.channel*, %struct.channel** %2, align 8
  %22 = getelementptr inbounds %struct.channel, %struct.channel* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, %20
  store i64 %24, i64* %22, align 8
  %25 = load %struct.channel*, %struct.channel** %2, align 8
  %26 = getelementptr inbounds %struct.channel, %struct.channel* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.channel*, %struct.channel** %2, align 8
  %29 = getelementptr inbounds %struct.channel, %struct.channel* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %27, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %15
  %33 = load %struct.channel*, %struct.channel** %2, align 8
  %34 = getelementptr inbounds %struct.channel, %struct.channel* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.channel*, %struct.channel** %2, align 8
  %37 = getelementptr inbounds %struct.channel, %struct.channel* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %32, %15
  br label %63

39:                                               ; preds = %7
  %40 = load %struct.channel*, %struct.channel** %2, align 8
  %41 = getelementptr inbounds %struct.channel, %struct.channel* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = shl i32 %42, 2
  %44 = sext i32 %43 to i64
  %45 = load %struct.channel*, %struct.channel** %2, align 8
  %46 = getelementptr inbounds %struct.channel, %struct.channel* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %47, %44
  store i64 %48, i64* %46, align 8
  %49 = load %struct.channel*, %struct.channel** %2, align 8
  %50 = getelementptr inbounds %struct.channel, %struct.channel* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.channel*, %struct.channel** %2, align 8
  %53 = getelementptr inbounds %struct.channel, %struct.channel* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %51, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %39
  %57 = load %struct.channel*, %struct.channel** %2, align 8
  %58 = getelementptr inbounds %struct.channel, %struct.channel* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.channel*, %struct.channel** %2, align 8
  %61 = getelementptr inbounds %struct.channel, %struct.channel* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  br label %62

62:                                               ; preds = %56, %39
  br label %63

63:                                               ; preds = %62, %38
  br label %64

64:                                               ; preds = %63, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
