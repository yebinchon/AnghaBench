; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_pflog.c_pflogioctl.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_pflog.c_pflogioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_RUNNING = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i64, i8*)* @pflogioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pflogioctl(%struct.ifnet* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i64, i64* %6, align 8
  switch i64 %8, label %25 [
    i64 130, label %9
    i64 131, label %9
    i64 129, label %9
    i64 128, label %9
  ]

9:                                                ; preds = %3, %3, %3, %3
  %10 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %11 = call i32 @ifnet_flags(%struct.ifnet* %10)
  %12 = load i32, i32* @IFF_UP, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %9
  %16 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %17 = load i32, i32* @IFF_RUNNING, align 4
  %18 = load i32, i32* @IFF_RUNNING, align 4
  %19 = call i32 @ifnet_set_flags(%struct.ifnet* %16, i32 %17, i32 %18)
  br label %24

20:                                               ; preds = %9
  %21 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %22 = load i32, i32* @IFF_RUNNING, align 4
  %23 = call i32 @ifnet_set_flags(%struct.ifnet* %21, i32 0, i32 %22)
  br label %24

24:                                               ; preds = %20, %15
  br label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @ENOTTY, align 4
  store i32 %26, i32* %4, align 4
  br label %28

27:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %27, %25
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @ifnet_flags(%struct.ifnet*) #1

declare dso_local i32 @ifnet_set_flags(%struct.ifnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
