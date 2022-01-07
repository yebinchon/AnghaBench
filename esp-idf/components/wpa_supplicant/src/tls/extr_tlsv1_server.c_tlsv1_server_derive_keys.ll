; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_server.c_tlsv1_server_derive_keys.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_server.c_tlsv1_server_derive_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_server = type { %struct.TYPE_2__, i32*, i32*, i32* }
%struct.TYPE_2__ = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32 }

@TLS_RANDOM_LEN = common dso_local global i32 0, align 4
@TLS_MAX_KEY_BLOCK_LEN = common dso_local global i32 0, align 4
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"TLSv1: pre_master_secret\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"master secret\00", align 1
@TLS_MASTER_SECRET_LEN = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"TLSv1: Failed to derive master_secret\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"TLSv1: master_secret\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"key expansion\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"TLSv1: Failed to derive key_block\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"TLSv1: key_block\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tlsv1_server_derive_keys(%struct.tlsv1_server* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tlsv1_server*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.tlsv1_server* %0, %struct.tlsv1_server** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i32, i32* @TLS_RANDOM_LEN, align 4
  %15 = mul nsw i32 2, %14
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load i32, i32* @TLS_MAX_KEY_BLOCK_LEN, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %66

24:                                               ; preds = %3
  %25 = load i32, i32* @MSG_MSGDUMP, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @wpa_hexdump_key(i32 %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32* %26, i64 %27)
  %29 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %30 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* @TLS_RANDOM_LEN, align 4
  %33 = call i32 @os_memcpy(i32* %18, i32* %31, i32 %32)
  %34 = load i32, i32* @TLS_RANDOM_LEN, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %18, i64 %35
  %37 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %38 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* @TLS_RANDOM_LEN, align 4
  %41 = call i32 @os_memcpy(i32* %36, i32* %39, i32 %40)
  %42 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %43 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 9
  %45 = load i32, i32* %44, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i32, i32* @TLS_RANDOM_LEN, align 4
  %49 = mul nsw i32 2, %48
  %50 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %51 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* @TLS_MASTER_SECRET_LEN, align 8
  %54 = call i64 @tls_prf(i32 %45, i32* %46, i64 %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* %18, i32 %49, i32* %52, i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %24
  %57 = load i32, i32* @MSG_DEBUG, align 4
  %58 = call i32 @wpa_printf(i32 %57, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %218

59:                                               ; preds = %24
  %60 = load i32, i32* @MSG_MSGDUMP, align 4
  %61 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %62 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* @TLS_MASTER_SECRET_LEN, align 8
  %65 = call i32 @wpa_hexdump_key(i32 %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32* %63, i64 %64)
  br label %66

66:                                               ; preds = %59, %3
  %67 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %68 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* @TLS_RANDOM_LEN, align 4
  %71 = call i32 @os_memcpy(i32* %18, i32* %69, i32 %70)
  %72 = load i32, i32* @TLS_RANDOM_LEN, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %18, i64 %73
  %75 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %76 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* @TLS_RANDOM_LEN, align 4
  %79 = call i32 @os_memcpy(i32* %74, i32* %77, i32 %78)
  %80 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %81 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %85 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %83, %87
  %89 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %90 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %88, %92
  %94 = mul nsw i32 2, %93
  %95 = sext i32 %94 to i64
  store i64 %95, i64* %12, align 8
  %96 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %97 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 9
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %101 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i64, i64* @TLS_MASTER_SECRET_LEN, align 8
  %104 = load i32, i32* @TLS_RANDOM_LEN, align 4
  %105 = mul nsw i32 2, %104
  %106 = load i64, i64* %12, align 8
  %107 = call i64 @tls_prf(i32 %99, i32* %102, i64 %103, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32* %18, i32 %105, i32* %21, i64 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %66
  %110 = load i32, i32* @MSG_DEBUG, align 4
  %111 = call i32 @wpa_printf(i32 %110, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %218

112:                                              ; preds = %66
  %113 = load i32, i32* @MSG_MSGDUMP, align 4
  %114 = load i64, i64* %12, align 8
  %115 = call i32 @wpa_hexdump_key(i32 %113, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32* %21, i64 %114)
  store i32* %21, i32** %11, align 8
  %116 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %117 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 8
  %119 = load i32*, i32** %118, align 8
  %120 = load i32*, i32** %11, align 8
  %121 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %122 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @os_memcpy(i32* %119, i32* %120, i32 %124)
  %126 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %127 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32*, i32** %11, align 8
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  store i32* %132, i32** %11, align 8
  %133 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %134 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 7
  %136 = load i32*, i32** %135, align 8
  %137 = load i32*, i32** %11, align 8
  %138 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %139 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @os_memcpy(i32* %136, i32* %137, i32 %141)
  %143 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %144 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32*, i32** %11, align 8
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  store i32* %149, i32** %11, align 8
  %150 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %151 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 6
  %153 = load i32*, i32** %152, align 8
  %154 = load i32*, i32** %11, align 8
  %155 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %156 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @os_memcpy(i32* %153, i32* %154, i32 %158)
  %160 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %161 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32*, i32** %11, align 8
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds i32, i32* %164, i64 %165
  store i32* %166, i32** %11, align 8
  %167 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %168 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 5
  %170 = load i32*, i32** %169, align 8
  %171 = load i32*, i32** %11, align 8
  %172 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %173 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @os_memcpy(i32* %170, i32* %171, i32 %175)
  %177 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %178 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load i32*, i32** %11, align 8
  %182 = sext i32 %180 to i64
  %183 = getelementptr inbounds i32, i32* %181, i64 %182
  store i32* %183, i32** %11, align 8
  %184 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %185 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 4
  %187 = load i32*, i32** %186, align 8
  %188 = load i32*, i32** %11, align 8
  %189 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %190 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @os_memcpy(i32* %187, i32* %188, i32 %192)
  %194 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %195 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = load i32*, i32** %11, align 8
  %199 = sext i32 %197 to i64
  %200 = getelementptr inbounds i32, i32* %198, i64 %199
  store i32* %200, i32** %11, align 8
  %201 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %202 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 3
  %204 = load i32*, i32** %203, align 8
  %205 = load i32*, i32** %11, align 8
  %206 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %207 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @os_memcpy(i32* %204, i32* %205, i32 %209)
  %211 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %212 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = load i32*, i32** %11, align 8
  %216 = sext i32 %214 to i64
  %217 = getelementptr inbounds i32, i32* %215, i64 %216
  store i32* %217, i32** %11, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %218

218:                                              ; preds = %112, %109, %56
  %219 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %219)
  %220 = load i32, i32* %4, align 4
  ret i32 %220
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i64) #2

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #2

declare dso_local i64 @tls_prf(i32, i32*, i64, i8*, i32*, i32, i32*, i64) #2

declare dso_local i32 @wpa_printf(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
