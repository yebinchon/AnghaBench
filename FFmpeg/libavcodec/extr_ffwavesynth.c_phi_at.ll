; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ffwavesynth.c_phi_at.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ffwavesynth.c_phi_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ws_interval = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ws_interval*, i32)* @phi_at to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phi_at(%struct.ws_interval* %0, i32 %1) #0 {
  %3 = alloca %struct.ws_interval*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ws_interval* %0, %struct.ws_interval** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.ws_interval*, %struct.ws_interval** %3, align 8
  %9 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sub nsw i32 %7, %10
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 1
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = sub nsw i32 %17, 1
  %19 = ashr i32 %18, 1
  %20 = mul nsw i32 %16, %19
  br label %27

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = ashr i32 %22, 1
  %24 = load i32, i32* %5, align 4
  %25 = sub nsw i32 %24, 1
  %26 = mul nsw i32 %23, %25
  br label %27

27:                                               ; preds = %21, %15
  %28 = phi i32 [ %20, %15 ], [ %26, %21 ]
  store i32 %28, i32* %6, align 4
  %29 = load %struct.ws_interval*, %struct.ws_interval** %3, align 8
  %30 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.ws_interval*, %struct.ws_interval** %3, align 8
  %34 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %32, %35
  %37 = add nsw i32 %31, %36
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.ws_interval*, %struct.ws_interval** %3, align 8
  %40 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %38, %41
  %43 = add nsw i32 %37, %42
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
