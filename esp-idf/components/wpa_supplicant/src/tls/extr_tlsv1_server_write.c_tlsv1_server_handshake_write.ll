; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_server_write.c_tlsv1_server_handshake_write.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_server_write.c_tlsv1_server_handshake_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_server = type { i32, i32 }

@ESTABLISHED = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"TLSv1: Unexpected state %d while generating reply\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @tlsv1_server_handshake_write(%struct.tlsv1_server* %0, i64* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.tlsv1_server*, align 8
  %5 = alloca i64*, align 8
  store %struct.tlsv1_server* %0, %struct.tlsv1_server** %4, align 8
  store i64* %1, i64** %5, align 8
  %6 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %7 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %17 [
    i32 128, label %9
    i32 129, label %13
  ]

9:                                                ; preds = %2
  %10 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %11 = load i64*, i64** %5, align 8
  %12 = call i32* @tls_send_server_hello(%struct.tlsv1_server* %10, i64* %11)
  store i32* %12, i32** %3, align 8
  br label %35

13:                                               ; preds = %2
  %14 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %15 = load i64*, i64** %5, align 8
  %16 = call i32* @tls_send_change_cipher_spec(%struct.tlsv1_server* %14, i64* %15)
  store i32* %16, i32** %3, align 8
  br label %35

17:                                               ; preds = %2
  %18 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %19 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ESTABLISHED, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %25 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32* null, i32** %3, align 8
  br label %35

29:                                               ; preds = %23, %17
  %30 = load i32, i32* @MSG_DEBUG, align 4
  %31 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %32 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @wpa_printf(i32 %30, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %33)
  store i32* null, i32** %3, align 8
  br label %35

35:                                               ; preds = %29, %28, %13, %9
  %36 = load i32*, i32** %3, align 8
  ret i32* %36
}

declare dso_local i32* @tls_send_server_hello(%struct.tlsv1_server*, i64*) #1

declare dso_local i32* @tls_send_change_cipher_spec(%struct.tlsv1_server*, i64*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
