; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wps.c_wps_deinit.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wps.c_wps_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.wps_data* }
%struct.wps_data = type { %struct.wps_data*, i32, i32, %struct.wps_data*, i32*, i32*, i32*, i32*, i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@gWpsSm = common dso_local global %struct.TYPE_4__* null, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"WPS: Full PIN information revealed and negotiation failed\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"WPS: register information revealed and negotiation failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wps_deinit() #0 {
  %1 = alloca %struct.wps_data*, align 8
  %2 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gWpsSm, align 8
  %3 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %4 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  store %struct.wps_data* %4, %struct.wps_data** %1, align 8
  %5 = load %struct.wps_data*, %struct.wps_data** %1, align 8
  %6 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %5, i32 0, i32 9
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load i32, i32* @MSG_DEBUG, align 4
  %11 = call i32 @wpa_printf(i32 %10, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  br label %21

12:                                               ; preds = %0
  %13 = load %struct.wps_data*, %struct.wps_data** %1, align 8
  %14 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %13, i32 0, i32 8
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* @MSG_DEBUG, align 4
  %19 = call i32 @wpa_printf(i32 %18, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %12
  br label %21

21:                                               ; preds = %20, %9
  %22 = load %struct.wps_data*, %struct.wps_data** %1, align 8
  %23 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %22, i32 0, i32 7
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @wpabuf_free(i32* %24)
  %26 = load %struct.wps_data*, %struct.wps_data** %1, align 8
  %27 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %26, i32 0, i32 6
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @wpabuf_free(i32* %28)
  %30 = load %struct.wps_data*, %struct.wps_data** %1, align 8
  %31 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %30, i32 0, i32 5
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @wpabuf_free(i32* %32)
  %34 = load %struct.wps_data*, %struct.wps_data** %1, align 8
  %35 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %34, i32 0, i32 4
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @wpabuf_free(i32* %36)
  %38 = load %struct.wps_data*, %struct.wps_data** %1, align 8
  %39 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %38, i32 0, i32 3
  %40 = load %struct.wps_data*, %struct.wps_data** %39, align 8
  %41 = call i32 @os_free(%struct.wps_data* %40)
  %42 = load %struct.wps_data*, %struct.wps_data** %1, align 8
  %43 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dh5_free(i32 %44)
  %46 = load %struct.wps_data*, %struct.wps_data** %1, align 8
  %47 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %46, i32 0, i32 1
  %48 = call i32 @wps_dev_deinit(i32* %47)
  %49 = load %struct.wps_data*, %struct.wps_data** %1, align 8
  %50 = call i32 @os_free(%struct.wps_data* %49)
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpabuf_free(i32*) #1

declare dso_local i32 @os_free(%struct.wps_data*) #1

declare dso_local i32 @dh5_free(i32) #1

declare dso_local i32 @wps_dev_deinit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
