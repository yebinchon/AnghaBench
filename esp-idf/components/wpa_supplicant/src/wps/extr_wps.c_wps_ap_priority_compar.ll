; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps.c_wps_ap_priority_compar.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps.c_wps_ap_priority_compar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wps_parse_attr = type { i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_ap_priority_compar(%struct.wpabuf* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.wps_parse_attr*, align 8
  %7 = alloca %struct.wps_parse_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.wpabuf* %0, %struct.wpabuf** %4, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %5, align 8
  store i32 0, i32* %10, align 4
  %11 = call i64 @os_zalloc(i32 8)
  %12 = inttoptr i64 %11 to %struct.wps_parse_attr*
  store %struct.wps_parse_attr* %12, %struct.wps_parse_attr** %6, align 8
  %13 = call i64 @os_zalloc(i32 8)
  %14 = inttoptr i64 %13 to %struct.wps_parse_attr*
  store %struct.wps_parse_attr* %14, %struct.wps_parse_attr** %7, align 8
  %15 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %16 = icmp eq %struct.wps_parse_attr* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %19 = icmp eq %struct.wps_parse_attr* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %2
  store i32 0, i32* %10, align 4
  br label %80

21:                                               ; preds = %17
  %22 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %23 = icmp eq %struct.wpabuf* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %26 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %27 = call i64 @wps_parse_msg(%struct.wpabuf* %25, %struct.wps_parse_attr* %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24, %21
  store i32 1, i32* %3, align 4
  br label %94

30:                                               ; preds = %24
  %31 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %32 = icmp eq %struct.wpabuf* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %35 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %36 = call i64 @wps_parse_msg(%struct.wpabuf* %34, %struct.wps_parse_attr* %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33, %30
  store i32 -1, i32* %3, align 4
  br label %94

39:                                               ; preds = %33
  %40 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %41 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = icmp ne i64* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %46 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br label %50

50:                                               ; preds = %44, %39
  %51 = phi i1 [ false, %39 ], [ %49, %44 ]
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %8, align 4
  %53 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %54 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = icmp ne i64* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %50
  %58 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %59 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br label %63

63:                                               ; preds = %57, %50
  %64 = phi i1 [ false, %50 ], [ %62, %57 ]
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  store i32 -1, i32* %10, align 4
  br label %80

72:                                               ; preds = %68, %63
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32 1, i32* %10, align 4
  br label %80

79:                                               ; preds = %75, %72
  br label %80

80:                                               ; preds = %79, %78, %71, %20
  %81 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %82 = icmp ne %struct.wps_parse_attr* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %85 = call i32 @os_free(%struct.wps_parse_attr* %84)
  br label %86

86:                                               ; preds = %83, %80
  %87 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %88 = icmp ne %struct.wps_parse_attr* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %91 = call i32 @os_free(%struct.wps_parse_attr* %90)
  br label %92

92:                                               ; preds = %89, %86
  %93 = load i32, i32* %10, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %92, %38, %29
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i64 @os_zalloc(i32) #1

declare dso_local i64 @wps_parse_msg(%struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i32 @os_free(%struct.wps_parse_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
