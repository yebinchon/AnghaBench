; ModuleID = '/home/carl/AnghaBench/esp-idf/components/perfmon/extr_xtensa_perfmon_apis.c_xtensa_perfmon_exec.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/perfmon/extr_xtensa_perfmon_apis.c_xtensa_perfmon_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32*, i64, i32, i32 (i32, i32, i32, i64)*, i32, i32 (i32)*, i32 }

@ESP_OK = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Parameter call_function must be defined.\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Parameter callback must be defined.\00", align 1
@UINT32_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"p0 = %i, p1 = %i\00", align 1
@ESP_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xtensa_perfmon_exec(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca float, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %14 = load i32, i32* @ESP_OK, align 4
  store i32 %14, i32* %4, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 7
  %17 = load i32 (i32)*, i32 (i32)** %16, align 8
  %18 = icmp eq i32 (i32)* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* @TAG, align 4
  %21 = call i32 @ESP_LOGE(i32 %20, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %22, i32* %2, align 4
  br label %165

23:                                               ; preds = %1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 5
  %26 = load i32 (i32, i32, i32, i64)*, i32 (i32, i32, i32, i64)** %25, align 8
  %27 = icmp eq i32 (i32, i32, i32, i64)* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* @TAG, align 4
  %30 = call i32 @ESP_LOGE(i32 %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %31, i32* %2, align 4
  br label %165

32:                                               ; preds = %23
  store i64 0, i64* %5, align 8
  br label %33

33:                                               ; preds = %160, %32
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ult i64 %34, %37
  br i1 %38, label %39, label %163

39:                                               ; preds = %33
  %40 = load i64, i64* @UINT32_MAX, align 8
  store i64 %40, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store float 0.000000e+00, float* %8, align 4
  store i64 0, i64* %9, align 8
  br label %41

41:                                               ; preds = %117, %39
  %42 = load i64, i64* %9, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ult i64 %42, %45
  br i1 %46, label %47, label %120

47:                                               ; preds = %41
  %48 = call i32 (...) @xtensa_perfmon_stop()
  store i32 0, i32* %10, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 8
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 1, i32* %10, align 4
  br label %54

54:                                               ; preds = %53, %47
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 8
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @xtensa_perfmon_init(i32 0, i32 0, i32 65535, i32 %55, i32 %58)
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* %5, align 8
  %64 = mul i64 %63, 2
  %65 = add i64 %64, 0
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* %5, align 8
  %72 = mul i64 %71, 2
  %73 = add i64 %72, 1
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 8
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @xtensa_perfmon_init(i32 1, i32 %67, i32 %75, i32 %76, i32 %79)
  %81 = call i32 (...) @xtensa_perfmon_start()
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 7
  %84 = load i32 (i32)*, i32 (i32)** %83, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 8
  %88 = call i32 %84(i32 %87)
  %89 = call i32 (...) @xtensa_perfmon_stop()
  %90 = call i64 @xtensa_perfmon_value(i32 0)
  store i64 %90, i64* %11, align 8
  %91 = call i64 @xtensa_perfmon_value(i32 1)
  store i64 %91, i64* %12, align 8
  %92 = load i64, i64* %12, align 8
  %93 = sitofp i64 %92 to float
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = uitofp i64 %96 to float
  %98 = fdiv float %93, %97
  %99 = load float, float* %8, align 4
  %100 = fadd float %99, %98
  store float %100, float* %8, align 4
  %101 = load i64, i64* %11, align 8
  %102 = load i64, i64* %6, align 8
  %103 = icmp slt i64 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %54
  %105 = load i64, i64* %11, align 8
  store i64 %105, i64* %6, align 8
  br label %106

106:                                              ; preds = %104, %54
  %107 = load i64, i64* %11, align 8
  %108 = load i64, i64* %7, align 8
  %109 = icmp sgt i64 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = load i64, i64* %11, align 8
  store i64 %111, i64* %7, align 8
  br label %112

112:                                              ; preds = %110, %106
  %113 = load i32, i32* @TAG, align 4
  %114 = load i64, i64* %11, align 8
  %115 = load i64, i64* %12, align 8
  %116 = call i32 @ESP_LOGV(i32 %113, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %114, i64 %115)
  br label %117

117:                                              ; preds = %112
  %118 = load i64, i64* %9, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %9, align 8
  br label %41

120:                                              ; preds = %41
  %121 = load i64, i64* %7, align 8
  %122 = load i64, i64* %6, align 8
  %123 = sub nsw i64 %121, %122
  store i64 %123, i64* %13, align 8
  %124 = load i64, i64* %13, align 8
  %125 = load i64, i64* %7, align 8
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = mul nsw i64 %125, %128
  %130 = icmp sgt i64 %124, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %120
  %132 = load i32, i32* @ESP_FAIL, align 4
  store i32 %132, i32* %2, align 4
  br label %165

133:                                              ; preds = %120
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 5
  %136 = load i32 (i32, i32, i32, i64)*, i32 (i32, i32, i32, i64)** %135, align 8
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 2
  %142 = load i32*, i32** %141, align 8
  %143 = load i64, i64* %5, align 8
  %144 = mul i64 %143, 2
  %145 = add i64 %144, 0
  %146 = getelementptr inbounds i32, i32* %142, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 2
  %150 = load i32*, i32** %149, align 8
  %151 = load i64, i64* %5, align 8
  %152 = mul i64 %151, 2
  %153 = add i64 %152, 1
  %154 = getelementptr inbounds i32, i32* %150, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load float, float* %8, align 4
  %157 = fptosi float %156 to i64
  %158 = call i32 %136(i32 %139, i32 %147, i32 %155, i64 %157)
  br label %159

159:                                              ; preds = %133
  br label %160

160:                                              ; preds = %159
  %161 = load i64, i64* %5, align 8
  %162 = add i64 %161, 1
  store i64 %162, i64* %5, align 8
  br label %33

163:                                              ; preds = %33
  %164 = load i32, i32* %4, align 4
  store i32 %164, i32* %2, align 4
  br label %165

165:                                              ; preds = %163, %131, %28, %19
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @xtensa_perfmon_stop(...) #1

declare dso_local i32 @xtensa_perfmon_init(i32, i32, i32, i32, i32) #1

declare dso_local i32 @xtensa_perfmon_start(...) #1

declare dso_local i64 @xtensa_perfmon_value(i32) #1

declare dso_local i32 @ESP_LOGV(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
