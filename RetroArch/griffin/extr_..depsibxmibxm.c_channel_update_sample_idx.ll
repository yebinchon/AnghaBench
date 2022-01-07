; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..depsibxmibxm.c_channel_update_sample_idx.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..depsibxmibxm.c_channel_update_sample_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel = type { i32, i32, i64, %struct.sample* }
%struct.sample = type { i64, i32 }

@FP_SHIFT = common dso_local global i32 0, align 4
@FP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.channel*, i32, i32)* @channel_update_sample_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @channel_update_sample_idx(%struct.channel* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sample*, align 8
  %8 = alloca i32, align 4
  store %struct.channel* %0, %struct.channel** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.channel*, %struct.channel** %4, align 8
  %10 = getelementptr inbounds %struct.channel, %struct.channel* %9, i32 0, i32 3
  %11 = load %struct.sample*, %struct.sample** %10, align 8
  store %struct.sample* %11, %struct.sample** %7, align 8
  %12 = load %struct.channel*, %struct.channel** %4, align 8
  %13 = getelementptr inbounds %struct.channel, %struct.channel* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @FP_SHIFT, align 4
  %16 = sub nsw i32 %15, 3
  %17 = shl i32 %14, %16
  %18 = load i32, i32* %6, align 4
  %19 = ashr i32 %18, 3
  %20 = sdiv i32 %17, %19
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %5, align 4
  %23 = mul nsw i32 %21, %22
  %24 = load %struct.channel*, %struct.channel** %4, align 8
  %25 = getelementptr inbounds %struct.channel, %struct.channel* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.channel*, %struct.channel** %4, align 8
  %29 = getelementptr inbounds %struct.channel, %struct.channel* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @FP_SHIFT, align 4
  %32 = ashr i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = load %struct.channel*, %struct.channel** %4, align 8
  %35 = getelementptr inbounds %struct.channel, %struct.channel* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, %33
  store i64 %37, i64* %35, align 8
  %38 = load %struct.channel*, %struct.channel** %4, align 8
  %39 = getelementptr inbounds %struct.channel, %struct.channel* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.sample*, %struct.sample** %7, align 8
  %42 = getelementptr inbounds %struct.sample, %struct.sample* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %40, %43
  br i1 %44, label %45, label %76

45:                                               ; preds = %3
  %46 = load %struct.sample*, %struct.sample** %7, align 8
  %47 = getelementptr inbounds %struct.sample, %struct.sample* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %50, label %69

50:                                               ; preds = %45
  %51 = load %struct.sample*, %struct.sample** %7, align 8
  %52 = getelementptr inbounds %struct.sample, %struct.sample* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.channel*, %struct.channel** %4, align 8
  %55 = getelementptr inbounds %struct.channel, %struct.channel* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.sample*, %struct.sample** %7, align 8
  %58 = getelementptr inbounds %struct.sample, %struct.sample* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %56, %59
  %61 = load %struct.sample*, %struct.sample** %7, align 8
  %62 = getelementptr inbounds %struct.sample, %struct.sample* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = srem i64 %60, %64
  %66 = add nsw i64 %53, %65
  %67 = load %struct.channel*, %struct.channel** %4, align 8
  %68 = getelementptr inbounds %struct.channel, %struct.channel* %67, i32 0, i32 2
  store i64 %66, i64* %68, align 8
  br label %75

69:                                               ; preds = %45
  %70 = load %struct.sample*, %struct.sample** %7, align 8
  %71 = getelementptr inbounds %struct.sample, %struct.sample* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.channel*, %struct.channel** %4, align 8
  %74 = getelementptr inbounds %struct.channel, %struct.channel* %73, i32 0, i32 2
  store i64 %72, i64* %74, align 8
  br label %75

75:                                               ; preds = %69, %50
  br label %76

76:                                               ; preds = %75, %3
  %77 = load i32, i32* @FP_MASK, align 4
  %78 = load %struct.channel*, %struct.channel** %4, align 8
  %79 = getelementptr inbounds %struct.channel, %struct.channel* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, %77
  store i32 %81, i32* %79, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
