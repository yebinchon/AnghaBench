; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_mcpwm.c_mcpwm_set_signal_low.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_mcpwm.c_mcpwm_set_signal_low.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@MCPWM_UNIT_MAX = common dso_local global i64 0, align 8
@MCPWM_UNIT_NUM_ERROR = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@MCPWM_TIMER_MAX = common dso_local global i64 0, align 8
@MCPWM_TIMER_ERROR = common dso_local global i32 0, align 4
@MCPWM_OPR_MAX = common dso_local global i64 0, align 8
@MCPWM_OP_ERROR = common dso_local global i32 0, align 4
@mcpwm_spinlock = common dso_local global i32 0, align 4
@MCPWM = common dso_local global %struct.TYPE_6__** null, align 8
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mcpwm_set_signal_low(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @MCPWM_UNIT_MAX, align 8
  %9 = icmp ult i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i32, i32* @MCPWM_UNIT_NUM_ERROR, align 4
  %12 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %13 = call i32 @MCPWM_CHECK(i32 %10, i32 %11, i32 %12)
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @MCPWM_TIMER_MAX, align 8
  %16 = icmp ult i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* @MCPWM_TIMER_ERROR, align 4
  %19 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %20 = call i32 @MCPWM_CHECK(i32 %17, i32 %18, i32 %19)
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @MCPWM_OPR_MAX, align 8
  %23 = icmp ult i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* @MCPWM_OP_ERROR, align 4
  %26 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %27 = call i32 @MCPWM_CHECK(i32 %24, i32 %25, i32 %26)
  %28 = call i32 @portENTER_CRITICAL(i32* @mcpwm_spinlock)
  %29 = load i64, i64* %6, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %110

31:                                               ; preds = %3
  %32 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @MCPWM, align 8
  %33 = load i64, i64* %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %32, i64 %33
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 1, i32* %44, align 4
  %45 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @MCPWM, align 8
  %46 = load i64, i64* %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %45, i64 %46
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = load i64, i64* %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i64, i64* %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  store i32 1, i32* %57, align 4
  %58 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @MCPWM, align 8
  %59 = load i64, i64* %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %58, i64 %59
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = load i64, i64* %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = load i64, i64* %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  store i32 1, i32* %70, align 4
  %71 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @MCPWM, align 8
  %72 = load i64, i64* %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %71, i64 %72
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = load i64, i64* %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = load i64, i64* %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 3
  store i32 1, i32* %83, align 4
  %84 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @MCPWM, align 8
  %85 = load i64, i64* %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %84, i64 %85
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = load i64, i64* %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load i64, i64* %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 4
  store i32 1, i32* %96, align 4
  %97 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @MCPWM, align 8
  %98 = load i64, i64* %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %97, i64 %98
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = load i64, i64* %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = load i64, i64* %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 5
  store i32 1, i32* %109, align 4
  br label %110

110:                                              ; preds = %31, %3
  %111 = load i64, i64* %6, align 8
  %112 = icmp eq i64 %111, 1
  br i1 %112, label %113, label %192

113:                                              ; preds = %110
  %114 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @MCPWM, align 8
  %115 = load i64, i64* %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %114, i64 %115
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  %120 = load i64, i64* %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = load i64, i64* %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  store i32 1, i32* %126, align 4
  %127 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @MCPWM, align 8
  %128 = load i64, i64* %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %127, i64 %128
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %131, align 8
  %133 = load i64, i64* %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = load i64, i64* %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 6
  store i32 1, i32* %139, align 4
  %140 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @MCPWM, align 8
  %141 = load i64, i64* %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %140, i64 %141
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %144, align 8
  %146 = load i64, i64* %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = load i64, i64* %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 2
  store i32 1, i32* %152, align 4
  %153 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @MCPWM, align 8
  %154 = load i64, i64* %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %153, i64 %154
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %157, align 8
  %159 = load i64, i64* %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = load i64, i64* %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 3
  store i32 1, i32* %165, align 4
  %166 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @MCPWM, align 8
  %167 = load i64, i64* %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %166, i64 %167
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %170, align 8
  %172 = load i64, i64* %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %174, align 8
  %176 = load i64, i64* %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 7
  store i32 1, i32* %178, align 4
  %179 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @MCPWM, align 8
  %180 = load i64, i64* %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %179, i64 %180
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %183, align 8
  %185 = load i64, i64* %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %187, align 8
  %189 = load i64, i64* %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 5
  store i32 1, i32* %191, align 4
  br label %192

192:                                              ; preds = %113, %110
  %193 = call i32 @portEXIT_CRITICAL(i32* @mcpwm_spinlock)
  %194 = load i32, i32* @ESP_OK, align 4
  ret i32 %194
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
