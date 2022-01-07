; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/classq/extr_classq_sfb.c_sfb_bin_mark_or_drop.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/classq/extr_classq_sfb.c_sfb_bin_mark_or_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfb = type { i32, i64, i64 }
%struct.sfbbinstats = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sfb*, %struct.sfbbinstats*)* @sfb_bin_mark_or_drop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfb_bin_mark_or_drop(%struct.sfb* %0, %struct.sfbbinstats* %1) #0 {
  %3 = alloca %struct.sfb*, align 8
  %4 = alloca %struct.sfbbinstats*, align 8
  %5 = alloca i32, align 4
  store %struct.sfb* %0, %struct.sfb** %3, align 8
  store %struct.sfbbinstats* %1, %struct.sfbbinstats** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.sfb*, %struct.sfb** %3, align 8
  %7 = call i64 @SFB_QUEUE_DELAYBASED(%struct.sfb* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %2
  %10 = load %struct.sfb*, %struct.sfb** %3, align 8
  %11 = call i64 @SFB_IS_DELAYHIGH(%struct.sfb* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = load %struct.sfbbinstats*, %struct.sfbbinstats** %4, align 8
  %15 = getelementptr inbounds %struct.sfbbinstats, %struct.sfbbinstats* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.sfb*, %struct.sfb** %3, align 8
  %18 = getelementptr inbounds %struct.sfb, %struct.sfb* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = shl i32 %19, 1
  %21 = icmp sge i32 %16, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  store i32 1, i32* %5, align 4
  br label %23

23:                                               ; preds = %22, %13, %9
  br label %42

24:                                               ; preds = %2
  %25 = load %struct.sfbbinstats*, %struct.sfbbinstats** %4, align 8
  %26 = getelementptr inbounds %struct.sfbbinstats, %struct.sfbbinstats* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.sfb*, %struct.sfb** %3, align 8
  %29 = getelementptr inbounds %struct.sfb, %struct.sfb* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp sge i64 %27, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %24
  %33 = load %struct.sfbbinstats*, %struct.sfbbinstats** %4, align 8
  %34 = getelementptr inbounds %struct.sfbbinstats, %struct.sfbbinstats* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.sfb*, %struct.sfb** %3, align 8
  %37 = getelementptr inbounds %struct.sfb, %struct.sfb* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp sge i64 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 1, i32* %5, align 4
  br label %41

41:                                               ; preds = %40, %32, %24
  br label %42

42:                                               ; preds = %41, %23
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i64 @SFB_QUEUE_DELAYBASED(%struct.sfb*) #1

declare dso_local i64 @SFB_IS_DELAYHIGH(%struct.sfb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
