; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/ap/extr_ap_config.c_hostapd_wep_key_cmp.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/ap/extr_ap_config.c_hostapd_wep_key_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_wep_keys = type { i64, i64, i64*, i32* }

@NUM_WEP_KEYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostapd_wep_key_cmp(%struct.hostapd_wep_keys* %0, %struct.hostapd_wep_keys* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hostapd_wep_keys*, align 8
  %5 = alloca %struct.hostapd_wep_keys*, align 8
  %6 = alloca i32, align 4
  store %struct.hostapd_wep_keys* %0, %struct.hostapd_wep_keys** %4, align 8
  store %struct.hostapd_wep_keys* %1, %struct.hostapd_wep_keys** %5, align 8
  %7 = load %struct.hostapd_wep_keys*, %struct.hostapd_wep_keys** %4, align 8
  %8 = getelementptr inbounds %struct.hostapd_wep_keys, %struct.hostapd_wep_keys* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.hostapd_wep_keys*, %struct.hostapd_wep_keys** %5, align 8
  %11 = getelementptr inbounds %struct.hostapd_wep_keys, %struct.hostapd_wep_keys* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %9, %12
  br i1 %13, label %22, label %14

14:                                               ; preds = %2
  %15 = load %struct.hostapd_wep_keys*, %struct.hostapd_wep_keys** %4, align 8
  %16 = getelementptr inbounds %struct.hostapd_wep_keys, %struct.hostapd_wep_keys* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.hostapd_wep_keys*, %struct.hostapd_wep_keys** %5, align 8
  %19 = getelementptr inbounds %struct.hostapd_wep_keys, %struct.hostapd_wep_keys* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14, %2
  store i32 1, i32* %3, align 4
  br label %74

23:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %70, %23
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @NUM_WEP_KEYS, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %73

28:                                               ; preds = %24
  %29 = load %struct.hostapd_wep_keys*, %struct.hostapd_wep_keys** %4, align 8
  %30 = getelementptr inbounds %struct.hostapd_wep_keys, %struct.hostapd_wep_keys* %29, i32 0, i32 2
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.hostapd_wep_keys*, %struct.hostapd_wep_keys** %5, align 8
  %37 = getelementptr inbounds %struct.hostapd_wep_keys, %struct.hostapd_wep_keys* %36, i32 0, i32 2
  %38 = load i64*, i64** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %35, %42
  br i1 %43, label %68, label %44

44:                                               ; preds = %28
  %45 = load %struct.hostapd_wep_keys*, %struct.hostapd_wep_keys** %4, align 8
  %46 = getelementptr inbounds %struct.hostapd_wep_keys, %struct.hostapd_wep_keys* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.hostapd_wep_keys*, %struct.hostapd_wep_keys** %5, align 8
  %53 = getelementptr inbounds %struct.hostapd_wep_keys, %struct.hostapd_wep_keys* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.hostapd_wep_keys*, %struct.hostapd_wep_keys** %4, align 8
  %60 = getelementptr inbounds %struct.hostapd_wep_keys, %struct.hostapd_wep_keys* %59, i32 0, i32 2
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = call i64 @memcmp(i32 %51, i32 %58, i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %44, %28
  store i32 1, i32* %3, align 4
  br label %74

69:                                               ; preds = %44
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %24

73:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %68, %22
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i64 @memcmp(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
