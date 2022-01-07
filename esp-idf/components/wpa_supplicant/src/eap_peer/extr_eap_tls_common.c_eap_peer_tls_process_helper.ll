; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/eap_peer/extr_eap_tls_common.c_eap_peer_tls_process_helper.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/eap_peer/extr_eap_tls_common.c_eap_peer_tls_process_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_ssl_data = type { i32*, i32, i32 }
%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"SSL: Received non-ACK when output fragments are waiting to be sent out\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"SSL: Failed - tls_out available to report error\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"SSL: No data to be sent out\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_peer_tls_process_helper(%struct.eap_sm* %0, %struct.eap_ssl_data* %1, i32 %2, i32 %3, i32 %4, i32* %5, i64 %6, %struct.wpabuf** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.eap_sm*, align 8
  %11 = alloca %struct.eap_ssl_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.wpabuf**, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %10, align 8
  store %struct.eap_ssl_data* %1, %struct.eap_ssl_data** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i64 %6, i64* %16, align 8
  store %struct.wpabuf** %7, %struct.wpabuf*** %17, align 8
  store i32 0, i32* %18, align 4
  %20 = load %struct.wpabuf**, %struct.wpabuf*** %17, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %20, align 8
  %21 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %11, align 8
  %22 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %8
  %26 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %11, align 8
  %27 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i64 @wpabuf_len(i32* %28)
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load i64, i64* %16, align 8
  %33 = icmp ugt i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* @MSG_DEBUG, align 4
  %36 = call i32 @wpa_printf(i32 %35, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %9, align 4
  br label %108

37:                                               ; preds = %31, %25, %8
  %38 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %11, align 8
  %39 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %11, align 8
  %44 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i64 @wpabuf_len(i32* %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %42, %37
  %49 = load %struct.eap_sm*, %struct.eap_sm** %10, align 8
  %50 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %11, align 8
  %51 = load i32*, i32** %15, align 8
  %52 = load i64, i64* %16, align 8
  %53 = load %struct.wpabuf**, %struct.wpabuf*** %17, align 8
  %54 = call i32 @eap_tls_process_input(%struct.eap_sm* %49, %struct.eap_ssl_data* %50, i32* %51, i64 %52, %struct.wpabuf** %53)
  store i32 %54, i32* %19, align 4
  %55 = load i32, i32* %19, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = load i32, i32* %19, align 4
  store i32 %58, i32* %9, align 4
  br label %108

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59, %42
  %61 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %11, align 8
  %62 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %11, align 8
  %67 = call i32 @eap_peer_tls_reset_output(%struct.eap_ssl_data* %66)
  store i32 -1, i32* %9, align 4
  br label %108

68:                                               ; preds = %60
  %69 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %11, align 8
  %70 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %11, align 8
  %73 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @tls_connection_get_failed(i32 %71, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %68
  %78 = load i32, i32* @MSG_DEBUG, align 4
  %79 = call i32 @wpa_printf(i32 %78, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %18, align 4
  br label %80

80:                                               ; preds = %77, %68
  %81 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %11, align 8
  %82 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %91, label %85

85:                                               ; preds = %80
  %86 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %11, align 8
  %87 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = call i64 @wpabuf_len(i32* %88)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %85, %80
  %92 = load i32, i32* @MSG_DEBUG, align 4
  %93 = call i32 @wpa_printf(i32 %92, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %94 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %11, align 8
  %95 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @wpabuf_free(i32* %96)
  %98 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %11, align 8
  %99 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %98, i32 0, i32 0
  store i32* null, i32** %99, align 8
  store i32 1, i32* %9, align 4
  br label %108

100:                                              ; preds = %85
  %101 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %11, align 8
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* %18, align 4
  %106 = load %struct.wpabuf**, %struct.wpabuf*** %17, align 8
  %107 = call i32 @eap_tls_process_output(%struct.eap_ssl_data* %101, i32 %102, i32 %103, i32 %104, i32 %105, %struct.wpabuf** %106)
  store i32 %107, i32* %9, align 4
  br label %108

108:                                              ; preds = %100, %91, %65, %57, %34
  %109 = load i32, i32* %9, align 4
  ret i32 %109
}

declare dso_local i64 @wpabuf_len(i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @eap_tls_process_input(%struct.eap_sm*, %struct.eap_ssl_data*, i32*, i64, %struct.wpabuf**) #1

declare dso_local i32 @eap_peer_tls_reset_output(%struct.eap_ssl_data*) #1

declare dso_local i64 @tls_connection_get_failed(i32, i32) #1

declare dso_local i32 @wpabuf_free(i32*) #1

declare dso_local i32 @eap_tls_process_output(%struct.eap_ssl_data*, i32, i32, i32, i32, %struct.wpabuf**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
