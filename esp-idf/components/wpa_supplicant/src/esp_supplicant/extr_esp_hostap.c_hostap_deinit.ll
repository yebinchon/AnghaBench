; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_hostap.c_hostap_deinit.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_hostap.c_hostap_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.hostapd_data*, %struct.TYPE_2__, %struct.hostapd_data*, %struct.hostapd_data*, %struct.hostapd_data* }
%struct.TYPE_2__ = type { %struct.hostapd_data*, %struct.hostapd_data* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostap_deinit(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.hostapd_data*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = bitcast i8* %5 to %struct.hostapd_data*
  store %struct.hostapd_data* %6, %struct.hostapd_data** %4, align 8
  %7 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %8 = icmp eq %struct.hostapd_data* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %97

10:                                               ; preds = %1
  %11 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %12 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %11, i32 0, i32 2
  %13 = load %struct.hostapd_data*, %struct.hostapd_data** %12, align 8
  %14 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %13, i32 0, i32 4
  %15 = load %struct.hostapd_data*, %struct.hostapd_data** %14, align 8
  %16 = icmp ne %struct.hostapd_data* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %10
  %18 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %19 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %18, i32 0, i32 2
  %20 = load %struct.hostapd_data*, %struct.hostapd_data** %19, align 8
  %21 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %20, i32 0, i32 4
  %22 = load %struct.hostapd_data*, %struct.hostapd_data** %21, align 8
  %23 = call i32 @os_free(%struct.hostapd_data* %22)
  br label %24

24:                                               ; preds = %17, %10
  %25 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %26 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %25, i32 0, i32 2
  %27 = load %struct.hostapd_data*, %struct.hostapd_data** %26, align 8
  %28 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %27, i32 0, i32 3
  %29 = load %struct.hostapd_data*, %struct.hostapd_data** %28, align 8
  %30 = icmp ne %struct.hostapd_data* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %24
  %32 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %33 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %32, i32 0, i32 2
  %34 = load %struct.hostapd_data*, %struct.hostapd_data** %33, align 8
  %35 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %34, i32 0, i32 3
  %36 = load %struct.hostapd_data*, %struct.hostapd_data** %35, align 8
  %37 = call i32 @os_free(%struct.hostapd_data* %36)
  br label %38

38:                                               ; preds = %31, %24
  %39 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %40 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %39, i32 0, i32 2
  %41 = load %struct.hostapd_data*, %struct.hostapd_data** %40, align 8
  %42 = icmp ne %struct.hostapd_data* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %45 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %44, i32 0, i32 2
  %46 = load %struct.hostapd_data*, %struct.hostapd_data** %45, align 8
  %47 = call i32 @os_free(%struct.hostapd_data* %46)
  br label %48

48:                                               ; preds = %43, %38
  %49 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %50 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %49, i32 0, i32 0
  %51 = load %struct.hostapd_data*, %struct.hostapd_data** %50, align 8
  %52 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load %struct.hostapd_data*, %struct.hostapd_data** %53, align 8
  %55 = icmp ne %struct.hostapd_data* %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %48
  %57 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %58 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %57, i32 0, i32 0
  %59 = load %struct.hostapd_data*, %struct.hostapd_data** %58, align 8
  %60 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load %struct.hostapd_data*, %struct.hostapd_data** %61, align 8
  %63 = call i32 @os_free(%struct.hostapd_data* %62)
  br label %64

64:                                               ; preds = %56, %48
  %65 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %66 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %65, i32 0, i32 0
  %67 = load %struct.hostapd_data*, %struct.hostapd_data** %66, align 8
  %68 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load %struct.hostapd_data*, %struct.hostapd_data** %69, align 8
  %71 = icmp ne %struct.hostapd_data* %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %64
  %73 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %74 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %73, i32 0, i32 0
  %75 = load %struct.hostapd_data*, %struct.hostapd_data** %74, align 8
  %76 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load %struct.hostapd_data*, %struct.hostapd_data** %77, align 8
  %79 = call i32 @os_free(%struct.hostapd_data* %78)
  br label %80

80:                                               ; preds = %72, %64
  %81 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %82 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %81, i32 0, i32 0
  %83 = load %struct.hostapd_data*, %struct.hostapd_data** %82, align 8
  %84 = icmp ne %struct.hostapd_data* %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %87 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %86, i32 0, i32 0
  %88 = load %struct.hostapd_data*, %struct.hostapd_data** %87, align 8
  %89 = call i32 @os_free(%struct.hostapd_data* %88)
  br label %90

90:                                               ; preds = %85, %80
  %91 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %92 = icmp ne %struct.hostapd_data* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %95 = call i32 @os_free(%struct.hostapd_data* %94)
  br label %96

96:                                               ; preds = %93, %90
  store i32 1, i32* %2, align 4
  br label %97

97:                                               ; preds = %96, %9
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @os_free(%struct.hostapd_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
