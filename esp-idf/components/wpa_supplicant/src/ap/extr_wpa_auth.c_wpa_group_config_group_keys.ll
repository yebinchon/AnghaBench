; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/ap/extr_wpa_auth.c_wpa_group_config_group_keys.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/ap/extr_wpa_auth.c_wpa_group_config_group_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_authenticator = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.wpa_group = type { i32, i32, i32*, i32, i32, i32* }

@broadcast_ether_addr = common dso_local global i32* null, align 8
@NO_MGMT_FRAME_PROTECTION = common dso_local global i64 0, align 8
@WPA_ALG_IGTK = common dso_local global i32 0, align 4
@WPA_IGTK_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_authenticator*, %struct.wpa_group*)* @wpa_group_config_group_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_group_config_group_keys(%struct.wpa_authenticator* %0, %struct.wpa_group* %1) #0 {
  %3 = alloca %struct.wpa_authenticator*, align 8
  %4 = alloca %struct.wpa_group*, align 8
  %5 = alloca i32, align 4
  store %struct.wpa_authenticator* %0, %struct.wpa_authenticator** %3, align 8
  store %struct.wpa_group* %1, %struct.wpa_group** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %3, align 8
  %7 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %8 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %3, align 8
  %11 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @wpa_cipher_to_alg(i32 %13)
  %15 = load i32*, i32** @broadcast_ether_addr, align 8
  %16 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %17 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %20 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %19, i32 0, i32 5
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %23 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %21, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %30 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @wpa_auth_set_key(%struct.wpa_authenticator* %6, i32 %9, i32 %14, i32* %15, i32 %18, i32 %28, i32 %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  store i32 -1, i32* %5, align 4
  br label %35

35:                                               ; preds = %34, %2
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i64 @wpa_auth_set_key(%struct.wpa_authenticator*, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @wpa_cipher_to_alg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
