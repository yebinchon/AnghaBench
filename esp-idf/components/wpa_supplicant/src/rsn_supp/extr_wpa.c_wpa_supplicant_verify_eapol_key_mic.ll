; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/rsn_supp/extr_wpa.c_wpa_supplicant_verify_eapol_key_mic.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/rsn_supp/extr_wpa.c_wpa_supplicant_verify_eapol_key_mic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i32, i32, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__, %struct.TYPE_11__, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.wpa_eapol_key = type { %struct.TYPE_11__*, %struct.TYPE_11__* }

@WPA_REPLAY_COUNTER_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_supplicant_verify_eapol_key_mic(%struct.wpa_sm* %0, %struct.wpa_eapol_key* %1, i32 %2, %struct.TYPE_10__* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wpa_sm*, align 8
  %8 = alloca %struct.wpa_eapol_key*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca [16 x %struct.TYPE_10__], align 16
  %13 = alloca i32, align 4
  store %struct.wpa_sm* %0, %struct.wpa_sm** %7, align 8
  store %struct.wpa_eapol_key* %1, %struct.wpa_eapol_key** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds [16 x %struct.TYPE_10__], [16 x %struct.TYPE_10__]* %12, i64 0, i64 0
  %15 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %8, align 8
  %16 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %15, i32 0, i32 1
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %18 = call i32 @memcpy(%struct.TYPE_10__* %14, %struct.TYPE_11__* %17, i32 16)
  %19 = load %struct.wpa_sm*, %struct.wpa_sm** %7, align 8
  %20 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %19, i32 0, i32 6
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %57

23:                                               ; preds = %5
  %24 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %8, align 8
  %25 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %24, i32 0, i32 1
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = call i32 @memset(%struct.TYPE_11__* %26, i32 0, i32 16)
  %28 = load %struct.wpa_sm*, %struct.wpa_sm** %7, align 8
  %29 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %8, align 8
  %36 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %35, i32 0, i32 1
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = call i32 @wpa_eapol_key_mic(i32 %31, i32 %32, %struct.TYPE_10__* %33, i64 %34, %struct.TYPE_11__* %37)
  %39 = getelementptr inbounds [16 x %struct.TYPE_10__], [16 x %struct.TYPE_10__]* %12, i64 0, i64 0
  %40 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %8, align 8
  %41 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %40, i32 0, i32 1
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = call i64 @memcmp(%struct.TYPE_10__* %39, %struct.TYPE_11__* %42, i32 16)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %23
  br label %56

46:                                               ; preds = %23
  store i32 1, i32* %13, align 4
  %47 = load %struct.wpa_sm*, %struct.wpa_sm** %7, align 8
  %48 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %47, i32 0, i32 6
  store i64 0, i64* %48, align 8
  %49 = load %struct.wpa_sm*, %struct.wpa_sm** %7, align 8
  %50 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load %struct.wpa_sm*, %struct.wpa_sm** %7, align 8
  %52 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %51, i32 0, i32 4
  %53 = load %struct.wpa_sm*, %struct.wpa_sm** %7, align 8
  %54 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %53, i32 0, i32 5
  %55 = call i32 @memcpy(%struct.TYPE_10__* %52, %struct.TYPE_11__* %54, i32 4)
  br label %56

56:                                               ; preds = %46, %45
  br label %57

57:                                               ; preds = %56, %5
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %89, label %60

60:                                               ; preds = %57
  %61 = load %struct.wpa_sm*, %struct.wpa_sm** %7, align 8
  %62 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %89

65:                                               ; preds = %60
  %66 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %8, align 8
  %67 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %66, i32 0, i32 1
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  %69 = call i32 @memset(%struct.TYPE_11__* %68, i32 0, i32 16)
  %70 = load %struct.wpa_sm*, %struct.wpa_sm** %7, align 8
  %71 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %76 = load i64, i64* %11, align 8
  %77 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %8, align 8
  %78 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %77, i32 0, i32 1
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = call i32 @wpa_eapol_key_mic(i32 %73, i32 %74, %struct.TYPE_10__* %75, i64 %76, %struct.TYPE_11__* %79)
  %81 = getelementptr inbounds [16 x %struct.TYPE_10__], [16 x %struct.TYPE_10__]* %12, i64 0, i64 0
  %82 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %8, align 8
  %83 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %82, i32 0, i32 1
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  %85 = call i64 @memcmp(%struct.TYPE_10__* %81, %struct.TYPE_11__* %84, i32 16)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %65
  store i32 -1, i32* %6, align 4
  br label %112

88:                                               ; preds = %65
  store i32 1, i32* %13, align 4
  br label %89

89:                                               ; preds = %88, %60, %57
  %90 = load i32, i32* %13, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %89
  store i32 -1, i32* %6, align 4
  br label %112

93:                                               ; preds = %89
  %94 = load %struct.wpa_sm*, %struct.wpa_sm** %7, align 8
  %95 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %94, i32 0, i32 3
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %8, align 8
  %98 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %97, i32 0, i32 0
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %98, align 8
  %100 = load i32, i32* @WPA_REPLAY_COUNTER_LEN, align 4
  %101 = call i32 @memcpy(%struct.TYPE_10__* %96, %struct.TYPE_11__* %99, i32 %100)
  %102 = load %struct.wpa_sm*, %struct.wpa_sm** %7, align 8
  %103 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %102, i32 0, i32 1
  store i32 1, i32* %103, align 4
  %104 = load %struct.wpa_sm*, %struct.wpa_sm** %7, align 8
  %105 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %104, i32 0, i32 2
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %8, align 8
  %108 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %107, i32 0, i32 0
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %108, align 8
  %110 = load i32, i32* @WPA_REPLAY_COUNTER_LEN, align 4
  %111 = call i32 @memcpy(%struct.TYPE_10__* %106, %struct.TYPE_11__* %109, i32 %110)
  store i32 0, i32* %6, align 4
  br label %112

112:                                              ; preds = %93, %92, %87
  %113 = load i32, i32* %6, align 4
  ret i32 %113
}

declare dso_local i32 @memcpy(%struct.TYPE_10__*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @wpa_eapol_key_mic(i32, i32, %struct.TYPE_10__*, i64, %struct.TYPE_11__*) #1

declare dso_local i64 @memcmp(%struct.TYPE_10__*, %struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
