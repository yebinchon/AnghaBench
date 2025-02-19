; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/rsn_supp/extr_wpa.c_wpa_sm_ether_send.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/rsn_supp/extr_wpa.c_wpa_sm_ether_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i32 (i8*, i32)*, i32* }
%struct.l2_ethhdr = type { i32, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_sm*, i32*, i32, i32*, i64)* @wpa_sm_ether_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_sm_ether_send(%struct.wpa_sm* %0, i32* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.wpa_sm*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.l2_ethhdr*, align 8
  store %struct.wpa_sm* %0, %struct.wpa_sm** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 -12
  %15 = bitcast i32* %14 to i8*
  store i8* %15, i8** %11, align 8
  %16 = load i8*, i8** %11, align 8
  %17 = bitcast i8* %16 to %struct.l2_ethhdr*
  store %struct.l2_ethhdr* %17, %struct.l2_ethhdr** %12, align 8
  %18 = load %struct.l2_ethhdr*, %struct.l2_ethhdr** %12, align 8
  %19 = getelementptr inbounds %struct.l2_ethhdr, %struct.l2_ethhdr* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* @ETH_ALEN, align 4
  %23 = call i32 @memcpy(i32 %20, i32* %21, i32 %22)
  %24 = load %struct.l2_ethhdr*, %struct.l2_ethhdr** %12, align 8
  %25 = getelementptr inbounds %struct.l2_ethhdr, %struct.l2_ethhdr* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %28 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* @ETH_ALEN, align 4
  %31 = call i32 @memcpy(i32 %26, i32* %29, i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @host_to_be16(i32 %32)
  %34 = load %struct.l2_ethhdr*, %struct.l2_ethhdr** %12, align 8
  %35 = getelementptr inbounds %struct.l2_ethhdr, %struct.l2_ethhdr* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %37 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %36, i32 0, i32 0
  %38 = load i32 (i8*, i32)*, i32 (i8*, i32)** %37, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = load i64, i64* %10, align 8
  %41 = add i64 12, %40
  %42 = trunc i64 %41 to i32
  %43 = call i32 %38(i8* %39, i32 %42)
  ret i32 0
}

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @host_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
