; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_cred_update.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_cred_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_credential = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wps_credential*, %struct.wps_credential*)* @wps_cred_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wps_cred_update(%struct.wps_credential* %0, %struct.wps_credential* %1) #0 {
  %3 = alloca %struct.wps_credential*, align 8
  %4 = alloca %struct.wps_credential*, align 8
  store %struct.wps_credential* %0, %struct.wps_credential** %3, align 8
  store %struct.wps_credential* %1, %struct.wps_credential** %4, align 8
  %5 = load %struct.wps_credential*, %struct.wps_credential** %3, align 8
  %6 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.wps_credential*, %struct.wps_credential** %4, align 8
  %9 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @os_memcpy(i32 %7, i32 %10, i32 4)
  %12 = load %struct.wps_credential*, %struct.wps_credential** %4, align 8
  %13 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.wps_credential*, %struct.wps_credential** %3, align 8
  %16 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %15, i32 0, i32 5
  store i32 %14, i32* %16, align 4
  %17 = load %struct.wps_credential*, %struct.wps_credential** %4, align 8
  %18 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.wps_credential*, %struct.wps_credential** %3, align 8
  %21 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 4
  %22 = load %struct.wps_credential*, %struct.wps_credential** %4, align 8
  %23 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.wps_credential*, %struct.wps_credential** %3, align 8
  %26 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.wps_credential*, %struct.wps_credential** %4, align 8
  %28 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.wps_credential*, %struct.wps_credential** %3, align 8
  %31 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.wps_credential*, %struct.wps_credential** %3, align 8
  %33 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.wps_credential*, %struct.wps_credential** %4, align 8
  %36 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @os_memcpy(i32 %34, i32 %37, i32 4)
  %39 = load %struct.wps_credential*, %struct.wps_credential** %4, align 8
  %40 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.wps_credential*, %struct.wps_credential** %3, align 8
  %43 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  ret void
}

declare dso_local i32 @os_memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
