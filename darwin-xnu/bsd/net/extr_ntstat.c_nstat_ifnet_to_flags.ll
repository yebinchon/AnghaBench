; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_ifnet_to_flags.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_ifnet_to_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@IFRTYPE_FUNCTIONAL_LAST = common dso_local global i32 0, align 4
@NSTAT_IFNET_IS_UNKNOWN_TYPE = common dso_local global i32 0, align 4
@NSTAT_IFNET_IS_LOOPBACK = common dso_local global i32 0, align 4
@NSTAT_IFNET_IS_WIRED = common dso_local global i32 0, align 4
@NSTAT_IFNET_IS_WIFI = common dso_local global i32 0, align 4
@NSTAT_IFNET_IS_AWDL = common dso_local global i32 0, align 4
@NSTAT_IFNET_IS_CELLULAR = common dso_local global i32 0, align 4
@NSTAT_IFNET_IS_EXPENSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nstat_ifnet_to_flags(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %6 = load i32, i32* @FALSE, align 4
  %7 = call i32 @if_functional_type(%struct.ifnet* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp sle i32 0, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @IFRTYPE_FUNCTIONAL_LAST, align 4
  %13 = icmp sle i32 %11, %12
  br label %14

14:                                               ; preds = %10, %1
  %15 = phi i1 [ false, %1 ], [ %13, %10 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @VERIFY(i32 %16)
  %18 = load i32, i32* %4, align 4
  switch i32 %18, label %46 [
    i32 131, label %19
    i32 132, label %23
    i32 128, label %27
    i32 133, label %27
    i32 129, label %31
    i32 130, label %35
    i32 134, label %42
  ]

19:                                               ; preds = %14
  %20 = load i32, i32* @NSTAT_IFNET_IS_UNKNOWN_TYPE, align 4
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  br label %46

23:                                               ; preds = %14
  %24 = load i32, i32* @NSTAT_IFNET_IS_LOOPBACK, align 4
  %25 = load i32, i32* %3, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %3, align 4
  br label %46

27:                                               ; preds = %14, %14
  %28 = load i32, i32* @NSTAT_IFNET_IS_WIRED, align 4
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %3, align 4
  br label %46

31:                                               ; preds = %14
  %32 = load i32, i32* @NSTAT_IFNET_IS_WIFI, align 4
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  br label %46

35:                                               ; preds = %14
  %36 = load i32, i32* @NSTAT_IFNET_IS_WIFI, align 4
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* @NSTAT_IFNET_IS_AWDL, align 4
  %40 = load i32, i32* %3, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %3, align 4
  br label %46

42:                                               ; preds = %14
  %43 = load i32, i32* @NSTAT_IFNET_IS_CELLULAR, align 4
  %44 = load i32, i32* %3, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %14, %42, %35, %31, %27, %23, %19
  %47 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %48 = call i64 @IFNET_IS_EXPENSIVE(%struct.ifnet* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i32, i32* @NSTAT_IFNET_IS_EXPENSIVE, align 4
  %52 = load i32, i32* %3, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %50, %46
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @if_functional_type(%struct.ifnet*, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @IFNET_IS_EXPENSIVE(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
