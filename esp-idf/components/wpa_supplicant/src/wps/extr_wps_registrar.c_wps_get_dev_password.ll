; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_get_dev_password.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_get_dev_password.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { i64, i32*, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"WPS: Use default PIN for PBC\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"00000000\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_data*)* @wps_get_dev_password to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_get_dev_password(%struct.wps_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wps_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store %struct.wps_data* %0, %struct.wps_data** %3, align 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %7 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = call i32 @os_free(i32* %8)
  %10 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %11 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %10, i32 0, i32 1
  store i32* null, i32** %11, align 8
  %12 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %13 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %12, i32 0, i32 6
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @MSG_DEBUG, align 4
  %18 = call i32 @wpa_printf(i32 %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32* bitcast ([9 x i8]* @.str.1 to i32*), i32** %4, align 8
  store i64 8, i64* %5, align 8
  br label %20

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %19, %16
  %21 = load i64, i64* %5, align 8
  %22 = call i64 @os_malloc(i64 %21)
  %23 = inttoptr i64 %22 to i32*
  %24 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %25 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %24, i32 0, i32 1
  store i32* %23, i32** %25, align 8
  %26 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %27 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  store i32 -1, i32* %2, align 4
  br label %41

31:                                               ; preds = %20
  %32 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %33 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @os_memcpy(i32* %34, i32* %35, i64 %36)
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %40 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %31, %30
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @os_malloc(i64) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
