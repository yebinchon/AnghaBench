; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/rsn_supp/extr_wpa.c_wpa_sm_set_pmk.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/rsn_supp/extr_wpa.c_wpa_sm_set_pmk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i64, i64, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpa_sm_set_pmk(%struct.wpa_sm* %0, i32* %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.wpa_sm*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store %struct.wpa_sm* %0, %struct.wpa_sm** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %10 = icmp eq %struct.wpa_sm* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  br label %41

12:                                               ; preds = %4
  %13 = load i64, i64* %7, align 8
  %14 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %15 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %17 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @os_memcpy(i32 %18, i32* %19, i64 %20)
  %22 = load i32*, i32** %8, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %41

24:                                               ; preds = %12
  %25 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %26 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %32 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %35 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %38 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @pmksa_cache_add(i32 %27, i32* %28, i64 %29, i32* null, i32 0, i32* %30, i32 %33, i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %11, %24, %12
  ret void
}

declare dso_local i32 @os_memcpy(i32, i32*, i64) #1

declare dso_local i32 @pmksa_cache_add(i32, i32*, i64, i32*, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
