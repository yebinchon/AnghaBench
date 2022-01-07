; ModuleID = '/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_frontend.c_netplay_settings_share_mode.c'
source_filename = "/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_frontend.c_netplay_settings_share_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@NETPLAY_SHARE_DIGITAL_OR = common dso_local global i32 0, align 4
@NETPLAY_SHARE_DIGITAL_XOR = common dso_local global i32 0, align 4
@NETPLAY_SHARE_DIGITAL_VOTE = common dso_local global i32 0, align 4
@NETPLAY_SHARE_NO_PREFERENCE = common dso_local global i32 0, align 4
@NETPLAY_SHARE_ANALOG_MAX = common dso_local global i32 0, align 4
@NETPLAY_SHARE_ANALOG_AVERAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netplay_settings_share_mode() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca i32, align 4
  %3 = call %struct.TYPE_5__* (...) @config_get_ptr()
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %1, align 8
  store i32 0, i32* %2, align 4
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %54

15:                                               ; preds = %9, %0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %32 [
    i32 130, label %20
    i32 128, label %24
    i32 129, label %28
  ]

20:                                               ; preds = %15
  %21 = load i32, i32* @NETPLAY_SHARE_DIGITAL_OR, align 4
  %22 = load i32, i32* %2, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %2, align 4
  br label %36

24:                                               ; preds = %15
  %25 = load i32, i32* @NETPLAY_SHARE_DIGITAL_XOR, align 4
  %26 = load i32, i32* %2, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %2, align 4
  br label %36

28:                                               ; preds = %15
  %29 = load i32, i32* @NETPLAY_SHARE_DIGITAL_VOTE, align 4
  %30 = load i32, i32* %2, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %2, align 4
  br label %36

32:                                               ; preds = %15
  %33 = load i32, i32* @NETPLAY_SHARE_NO_PREFERENCE, align 4
  %34 = load i32, i32* %2, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %32, %28, %24, %20
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %49 [
    i32 131, label %41
    i32 132, label %45
  ]

41:                                               ; preds = %36
  %42 = load i32, i32* @NETPLAY_SHARE_ANALOG_MAX, align 4
  %43 = load i32, i32* %2, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %2, align 4
  br label %53

45:                                               ; preds = %36
  %46 = load i32, i32* @NETPLAY_SHARE_ANALOG_AVERAGE, align 4
  %47 = load i32, i32* %2, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %2, align 4
  br label %53

49:                                               ; preds = %36
  %50 = load i32, i32* @NETPLAY_SHARE_NO_PREFERENCE, align 4
  %51 = load i32, i32* %2, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %49, %45, %41
  br label %54

54:                                               ; preds = %53, %9
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.TYPE_5__* @config_get_ptr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
