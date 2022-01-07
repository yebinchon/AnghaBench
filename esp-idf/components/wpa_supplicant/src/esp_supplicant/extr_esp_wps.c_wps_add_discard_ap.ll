; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wps.c_wps_add_discard_ap.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wps.c_wps_add_discard_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_sm = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@gWpsSm = common dso_local global %struct.wps_sm* null, align 8
@WPS_MAX_DIS_AP_NUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wps_add_discard_ap(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.wps_sm*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load %struct.wps_sm*, %struct.wps_sm** @gWpsSm, align 8
  store %struct.wps_sm* %5, %struct.wps_sm** %3, align 8
  %6 = load %struct.wps_sm*, %struct.wps_sm** %3, align 8
  %7 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %4, align 4
  %9 = load %struct.wps_sm*, %struct.wps_sm** @gWpsSm, align 8
  %10 = icmp ne %struct.wps_sm* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32*, i32** %2, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %11, %1
  br label %69

15:                                               ; preds = %11
  %16 = load %struct.wps_sm*, %struct.wps_sm** %3, align 8
  %17 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @WPS_MAX_DIS_AP_NUM, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.wps_sm*, %struct.wps_sm** %3, align 8
  %23 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 8
  br label %58

26:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %51, %26
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @WPS_MAX_DIS_AP_NUM, align 4
  %30 = sub nsw i32 %29, 2
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %54

32:                                               ; preds = %27
  %33 = load %struct.wps_sm*, %struct.wps_sm** %3, align 8
  %34 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.wps_sm*, %struct.wps_sm** %3, align 8
  %42 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @memcpy(i32* %40, i32* %49, i32 6)
  br label %51

51:                                               ; preds = %32
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %27

54:                                               ; preds = %27
  %55 = load i32, i32* @WPS_MAX_DIS_AP_NUM, align 4
  %56 = load %struct.wps_sm*, %struct.wps_sm** %3, align 8
  %57 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  br label %58

58:                                               ; preds = %54, %21
  %59 = load %struct.wps_sm*, %struct.wps_sm** %3, align 8
  %60 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32*, i32** %2, align 8
  %68 = call i32 @memcpy(i32* %66, i32* %67, i32 6)
  br label %69

69:                                               ; preds = %58, %14
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
