; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_cb_reg_success.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_cb_reg_success.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_registrar = type { i32, i32 (i32, i32*, i32*, i32*, i64)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wps_registrar*, i32*, i32*, i32*, i64)* @wps_cb_reg_success to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wps_cb_reg_success(%struct.wps_registrar* %0, i32* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.wps_registrar*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.wps_registrar* %0, %struct.wps_registrar** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load %struct.wps_registrar*, %struct.wps_registrar** %6, align 8
  %12 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %11, i32 0, i32 1
  %13 = load i32 (i32, i32*, i32*, i32*, i64)*, i32 (i32, i32*, i32*, i32*, i64)** %12, align 8
  %14 = icmp eq i32 (i32, i32*, i32*, i32*, i64)* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  br label %28

16:                                               ; preds = %5
  %17 = load %struct.wps_registrar*, %struct.wps_registrar** %6, align 8
  %18 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %17, i32 0, i32 1
  %19 = load i32 (i32, i32*, i32*, i32*, i64)*, i32 (i32, i32*, i32*, i32*, i64)** %18, align 8
  %20 = load %struct.wps_registrar*, %struct.wps_registrar** %6, align 8
  %21 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = load i64, i64* %10, align 8
  %27 = call i32 %19(i32 %22, i32* %23, i32* %24, i32* %25, i64 %26)
  br label %28

28:                                               ; preds = %16, %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
