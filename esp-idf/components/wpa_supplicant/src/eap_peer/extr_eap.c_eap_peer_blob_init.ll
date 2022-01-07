; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/eap_peer/extr_eap.c_eap_peer_blob_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/eap_peer/extr_eap.c_eap_peer_blob_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i64, i64 }

@g_wpa_client_cert = common dso_local global i64 0, align 8
@g_wpa_client_cert_len = common dso_local global i64 0, align 8
@BLOB_NAME_LEN = common dso_local global i64 0, align 8
@CLIENT_CERT_NAME = common dso_local global i32 0, align 4
@g_wpa_private_key = common dso_local global i64 0, align 8
@g_wpa_private_key_len = common dso_local global i64 0, align 8
@PRIVATE_KEY_NAME = common dso_local global i32 0, align 4
@g_wpa_ca_cert = common dso_local global i64 0, align 8
@g_wpa_ca_cert_len = common dso_local global i64 0, align 8
@CA_CERT_NAME = common dso_local global i32 0, align 4
@BLOB_NUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_peer_blob_init(%struct.eap_sm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.eap_sm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %3, align 8
  %6 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %7 = icmp ne %struct.eap_sm* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %198

9:                                                ; preds = %1
  %10 = load i64, i64* @g_wpa_client_cert, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %56

12:                                               ; preds = %9
  %13 = load i64, i64* @g_wpa_client_cert_len, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %56

15:                                               ; preds = %12
  %16 = load i64, i64* @BLOB_NAME_LEN, align 8
  %17 = add nsw i64 %16, 1
  %18 = call i64 @os_zalloc(i64 %17)
  %19 = inttoptr i64 %18 to i8*
  %20 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %21 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i8* %19, i8** %24, align 8
  %25 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %26 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %15
  store i32 -2, i32* %5, align 4
  br label %151

33:                                               ; preds = %15
  %34 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %35 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i32, i32* @CLIENT_CERT_NAME, align 4
  %41 = load i64, i64* @BLOB_NAME_LEN, align 8
  %42 = add nsw i64 %41, 1
  %43 = call i32 @os_strncpy(i8* %39, i32 %40, i64 %42)
  %44 = load i64, i64* @g_wpa_client_cert_len, align 8
  %45 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %46 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  store i64 %44, i64* %49, align 8
  %50 = load i64, i64* @g_wpa_client_cert, align 8
  %51 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %52 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  store i64 %50, i64* %55, align 8
  br label %56

56:                                               ; preds = %33, %12, %9
  %57 = load i64, i64* @g_wpa_private_key, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %103

59:                                               ; preds = %56
  %60 = load i64, i64* @g_wpa_private_key_len, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %103

62:                                               ; preds = %59
  %63 = load i64, i64* @BLOB_NAME_LEN, align 8
  %64 = add nsw i64 %63, 1
  %65 = call i64 @os_zalloc(i64 %64)
  %66 = inttoptr i64 %65 to i8*
  %67 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %68 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i8* %66, i8** %71, align 8
  %72 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %73 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = icmp eq i8* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %62
  store i32 -2, i32* %5, align 4
  br label %151

80:                                               ; preds = %62
  %81 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %82 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load i32, i32* @PRIVATE_KEY_NAME, align 4
  %88 = load i64, i64* @BLOB_NAME_LEN, align 8
  %89 = add nsw i64 %88, 1
  %90 = call i32 @os_strncpy(i8* %86, i32 %87, i64 %89)
  %91 = load i64, i64* @g_wpa_private_key_len, align 8
  %92 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %93 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 1
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 2
  store i64 %91, i64* %96, align 8
  %97 = load i64, i64* @g_wpa_private_key, align 8
  %98 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %99 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %98, i32 0, i32 0
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 1
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  store i64 %97, i64* %102, align 8
  br label %103

103:                                              ; preds = %80, %59, %56
  %104 = load i64, i64* @g_wpa_ca_cert, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %150

106:                                              ; preds = %103
  %107 = load i64, i64* @g_wpa_ca_cert_len, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %150

109:                                              ; preds = %106
  %110 = load i64, i64* @BLOB_NAME_LEN, align 8
  %111 = add nsw i64 %110, 1
  %112 = call i64 @os_zalloc(i64 %111)
  %113 = inttoptr i64 %112 to i8*
  %114 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %115 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %114, i32 0, i32 0
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i64 2
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  store i8* %113, i8** %118, align 8
  %119 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %120 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %119, i32 0, i32 0
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i64 2
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = icmp eq i8* %124, null
  br i1 %125, label %126, label %127

126:                                              ; preds = %109
  store i32 -2, i32* %5, align 4
  br label %151

127:                                              ; preds = %109
  %128 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %129 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %128, i32 0, i32 0
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i64 2
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = load i32, i32* @CA_CERT_NAME, align 4
  %135 = load i64, i64* @BLOB_NAME_LEN, align 8
  %136 = add nsw i64 %135, 1
  %137 = call i32 @os_strncpy(i8* %133, i32 %134, i64 %136)
  %138 = load i64, i64* @g_wpa_ca_cert_len, align 8
  %139 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %140 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %139, i32 0, i32 0
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i64 2
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 2
  store i64 %138, i64* %143, align 8
  %144 = load i64, i64* @g_wpa_ca_cert, align 8
  %145 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %146 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %145, i32 0, i32 0
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i64 2
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 1
  store i64 %144, i64* %149, align 8
  br label %150

150:                                              ; preds = %127, %106, %103
  store i32 0, i32* %2, align 4
  br label %198

151:                                              ; preds = %126, %79, %32
  store i32 0, i32* %4, align 4
  br label %152

152:                                              ; preds = %184, %151
  %153 = load i32, i32* %4, align 4
  %154 = load i32, i32* @BLOB_NUM, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %187

156:                                              ; preds = %152
  %157 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %158 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %157, i32 0, i32 0
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** %158, align 8
  %160 = load i32, i32* %4, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %166, label %183

166:                                              ; preds = %156
  %167 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %168 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %167, i32 0, i32 0
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** %168, align 8
  %170 = load i32, i32* %4, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 0
  %174 = load i8*, i8** %173, align 8
  %175 = call i32 @os_free(i8* %174)
  %176 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %177 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %176, i32 0, i32 0
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** %177, align 8
  %179 = load i32, i32* %4, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 0
  store i8* null, i8** %182, align 8
  br label %183

183:                                              ; preds = %166, %156
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %4, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %4, align 4
  br label %152

187:                                              ; preds = %152
  %188 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %189 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %188, i32 0, i32 0
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i64 0
  %192 = load i32, i32* @BLOB_NUM, align 4
  %193 = sext i32 %192 to i64
  %194 = mul i64 4, %193
  %195 = trunc i64 %194 to i32
  %196 = call i32 @os_bzero(%struct.TYPE_2__* %191, i32 %195)
  %197 = load i32, i32* %5, align 4
  store i32 %197, i32* %2, align 4
  br label %198

198:                                              ; preds = %187, %150, %8
  %199 = load i32, i32* %2, align 4
  ret i32 %199
}

declare dso_local i64 @os_zalloc(i64) #1

declare dso_local i32 @os_strncpy(i8*, i32, i64) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32 @os_bzero(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
