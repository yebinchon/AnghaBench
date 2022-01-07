; ModuleID = '/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_keyboard.c_netplay_key_hton_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_keyboard.c_netplay_key_hton_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mapping_defined = common dso_local global i32 0, align 4
@NETPLAY_KEY_LAST = common dso_local global i64 0, align 8
@mapping = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netplay_key_hton_init() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @mapping_defined, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %19, label %4

4:                                                ; preds = %0
  store i64 0, i64* %1, align 8
  br label %5

5:                                                ; preds = %15, %4
  %6 = load i64, i64* %1, align 8
  %7 = load i64, i64* @NETPLAY_KEY_LAST, align 8
  %8 = icmp slt i64 %6, %7
  br i1 %8, label %9, label %18

9:                                                ; preds = %5
  %10 = load i64, i64* %1, align 8
  %11 = load i64*, i64** @mapping, align 8
  %12 = load i64, i64* %1, align 8
  %13 = call i64 @netplay_key_ntoh(i64 %12)
  %14 = getelementptr inbounds i64, i64* %11, i64 %13
  store i64 %10, i64* %14, align 8
  br label %15

15:                                               ; preds = %9
  %16 = load i64, i64* %1, align 8
  %17 = add nsw i64 %16, 1
  store i64 %17, i64* %1, align 8
  br label %5

18:                                               ; preds = %5
  store i32 1, i32* @mapping_defined, align 4
  br label %19

19:                                               ; preds = %18, %0
  ret void
}

declare dso_local i64 @netplay_key_ntoh(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
