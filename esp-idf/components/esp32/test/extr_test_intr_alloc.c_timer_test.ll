; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_intr_alloc.c_timer_test.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_intr_alloc.c_timer_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TIMER_GROUP_0 = common dso_local global i32 0, align 4
@TIMER_0 = common dso_local global i32 0, align 4
@TIMER_1 = common dso_local global i32 0, align 4
@TIMER_GROUP_1 = common dso_local global i32 0, align 4
@timer_isr = common dso_local global i32 0, align 4
@ESP_INTR_FLAG_INTRDISABLED = common dso_local global i32 0, align 4
@count = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"Interrupts allocated: %d (dis) %d %d %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Timer values on start: %d %d %d %d\0A\00", align 1
@portTICK_PERIOD_MS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Timer values after 1 sec: %d %d %d %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Disabling timers 1 and 2...\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Disabling other half...\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Done.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @timer_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timer_test(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [4 x i32], align 16
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @TIMER_GROUP_0, align 4
  %6 = load i32, i32* @TIMER_0, align 4
  %7 = call i32 @my_timer_init(i32 %5, i32 %6, i32 110000)
  %8 = load i32, i32* @TIMER_GROUP_0, align 4
  %9 = load i32, i32* @TIMER_1, align 4
  %10 = call i32 @my_timer_init(i32 %8, i32 %9, i32 120000)
  %11 = load i32, i32* @TIMER_GROUP_1, align 4
  %12 = load i32, i32* @TIMER_0, align 4
  %13 = call i32 @my_timer_init(i32 %11, i32 %12, i32 130000)
  %14 = load i32, i32* @TIMER_GROUP_1, align 4
  %15 = load i32, i32* @TIMER_1, align 4
  %16 = call i32 @my_timer_init(i32 %14, i32 %15, i32 140000)
  %17 = load i32, i32* @TIMER_GROUP_0, align 4
  %18 = load i32, i32* @TIMER_0, align 4
  %19 = load i32, i32* @timer_isr, align 4
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @ESP_INTR_FLAG_INTRDISABLED, align 4
  %22 = or i32 %20, %21
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %24 = call i32 @timer_isr_register(i32 %17, i32 %18, i32 %19, i8* null, i32 %22, i32* %23)
  %25 = load i32, i32* @TIMER_GROUP_0, align 4
  %26 = load i32, i32* @TIMER_1, align 4
  %27 = load i32, i32* @timer_isr, align 4
  %28 = load i32, i32* %2, align 4
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 1
  %30 = call i32 @timer_isr_register(i32 %25, i32 %26, i32 %27, i8* inttoptr (i64 1 to i8*), i32 %28, i32* %29)
  %31 = load i32, i32* @TIMER_GROUP_1, align 4
  %32 = load i32, i32* @TIMER_0, align 4
  %33 = load i32, i32* @timer_isr, align 4
  %34 = load i32, i32* %2, align 4
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 2
  %36 = call i32 @timer_isr_register(i32 %31, i32 %32, i32 %33, i8* inttoptr (i64 2 to i8*), i32 %34, i32* %35)
  %37 = load i32, i32* @TIMER_GROUP_1, align 4
  %38 = load i32, i32* @TIMER_1, align 4
  %39 = load i32, i32* @timer_isr, align 4
  %40 = load i32, i32* %2, align 4
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 3
  %42 = call i32 @timer_isr_register(i32 %37, i32 %38, i32 %39, i8* inttoptr (i64 3 to i8*), i32 %40, i32* %41)
  %43 = load i32, i32* @TIMER_GROUP_0, align 4
  %44 = load i32, i32* @TIMER_0, align 4
  %45 = call i32 @timer_start(i32 %43, i32 %44)
  %46 = load i32, i32* @TIMER_GROUP_0, align 4
  %47 = load i32, i32* @TIMER_1, align 4
  %48 = call i32 @timer_start(i32 %46, i32 %47)
  %49 = load i32, i32* @TIMER_GROUP_1, align 4
  %50 = load i32, i32* @TIMER_0, align 4
  %51 = call i32 @timer_start(i32 %49, i32 %50)
  %52 = load i32, i32* @TIMER_GROUP_1, align 4
  %53 = load i32, i32* @TIMER_1, align 4
  %54 = call i32 @timer_start(i32 %52, i32 %53)
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %63, %1
  %56 = load i32, i32* %3, align 4
  %57 = icmp slt i32 %56, 4
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load i32*, i32** @count, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 0, i32* %62, align 4
  br label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %3, align 4
  br label %55

66:                                               ; preds = %55
  %67 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %68 = load i32, i32* %67, align 16
  %69 = call i32 @esp_intr_get_intno(i32 %68)
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @esp_intr_get_intno(i32 %71)
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @esp_intr_get_intno(i32 %74)
  %76 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 3
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @esp_intr_get_intno(i32 %77)
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %72, i32 %75, i32 %78)
  %80 = load i32*, i32** @count, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** @count, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** @count, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** @count, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 3
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %82, i32 %85, i32 %88, i32 %91)
  %93 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %94 = sdiv i32 1000, %93
  %95 = call i32 @vTaskDelay(i32 %94)
  %96 = load i32*, i32** @count, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** @count, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** @count, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 2
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** @count, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 3
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %98, i32 %101, i32 %104, i32 %107)
  %109 = load i32*, i32** @count, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 0
  %113 = zext i1 %112 to i32
  %114 = call i32 @TEST_ASSERT(i32 %113)
  %115 = load i32*, i32** @count, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  %119 = zext i1 %118 to i32
  %120 = call i32 @TEST_ASSERT(i32 %119)
  %121 = load i32*, i32** @count, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 2
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  %125 = zext i1 %124 to i32
  %126 = call i32 @TEST_ASSERT(i32 %125)
  %127 = load i32*, i32** @count, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 3
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  %131 = zext i1 %130 to i32
  %132 = call i32 @TEST_ASSERT(i32 %131)
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %134 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %135 = load i32, i32* %134, align 16
  %136 = call i32 @esp_intr_enable(i32 %135)
  %137 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @esp_intr_disable(i32 %138)
  %140 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 2
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @esp_intr_disable(i32 %141)
  store i32 0, i32* %3, align 4
  br label %143

143:                                              ; preds = %151, %66
  %144 = load i32, i32* %3, align 4
  %145 = icmp slt i32 %144, 4
  br i1 %145, label %146, label %154

146:                                              ; preds = %143
  %147 = load i32*, i32** @count, align 8
  %148 = load i32, i32* %3, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  store i32 0, i32* %150, align 4
  br label %151

151:                                              ; preds = %146
  %152 = load i32, i32* %3, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %3, align 4
  br label %143

154:                                              ; preds = %143
  %155 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %156 = sdiv i32 1000, %155
  %157 = call i32 @vTaskDelay(i32 %156)
  %158 = load i32*, i32** @count, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32*, i32** @count, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32*, i32** @count, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 2
  %166 = load i32, i32* %165, align 4
  %167 = load i32*, i32** @count, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 3
  %169 = load i32, i32* %168, align 4
  %170 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %160, i32 %163, i32 %166, i32 %169)
  %171 = load i32*, i32** @count, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 0
  %173 = load i32, i32* %172, align 4
  %174 = icmp ne i32 %173, 0
  %175 = zext i1 %174 to i32
  %176 = call i32 @TEST_ASSERT(i32 %175)
  %177 = load i32*, i32** @count, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 1
  %179 = load i32, i32* %178, align 4
  %180 = icmp eq i32 %179, 0
  %181 = zext i1 %180 to i32
  %182 = call i32 @TEST_ASSERT(i32 %181)
  %183 = load i32*, i32** @count, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 2
  %185 = load i32, i32* %184, align 4
  %186 = icmp eq i32 %185, 0
  %187 = zext i1 %186 to i32
  %188 = call i32 @TEST_ASSERT(i32 %187)
  %189 = load i32*, i32** @count, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 3
  %191 = load i32, i32* %190, align 4
  %192 = icmp ne i32 %191, 0
  %193 = zext i1 %192 to i32
  %194 = call i32 @TEST_ASSERT(i32 %193)
  %195 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %196 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 1
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @esp_intr_enable(i32 %197)
  %199 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 2
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @esp_intr_enable(i32 %200)
  %202 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %203 = load i32, i32* %202, align 16
  %204 = call i32 @esp_intr_disable(i32 %203)
  %205 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 3
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @esp_intr_disable(i32 %206)
  store i32 0, i32* %3, align 4
  br label %208

208:                                              ; preds = %216, %154
  %209 = load i32, i32* %3, align 4
  %210 = icmp slt i32 %209, 4
  br i1 %210, label %211, label %219

211:                                              ; preds = %208
  %212 = load i32*, i32** @count, align 8
  %213 = load i32, i32* %3, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  store i32 0, i32* %215, align 4
  br label %216

216:                                              ; preds = %211
  %217 = load i32, i32* %3, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %3, align 4
  br label %208

219:                                              ; preds = %208
  %220 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %221 = sdiv i32 1000, %220
  %222 = call i32 @vTaskDelay(i32 %221)
  %223 = load i32*, i32** @count, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 0
  %225 = load i32, i32* %224, align 4
  %226 = load i32*, i32** @count, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 1
  %228 = load i32, i32* %227, align 4
  %229 = load i32*, i32** @count, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 2
  %231 = load i32, i32* %230, align 4
  %232 = load i32*, i32** @count, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 3
  %234 = load i32, i32* %233, align 4
  %235 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %225, i32 %228, i32 %231, i32 %234)
  %236 = load i32*, i32** @count, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 0
  %238 = load i32, i32* %237, align 4
  %239 = icmp eq i32 %238, 0
  %240 = zext i1 %239 to i32
  %241 = call i32 @TEST_ASSERT(i32 %240)
  %242 = load i32*, i32** @count, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 1
  %244 = load i32, i32* %243, align 4
  %245 = icmp ne i32 %244, 0
  %246 = zext i1 %245 to i32
  %247 = call i32 @TEST_ASSERT(i32 %246)
  %248 = load i32*, i32** @count, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 2
  %250 = load i32, i32* %249, align 4
  %251 = icmp ne i32 %250, 0
  %252 = zext i1 %251 to i32
  %253 = call i32 @TEST_ASSERT(i32 %252)
  %254 = load i32*, i32** @count, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 3
  %256 = load i32, i32* %255, align 4
  %257 = icmp eq i32 %256, 0
  %258 = zext i1 %257 to i32
  %259 = call i32 @TEST_ASSERT(i32 %258)
  %260 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %261 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %262 = load i32, i32* %261, align 16
  %263 = call i32 @esp_intr_free(i32 %262)
  %264 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 1
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @esp_intr_free(i32 %265)
  %267 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 2
  %268 = load i32, i32* %267, align 8
  %269 = call i32 @esp_intr_free(i32 %268)
  %270 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 3
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @esp_intr_free(i32 %271)
  ret void
}

declare dso_local i32 @my_timer_init(i32, i32, i32) #1

declare dso_local i32 @timer_isr_register(i32, i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @timer_start(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @esp_intr_get_intno(i32) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @esp_intr_enable(i32) #1

declare dso_local i32 @esp_intr_disable(i32) #1

declare dso_local i32 @esp_intr_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
