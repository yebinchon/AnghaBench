; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/rsn_supp/extr_wpa.c_wpa_sm_set_pmk_from_pmksa.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/rsn_supp/extr_wpa.c_wpa_sm_set_pmk_from_pmksa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@PMK_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpa_sm_set_pmk_from_pmksa(%struct.wpa_sm* %0) #0 {
  %2 = alloca %struct.wpa_sm*, align 8
  store %struct.wpa_sm* %0, %struct.wpa_sm** %2, align 8
  %3 = load %struct.wpa_sm*, %struct.wpa_sm** %2, align 8
  %4 = icmp eq %struct.wpa_sm* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %40

6:                                                ; preds = %1
  %7 = load %struct.wpa_sm*, %struct.wpa_sm** %2, align 8
  %8 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %31

11:                                               ; preds = %6
  %12 = load %struct.wpa_sm*, %struct.wpa_sm** %2, align 8
  %13 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.wpa_sm*, %struct.wpa_sm** %2, align 8
  %18 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.wpa_sm*, %struct.wpa_sm** %2, align 8
  %20 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.wpa_sm*, %struct.wpa_sm** %2, align 8
  %23 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.wpa_sm*, %struct.wpa_sm** %2, align 8
  %28 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @os_memcpy(i32 %21, i32 %26, i32 %29)
  br label %40

31:                                               ; preds = %6
  %32 = load i32, i32* @PMK_LEN, align 4
  %33 = load %struct.wpa_sm*, %struct.wpa_sm** %2, align 8
  %34 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.wpa_sm*, %struct.wpa_sm** %2, align 8
  %36 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @PMK_LEN, align 4
  %39 = call i32 @os_memset(i32 %37, i32 0, i32 %38)
  br label %40

40:                                               ; preds = %5, %31, %11
  ret void
}

declare dso_local i32 @os_memcpy(i32, i32, i32) #1

declare dso_local i32 @os_memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
