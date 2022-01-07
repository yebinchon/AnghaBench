; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_client_read.c_tlsv1_process_diffie_hellman.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_client_read.c_tlsv1_process_diffie_hellman.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_client = type { i64, i32*, i32, i32*, i64, i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"TLSv1: Invalid dh_p length %lu\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"TLSv1: DH p (prime)\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"TLSv1: DH g (generator)\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"TLSv1: DH Ys (server's public value)\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"TLSv1: Processing DH params failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tlsv1_client*, i32*, i64)* @tlsv1_process_diffie_hellman to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tlsv1_process_diffie_hellman(%struct.tlsv1_client* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tlsv1_client*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.tlsv1_client* %0, %struct.tlsv1_client** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %11 = call i32 @tlsv1_client_free_dh(%struct.tlsv1_client* %10)
  %12 = load i32*, i32** %6, align 8
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  store i32* %15, i32** %9, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = ptrtoint i32* %16 to i64
  %19 = ptrtoint i32* %17 to i64
  %20 = sub i64 %18, %19
  %21 = sdiv exact i64 %20, 4
  %22 = icmp slt i64 %21, 3
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %247

24:                                               ; preds = %3
  %25 = load i32*, i32** %8, align 8
  %26 = call i8* @WPA_GET_BE16(i32* %25)
  %27 = ptrtoint i8* %26 to i64
  %28 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %29 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  store i32* %31, i32** %8, align 8
  %32 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %33 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %49, label %36

36:                                               ; preds = %24
  %37 = load i32*, i32** %9, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = ptrtoint i32* %37 to i64
  %40 = ptrtoint i32* %38 to i64
  %41 = sub i64 %39, %40
  %42 = sdiv exact i64 %41, 4
  %43 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %44 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = sext i32 %46 to i64
  %48 = icmp slt i64 %42, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %36, %24
  %50 = load i32, i32* @MSG_DEBUG, align 4
  %51 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %52 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 (i32, i8*, ...) @wpa_printf(i32 %50, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %53)
  br label %247

55:                                               ; preds = %36
  %56 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %57 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = call i8* @os_malloc(i32 %59)
  %61 = bitcast i8* %60 to i32*
  %62 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %63 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %62, i32 0, i32 1
  store i32* %61, i32** %63, align 8
  %64 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %65 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %55
  br label %247

69:                                               ; preds = %55
  %70 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %71 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %75 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 @os_memcpy(i32* %72, i32* %73, i32 %77)
  %79 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %80 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i32*, i32** %8, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 %81
  store i32* %83, i32** %8, align 8
  %84 = load i32, i32* @MSG_DEBUG, align 4
  %85 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %86 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %89 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = call i32 @wpa_hexdump(i32 %84, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32* %87, i32 %91)
  %93 = load i32*, i32** %9, align 8
  %94 = load i32*, i32** %8, align 8
  %95 = ptrtoint i32* %93 to i64
  %96 = ptrtoint i32* %94 to i64
  %97 = sub i64 %95, %96
  %98 = sdiv exact i64 %97, 4
  %99 = icmp slt i64 %98, 3
  br i1 %99, label %100, label %101

100:                                              ; preds = %69
  br label %247

101:                                              ; preds = %69
  %102 = load i32*, i32** %8, align 8
  %103 = call i8* @WPA_GET_BE16(i32* %102)
  %104 = ptrtoint i8* %103 to i32
  %105 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %106 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 8
  %107 = load i32*, i32** %8, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 2
  store i32* %108, i32** %8, align 8
  %109 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %110 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %125, label %113

113:                                              ; preds = %101
  %114 = load i32*, i32** %9, align 8
  %115 = load i32*, i32** %8, align 8
  %116 = ptrtoint i32* %114 to i64
  %117 = ptrtoint i32* %115 to i64
  %118 = sub i64 %116, %117
  %119 = sdiv exact i64 %118, 4
  %120 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %121 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = icmp slt i64 %119, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %113, %101
  br label %247

126:                                              ; preds = %113
  %127 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %128 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i8* @os_malloc(i32 %129)
  %131 = bitcast i8* %130 to i32*
  %132 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %133 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %132, i32 0, i32 3
  store i32* %131, i32** %133, align 8
  %134 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %135 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %134, i32 0, i32 3
  %136 = load i32*, i32** %135, align 8
  %137 = icmp eq i32* %136, null
  br i1 %137, label %138, label %139

138:                                              ; preds = %126
  br label %247

139:                                              ; preds = %126
  %140 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %141 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %140, i32 0, i32 3
  %142 = load i32*, i32** %141, align 8
  %143 = load i32*, i32** %8, align 8
  %144 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %145 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @os_memcpy(i32* %142, i32* %143, i32 %146)
  %148 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %149 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load i32*, i32** %8, align 8
  %152 = sext i32 %150 to i64
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  store i32* %153, i32** %8, align 8
  %154 = load i32, i32* @MSG_DEBUG, align 4
  %155 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %156 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %155, i32 0, i32 3
  %157 = load i32*, i32** %156, align 8
  %158 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %159 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @wpa_hexdump(i32 %154, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32* %157, i32 %160)
  %162 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %163 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = icmp eq i32 %164, 1
  br i1 %165, label %166, label %174

166:                                              ; preds = %139
  %167 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %168 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %167, i32 0, i32 3
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 0
  %171 = load i32, i32* %170, align 4
  %172 = icmp slt i32 %171, 2
  br i1 %172, label %173, label %174

173:                                              ; preds = %166
  br label %247

174:                                              ; preds = %166, %139
  %175 = load i32*, i32** %9, align 8
  %176 = load i32*, i32** %8, align 8
  %177 = ptrtoint i32* %175 to i64
  %178 = ptrtoint i32* %176 to i64
  %179 = sub i64 %177, %178
  %180 = sdiv exact i64 %179, 4
  %181 = icmp slt i64 %180, 3
  br i1 %181, label %182, label %183

182:                                              ; preds = %174
  br label %247

183:                                              ; preds = %174
  %184 = load i32*, i32** %8, align 8
  %185 = call i8* @WPA_GET_BE16(i32* %184)
  %186 = ptrtoint i8* %185 to i64
  %187 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %188 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %187, i32 0, i32 4
  store i64 %186, i64* %188, align 8
  %189 = load i32*, i32** %8, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 2
  store i32* %190, i32** %8, align 8
  %191 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %192 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %191, i32 0, i32 4
  %193 = load i64, i64* %192, align 8
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %208, label %195

195:                                              ; preds = %183
  %196 = load i32*, i32** %9, align 8
  %197 = load i32*, i32** %8, align 8
  %198 = ptrtoint i32* %196 to i64
  %199 = ptrtoint i32* %197 to i64
  %200 = sub i64 %198, %199
  %201 = sdiv exact i64 %200, 4
  %202 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %203 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %202, i32 0, i32 4
  %204 = load i64, i64* %203, align 8
  %205 = trunc i64 %204 to i32
  %206 = sext i32 %205 to i64
  %207 = icmp slt i64 %201, %206
  br i1 %207, label %208, label %209

208:                                              ; preds = %195, %183
  br label %247

209:                                              ; preds = %195
  %210 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %211 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %210, i32 0, i32 4
  %212 = load i64, i64* %211, align 8
  %213 = trunc i64 %212 to i32
  %214 = call i8* @os_malloc(i32 %213)
  %215 = bitcast i8* %214 to i32*
  %216 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %217 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %216, i32 0, i32 5
  store i32* %215, i32** %217, align 8
  %218 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %219 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %218, i32 0, i32 5
  %220 = load i32*, i32** %219, align 8
  %221 = icmp eq i32* %220, null
  br i1 %221, label %222, label %223

222:                                              ; preds = %209
  br label %247

223:                                              ; preds = %209
  %224 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %225 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %224, i32 0, i32 5
  %226 = load i32*, i32** %225, align 8
  %227 = load i32*, i32** %8, align 8
  %228 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %229 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %228, i32 0, i32 4
  %230 = load i64, i64* %229, align 8
  %231 = trunc i64 %230 to i32
  %232 = call i32 @os_memcpy(i32* %226, i32* %227, i32 %231)
  %233 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %234 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %233, i32 0, i32 4
  %235 = load i64, i64* %234, align 8
  %236 = load i32*, i32** %8, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 %235
  store i32* %237, i32** %8, align 8
  %238 = load i32, i32* @MSG_DEBUG, align 4
  %239 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %240 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %239, i32 0, i32 5
  %241 = load i32*, i32** %240, align 8
  %242 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %243 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %242, i32 0, i32 4
  %244 = load i64, i64* %243, align 8
  %245 = trunc i64 %244 to i32
  %246 = call i32 @wpa_hexdump(i32 %238, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32* %241, i32 %245)
  store i32 0, i32* %4, align 4
  br label %252

247:                                              ; preds = %222, %208, %182, %173, %138, %125, %100, %68, %49, %23
  %248 = load i32, i32* @MSG_DEBUG, align 4
  %249 = call i32 (i32, i8*, ...) @wpa_printf(i32 %248, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %250 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %251 = call i32 @tlsv1_client_free_dh(%struct.tlsv1_client* %250)
  store i32 -1, i32* %4, align 4
  br label %252

252:                                              ; preds = %247, %223
  %253 = load i32, i32* %4, align 4
  ret i32 %253
}

declare dso_local i32 @tlsv1_client_free_dh(%struct.tlsv1_client*) #1

declare dso_local i8* @WPA_GET_BE16(i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i8* @os_malloc(i32) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
