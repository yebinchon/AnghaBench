; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_attr_parse.c_wps_parse_vendor_ext.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_attr_parse.c_wps_parse_vendor_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_parse_attr = type { i32, i32*, i32** }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"WPS: Skip invalid Vendor Extension\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"WPS: Unknown Vendor Extension (Vendor ID %u)\00", align 1
@WPS_MAX_VENDOR_EXT_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"WPS: Too long Vendor Extension (%u)\00", align 1
@MAX_WPS_PARSE_VENDOR_EXT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [67 x i8] c"WPS: Skipped Vendor Extension attribute (max %d vendor extensions)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_parse_attr*, i32*, i32)* @wps_parse_vendor_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_parse_vendor_ext(%struct.wps_parse_attr* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wps_parse_attr*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.wps_parse_attr* %0, %struct.wps_parse_attr** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 3
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* @MSG_DEBUG, align 4
  %13 = call i32 (i32, i8*, ...) @wpa_printf(i32 %12, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %69

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @WPA_GET_BE24(i32* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  switch i32 %17, label %25 [
    i32 128, label %18
  ]

18:                                               ; preds = %14
  %19 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 3
  %22 = load i32, i32* %7, align 4
  %23 = sub nsw i32 %22, 3
  %24 = call i32 @wps_parse_vendor_ext_wfa(%struct.wps_parse_attr* %19, i32* %21, i32 %23)
  store i32 %24, i32* %4, align 4
  br label %69

25:                                               ; preds = %14
  %26 = load i32, i32* @MSG_DEBUG, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 (i32, i8*, ...) @wpa_printf(i32 %26, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @WPS_MAX_VENDOR_EXT_LEN, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load i32, i32* @MSG_DEBUG, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 (i32, i8*, ...) @wpa_printf(i32 %33, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  store i32 -1, i32* %4, align 4
  br label %69

36:                                               ; preds = %25
  %37 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %38 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @MAX_WPS_PARSE_VENDOR_EXT, align 4
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i32, i32* @MSG_DEBUG, align 4
  %44 = load i32, i32* @MAX_WPS_PARSE_VENDOR_EXT, align 4
  %45 = call i32 (i32, i8*, ...) @wpa_printf(i32 %43, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i32 %44)
  store i32 -1, i32* %4, align 4
  br label %69

46:                                               ; preds = %36
  %47 = load i32*, i32** %6, align 8
  %48 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %49 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %48, i32 0, i32 2
  %50 = load i32**, i32*** %49, align 8
  %51 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %52 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %50, i64 %54
  store i32* %47, i32** %55, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %58 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %61 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %59, i64 %63
  store i32 %56, i32* %64, align 4
  %65 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %66 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %46, %42, %32, %18, %11
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @WPA_GET_BE24(i32*) #1

declare dso_local i32 @wps_parse_vendor_ext_wfa(%struct.wps_parse_attr*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
