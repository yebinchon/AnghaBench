; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_dev_attr.c_wps_device_data_dup.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_dev_attr.c_wps_device_data_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_device_data = type { i32, i32, i32, i8*, i8*, i8*, i8*, i8* }

@WPS_DEV_TYPE_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wps_device_data_dup(%struct.wps_device_data* %0, %struct.wps_device_data* %1) #0 {
  %3 = alloca %struct.wps_device_data*, align 8
  %4 = alloca %struct.wps_device_data*, align 8
  store %struct.wps_device_data* %0, %struct.wps_device_data** %3, align 8
  store %struct.wps_device_data* %1, %struct.wps_device_data** %4, align 8
  %5 = load %struct.wps_device_data*, %struct.wps_device_data** %4, align 8
  %6 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %5, i32 0, i32 7
  %7 = load i8*, i8** %6, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load %struct.wps_device_data*, %struct.wps_device_data** %4, align 8
  %11 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %10, i32 0, i32 7
  %12 = load i8*, i8** %11, align 8
  %13 = call i8* @os_strdup(i8* %12)
  %14 = load %struct.wps_device_data*, %struct.wps_device_data** %3, align 8
  %15 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %14, i32 0, i32 7
  store i8* %13, i8** %15, align 8
  br label %16

16:                                               ; preds = %9, %2
  %17 = load %struct.wps_device_data*, %struct.wps_device_data** %4, align 8
  %18 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %17, i32 0, i32 6
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load %struct.wps_device_data*, %struct.wps_device_data** %4, align 8
  %23 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %22, i32 0, i32 6
  %24 = load i8*, i8** %23, align 8
  %25 = call i8* @os_strdup(i8* %24)
  %26 = load %struct.wps_device_data*, %struct.wps_device_data** %3, align 8
  %27 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %26, i32 0, i32 6
  store i8* %25, i8** %27, align 8
  br label %28

28:                                               ; preds = %21, %16
  %29 = load %struct.wps_device_data*, %struct.wps_device_data** %4, align 8
  %30 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %29, i32 0, i32 5
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load %struct.wps_device_data*, %struct.wps_device_data** %4, align 8
  %35 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %34, i32 0, i32 5
  %36 = load i8*, i8** %35, align 8
  %37 = call i8* @os_strdup(i8* %36)
  %38 = load %struct.wps_device_data*, %struct.wps_device_data** %3, align 8
  %39 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %38, i32 0, i32 5
  store i8* %37, i8** %39, align 8
  br label %40

40:                                               ; preds = %33, %28
  %41 = load %struct.wps_device_data*, %struct.wps_device_data** %4, align 8
  %42 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %41, i32 0, i32 4
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load %struct.wps_device_data*, %struct.wps_device_data** %4, align 8
  %47 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %46, i32 0, i32 4
  %48 = load i8*, i8** %47, align 8
  %49 = call i8* @os_strdup(i8* %48)
  %50 = load %struct.wps_device_data*, %struct.wps_device_data** %3, align 8
  %51 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %50, i32 0, i32 4
  store i8* %49, i8** %51, align 8
  br label %52

52:                                               ; preds = %45, %40
  %53 = load %struct.wps_device_data*, %struct.wps_device_data** %4, align 8
  %54 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %53, i32 0, i32 3
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load %struct.wps_device_data*, %struct.wps_device_data** %4, align 8
  %59 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %58, i32 0, i32 3
  %60 = load i8*, i8** %59, align 8
  %61 = call i8* @os_strdup(i8* %60)
  %62 = load %struct.wps_device_data*, %struct.wps_device_data** %3, align 8
  %63 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %62, i32 0, i32 3
  store i8* %61, i8** %63, align 8
  br label %64

64:                                               ; preds = %57, %52
  %65 = load %struct.wps_device_data*, %struct.wps_device_data** %3, align 8
  %66 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.wps_device_data*, %struct.wps_device_data** %4, align 8
  %69 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @WPS_DEV_TYPE_LEN, align 4
  %72 = call i32 @os_memcpy(i32 %67, i32 %70, i32 %71)
  %73 = load %struct.wps_device_data*, %struct.wps_device_data** %4, align 8
  %74 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.wps_device_data*, %struct.wps_device_data** %3, align 8
  %77 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.wps_device_data*, %struct.wps_device_data** %4, align 8
  %79 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.wps_device_data*, %struct.wps_device_data** %3, align 8
  %82 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  ret void
}

declare dso_local i8* @os_strdup(i8*) #1

declare dso_local i32 @os_memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
