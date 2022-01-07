; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/eap_peer/extr_eap.c_eap_get_config_password2.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/eap_peer/extr_eap.c_eap_get_config_password2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_peer_config = type { i64, i32, i32* }

@EAP_CONFIG_FLAGS_PASSWORD_NTHASH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @eap_get_config_password2(%struct.eap_sm* %0, i64* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.eap_peer_config*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %10 = call %struct.eap_peer_config* @eap_get_config(%struct.eap_sm* %9)
  store %struct.eap_peer_config* %10, %struct.eap_peer_config** %8, align 8
  %11 = load %struct.eap_peer_config*, %struct.eap_peer_config** %8, align 8
  %12 = icmp eq %struct.eap_peer_config* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %36

14:                                               ; preds = %3
  %15 = load %struct.eap_peer_config*, %struct.eap_peer_config** %8, align 8
  %16 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64*, i64** %6, align 8
  store i64 %17, i64* %18, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %14
  %22 = load %struct.eap_peer_config*, %struct.eap_peer_config** %8, align 8
  %23 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @EAP_CONFIG_FLAGS_PASSWORD_NTHASH, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = load i32*, i32** %7, align 8
  store i32 %30, i32* %31, align 4
  br label %32

32:                                               ; preds = %21, %14
  %33 = load %struct.eap_peer_config*, %struct.eap_peer_config** %8, align 8
  %34 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %4, align 8
  br label %36

36:                                               ; preds = %32, %13
  %37 = load i32*, i32** %4, align 8
  ret i32* %37
}

declare dso_local %struct.eap_peer_config* @eap_get_config(%struct.eap_sm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
