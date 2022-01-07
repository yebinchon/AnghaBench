; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/eap_peer/extr_eap_tls_common.c_eap_peer_tls_process_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/eap_peer/extr_eap_tls_common.c_eap_peer_tls_process_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_ssl_data = type { i32, i32, i32*, i32 }
%struct.eap_method_ret = type { i8*, i32, i32, i8* }
%struct.wpabuf = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"SSL: TLS errors detected\00", align 1
@TRUE = common dso_local global i8* null, align 8
@EAP_UNAUTH_TLS_TYPE = common dso_local global i64 0, align 8
@EAP_VENDOR_UNAUTH_TLS = common dso_local global i32 0, align 4
@EAP_VENDOR_TYPE_UNAUTH_TLS = common dso_local global i64 0, align 8
@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"SSL: Invalid TLS message: no Flags octet included\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"SSL: Workaround - assume no Flags indicates ACK frame\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"SSL: Received packet(len=%lu) - Flags 0x%02x\00", align 1
@EAP_TLS_FLAGS_LENGTH_INCLUDED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"SSL: Short frame with TLS length\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"SSL: TLS Message Length: %d\00", align 1
@.str.6 = private unnamed_addr constant [73 x i8] c"SSL: TLS Message Length (%d bytes) smaller than this fragment (%d bytes)\00", align 1
@FALSE = common dso_local global i8* null, align 8
@METHOD_MAY_CONT = common dso_local global i32 0, align 4
@DECISION_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @eap_peer_tls_process_init(%struct.eap_sm* %0, %struct.eap_ssl_data* %1, i64 %2, %struct.eap_method_ret* %3, %struct.wpabuf* %4, i64* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.eap_sm*, align 8
  %10 = alloca %struct.eap_ssl_data*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.eap_method_ret*, align 8
  %13 = alloca %struct.wpabuf*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %9, align 8
  store %struct.eap_ssl_data* %1, %struct.eap_ssl_data** %10, align 8
  store i64 %2, i64* %11, align 8
  store %struct.eap_method_ret* %3, %struct.eap_method_ret** %12, align 8
  store %struct.wpabuf* %4, %struct.wpabuf** %13, align 8
  store i64* %5, i64** %14, align 8
  store i32* %6, i32** %15, align 8
  %19 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %10, align 8
  %20 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @tls_get_errors(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %7
  %25 = load i32, i32* @MSG_INFO, align 4
  %26 = call i32 (i32, i8*, ...) @wpa_printf(i32 %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %27 = load i8*, i8** @TRUE, align 8
  %28 = load %struct.eap_method_ret*, %struct.eap_method_ret** %12, align 8
  %29 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %28, i32 0, i32 3
  store i8* %27, i8** %29, align 8
  store i32* null, i32** %8, align 8
  br label %155

30:                                               ; preds = %7
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* @EAP_UNAUTH_TLS_TYPE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i32, i32* @EAP_VENDOR_UNAUTH_TLS, align 4
  %36 = load i64, i64* @EAP_VENDOR_TYPE_UNAUTH_TLS, align 8
  %37 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %38 = call i32* @eap_hdr_validate(i32 %35, i64 %36, %struct.wpabuf* %37, i64* %17)
  store i32* %38, i32** %16, align 8
  br label %44

39:                                               ; preds = %30
  %40 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %41 = load i64, i64* %11, align 8
  %42 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %43 = call i32* @eap_hdr_validate(i32 %40, i64 %41, %struct.wpabuf* %42, i64* %17)
  store i32* %43, i32** %16, align 8
  br label %44

44:                                               ; preds = %39, %34
  %45 = load i32*, i32** %16, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i8*, i8** @TRUE, align 8
  %49 = load %struct.eap_method_ret*, %struct.eap_method_ret** %12, align 8
  %50 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %49, i32 0, i32 3
  store i8* %48, i8** %50, align 8
  store i32* null, i32** %8, align 8
  br label %155

51:                                               ; preds = %44
  %52 = load i64, i64* %17, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %51
  %55 = load i32, i32* @MSG_DEBUG, align 4
  %56 = call i32 (i32, i8*, ...) @wpa_printf(i32 %55, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.eap_sm*, %struct.eap_sm** %9, align 8
  %58 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %54
  %62 = load i8*, i8** @TRUE, align 8
  %63 = load %struct.eap_method_ret*, %struct.eap_method_ret** %12, align 8
  %64 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %63, i32 0, i32 3
  store i8* %62, i8** %64, align 8
  store i32* null, i32** %8, align 8
  br label %155

65:                                               ; preds = %54
  %66 = load i32, i32* @MSG_DEBUG, align 4
  %67 = call i32 (i32, i8*, ...) @wpa_printf(i32 %66, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32*, i32** %15, align 8
  store i32 0, i32* %68, align 4
  br label %76

69:                                               ; preds = %51
  %70 = load i32*, i32** %16, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %16, align 8
  %72 = load i32, i32* %70, align 4
  %73 = load i32*, i32** %15, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i64, i64* %17, align 8
  %75 = add i64 %74, -1
  store i64 %75, i64* %17, align 8
  br label %76

76:                                               ; preds = %69, %65
  %77 = load i32, i32* @MSG_DEBUG, align 4
  %78 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %79 = call i64 @wpabuf_len(%struct.wpabuf* %78)
  %80 = load i32*, i32** %15, align 8
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i32, i8*, ...) @wpa_printf(i32 %77, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i64 %79, i32 %81)
  %83 = load i32*, i32** %15, align 8
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @EAP_TLS_FLAGS_LENGTH_INCLUDED, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %139

88:                                               ; preds = %76
  %89 = load i64, i64* %17, align 8
  %90 = icmp ult i64 %89, 4
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = load i32, i32* @MSG_INFO, align 4
  %93 = call i32 (i32, i8*, ...) @wpa_printf(i32 %92, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %94 = load i8*, i8** @TRUE, align 8
  %95 = load %struct.eap_method_ret*, %struct.eap_method_ret** %12, align 8
  %96 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %95, i32 0, i32 3
  store i8* %94, i8** %96, align 8
  store i32* null, i32** %8, align 8
  br label %155

97:                                               ; preds = %88
  %98 = load i32*, i32** %16, align 8
  %99 = call i32 @WPA_GET_BE32(i32* %98)
  store i32 %99, i32* %18, align 4
  %100 = load i32, i32* @MSG_DEBUG, align 4
  %101 = load i32, i32* %18, align 4
  %102 = call i32 (i32, i8*, ...) @wpa_printf(i32 %100, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %101)
  %103 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %10, align 8
  %104 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %120

107:                                              ; preds = %97
  %108 = load i32, i32* %18, align 4
  %109 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %10, align 8
  %110 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* %18, align 4
  %112 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %10, align 8
  %113 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %10, align 8
  %115 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @wpabuf_free(i32* %116)
  %118 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %10, align 8
  %119 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %118, i32 0, i32 2
  store i32* null, i32** %119, align 8
  br label %120

120:                                              ; preds = %107, %97
  %121 = load i32*, i32** %16, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 4
  store i32* %122, i32** %16, align 8
  %123 = load i64, i64* %17, align 8
  %124 = sub i64 %123, 4
  store i64 %124, i64* %17, align 8
  %125 = load i64, i64* %17, align 8
  %126 = load i32, i32* %18, align 4
  %127 = zext i32 %126 to i64
  %128 = icmp ugt i64 %125, %127
  br i1 %128, label %129, label %138

129:                                              ; preds = %120
  %130 = load i32, i32* @MSG_INFO, align 4
  %131 = load i32, i32* %18, align 4
  %132 = load i64, i64* %17, align 8
  %133 = trunc i64 %132 to i32
  %134 = call i32 (i32, i8*, ...) @wpa_printf(i32 %130, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.6, i64 0, i64 0), i32 %131, i32 %133)
  %135 = load i8*, i8** @TRUE, align 8
  %136 = load %struct.eap_method_ret*, %struct.eap_method_ret** %12, align 8
  %137 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %136, i32 0, i32 3
  store i8* %135, i8** %137, align 8
  store i32* null, i32** %8, align 8
  br label %155

138:                                              ; preds = %120
  br label %139

139:                                              ; preds = %138, %76
  %140 = load i8*, i8** @FALSE, align 8
  %141 = load %struct.eap_method_ret*, %struct.eap_method_ret** %12, align 8
  %142 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %141, i32 0, i32 3
  store i8* %140, i8** %142, align 8
  %143 = load i32, i32* @METHOD_MAY_CONT, align 4
  %144 = load %struct.eap_method_ret*, %struct.eap_method_ret** %12, align 8
  %145 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* @DECISION_FAIL, align 4
  %147 = load %struct.eap_method_ret*, %struct.eap_method_ret** %12, align 8
  %148 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 8
  %149 = load i8*, i8** @TRUE, align 8
  %150 = load %struct.eap_method_ret*, %struct.eap_method_ret** %12, align 8
  %151 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %150, i32 0, i32 0
  store i8* %149, i8** %151, align 8
  %152 = load i64, i64* %17, align 8
  %153 = load i64*, i64** %14, align 8
  store i64 %152, i64* %153, align 8
  %154 = load i32*, i32** %16, align 8
  store i32* %154, i32** %8, align 8
  br label %155

155:                                              ; preds = %139, %129, %91, %61, %47, %24
  %156 = load i32*, i32** %8, align 8
  ret i32* %156
}

declare dso_local i64 @tls_get_errors(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32* @eap_hdr_validate(i32, i64, %struct.wpabuf*, i64*) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @WPA_GET_BE32(i32*) #1

declare dso_local i32 @wpabuf_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
