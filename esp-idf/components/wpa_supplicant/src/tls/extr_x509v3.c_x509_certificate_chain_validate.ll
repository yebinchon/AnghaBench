; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_x509v3.c_x509_certificate_chain_validate.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_x509v3.c_x509_certificate_chain_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_certificate = type { i32, i64, i32, i32, %struct.x509_certificate*, i64, i64 }
%struct.os_time = type { i64 }

@X509_VALIDATE_OK = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"X509: Validate certificate chain\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"X509: %lu: %s\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [67 x i8] c"X509: Certificate not valid (now=%lu not_before=%lu not_after=%lu)\00", align 1
@X509_VALIDATE_CERTIFICATE_EXPIRED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"X509: Certificate chain issuer name mismatch\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"X509: cert issuer: %s\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"X509: next cert subject: %s\00", align 1
@X509_VALIDATE_CERTIFICATE_UNKNOWN = common dso_local global i32 0, align 4
@X509_VALIDATE_BAD_CERTIFICATE = common dso_local global i32 0, align 4
@X509_EXT_PATH_LEN_CONSTRAINT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [71 x i8] c"X509: pathLenConstraint not met (idx=%lu issuer pathLenConstraint=%lu)\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"X509: Invalid certificate signature within chain\00", align 1
@.str.8 = private unnamed_addr constant [57 x i8] c"X509: Found issuer from the list of trusted certificates\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"X509: Invalid certificate signature\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"X509: Trusted certificate found to complete the chain\00", align 1
@.str.11 = private unnamed_addr constant [76 x i8] c"X509: Did not find any of the issuers from the list of trusted certificates\00", align 1
@X509_VALIDATE_UNKNOWN_CA = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [70 x i8] c"X509: Certificate chain validation disabled - ignore unknown CA issue\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"X509: Certificate chain valid\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x509_certificate_chain_validate(%struct.x509_certificate* %0, %struct.x509_certificate* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.x509_certificate*, align 8
  %7 = alloca %struct.x509_certificate*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.x509_certificate*, align 8
  %13 = alloca %struct.x509_certificate*, align 8
  %14 = alloca [128 x i8], align 16
  %15 = alloca %struct.os_time, align 8
  store %struct.x509_certificate* %0, %struct.x509_certificate** %6, align 8
  store %struct.x509_certificate* %1, %struct.x509_certificate** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* @X509_VALIDATE_OK, align 4
  %17 = load i32*, i32** %8, align 8
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @MSG_DEBUG, align 4
  %19 = call i32 (i32, i8*, ...) @wpa_printf(i32 %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @os_get_time(%struct.os_time* %15)
  %21 = load %struct.x509_certificate*, %struct.x509_certificate** %7, align 8
  store %struct.x509_certificate* %21, %struct.x509_certificate** %12, align 8
  store i64 0, i64* %10, align 8
  br label %22

22:                                               ; preds = %196, %4
  %23 = load %struct.x509_certificate*, %struct.x509_certificate** %12, align 8
  %24 = icmp ne %struct.x509_certificate* %23, null
  br i1 %24, label %25, label %202

25:                                               ; preds = %22
  %26 = load %struct.x509_certificate*, %struct.x509_certificate** %12, align 8
  %27 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %26, i32 0, i32 2
  %28 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %29 = call i32 @x509_name_string(i32* %27, i8* %28, i32 128)
  %30 = load i32, i32* @MSG_DEBUG, align 4
  %31 = load i64, i64* %10, align 8
  %32 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %33 = call i32 (i32, i8*, ...) @wpa_printf(i32 %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i64 %31, i8* %32)
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  br label %196

37:                                               ; preds = %25
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %67, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.os_time, %struct.os_time* %15, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.x509_certificate*, %struct.x509_certificate** %12, align 8
  %44 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %43, i32 0, i32 6
  %45 = load i64, i64* %44, align 8
  %46 = icmp ult i64 %42, %45
  br i1 %46, label %54, label %47

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.os_time, %struct.os_time* %15, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.x509_certificate*, %struct.x509_certificate** %12, align 8
  %51 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = icmp ugt i64 %49, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %47, %40
  %55 = load i32, i32* @MSG_INFO, align 4
  %56 = getelementptr inbounds %struct.os_time, %struct.os_time* %15, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.x509_certificate*, %struct.x509_certificate** %12, align 8
  %59 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %58, i32 0, i32 6
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.x509_certificate*, %struct.x509_certificate** %12, align 8
  %62 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %61, i32 0, i32 5
  %63 = load i64, i64* %62, align 8
  %64 = call i32 (i32, i8*, ...) @wpa_printf(i32 %55, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i64 %57, i64 %60, i64 %63)
  %65 = load i32, i32* @X509_VALIDATE_CERTIFICATE_EXPIRED, align 4
  %66 = load i32*, i32** %8, align 8
  store i32 %65, i32* %66, align 4
  store i32 -1, i32* %5, align 4
  br label %219

67:                                               ; preds = %47, %37
  %68 = load %struct.x509_certificate*, %struct.x509_certificate** %12, align 8
  %69 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %68, i32 0, i32 4
  %70 = load %struct.x509_certificate*, %struct.x509_certificate** %69, align 8
  %71 = icmp ne %struct.x509_certificate* %70, null
  br i1 %71, label %72, label %152

72:                                               ; preds = %67
  %73 = load %struct.x509_certificate*, %struct.x509_certificate** %12, align 8
  %74 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %73, i32 0, i32 3
  %75 = load %struct.x509_certificate*, %struct.x509_certificate** %12, align 8
  %76 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %75, i32 0, i32 4
  %77 = load %struct.x509_certificate*, %struct.x509_certificate** %76, align 8
  %78 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %77, i32 0, i32 2
  %79 = call i64 @x509_name_compare(i32* %74, i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %102

81:                                               ; preds = %72
  %82 = load i32, i32* @MSG_DEBUG, align 4
  %83 = call i32 (i32, i8*, ...) @wpa_printf(i32 %82, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %84 = load %struct.x509_certificate*, %struct.x509_certificate** %12, align 8
  %85 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %84, i32 0, i32 3
  %86 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %87 = call i32 @x509_name_string(i32* %85, i8* %86, i32 128)
  %88 = load i32, i32* @MSG_DEBUG, align 4
  %89 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %90 = call i32 (i32, i8*, ...) @wpa_printf(i32 %88, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %89)
  %91 = load %struct.x509_certificate*, %struct.x509_certificate** %12, align 8
  %92 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %91, i32 0, i32 4
  %93 = load %struct.x509_certificate*, %struct.x509_certificate** %92, align 8
  %94 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %93, i32 0, i32 2
  %95 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %96 = call i32 @x509_name_string(i32* %94, i8* %95, i32 128)
  %97 = load i32, i32* @MSG_DEBUG, align 4
  %98 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %99 = call i32 (i32, i8*, ...) @wpa_printf(i32 %97, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %98)
  %100 = load i32, i32* @X509_VALIDATE_CERTIFICATE_UNKNOWN, align 4
  %101 = load i32*, i32** %8, align 8
  store i32 %100, i32* %101, align 4
  store i32 -1, i32* %5, align 4
  br label %219

102:                                              ; preds = %72
  %103 = load %struct.x509_certificate*, %struct.x509_certificate** %12, align 8
  %104 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %103, i32 0, i32 4
  %105 = load %struct.x509_certificate*, %struct.x509_certificate** %104, align 8
  %106 = call i64 @x509_valid_issuer(%struct.x509_certificate* %105)
  %107 = icmp slt i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = load i32, i32* @X509_VALIDATE_BAD_CERTIFICATE, align 4
  %110 = load i32*, i32** %8, align 8
  store i32 %109, i32* %110, align 4
  store i32 -1, i32* %5, align 4
  br label %219

111:                                              ; preds = %102
  %112 = load %struct.x509_certificate*, %struct.x509_certificate** %12, align 8
  %113 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %112, i32 0, i32 4
  %114 = load %struct.x509_certificate*, %struct.x509_certificate** %113, align 8
  %115 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @X509_EXT_PATH_LEN_CONSTRAINT, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %139

120:                                              ; preds = %111
  %121 = load i64, i64* %10, align 8
  %122 = load %struct.x509_certificate*, %struct.x509_certificate** %12, align 8
  %123 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %122, i32 0, i32 4
  %124 = load %struct.x509_certificate*, %struct.x509_certificate** %123, align 8
  %125 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp ugt i64 %121, %126
  br i1 %127, label %128, label %139

128:                                              ; preds = %120
  %129 = load i32, i32* @MSG_DEBUG, align 4
  %130 = load i64, i64* %10, align 8
  %131 = load %struct.x509_certificate*, %struct.x509_certificate** %12, align 8
  %132 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %131, i32 0, i32 4
  %133 = load %struct.x509_certificate*, %struct.x509_certificate** %132, align 8
  %134 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = call i32 (i32, i8*, ...) @wpa_printf(i32 %129, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.6, i64 0, i64 0), i64 %130, i64 %135)
  %137 = load i32, i32* @X509_VALIDATE_BAD_CERTIFICATE, align 4
  %138 = load i32*, i32** %8, align 8
  store i32 %137, i32* %138, align 4
  store i32 -1, i32* %5, align 4
  br label %219

139:                                              ; preds = %120, %111
  %140 = load %struct.x509_certificate*, %struct.x509_certificate** %12, align 8
  %141 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %140, i32 0, i32 4
  %142 = load %struct.x509_certificate*, %struct.x509_certificate** %141, align 8
  %143 = load %struct.x509_certificate*, %struct.x509_certificate** %12, align 8
  %144 = call i64 @x509_certificate_check_signature(%struct.x509_certificate* %142, %struct.x509_certificate* %143)
  %145 = icmp slt i64 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %139
  %147 = load i32, i32* @MSG_DEBUG, align 4
  %148 = call i32 (i32, i8*, ...) @wpa_printf(i32 %147, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0))
  %149 = load i32, i32* @X509_VALIDATE_BAD_CERTIFICATE, align 4
  %150 = load i32*, i32** %8, align 8
  store i32 %149, i32* %150, align 4
  store i32 -1, i32* %5, align 4
  br label %219

151:                                              ; preds = %139
  br label %152

152:                                              ; preds = %151, %67
  %153 = load %struct.x509_certificate*, %struct.x509_certificate** %6, align 8
  store %struct.x509_certificate* %153, %struct.x509_certificate** %13, align 8
  br label %154

154:                                              ; preds = %166, %152
  %155 = load %struct.x509_certificate*, %struct.x509_certificate** %13, align 8
  %156 = icmp ne %struct.x509_certificate* %155, null
  br i1 %156, label %157, label %170

157:                                              ; preds = %154
  %158 = load %struct.x509_certificate*, %struct.x509_certificate** %12, align 8
  %159 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %158, i32 0, i32 3
  %160 = load %struct.x509_certificate*, %struct.x509_certificate** %13, align 8
  %161 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %160, i32 0, i32 2
  %162 = call i64 @x509_name_compare(i32* %159, i32* %161)
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %157
  br label %170

165:                                              ; preds = %157
  br label %166

166:                                              ; preds = %165
  %167 = load %struct.x509_certificate*, %struct.x509_certificate** %13, align 8
  %168 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %167, i32 0, i32 4
  %169 = load %struct.x509_certificate*, %struct.x509_certificate** %168, align 8
  store %struct.x509_certificate* %169, %struct.x509_certificate** %13, align 8
  br label %154

170:                                              ; preds = %164, %154
  %171 = load %struct.x509_certificate*, %struct.x509_certificate** %13, align 8
  %172 = icmp ne %struct.x509_certificate* %171, null
  br i1 %172, label %173, label %195

173:                                              ; preds = %170
  %174 = load i32, i32* @MSG_DEBUG, align 4
  %175 = call i32 (i32, i8*, ...) @wpa_printf(i32 %174, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0))
  %176 = load %struct.x509_certificate*, %struct.x509_certificate** %13, align 8
  %177 = call i64 @x509_valid_issuer(%struct.x509_certificate* %176)
  %178 = icmp slt i64 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %173
  %180 = load i32, i32* @X509_VALIDATE_BAD_CERTIFICATE, align 4
  %181 = load i32*, i32** %8, align 8
  store i32 %180, i32* %181, align 4
  store i32 -1, i32* %5, align 4
  br label %219

182:                                              ; preds = %173
  %183 = load %struct.x509_certificate*, %struct.x509_certificate** %13, align 8
  %184 = load %struct.x509_certificate*, %struct.x509_certificate** %12, align 8
  %185 = call i64 @x509_certificate_check_signature(%struct.x509_certificate* %183, %struct.x509_certificate* %184)
  %186 = icmp slt i64 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %182
  %188 = load i32, i32* @MSG_DEBUG, align 4
  %189 = call i32 (i32, i8*, ...) @wpa_printf(i32 %188, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  %190 = load i32, i32* @X509_VALIDATE_BAD_CERTIFICATE, align 4
  %191 = load i32*, i32** %8, align 8
  store i32 %190, i32* %191, align 4
  store i32 -1, i32* %5, align 4
  br label %219

192:                                              ; preds = %182
  %193 = load i32, i32* @MSG_DEBUG, align 4
  %194 = call i32 (i32, i8*, ...) @wpa_printf(i32 %193, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %195

195:                                              ; preds = %192, %170
  br label %196

196:                                              ; preds = %195, %36
  %197 = load %struct.x509_certificate*, %struct.x509_certificate** %12, align 8
  %198 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %197, i32 0, i32 4
  %199 = load %struct.x509_certificate*, %struct.x509_certificate** %198, align 8
  store %struct.x509_certificate* %199, %struct.x509_certificate** %12, align 8
  %200 = load i64, i64* %10, align 8
  %201 = add i64 %200, 1
  store i64 %201, i64* %10, align 8
  br label %22

202:                                              ; preds = %22
  %203 = load i32, i32* %11, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %216, label %205

205:                                              ; preds = %202
  %206 = load i32, i32* @MSG_DEBUG, align 4
  %207 = call i32 (i32, i8*, ...) @wpa_printf(i32 %206, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.11, i64 0, i64 0))
  %208 = load %struct.x509_certificate*, %struct.x509_certificate** %6, align 8
  %209 = icmp ne %struct.x509_certificate* %208, null
  br i1 %209, label %210, label %213

210:                                              ; preds = %205
  %211 = load i32, i32* @X509_VALIDATE_UNKNOWN_CA, align 4
  %212 = load i32*, i32** %8, align 8
  store i32 %211, i32* %212, align 4
  store i32 -1, i32* %5, align 4
  br label %219

213:                                              ; preds = %205
  %214 = load i32, i32* @MSG_DEBUG, align 4
  %215 = call i32 (i32, i8*, ...) @wpa_printf(i32 %214, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.12, i64 0, i64 0))
  br label %216

216:                                              ; preds = %213, %202
  %217 = load i32, i32* @MSG_DEBUG, align 4
  %218 = call i32 (i32, i8*, ...) @wpa_printf(i32 %217, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %219

219:                                              ; preds = %216, %210, %187, %179, %146, %128, %108, %81, %54
  %220 = load i32, i32* %5, align 4
  ret i32 %220
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @os_get_time(%struct.os_time*) #1

declare dso_local i32 @x509_name_string(i32*, i8*, i32) #1

declare dso_local i64 @x509_name_compare(i32*, i32*) #1

declare dso_local i64 @x509_valid_issuer(%struct.x509_certificate*) #1

declare dso_local i64 @x509_certificate_check_signature(%struct.x509_certificate*, %struct.x509_certificate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
