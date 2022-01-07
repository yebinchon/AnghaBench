; ModuleID = '/home/carl/AnghaBench/esp-idf/components/tcp_transport/extr_transport_ws.c__ws_write.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/tcp_transport/extr_transport_ws.c__ws_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@MAX_WEBSOCKET_HEADER_SIZE = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Error transport_poll_write\00", align 1
@WS_SIZE16 = common dso_local global i32 0, align 4
@WS_SIZE64 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Error write header\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i8*, i32, i32)* @_ws_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ws_write(i32 %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_3__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call %struct.TYPE_3__* @esp_transport_get_context_data(i32 %24)
  store %struct.TYPE_3__* %25, %struct.TYPE_3__** %14, align 8
  %26 = load i8*, i8** %11, align 8
  store i8* %26, i8** %15, align 8
  %27 = load i32, i32* @MAX_WEBSOCKET_HEADER_SIZE, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %16, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %17, align 8
  store i32 0, i32* %19, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %13, align 4
  %35 = call i32 @esp_transport_poll_write(i32 %33, i32 %34)
  store i32 %35, i32* %21, align 4
  %36 = icmp sle i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %6
  %38 = load i32, i32* @TAG, align 4
  %39 = call i32 @ESP_LOGE(i32 %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* %21, align 4
  store i32 %40, i32* %7, align 4
  store i32 1, i32* %22, align 4
  br label %245

41:                                               ; preds = %6
  %42 = load i32, i32* %9, align 4
  %43 = trunc i32 %42 to i8
  %44 = load i32, i32* %19, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %19, align 4
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i8, i8* %30, i64 %46
  store i8 %43, i8* %47, align 1
  %48 = load i32, i32* %12, align 4
  %49 = icmp sle i32 %48, 125
  br i1 %49, label %50, label %59

50:                                               ; preds = %41
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %10, align 4
  %53 = or i32 %51, %52
  %54 = trunc i32 %53 to i8
  %55 = load i32, i32* %19, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %19, align 4
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i8, i8* %30, i64 %57
  store i8 %54, i8* %58, align 1
  br label %143

59:                                               ; preds = %41
  %60 = load i32, i32* %12, align 4
  %61 = icmp slt i32 %60, 65536
  br i1 %61, label %62, label %85

62:                                               ; preds = %59
  %63 = load i32, i32* @WS_SIZE16, align 4
  %64 = load i32, i32* %10, align 4
  %65 = or i32 %63, %64
  %66 = trunc i32 %65 to i8
  %67 = load i32, i32* %19, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %19, align 4
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i8, i8* %30, i64 %69
  store i8 %66, i8* %70, align 1
  %71 = load i32, i32* %12, align 4
  %72 = ashr i32 %71, 8
  %73 = trunc i32 %72 to i8
  %74 = load i32, i32* %19, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %19, align 4
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i8, i8* %30, i64 %76
  store i8 %73, i8* %77, align 1
  %78 = load i32, i32* %12, align 4
  %79 = and i32 %78, 255
  %80 = trunc i32 %79 to i8
  %81 = load i32, i32* %19, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %19, align 4
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i8, i8* %30, i64 %83
  store i8 %80, i8* %84, align 1
  br label %142

85:                                               ; preds = %59
  %86 = load i32, i32* @WS_SIZE64, align 4
  %87 = load i32, i32* %10, align 4
  %88 = or i32 %86, %87
  %89 = trunc i32 %88 to i8
  %90 = load i32, i32* %19, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %19, align 4
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i8, i8* %30, i64 %92
  store i8 %89, i8* %93, align 1
  %94 = load i32, i32* %19, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %19, align 4
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i8, i8* %30, i64 %96
  store i8 0, i8* %97, align 1
  %98 = load i32, i32* %19, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %19, align 4
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i8, i8* %30, i64 %100
  store i8 0, i8* %101, align 1
  %102 = load i32, i32* %19, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %19, align 4
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i8, i8* %30, i64 %104
  store i8 0, i8* %105, align 1
  %106 = load i32, i32* %19, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %19, align 4
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i8, i8* %30, i64 %108
  store i8 0, i8* %109, align 1
  %110 = load i32, i32* %12, align 4
  %111 = ashr i32 %110, 24
  %112 = and i32 %111, 255
  %113 = trunc i32 %112 to i8
  %114 = load i32, i32* %19, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %19, align 4
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i8, i8* %30, i64 %116
  store i8 %113, i8* %117, align 1
  %118 = load i32, i32* %12, align 4
  %119 = ashr i32 %118, 16
  %120 = and i32 %119, 255
  %121 = trunc i32 %120 to i8
  %122 = load i32, i32* %19, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %19, align 4
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i8, i8* %30, i64 %124
  store i8 %121, i8* %125, align 1
  %126 = load i32, i32* %12, align 4
  %127 = ashr i32 %126, 8
  %128 = and i32 %127, 255
  %129 = trunc i32 %128 to i8
  %130 = load i32, i32* %19, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %19, align 4
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i8, i8* %30, i64 %132
  store i8 %129, i8* %133, align 1
  %134 = load i32, i32* %12, align 4
  %135 = ashr i32 %134, 0
  %136 = and i32 %135, 255
  %137 = trunc i32 %136 to i8
  %138 = load i32, i32* %19, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %19, align 4
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i8, i8* %30, i64 %140
  store i8 %137, i8* %141, align 1
  br label %142

142:                                              ; preds = %85, %62
  br label %143

143:                                              ; preds = %142, %50
  %144 = load i32, i32* %10, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %184

146:                                              ; preds = %143
  %147 = load i32, i32* %19, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %30, i64 %148
  store i8* %149, i8** %18, align 8
  %150 = load i32, i32* %19, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %30, i64 %151
  %153 = call i32 @getrandom(i8* %152, i32 4, i32 0)
  %154 = load i32, i32* %19, align 4
  %155 = add nsw i32 %154, 4
  store i32 %155, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %156

156:                                              ; preds = %180, %146
  %157 = load i32, i32* %20, align 4
  %158 = load i32, i32* %12, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %183

160:                                              ; preds = %156
  %161 = load i8*, i8** %15, align 8
  %162 = load i32, i32* %20, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8, i8* %161, i64 %163
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = load i8*, i8** %18, align 8
  %168 = load i32, i32* %20, align 4
  %169 = srem i32 %168, 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %167, i64 %170
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = xor i32 %166, %173
  %175 = trunc i32 %174 to i8
  %176 = load i8*, i8** %15, align 8
  %177 = load i32, i32* %20, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8, i8* %176, i64 %178
  store i8 %175, i8* %179, align 1
  br label %180

180:                                              ; preds = %160
  %181 = load i32, i32* %20, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %20, align 4
  br label %156

183:                                              ; preds = %156
  br label %184

184:                                              ; preds = %183, %143
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %19, align 4
  %189 = load i32, i32* %13, align 4
  %190 = call i32 @esp_transport_write(i32 %187, i8* %30, i32 %188, i32 %189)
  %191 = load i32, i32* %19, align 4
  %192 = icmp ne i32 %190, %191
  br i1 %192, label %193, label %196

193:                                              ; preds = %184
  %194 = load i32, i32* @TAG, align 4
  %195 = call i32 @ESP_LOGE(i32 %194, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %22, align 4
  br label %245

196:                                              ; preds = %184
  %197 = load i32, i32* %12, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %196
  store i32 0, i32* %7, align 4
  store i32 1, i32* %22, align 4
  br label %245

200:                                              ; preds = %196
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load i8*, i8** %15, align 8
  %205 = load i32, i32* %12, align 4
  %206 = load i32, i32* %13, align 4
  %207 = call i32 @esp_transport_write(i32 %203, i8* %204, i32 %205, i32 %206)
  store i32 %207, i32* %23, align 4
  %208 = load i32, i32* %10, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %243

210:                                              ; preds = %200
  %211 = load i32, i32* %19, align 4
  %212 = sub nsw i32 %211, 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i8, i8* %30, i64 %213
  store i8* %214, i8** %18, align 8
  store i32 0, i32* %20, align 4
  br label %215

215:                                              ; preds = %239, %210
  %216 = load i32, i32* %20, align 4
  %217 = load i32, i32* %12, align 4
  %218 = icmp slt i32 %216, %217
  br i1 %218, label %219, label %242

219:                                              ; preds = %215
  %220 = load i8*, i8** %15, align 8
  %221 = load i32, i32* %20, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8, i8* %220, i64 %222
  %224 = load i8, i8* %223, align 1
  %225 = sext i8 %224 to i32
  %226 = load i8*, i8** %18, align 8
  %227 = load i32, i32* %20, align 4
  %228 = srem i32 %227, 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i8, i8* %226, i64 %229
  %231 = load i8, i8* %230, align 1
  %232 = sext i8 %231 to i32
  %233 = xor i32 %225, %232
  %234 = trunc i32 %233 to i8
  %235 = load i8*, i8** %15, align 8
  %236 = load i32, i32* %20, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i8, i8* %235, i64 %237
  store i8 %234, i8* %238, align 1
  br label %239

239:                                              ; preds = %219
  %240 = load i32, i32* %20, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %20, align 4
  br label %215

242:                                              ; preds = %215
  br label %243

243:                                              ; preds = %242, %200
  %244 = load i32, i32* %23, align 4
  store i32 %244, i32* %7, align 4
  store i32 1, i32* %22, align 4
  br label %245

245:                                              ; preds = %243, %199, %193, %37
  %246 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %246)
  %247 = load i32, i32* %7, align 4
  ret i32 %247
}

declare dso_local %struct.TYPE_3__* @esp_transport_get_context_data(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @esp_transport_poll_write(i32, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @getrandom(i8*, i32, i32) #1

declare dso_local i32 @esp_transport_write(i32, i8*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
