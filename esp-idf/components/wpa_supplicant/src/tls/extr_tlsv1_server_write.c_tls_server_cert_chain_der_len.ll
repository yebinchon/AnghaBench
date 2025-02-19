; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_server_write.c_tls_server_cert_chain_der_len.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_server_write.c_tls_server_cert_chain_der_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_server = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.x509_certificate* }
%struct.x509_certificate = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tlsv1_server*)* @tls_server_cert_chain_der_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tls_server_cert_chain_der_len(%struct.tlsv1_server* %0) #0 {
  %2 = alloca %struct.tlsv1_server*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.x509_certificate*, align 8
  store %struct.tlsv1_server* %0, %struct.tlsv1_server** %2, align 8
  store i64 0, i64* %3, align 8
  %5 = load %struct.tlsv1_server*, %struct.tlsv1_server** %2, align 8
  %6 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  store %struct.x509_certificate* %9, %struct.x509_certificate** %4, align 8
  br label %10

10:                                               ; preds = %24, %1
  %11 = load %struct.x509_certificate*, %struct.x509_certificate** %4, align 8
  %12 = icmp ne %struct.x509_certificate* %11, null
  br i1 %12, label %13, label %33

13:                                               ; preds = %10
  %14 = load %struct.x509_certificate*, %struct.x509_certificate** %4, align 8
  %15 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 3, %16
  %18 = load i64, i64* %3, align 8
  %19 = add i64 %18, %17
  store i64 %19, i64* %3, align 8
  %20 = load %struct.x509_certificate*, %struct.x509_certificate** %4, align 8
  %21 = call i64 @x509_certificate_self_signed(%struct.x509_certificate* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  br label %33

24:                                               ; preds = %13
  %25 = load %struct.tlsv1_server*, %struct.tlsv1_server** %2, align 8
  %26 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.x509_certificate*, %struct.x509_certificate** %4, align 8
  %31 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %30, i32 0, i32 0
  %32 = call %struct.x509_certificate* @x509_certificate_get_subject(i32 %29, i32* %31)
  store %struct.x509_certificate* %32, %struct.x509_certificate** %4, align 8
  br label %10

33:                                               ; preds = %23, %10
  %34 = load i64, i64* %3, align 8
  ret i64 %34
}

declare dso_local i64 @x509_certificate_self_signed(%struct.x509_certificate*) #1

declare dso_local %struct.x509_certificate* @x509_certificate_get_subject(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
