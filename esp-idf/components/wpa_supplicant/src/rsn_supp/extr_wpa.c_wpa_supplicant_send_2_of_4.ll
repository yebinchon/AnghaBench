; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/rsn_supp/extr_wpa.c_wpa_supplicant_send_2_of_4.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/rsn_supp/extr_wpa.c_wpa_supplicant_send_2_of_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i64 }
%struct.wpa_eapol_key = type { i32, %struct.wpa_eapol_key*, %struct.wpa_eapol_key*, %struct.wpa_eapol_key*, %struct.wpa_eapol_key*, %struct.wpa_eapol_key*, i32 }
%struct.wpa_ptk = type { i32 }

@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"WPA: WPA IE for msg 2/4\0A\00", align 1
@IEEE802_1X_TYPE_EAPOL_KEY = common dso_local global i32 0, align 4
@WPA_PROTO_RSN = common dso_local global i64 0, align 8
@EAPOL_KEY_TYPE_RSN = common dso_local global i32 0, align 4
@EAPOL_KEY_TYPE_WPA = common dso_local global i32 0, align 4
@WPA_KEY_INFO_KEY_TYPE = common dso_local global i32 0, align 4
@WPA_KEY_INFO_MIC = common dso_local global i32 0, align 4
@WPA_REPLAY_COUNTER_LEN = common dso_local global i64 0, align 8
@WPA_NONCE_LEN = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"WPA Send EAPOL-Key 2/4\0A\00", align 1
@ETH_P_EAPOL = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_supplicant_send_2_of_4(%struct.wpa_sm* %0, i8* %1, %struct.wpa_eapol_key* %2, i32 %3, %struct.wpa_eapol_key* %4, %struct.wpa_eapol_key* %5, i64 %6, %struct.wpa_ptk* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.wpa_sm*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.wpa_eapol_key*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.wpa_eapol_key*, align 8
  %15 = alloca %struct.wpa_eapol_key*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.wpa_ptk*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.wpa_eapol_key*, align 8
  %20 = alloca %struct.wpa_eapol_key*, align 8
  store %struct.wpa_sm* %0, %struct.wpa_sm** %10, align 8
  store i8* %1, i8** %11, align 8
  store %struct.wpa_eapol_key* %2, %struct.wpa_eapol_key** %12, align 8
  store i32 %3, i32* %13, align 4
  store %struct.wpa_eapol_key* %4, %struct.wpa_eapol_key** %14, align 8
  store %struct.wpa_eapol_key* %5, %struct.wpa_eapol_key** %15, align 8
  store i64 %6, i64* %16, align 8
  store %struct.wpa_ptk* %7, %struct.wpa_ptk** %17, align 8
  %21 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %15, align 8
  %22 = icmp eq %struct.wpa_eapol_key* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %8
  store i32 -1, i32* %9, align 4
  br label %123

24:                                               ; preds = %8
  %25 = load i32, i32* @MSG_MSGDUMP, align 4
  %26 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %15, align 8
  %27 = load i64, i64* %16, align 8
  %28 = call i32 @wpa_hexdump(i32 %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.wpa_eapol_key* %26, i64 %27)
  %29 = load %struct.wpa_sm*, %struct.wpa_sm** %10, align 8
  %30 = load i32, i32* @IEEE802_1X_TYPE_EAPOL_KEY, align 4
  %31 = load i64, i64* %16, align 8
  %32 = add i64 56, %31
  %33 = trunc i64 %32 to i32
  %34 = bitcast %struct.wpa_eapol_key** %19 to i8*
  %35 = call %struct.wpa_eapol_key* @wpa_sm_alloc_eapol(%struct.wpa_sm* %29, i32 %30, i32* null, i32 %33, i64* %18, i8* %34)
  store %struct.wpa_eapol_key* %35, %struct.wpa_eapol_key** %20, align 8
  %36 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %20, align 8
  %37 = icmp eq %struct.wpa_eapol_key* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %24
  store i32 -1, i32* %9, align 4
  br label %123

39:                                               ; preds = %24
  %40 = load %struct.wpa_sm*, %struct.wpa_sm** %10, align 8
  %41 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @WPA_PROTO_RSN, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @EAPOL_KEY_TYPE_RSN, align 4
  br label %49

47:                                               ; preds = %39
  %48 = load i32, i32* @EAPOL_KEY_TYPE_WPA, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  %51 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %19, align 8
  %52 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 8
  %53 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %19, align 8
  %54 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %53, i32 0, i32 5
  %55 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %54, align 8
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* @WPA_KEY_INFO_KEY_TYPE, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @WPA_KEY_INFO_MIC, align 4
  %60 = or i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = call i32 @WPA_PUT_BE16(%struct.wpa_eapol_key* %55, i64 %61)
  %63 = load %struct.wpa_sm*, %struct.wpa_sm** %10, align 8
  %64 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @WPA_PROTO_RSN, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %49
  %69 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %19, align 8
  %70 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %69, i32 0, i32 4
  %71 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %70, align 8
  %72 = call i32 @WPA_PUT_BE16(%struct.wpa_eapol_key* %71, i64 0)
  br label %81

73:                                               ; preds = %49
  %74 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %19, align 8
  %75 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %74, i32 0, i32 4
  %76 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %75, align 8
  %77 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %12, align 8
  %78 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %77, i32 0, i32 4
  %79 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %78, align 8
  %80 = call i32 @memcpy(%struct.wpa_eapol_key* %76, %struct.wpa_eapol_key* %79, i64 2)
  br label %81

81:                                               ; preds = %73, %68
  %82 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %19, align 8
  %83 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %82, i32 0, i32 3
  %84 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %83, align 8
  %85 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %12, align 8
  %86 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %85, i32 0, i32 3
  %87 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %86, align 8
  %88 = load i64, i64* @WPA_REPLAY_COUNTER_LEN, align 8
  %89 = call i32 @memcpy(%struct.wpa_eapol_key* %84, %struct.wpa_eapol_key* %87, i64 %88)
  %90 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %19, align 8
  %91 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %90, i32 0, i32 2
  %92 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %91, align 8
  %93 = load i64, i64* %16, align 8
  %94 = call i32 @WPA_PUT_BE16(%struct.wpa_eapol_key* %92, i64 %93)
  %95 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %19, align 8
  %96 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %95, i64 1
  %97 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %15, align 8
  %98 = load i64, i64* %16, align 8
  %99 = call i32 @memcpy(%struct.wpa_eapol_key* %96, %struct.wpa_eapol_key* %97, i64 %98)
  %100 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %19, align 8
  %101 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %100, i32 0, i32 1
  %102 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %101, align 8
  %103 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %14, align 8
  %104 = load i64, i64* @WPA_NONCE_LEN, align 8
  %105 = call i32 @memcpy(%struct.wpa_eapol_key* %102, %struct.wpa_eapol_key* %103, i64 %104)
  %106 = load i32, i32* @MSG_DEBUG, align 4
  %107 = call i32 @wpa_printf(i32 %106, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %108 = load %struct.wpa_sm*, %struct.wpa_sm** %10, align 8
  %109 = load %struct.wpa_ptk*, %struct.wpa_ptk** %17, align 8
  %110 = getelementptr inbounds %struct.wpa_ptk, %struct.wpa_ptk* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %13, align 4
  %113 = load i8*, i8** %11, align 8
  %114 = load i32, i32* @ETH_P_EAPOL, align 4
  %115 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %20, align 8
  %116 = load i64, i64* %18, align 8
  %117 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %19, align 8
  %118 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @wpa_eapol_key_send(%struct.wpa_sm* %108, i32 %111, i32 %112, i8* %113, i32 %114, %struct.wpa_eapol_key* %115, i64 %116, i32 %119)
  %121 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %20, align 8
  %122 = call i32 @wpa_sm_free_eapol(%struct.wpa_eapol_key* %121)
  store i32 0, i32* %9, align 4
  br label %123

123:                                              ; preds = %81, %38, %23
  %124 = load i32, i32* %9, align 4
  ret i32 %124
}

declare dso_local i32 @wpa_hexdump(i32, i8*, %struct.wpa_eapol_key*, i64) #1

declare dso_local %struct.wpa_eapol_key* @wpa_sm_alloc_eapol(%struct.wpa_sm*, i32, i32*, i32, i64*, i8*) #1

declare dso_local i32 @WPA_PUT_BE16(%struct.wpa_eapol_key*, i64) #1

declare dso_local i32 @memcpy(%struct.wpa_eapol_key*, %struct.wpa_eapol_key*, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpa_eapol_key_send(%struct.wpa_sm*, i32, i32, i8*, i32, %struct.wpa_eapol_key*, i64, i32) #1

declare dso_local i32 @wpa_sm_free_eapol(%struct.wpa_eapol_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
