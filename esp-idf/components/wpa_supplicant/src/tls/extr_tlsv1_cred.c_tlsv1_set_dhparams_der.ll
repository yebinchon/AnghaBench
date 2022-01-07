; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_cred.c_tlsv1_set_dhparams_der.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_cred.c_tlsv1_set_dhparams_der.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_credentials = type { i64, i64, i32*, i32* }
%struct.asn1_hdr = type { i64, i64, i64, i32* }

@ASN1_CLASS_UNIVERSAL = common dso_local global i64 0, align 8
@ASN1_TAG_SEQUENCE = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"DH: DH parameters did not start with a valid SEQUENCE - found class %d tag 0x%x\00", align 1
@ASN1_TAG_INTEGER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"DH: No INTEGER tag found for p; class=%d tag=0x%x\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"DH: prime (p)\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"DH: No INTEGER tag found for g; class=%d tag=0x%x\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"DH: base (g)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tlsv1_credentials*, i32*, i64)* @tlsv1_set_dhparams_der to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tlsv1_set_dhparams_der(%struct.tlsv1_credentials* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tlsv1_credentials*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.asn1_hdr, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.tlsv1_credentials* %0, %struct.tlsv1_credentials** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i32*, i32** %6, align 8
  store i32* %11, i32** %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  store i32* %14, i32** %10, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = load i64, i64* %7, align 8
  %17 = trunc i64 %16 to i32
  %18 = call i64 @asn1_get_next(i32* %15, i32 %17, %struct.asn1_hdr* %8)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ASN1_CLASS_UNIVERSAL, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ASN1_TAG_SEQUENCE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %25, %20, %3
  %31 = load i32, i32* @MSG_DEBUG, align 4
  %32 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @wpa_printf(i32 %31, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i64 %33, i64 %35)
  store i32 -1, i32* %4, align 4
  br label %181

37:                                               ; preds = %25
  %38 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %9, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = ptrtoint i32* %41 to i64
  %44 = ptrtoint i32* %42 to i64
  %45 = sub i64 %43, %44
  %46 = sdiv exact i64 %45, 4
  %47 = trunc i64 %46 to i32
  %48 = call i64 @asn1_get_next(i32* %40, i32 %47, %struct.asn1_hdr* %8)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %37
  store i32 -1, i32* %4, align 4
  br label %181

51:                                               ; preds = %37
  %52 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ASN1_CLASS_UNIVERSAL, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @ASN1_TAG_INTEGER, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %56, %51
  %62 = load i32, i32* @MSG_DEBUG, align 4
  %63 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @wpa_printf(i32 %62, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i64 %64, i64 %66)
  store i32 -1, i32* %4, align 4
  br label %181

68:                                               ; preds = %56
  %69 = load i32, i32* @MSG_MSGDUMP, align 4
  %70 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @wpa_hexdump(i32 %69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* %71, i64 %73)
  %75 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  store i32 -1, i32* %4, align 4
  br label %181

79:                                               ; preds = %68
  %80 = load %struct.tlsv1_credentials*, %struct.tlsv1_credentials** %5, align 8
  %81 = getelementptr inbounds %struct.tlsv1_credentials, %struct.tlsv1_credentials* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @os_free(i32* %82)
  %84 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = call i8* @os_malloc(i64 %85)
  %87 = bitcast i8* %86 to i32*
  %88 = load %struct.tlsv1_credentials*, %struct.tlsv1_credentials** %5, align 8
  %89 = getelementptr inbounds %struct.tlsv1_credentials, %struct.tlsv1_credentials* %88, i32 0, i32 3
  store i32* %87, i32** %89, align 8
  %90 = load %struct.tlsv1_credentials*, %struct.tlsv1_credentials** %5, align 8
  %91 = getelementptr inbounds %struct.tlsv1_credentials, %struct.tlsv1_credentials* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = icmp eq i32* %92, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %79
  store i32 -1, i32* %4, align 4
  br label %181

95:                                               ; preds = %79
  %96 = load %struct.tlsv1_credentials*, %struct.tlsv1_credentials** %5, align 8
  %97 = getelementptr inbounds %struct.tlsv1_credentials, %struct.tlsv1_credentials* %96, i32 0, i32 3
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @os_memcpy(i32* %98, i32* %100, i64 %102)
  %104 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.tlsv1_credentials*, %struct.tlsv1_credentials** %5, align 8
  %107 = getelementptr inbounds %struct.tlsv1_credentials, %struct.tlsv1_credentials* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  %108 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 3
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32* %112, i32** %9, align 8
  %113 = load i32*, i32** %9, align 8
  %114 = load i32*, i32** %10, align 8
  %115 = load i32*, i32** %9, align 8
  %116 = ptrtoint i32* %114 to i64
  %117 = ptrtoint i32* %115 to i64
  %118 = sub i64 %116, %117
  %119 = sdiv exact i64 %118, 4
  %120 = trunc i64 %119 to i32
  %121 = call i64 @asn1_get_next(i32* %113, i32 %120, %struct.asn1_hdr* %8)
  %122 = icmp slt i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %95
  store i32 -1, i32* %4, align 4
  br label %181

124:                                              ; preds = %95
  %125 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @ASN1_CLASS_UNIVERSAL, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %134, label %129

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @ASN1_TAG_INTEGER, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %141

134:                                              ; preds = %129, %124
  %135 = load i32, i32* @MSG_DEBUG, align 4
  %136 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @wpa_printf(i32 %135, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i64 %137, i64 %139)
  store i32 -1, i32* %4, align 4
  br label %181

141:                                              ; preds = %129
  %142 = load i32, i32* @MSG_MSGDUMP, align 4
  %143 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 3
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @wpa_hexdump(i32 %142, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32* %144, i64 %146)
  %148 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %141
  store i32 -1, i32* %4, align 4
  br label %181

152:                                              ; preds = %141
  %153 = load %struct.tlsv1_credentials*, %struct.tlsv1_credentials** %5, align 8
  %154 = getelementptr inbounds %struct.tlsv1_credentials, %struct.tlsv1_credentials* %153, i32 0, i32 2
  %155 = load i32*, i32** %154, align 8
  %156 = call i32 @os_free(i32* %155)
  %157 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = call i8* @os_malloc(i64 %158)
  %160 = bitcast i8* %159 to i32*
  %161 = load %struct.tlsv1_credentials*, %struct.tlsv1_credentials** %5, align 8
  %162 = getelementptr inbounds %struct.tlsv1_credentials, %struct.tlsv1_credentials* %161, i32 0, i32 2
  store i32* %160, i32** %162, align 8
  %163 = load %struct.tlsv1_credentials*, %struct.tlsv1_credentials** %5, align 8
  %164 = getelementptr inbounds %struct.tlsv1_credentials, %struct.tlsv1_credentials* %163, i32 0, i32 2
  %165 = load i32*, i32** %164, align 8
  %166 = icmp eq i32* %165, null
  br i1 %166, label %167, label %168

167:                                              ; preds = %152
  store i32 -1, i32* %4, align 4
  br label %181

168:                                              ; preds = %152
  %169 = load %struct.tlsv1_credentials*, %struct.tlsv1_credentials** %5, align 8
  %170 = getelementptr inbounds %struct.tlsv1_credentials, %struct.tlsv1_credentials* %169, i32 0, i32 2
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 3
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @os_memcpy(i32* %171, i32* %173, i64 %175)
  %177 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.tlsv1_credentials*, %struct.tlsv1_credentials** %5, align 8
  %180 = getelementptr inbounds %struct.tlsv1_credentials, %struct.tlsv1_credentials* %179, i32 0, i32 1
  store i64 %178, i64* %180, align 8
  store i32 0, i32* %4, align 4
  br label %181

181:                                              ; preds = %168, %167, %151, %134, %123, %94, %78, %61, %50, %30
  %182 = load i32, i32* %4, align 4
  ret i32 %182
}

declare dso_local i64 @asn1_get_next(i32*, i32, %struct.asn1_hdr*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i64, i64) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i8* @os_malloc(i64) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
