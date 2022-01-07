; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_mcpwm.c_mcpwm_fault_set_oneshot_mode.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_mcpwm.c_mcpwm_fault_set_oneshot_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i8*, i8*, i8*, i8*, i64, i64, i64 }

@MCPWM_UNIT_MAX = common dso_local global i64 0, align 8
@MCPWM_UNIT_NUM_ERROR = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@MCPWM_TIMER_MAX = common dso_local global i64 0, align 8
@MCPWM_TIMER_ERROR = common dso_local global i32 0, align 4
@mcpwm_spinlock = common dso_local global i32 0, align 4
@MCPWM_SELECT_F0 = common dso_local global i64 0, align 8
@MCPWM = common dso_local global %struct.TYPE_6__** null, align 8
@MCPWM_SELECT_F1 = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mcpwm_fault_set_oneshot_mode(i64 %0, i64 %1, i64 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @MCPWM_UNIT_MAX, align 8
  %13 = icmp ult i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* @MCPWM_UNIT_NUM_ERROR, align 4
  %16 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %17 = call i32 @MCPWM_CHECK(i32 %14, i32 %15, i32 %16)
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @MCPWM_TIMER_MAX, align 8
  %20 = icmp ult i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* @MCPWM_TIMER_ERROR, align 4
  %23 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %24 = call i32 @MCPWM_CHECK(i32 %21, i32 %22, i32 %23)
  %25 = call i32 @portENTER_CRITICAL(i32* @mcpwm_spinlock)
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* @MCPWM_SELECT_F0, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %94

29:                                               ; preds = %5
  %30 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @MCPWM, align 8
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %30, i64 %31
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @MCPWM, align 8
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %40, i64 %41
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 9
  store i64 0, i64* %49, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @MCPWM, align 8
  %52 = load i64, i64* %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %51, i64 %52
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 6
  store i8* %50, i8** %60, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @MCPWM, align 8
  %63 = load i64, i64* %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %62, i64 %63
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = load i64, i64* %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 5
  store i8* %61, i8** %71, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @MCPWM, align 8
  %74 = load i64, i64* %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %73, i64 %74
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = load i64, i64* %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 4
  store i8* %72, i8** %82, align 8
  %83 = load i8*, i8** %10, align 8
  %84 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @MCPWM, align 8
  %85 = load i64, i64* %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %84, i64 %85
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = load i64, i64* %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 3
  store i8* %83, i8** %93, align 8
  br label %229

94:                                               ; preds = %5
  %95 = load i64, i64* %8, align 8
  %96 = load i64, i64* @MCPWM_SELECT_F1, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %163

98:                                               ; preds = %94
  %99 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @MCPWM, align 8
  %100 = load i64, i64* %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %99, i64 %100
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = load i64, i64* %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  store i32 1, i32* %108, align 4
  %109 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @MCPWM, align 8
  %110 = load i64, i64* %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %109, i64 %110
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = load i64, i64* %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 8
  store i64 0, i64* %118, align 8
  %119 = load i8*, i8** %9, align 8
  %120 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @MCPWM, align 8
  %121 = load i64, i64* %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %120, i64 %121
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = load i64, i64* %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 6
  store i8* %119, i8** %129, align 8
  %130 = load i8*, i8** %9, align 8
  %131 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @MCPWM, align 8
  %132 = load i64, i64* %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %131, i64 %132
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %135, align 8
  %137 = load i64, i64* %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 5
  store i8* %130, i8** %140, align 8
  %141 = load i8*, i8** %10, align 8
  %142 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @MCPWM, align 8
  %143 = load i64, i64* %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %142, i64 %143
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %146, align 8
  %148 = load i64, i64* %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 4
  store i8* %141, i8** %151, align 8
  %152 = load i8*, i8** %10, align 8
  %153 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @MCPWM, align 8
  %154 = load i64, i64* %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %153, i64 %154
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %157, align 8
  %159 = load i64, i64* %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 3
  store i8* %152, i8** %162, align 8
  br label %228

163:                                              ; preds = %94
  %164 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @MCPWM, align 8
  %165 = load i64, i64* %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %164, i64 %165
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %168, align 8
  %170 = load i64, i64* %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 2
  store i32 1, i32* %173, align 8
  %174 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @MCPWM, align 8
  %175 = load i64, i64* %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %174, i64 %175
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %178, align 8
  %180 = load i64, i64* %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 7
  store i64 0, i64* %183, align 8
  %184 = load i8*, i8** %9, align 8
  %185 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @MCPWM, align 8
  %186 = load i64, i64* %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %185, i64 %186
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %189, align 8
  %191 = load i64, i64* %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 6
  store i8* %184, i8** %194, align 8
  %195 = load i8*, i8** %9, align 8
  %196 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @MCPWM, align 8
  %197 = load i64, i64* %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %196, i64 %197
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %200, align 8
  %202 = load i64, i64* %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 5
  store i8* %195, i8** %205, align 8
  %206 = load i8*, i8** %10, align 8
  %207 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @MCPWM, align 8
  %208 = load i64, i64* %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %207, i64 %208
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 0
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %211, align 8
  %213 = load i64, i64* %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 4
  store i8* %206, i8** %216, align 8
  %217 = load i8*, i8** %10, align 8
  %218 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @MCPWM, align 8
  %219 = load i64, i64* %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %218, i64 %219
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 0
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %222, align 8
  %224 = load i64, i64* %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 3
  store i8* %217, i8** %227, align 8
  br label %228

228:                                              ; preds = %163, %98
  br label %229

229:                                              ; preds = %228, %29
  %230 = call i32 @portEXIT_CRITICAL(i32* @mcpwm_spinlock)
  %231 = load i32, i32* @ESP_OK, align 4
  ret i32 %231
}

declare dso_local i32 @MCPWM_CHECK(i32, i32, i32) #1

declare dso_local i32 @portENTER_CRITICAL(i32*) #1

declare dso_local i32 @portEXIT_CRITICAL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
