; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/eap_peer/extr_eap.c_eap_peer_config_deinit.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/eap_peer/extr_eap.c_eap_peer_config_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eap_peer_config_deinit(%struct.eap_sm* %0) #0 {
  %2 = alloca %struct.eap_sm*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %2, align 8
  %3 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %4 = icmp ne %struct.eap_sm* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %30

6:                                                ; preds = %1
  %7 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %8 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @os_free(i32 %10)
  %12 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %13 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @os_free(i32 %15)
  %17 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %18 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @os_free(i32 %20)
  %22 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %23 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @os_free(i32 %25)
  %27 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %28 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %27, i32 0, i32 0
  %29 = call i32 @os_bzero(%struct.TYPE_2__* %28, i32 4)
  br label %30

30:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @os_free(i32) #1

declare dso_local i32 @os_bzero(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
