; ModuleID = '/home/carl/AnghaBench/esp-idf/components/tcp_transport/extr_transport_ws.c_ws_read.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/tcp_transport/extr_transport_ws.c_ws_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8, i32 }

@MAX_WEBSOCKET_HEADER_SIZE = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Error read data\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Opcode: %d, mask: %d, len: %d\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"Actual data to receive (%d) are longer than ws buffer (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @ws_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ws_read(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call %struct.TYPE_3__* @esp_transport_get_context_data(i32 %22)
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %10, align 8
  %24 = load i32, i32* @MAX_WEBSOCKET_HEADER_SIZE, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %12, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %13, align 8
  store i8* %27, i8** %14, align 8
  store i8* null, i8** %16, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @esp_transport_poll_read(i32 %30, i32 %31)
  store i32 %32, i32* %18, align 4
  %33 = icmp sle i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %4
  %35 = load i32, i32* %18, align 4
  store i32 %35, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %235

36:                                               ; preds = %4
  store i32 2, i32* %20, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %14, align 8
  %41 = load i32, i32* %20, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @esp_transport_read(i32 %39, i8* %40, i32 %41, i32 %42)
  store i32 %43, i32* %17, align 4
  %44 = icmp sle i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %36
  %46 = load i32, i32* @TAG, align 4
  %47 = call i32 @ESP_LOGE(i32 %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* %17, align 4
  store i32 %48, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %235

49:                                               ; preds = %36
  %50 = load i8*, i8** %14, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = and i32 %52, 15
  %54 = trunc i32 %53 to i8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i8 %54, i8* %56, align 4
  %57 = load i8*, i8** %14, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %14, align 8
  %59 = load i8*, i8** %14, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = ashr i32 %61, 7
  %63 = and i32 %62, 1
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* %15, align 1
  %65 = load i8*, i8** %14, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = and i32 %67, 127
  store i32 %68, i32* %11, align 4
  %69 = load i8*, i8** %14, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %14, align 8
  %71 = load i32, i32* @TAG, align 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i8, i8* %73, align 4
  %75 = sext i8 %74 to i32
  %76 = load i8, i8* %15, align 1
  %77 = sext i8 %76 to i32
  %78 = load i32, i32* %11, align 4
  %79 = call i32 (i32, i8*, i32, i32, ...) @ESP_LOGD(i32 %71, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %77, i32 %78)
  %80 = load i32, i32* %11, align 4
  %81 = icmp eq i32 %80, 126
  br i1 %81, label %82, label %106

82:                                               ; preds = %49
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i8*, i8** %14, align 8
  %87 = load i32, i32* %20, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @esp_transport_read(i32 %85, i8* %86, i32 %87, i32 %88)
  store i32 %89, i32* %17, align 4
  %90 = icmp sle i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %82
  %92 = load i32, i32* @TAG, align 4
  %93 = call i32 @ESP_LOGE(i32 %92, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %94 = load i32, i32* %17, align 4
  store i32 %94, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %235

95:                                               ; preds = %82
  %96 = load i8*, i8** %14, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 0
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = shl i32 %99, 8
  %101 = load i8*, i8** %14, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 1
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = or i32 %100, %104
  store i32 %105, i32* %11, align 4
  br label %172

106:                                              ; preds = %49
  %107 = load i32, i32* %11, align 4
  %108 = icmp eq i32 %107, 127
  br i1 %108, label %109, label %171

109:                                              ; preds = %106
  store i32 8, i32* %20, align 4
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i8*, i8** %14, align 8
  %114 = load i32, i32* %20, align 4
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @esp_transport_read(i32 %112, i8* %113, i32 %114, i32 %115)
  store i32 %116, i32* %17, align 4
  %117 = icmp sle i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %109
  %119 = load i32, i32* @TAG, align 4
  %120 = call i32 @ESP_LOGE(i32 %119, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %121 = load i32, i32* %17, align 4
  store i32 %121, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %235

122:                                              ; preds = %109
  %123 = load i8*, i8** %14, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 0
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %146, label %128

128:                                              ; preds = %122
  %129 = load i8*, i8** %14, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 1
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %146, label %134

134:                                              ; preds = %128
  %135 = load i8*, i8** %14, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 2
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %146, label %140

140:                                              ; preds = %134
  %141 = load i8*, i8** %14, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 3
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %140, %134, %128, %122
  store i32 -1, i32* %11, align 4
  br label %170

147:                                              ; preds = %140
  %148 = load i8*, i8** %14, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 4
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = shl i32 %151, 24
  %153 = load i8*, i8** %14, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 5
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = shl i32 %156, 16
  %158 = or i32 %152, %157
  %159 = load i8*, i8** %14, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 6
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = shl i32 %162, 8
  %164 = or i32 %158, %163
  %165 = load i8*, i8** %14, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 7
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = or i32 %164, %168
  store i32 %169, i32* %11, align 4
  br label %170

170:                                              ; preds = %147, %146
  br label %171

171:                                              ; preds = %170, %106
  br label %172

172:                                              ; preds = %171, %95
  %173 = load i32, i32* %11, align 4
  %174 = load i32, i32* %8, align 4
  %175 = icmp sgt i32 %173, %174
  br i1 %175, label %176, label %182

176:                                              ; preds = %172
  %177 = load i32, i32* @TAG, align 4
  %178 = load i32, i32* %11, align 4
  %179 = load i32, i32* %8, align 4
  %180 = call i32 (i32, i8*, i32, i32, ...) @ESP_LOGD(i32 %177, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %178, i32 %179)
  %181 = load i32, i32* %8, align 4
  store i32 %181, i32* %11, align 4
  br label %182

182:                                              ; preds = %176, %172
  %183 = load i32, i32* %11, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %198

185:                                              ; preds = %182
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i8*, i8** %7, align 8
  %190 = load i32, i32* %11, align 4
  %191 = load i32, i32* %9, align 4
  %192 = call i32 @esp_transport_read(i32 %188, i8* %189, i32 %190, i32 %191)
  store i32 %192, i32* %17, align 4
  %193 = icmp sle i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %185
  %195 = load i32, i32* @TAG, align 4
  %196 = call i32 @ESP_LOGE(i32 %195, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %197 = load i32, i32* %17, align 4
  store i32 %197, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %235

198:                                              ; preds = %185, %182
  %199 = load i8, i8* %15, align 1
  %200 = icmp ne i8 %199, 0
  br i1 %200, label %201, label %233

201:                                              ; preds = %198
  %202 = load i8*, i8** %7, align 8
  store i8* %202, i8** %16, align 8
  %203 = load i8*, i8** %7, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 4
  store i8* %204, i8** %14, align 8
  store i32 0, i32* %21, align 4
  br label %205

205:                                              ; preds = %229, %201
  %206 = load i32, i32* %21, align 4
  %207 = load i32, i32* %11, align 4
  %208 = icmp slt i32 %206, %207
  br i1 %208, label %209, label %232

209:                                              ; preds = %205
  %210 = load i8*, i8** %14, align 8
  %211 = load i32, i32* %21, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i8, i8* %210, i64 %212
  %214 = load i8, i8* %213, align 1
  %215 = sext i8 %214 to i32
  %216 = load i8*, i8** %16, align 8
  %217 = load i32, i32* %21, align 4
  %218 = srem i32 %217, 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i8, i8* %216, i64 %219
  %221 = load i8, i8* %220, align 1
  %222 = sext i8 %221 to i32
  %223 = xor i32 %215, %222
  %224 = trunc i32 %223 to i8
  %225 = load i8*, i8** %7, align 8
  %226 = load i32, i32* %21, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i8, i8* %225, i64 %227
  store i8 %224, i8* %228, align 1
  br label %229

229:                                              ; preds = %209
  %230 = load i32, i32* %21, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %21, align 4
  br label %205

232:                                              ; preds = %205
  br label %233

233:                                              ; preds = %232, %198
  %234 = load i32, i32* %11, align 4
  store i32 %234, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %235

235:                                              ; preds = %233, %194, %118, %91, %45, %34
  %236 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %236)
  %237 = load i32, i32* %5, align 4
  ret i32 %237
}

declare dso_local %struct.TYPE_3__* @esp_transport_get_context_data(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @esp_transport_poll_read(i32, i32) #1

declare dso_local i32 @esp_transport_read(i32, i8*, i32, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @ESP_LOGD(i32, i8*, i32, i32, ...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
