; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_server_read.c_tls_process_client_key_exchange_dh_anon.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_server_read.c_tls_process_client_key_exchange_dh_anon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_server = type { i64, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32* }

@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"TLSv1: ClientDiffieHellmanPublic\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"TLSv1: Implicit public value encoding not supported\00", align 1
@TLS_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@TLS_ALERT_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"TLSv1: Invalid client public value length\00", align 1
@TLS_ALERT_DECODE_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"TLSv1: Client public value overflow (length %d)\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"TLSv1: DH Yc (client's public value)\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"TLSv1: No DH parameters available\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"TLSv1: Could not allocate memory for DH\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"TLSv1: Shared secret from DH key exchange\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"TLSv1: Failed to derive keys\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tlsv1_server*, i32*, i32*)* @tls_process_client_key_exchange_dh_anon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_process_client_key_exchange_dh_anon(%struct.tlsv1_server* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tlsv1_server*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.tlsv1_server* %0, %struct.tlsv1_server** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32, i32* @MSG_MSGDUMP, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = ptrtoint i32* %15 to i64
  %18 = ptrtoint i32* %16 to i64
  %19 = sub i64 %17, %18
  %20 = sdiv exact i64 %19, 4
  %21 = trunc i64 %20 to i32
  %22 = call i32 @wpa_hexdump(i32 %13, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32* %14, i32 %21)
  %23 = load i32*, i32** %7, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = icmp eq i32* %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %3
  %27 = load i32, i32* @MSG_DEBUG, align 4
  %28 = call i32 (i32, i8*, ...) @wpa_printf(i32 %27, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %30 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %31 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %32 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %29, i32 %30, i32 %31)
  store i32 -1, i32* %4, align 4
  br label %178

33:                                               ; preds = %3
  %34 = load i32*, i32** %7, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = ptrtoint i32* %34 to i64
  %37 = ptrtoint i32* %35 to i64
  %38 = sub i64 %36, %37
  %39 = sdiv exact i64 %38, 4
  %40 = icmp slt i64 %39, 3
  br i1 %40, label %41, label %48

41:                                               ; preds = %33
  %42 = load i32, i32* @MSG_DEBUG, align 4
  %43 = call i32 (i32, i8*, ...) @wpa_printf(i32 %42, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %44 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %45 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %46 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %47 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %44, i32 %45, i32 %46)
  store i32 -1, i32* %4, align 4
  br label %178

48:                                               ; preds = %33
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @WPA_GET_BE16(i32* %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  store i32* %52, i32** %8, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32*, i32** %7, align 8
  %58 = icmp ugt i32* %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %48
  %60 = load i32, i32* @MSG_DEBUG, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 (i32, i8*, ...) @wpa_printf(i32 %60, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  %63 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %64 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %65 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %66 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %63, i32 %64, i32 %65)
  store i32 -1, i32* %4, align 4
  br label %178

67:                                               ; preds = %48
  %68 = load i32, i32* @MSG_DEBUG, align 4
  %69 = load i32*, i32** %8, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @wpa_hexdump(i32 %68, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32* %69, i32 %70)
  %72 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %73 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %72, i32 0, i32 2
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = icmp eq %struct.TYPE_2__* %74, null
  br i1 %75, label %88, label %76

76:                                               ; preds = %67
  %77 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %78 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %77, i32 0, i32 2
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %88, label %83

83:                                               ; preds = %76
  %84 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %85 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %95

88:                                               ; preds = %83, %76, %67
  %89 = load i32, i32* @MSG_DEBUG, align 4
  %90 = call i32 (i32, i8*, ...) @wpa_printf(i32 %89, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %91 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %92 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %93 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %94 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %91, i32 %92, i32 %93)
  store i32 -1, i32* %4, align 4
  br label %178

95:                                               ; preds = %83
  %96 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %97 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %96, i32 0, i32 2
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %11, align 8
  %101 = load i64, i64* %11, align 8
  %102 = call i32* @os_malloc(i64 %101)
  store i32* %102, i32** %10, align 8
  %103 = load i32*, i32** %10, align 8
  %104 = icmp eq i32* %103, null
  br i1 %104, label %105, label %112

105:                                              ; preds = %95
  %106 = load i32, i32* @MSG_DEBUG, align 4
  %107 = call i32 (i32, i8*, ...) @wpa_printf(i32 %106, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %108 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %109 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %110 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %111 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %108, i32 %109, i32 %110)
  store i32 -1, i32* %4, align 4
  br label %178

112:                                              ; preds = %95
  %113 = load i32*, i32** %8, align 8
  %114 = load i32, i32* %9, align 4
  %115 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %116 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %119 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %122 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %121, i32 0, i32 2
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %127 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %126, i32 0, i32 2
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i32*, i32** %10, align 8
  %132 = call i64 @crypto_mod_exp(i32* %113, i32 %114, i32* %117, i64 %120, i32* %125, i64 %130, i32* %131, i64* %11)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %112
  %135 = load i32*, i32** %10, align 8
  %136 = call i32 @os_free(i32* %135)
  %137 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %138 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %139 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %140 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %137, i32 %138, i32 %139)
  store i32 -1, i32* %4, align 4
  br label %178

141:                                              ; preds = %112
  %142 = load i32, i32* @MSG_DEBUG, align 4
  %143 = load i32*, i32** %10, align 8
  %144 = load i64, i64* %11, align 8
  %145 = call i32 @wpa_hexdump_key(i32 %142, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i32* %143, i64 %144)
  %146 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %147 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %150 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @os_memset(i32* %148, i32 0, i64 %151)
  %153 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %154 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = call i32 @os_free(i32* %155)
  %157 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %158 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %157, i32 0, i32 1
  store i32* null, i32** %158, align 8
  %159 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %160 = load i32*, i32** %10, align 8
  %161 = load i64, i64* %11, align 8
  %162 = call i32 @tlsv1_server_derive_keys(%struct.tlsv1_server* %159, i32* %160, i64 %161)
  store i32 %162, i32* %12, align 4
  %163 = load i32*, i32** %10, align 8
  %164 = load i64, i64* %11, align 8
  %165 = call i32 @os_memset(i32* %163, i32 0, i64 %164)
  %166 = load i32*, i32** %10, align 8
  %167 = call i32 @os_free(i32* %166)
  %168 = load i32, i32* %12, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %141
  %171 = load i32, i32* @MSG_DEBUG, align 4
  %172 = call i32 (i32, i8*, ...) @wpa_printf(i32 %171, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %173 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %174 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %175 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %176 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %173, i32 %174, i32 %175)
  store i32 -1, i32* %4, align 4
  br label %178

177:                                              ; preds = %141
  store i32 0, i32* %4, align 4
  br label %178

178:                                              ; preds = %177, %170, %134, %105, %88, %59, %41, %26
  %179 = load i32, i32* %4, align 4
  ret i32 %179
}

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @tlsv1_server_alert(%struct.tlsv1_server*, i32, i32) #1

declare dso_local i32 @WPA_GET_BE16(i32*) #1

declare dso_local i32* @os_malloc(i64) #1

declare dso_local i64 @crypto_mod_exp(i32*, i32, i32*, i64, i32*, i64, i32*, i64*) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i64) #1

declare dso_local i32 @os_memset(i32*, i32, i64) #1

declare dso_local i32 @tlsv1_server_derive_keys(%struct.tlsv1_server*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
