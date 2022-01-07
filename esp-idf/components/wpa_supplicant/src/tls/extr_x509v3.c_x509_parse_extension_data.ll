; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_x509v3.c_x509_parse_extension_data.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_x509v3.c_x509_parse_extension_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_certificate = type { i32 }
%struct.asn1_oid = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x509_certificate*, %struct.asn1_oid*, i32*, i64)* @x509_parse_extension_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_parse_extension_data(%struct.x509_certificate* %0, %struct.asn1_oid* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.x509_certificate*, align 8
  %7 = alloca %struct.asn1_oid*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.x509_certificate* %0, %struct.x509_certificate** %6, align 8
  store %struct.asn1_oid* %1, %struct.asn1_oid** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load %struct.asn1_oid*, %struct.asn1_oid** %7, align 8
  %11 = call i32 @x509_id_ce_oid(%struct.asn1_oid* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %41

14:                                               ; preds = %4
  %15 = load %struct.asn1_oid*, %struct.asn1_oid** %7, align 8
  %16 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 3
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %40 [
    i32 15, label %20
    i32 17, label %25
    i32 18, label %30
    i32 19, label %35
  ]

20:                                               ; preds = %14
  %21 = load %struct.x509_certificate*, %struct.x509_certificate** %6, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = call i32 @x509_parse_ext_key_usage(%struct.x509_certificate* %21, i32* %22, i64 %23)
  store i32 %24, i32* %5, align 4
  br label %41

25:                                               ; preds = %14
  %26 = load %struct.x509_certificate*, %struct.x509_certificate** %6, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = call i32 @x509_parse_ext_subject_alt_name(%struct.x509_certificate* %26, i32* %27, i64 %28)
  store i32 %29, i32* %5, align 4
  br label %41

30:                                               ; preds = %14
  %31 = load %struct.x509_certificate*, %struct.x509_certificate** %6, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @x509_parse_ext_issuer_alt_name(%struct.x509_certificate* %31, i32* %32, i64 %33)
  store i32 %34, i32* %5, align 4
  br label %41

35:                                               ; preds = %14
  %36 = load %struct.x509_certificate*, %struct.x509_certificate** %6, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @x509_parse_ext_basic_constraints(%struct.x509_certificate* %36, i32* %37, i64 %38)
  store i32 %39, i32* %5, align 4
  br label %41

40:                                               ; preds = %14
  store i32 1, i32* %5, align 4
  br label %41

41:                                               ; preds = %40, %35, %30, %25, %20, %13
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @x509_id_ce_oid(%struct.asn1_oid*) #1

declare dso_local i32 @x509_parse_ext_key_usage(%struct.x509_certificate*, i32*, i64) #1

declare dso_local i32 @x509_parse_ext_subject_alt_name(%struct.x509_certificate*, i32*, i64) #1

declare dso_local i32 @x509_parse_ext_issuer_alt_name(%struct.x509_certificate*, i32*, i64) #1

declare dso_local i32 @x509_parse_ext_basic_constraints(%struct.x509_certificate*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
