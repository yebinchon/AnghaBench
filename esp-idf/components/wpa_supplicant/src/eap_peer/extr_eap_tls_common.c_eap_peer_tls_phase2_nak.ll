; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/eap_peer/extr_eap_tls_common.c_eap_peer_tls_phase2_nak.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/eap_peer/extr_eap_tls_common.c_eap_peer_tls_phase2_nak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_method_type = type { i64, i32 }
%struct.eap_hdr = type { i32 }
%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"TLS: Phase Request: Nak type=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"TLS: Allowed Phase2 EAP types\00", align 1
@EAP_VENDOR_IETF = common dso_local global i64 0, align 8
@EAP_TYPE_NAK = common dso_local global i32 0, align 4
@EAP_CODE_RESPONSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_peer_tls_phase2_nak(%struct.eap_method_type* %0, i64 %1, %struct.eap_hdr* %2, %struct.wpabuf** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.eap_method_type*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.eap_hdr*, align 8
  %9 = alloca %struct.wpabuf**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.eap_method_type* %0, %struct.eap_method_type** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.eap_hdr* %2, %struct.eap_hdr** %8, align 8
  store %struct.wpabuf** %3, %struct.wpabuf*** %9, align 8
  %12 = load %struct.eap_hdr*, %struct.eap_hdr** %8, align 8
  %13 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %12, i64 1
  %14 = bitcast %struct.eap_hdr* %13 to i32*
  store i32* %14, i32** %10, align 8
  %15 = load i32, i32* @MSG_DEBUG, align 4
  %16 = load i32*, i32** %10, align 8
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @wpa_printf(i32 %15, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @MSG_DEBUG, align 4
  %20 = load %struct.eap_method_type*, %struct.eap_method_type** %6, align 8
  %21 = bitcast %struct.eap_method_type* %20 to i32*
  %22 = load i64, i64* %7, align 8
  %23 = mul i64 %22, 16
  %24 = call i32 @wpa_hexdump(i32 %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32* %21, i64 %23)
  %25 = load i64, i64* @EAP_VENDOR_IETF, align 8
  %26 = load i32, i32* @EAP_TYPE_NAK, align 4
  %27 = load i64, i64* %7, align 8
  %28 = load i32, i32* @EAP_CODE_RESPONSE, align 4
  %29 = load %struct.eap_hdr*, %struct.eap_hdr** %8, align 8
  %30 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.wpabuf* @eap_msg_alloc(i64 %25, i32 %26, i64 %27, i32 %28, i32 %31)
  %33 = load %struct.wpabuf**, %struct.wpabuf*** %9, align 8
  store %struct.wpabuf* %32, %struct.wpabuf** %33, align 8
  %34 = load %struct.wpabuf**, %struct.wpabuf*** %9, align 8
  %35 = load %struct.wpabuf*, %struct.wpabuf** %34, align 8
  %36 = icmp eq %struct.wpabuf* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %75

38:                                               ; preds = %4
  store i64 0, i64* %11, align 8
  br label %39

39:                                               ; preds = %68, %38
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* %7, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %71

43:                                               ; preds = %39
  %44 = load %struct.eap_method_type*, %struct.eap_method_type** %6, align 8
  %45 = load i64, i64* %11, align 8
  %46 = getelementptr inbounds %struct.eap_method_type, %struct.eap_method_type* %44, i64 %45
  %47 = getelementptr inbounds %struct.eap_method_type, %struct.eap_method_type* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @EAP_VENDOR_IETF, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %43
  %52 = load %struct.eap_method_type*, %struct.eap_method_type** %6, align 8
  %53 = load i64, i64* %11, align 8
  %54 = getelementptr inbounds %struct.eap_method_type, %struct.eap_method_type* %52, i64 %53
  %55 = getelementptr inbounds %struct.eap_method_type, %struct.eap_method_type* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %56, 256
  br i1 %57, label %58, label %67

58:                                               ; preds = %51
  %59 = load %struct.wpabuf**, %struct.wpabuf*** %9, align 8
  %60 = load %struct.wpabuf*, %struct.wpabuf** %59, align 8
  %61 = load %struct.eap_method_type*, %struct.eap_method_type** %6, align 8
  %62 = load i64, i64* %11, align 8
  %63 = getelementptr inbounds %struct.eap_method_type, %struct.eap_method_type* %61, i64 %62
  %64 = getelementptr inbounds %struct.eap_method_type, %struct.eap_method_type* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @wpabuf_put_u8(%struct.wpabuf* %60, i32 %65)
  br label %67

67:                                               ; preds = %58, %51, %43
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %11, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %11, align 8
  br label %39

71:                                               ; preds = %39
  %72 = load %struct.wpabuf**, %struct.wpabuf*** %9, align 8
  %73 = load %struct.wpabuf*, %struct.wpabuf** %72, align 8
  %74 = call i32 @eap_update_len(%struct.wpabuf* %73)
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %71, %37
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local %struct.wpabuf* @eap_msg_alloc(i64, i32, i64, i32, i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @eap_update_len(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
