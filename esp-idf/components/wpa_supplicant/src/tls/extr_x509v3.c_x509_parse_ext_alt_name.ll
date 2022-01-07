; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_x509v3.c_x509_parse_ext_alt_name.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_x509v3.c_x509_parse_ext_alt_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_name = type { i32 }
%struct.asn1_hdr = type { i32, i64, i32, i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"X509: Failed to parse SubjectAltName item\00", align 1
@ASN1_CLASS_CONTEXT_SPECIFIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x509_name*, i32*, i64)* @x509_parse_ext_alt_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_parse_ext_alt_name(%struct.x509_name* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.x509_name*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.asn1_hdr, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.x509_name* %0, %struct.x509_name** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i32*, i32** %6, align 8
  store i32* %12, i32** %9, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  store i32* %15, i32** %10, align 8
  br label %16

16:                                               ; preds = %86, %3
  %17 = load i32*, i32** %9, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = icmp ult i32* %17, %18
  br i1 %19, label %20, label %93

20:                                               ; preds = %16
  %21 = load i32*, i32** %9, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = ptrtoint i32* %22 to i64
  %25 = ptrtoint i32* %23 to i64
  %26 = sub i64 %24, %25
  %27 = sdiv exact i64 %26, 4
  %28 = trunc i64 %27 to i32
  %29 = call i64 @asn1_get_next(i32* %21, i32 %28, %struct.asn1_hdr* %8)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %20
  %32 = load i32, i32* @MSG_DEBUG, align 4
  %33 = call i32 @wpa_printf(i32 %32, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %94

34:                                               ; preds = %20
  %35 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ASN1_CLASS_CONTEXT_SPECIFIC, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %86

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %79 [
    i32 1, label %43
    i32 2, label %50
    i32 6, label %57
    i32 7, label %64
    i32 8, label %71
    i32 0, label %78
    i32 3, label %78
    i32 4, label %78
    i32 5, label %78
  ]

43:                                               ; preds = %40
  %44 = load %struct.x509_name*, %struct.x509_name** %5, align 8
  %45 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @x509_parse_alt_name_rfc8222(%struct.x509_name* %44, i32* %46, i32 %48)
  store i32 %49, i32* %11, align 4
  br label %80

50:                                               ; preds = %40
  %51 = load %struct.x509_name*, %struct.x509_name** %5, align 8
  %52 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @x509_parse_alt_name_dns(%struct.x509_name* %51, i32* %53, i32 %55)
  store i32 %56, i32* %11, align 4
  br label %80

57:                                               ; preds = %40
  %58 = load %struct.x509_name*, %struct.x509_name** %5, align 8
  %59 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @x509_parse_alt_name_uri(%struct.x509_name* %58, i32* %60, i32 %62)
  store i32 %63, i32* %11, align 4
  br label %80

64:                                               ; preds = %40
  %65 = load %struct.x509_name*, %struct.x509_name** %5, align 8
  %66 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @x509_parse_alt_name_ip(%struct.x509_name* %65, i32* %67, i32 %69)
  store i32 %70, i32* %11, align 4
  br label %80

71:                                               ; preds = %40
  %72 = load %struct.x509_name*, %struct.x509_name** %5, align 8
  %73 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @x509_parse_alt_name_rid(%struct.x509_name* %72, i32* %74, i32 %76)
  store i32 %77, i32* %11, align 4
  br label %80

78:                                               ; preds = %40, %40, %40, %40
  br label %79

79:                                               ; preds = %40, %78
  store i32 0, i32* %11, align 4
  br label %80

80:                                               ; preds = %79, %71, %64, %57, %50, %43
  %81 = load i32, i32* %11, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load i32, i32* %11, align 4
  store i32 %84, i32* %4, align 4
  br label %94

85:                                               ; preds = %80
  br label %86

86:                                               ; preds = %85, %39
  %87 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  store i32* %92, i32** %9, align 8
  br label %16

93:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %93, %83, %31
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i64 @asn1_get_next(i32*, i32, %struct.asn1_hdr*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @x509_parse_alt_name_rfc8222(%struct.x509_name*, i32*, i32) #1

declare dso_local i32 @x509_parse_alt_name_dns(%struct.x509_name*, i32*, i32) #1

declare dso_local i32 @x509_parse_alt_name_uri(%struct.x509_name*, i32*, i32) #1

declare dso_local i32 @x509_parse_alt_name_ip(%struct.x509_name*, i32*, i32) #1

declare dso_local i32 @x509_parse_alt_name_rid(%struct.x509_name*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
