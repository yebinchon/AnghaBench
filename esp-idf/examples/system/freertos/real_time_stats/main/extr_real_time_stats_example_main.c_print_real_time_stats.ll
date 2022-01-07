; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/system/freertos/real_time_stats/main/extr_real_time_stats_example_main.c_print_real_time_stats.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/system/freertos/real_time_stats/main/extr_real_time_stats_example_main.c_print_real_time_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i8*, i32* }

@ARRAY_SIZE_OFFSET = common dso_local global i32 0, align 4
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_SIZE = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"| Task | Run Time | Percentage\0A\00", align 1
@portNUM_PROCESSORS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"| %s | %d | %d%%\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"| %s | Deleted\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"| %s | Created\0A\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @print_real_time_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_real_time_stats(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  %18 = call i32 (...) @uxTaskGetNumberOfTasks()
  %19 = load i32, i32* @ARRAY_SIZE_OFFSET, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 24, %22
  %24 = trunc i64 %23 to i32
  %25 = call %struct.TYPE_5__* @malloc(i32 %24)
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %3, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = icmp eq %struct.TYPE_5__* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %29, i32* %9, align 4
  br label %198

30:                                               ; preds = %1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @uxTaskGetSystemState(%struct.TYPE_5__* %31, i32 %32, i64* %7)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @ESP_ERR_INVALID_SIZE, align 4
  store i32 %37, i32* %9, align 4
  br label %198

38:                                               ; preds = %30
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @vTaskDelay(i32 %39)
  %41 = call i32 (...) @uxTaskGetNumberOfTasks()
  %42 = load i32, i32* @ARRAY_SIZE_OFFSET, align 4
  %43 = add nsw i32 %41, %42
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 24, %45
  %47 = trunc i64 %46 to i32
  %48 = call %struct.TYPE_5__* @malloc(i32 %47)
  store %struct.TYPE_5__* %48, %struct.TYPE_5__** %4, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = icmp eq %struct.TYPE_5__* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %38
  %52 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %52, i32* %9, align 4
  br label %198

53:                                               ; preds = %38
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @uxTaskGetSystemState(%struct.TYPE_5__* %54, i32 %55, i64* %8)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* @ESP_ERR_INVALID_SIZE, align 4
  store i32 %60, i32* %9, align 4
  br label %198

61:                                               ; preds = %53
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* %7, align 8
  %64 = sub nsw i64 %62, %63
  store i64 %64, i64* %10, align 8
  %65 = load i64, i64* %10, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  store i32 %68, i32* %9, align 4
  br label %198

69:                                               ; preds = %61
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %71

71:                                               ; preds = %143, %69
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %146

75:                                               ; preds = %71
  store i32 -1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %76

76:                                               ; preds = %107, %75
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %110

80:                                               ; preds = %76
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = icmp eq i32* %86, %92
  br i1 %93, label %94, label %106

94:                                               ; preds = %80
  %95 = load i32, i32* %13, align 4
  store i32 %95, i32* %12, align 4
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 2
  store i32* null, i32** %100, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  store i32* null, i32** %105, align 8
  br label %110

106:                                              ; preds = %80
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %13, align 4
  br label %76

110:                                              ; preds = %94, %76
  %111 = load i32, i32* %12, align 4
  %112 = icmp sge i32 %111, 0
  br i1 %112, label %113, label %142

113:                                              ; preds = %110
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %115 = load i32, i32* %12, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = sub nsw i64 %119, %125
  store i64 %126, i64* %14, align 8
  %127 = load i64, i64* %14, align 8
  %128 = mul i64 %127, 100
  %129 = load i64, i64* %10, align 8
  %130 = load i64, i64* @portNUM_PROCESSORS, align 8
  %131 = mul nsw i64 %129, %130
  %132 = udiv i64 %128, %131
  store i64 %132, i64* %15, align 8
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %134 = load i32, i32* %11, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 1
  %138 = load i8*, i8** %137, align 8
  %139 = load i64, i64* %14, align 8
  %140 = load i64, i64* %15, align 8
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %138, i64 %139, i64 %140)
  br label %142

142:                                              ; preds = %113, %110
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %11, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %11, align 4
  br label %71

146:                                              ; preds = %71
  store i32 0, i32* %16, align 4
  br label %147

147:                                              ; preds = %168, %146
  %148 = load i32, i32* %16, align 4
  %149 = load i32, i32* %5, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %171

151:                                              ; preds = %147
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %153 = load i32, i32* %16, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 2
  %157 = load i32*, i32** %156, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %167

159:                                              ; preds = %151
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %161 = load i32, i32* %16, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 1
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %165)
  br label %167

167:                                              ; preds = %159, %151
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %16, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %16, align 4
  br label %147

171:                                              ; preds = %147
  store i32 0, i32* %17, align 4
  br label %172

172:                                              ; preds = %193, %171
  %173 = load i32, i32* %17, align 4
  %174 = load i32, i32* %6, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %196

176:                                              ; preds = %172
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %178 = load i32, i32* %17, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 2
  %182 = load i32*, i32** %181, align 8
  %183 = icmp ne i32* %182, null
  br i1 %183, label %184, label %192

184:                                              ; preds = %176
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %186 = load i32, i32* %17, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 1
  %190 = load i8*, i8** %189, align 8
  %191 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %190)
  br label %192

192:                                              ; preds = %184, %176
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %17, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %17, align 4
  br label %172

196:                                              ; preds = %172
  %197 = load i32, i32* @ESP_OK, align 4
  store i32 %197, i32* %9, align 4
  br label %198

198:                                              ; preds = %196, %67, %59, %51, %36, %28
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %200 = call i32 @free(%struct.TYPE_5__* %199)
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %202 = call i32 @free(%struct.TYPE_5__* %201)
  %203 = load i32, i32* %9, align 4
  ret i32 %203
}

declare dso_local i32 @uxTaskGetNumberOfTasks(...) #1

declare dso_local %struct.TYPE_5__* @malloc(i32) #1

declare dso_local i32 @uxTaskGetSystemState(%struct.TYPE_5__*, i32, i64*) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
