; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pcb.c_arm_debug_set.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pcb.c_arm_debug_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64*, i64*, i64*, i64* }
%struct.cpu_data = type { i64, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@ARM_DBG_LOCK_ACCESS_KEY = common dso_local global i64 0, align 8
@ARM_DEBUG_OFFSET_DBGLAR = common dso_local global i64 0, align 8
@ARM_DEBUG_OFFSET_DBGPRSR = common dso_local global i64 0, align 8
@ARM_DBGDSCR_MDBGEN = common dso_local global i64 0, align 8
@ARM_DEBUG_OFFSET_DBGDSCR = common dso_local global i64 0, align 8
@ARM_DEBUG_OFFSET_DBGBCR = common dso_local global i64 0, align 8
@ARM_DEBUG_OFFSET_DBGWCR = common dso_local global i64 0, align 8
@ARM_DEBUG_OFFSET_DBGBVR = common dso_local global i64 0, align 8
@ARM_DEBUG_OFFSET_DBGWVR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arm_debug_set(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.cpu_data*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %8 = call %struct.TYPE_7__* (...) @arm_debug_info()
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %4, align 8
  %9 = load i32, i32* @FALSE, align 4
  %10 = call i32 @ml_set_interrupts_enabled(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = call %struct.cpu_data* (...) @getCpuDatap()
  store %struct.cpu_data* %11, %struct.cpu_data** %3, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %13 = load %struct.cpu_data*, %struct.cpu_data** %3, align 8
  %14 = getelementptr inbounds %struct.cpu_data, %struct.cpu_data* %13, i32 0, i32 1
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %14, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %143

19:                                               ; preds = %1
  %20 = load %struct.cpu_data*, %struct.cpu_data** %3, align 8
  %21 = getelementptr inbounds %struct.cpu_data, %struct.cpu_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* @ARM_DBG_LOCK_ACCESS_KEY, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @ARM_DEBUG_OFFSET_DBGLAR, align 8
  %26 = add i64 %24, %25
  %27 = inttoptr i64 %26 to i64*
  store volatile i64 %23, i64* %27, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @ARM_DEBUG_OFFSET_DBGPRSR, align 8
  %30 = add i64 %28, %29
  %31 = inttoptr i64 %30 to i64*
  %32 = load volatile i64, i64* %31, align 8
  %33 = load volatile i64, i64* @ARM_DBGDSCR_MDBGEN, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @ARM_DEBUG_OFFSET_DBGDSCR, align 8
  %36 = add i64 %34, %35
  %37 = inttoptr i64 %36 to i64*
  %38 = load volatile i64, i64* %37, align 8
  %39 = or i64 %38, %33
  store volatile i64 %39, i64* %37, align 8
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %58, %19
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 16
  br i1 %42, label %43, label %61

43:                                               ; preds = %40
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* @ARM_DEBUG_OFFSET_DBGBCR, align 8
  %46 = add i64 %44, %45
  %47 = inttoptr i64 %46 to i64*
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  store volatile i64 0, i64* %50, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* @ARM_DEBUG_OFFSET_DBGWCR, align 8
  %53 = add i64 %51, %52
  %54 = inttoptr i64 %53 to i64*
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  store volatile i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %43
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %40

61:                                               ; preds = %40
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %63 = icmp eq %struct.TYPE_6__* %62, null
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = load volatile i64, i64* @ARM_DBGDSCR_MDBGEN, align 8
  %66 = xor i64 %65, -1
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* @ARM_DEBUG_OFFSET_DBGDSCR, align 8
  %69 = add i64 %67, %68
  %70 = inttoptr i64 %69 to i64*
  %71 = load volatile i64, i64* %70, align 8
  %72 = and i64 %71, %66
  store volatile i64 %72, i64* %70, align 8
  br label %138

73:                                               ; preds = %61
  store i32 0, i32* %6, align 4
  br label %74

74:                                               ; preds = %134, %73
  %75 = load i32, i32* %6, align 4
  %76 = icmp slt i32 %75, 16
  br i1 %76, label %77, label %137

77:                                               ; preds = %74
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 3
  %80 = load i64*, i64** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %7, align 8
  %86 = load i64, i64* @ARM_DEBUG_OFFSET_DBGBVR, align 8
  %87 = add i64 %85, %86
  %88 = inttoptr i64 %87 to i64*
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  store volatile i64 %84, i64* %91, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  %94 = load i64*, i64** %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %7, align 8
  %100 = load i64, i64* @ARM_DEBUG_OFFSET_DBGBCR, align 8
  %101 = add i64 %99, %100
  %102 = inttoptr i64 %101 to i64*
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  store volatile i64 %98, i64* %105, align 8
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load i64*, i64** %107, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %7, align 8
  %114 = load i64, i64* @ARM_DEBUG_OFFSET_DBGWVR, align 8
  %115 = add i64 %113, %114
  %116 = inttoptr i64 %115 to i64*
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  store volatile i64 %112, i64* %119, align 8
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i64*, i64** %121, align 8
  %123 = load i32, i32* %6, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %122, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %7, align 8
  %128 = load i64, i64* @ARM_DEBUG_OFFSET_DBGWCR, align 8
  %129 = add i64 %127, %128
  %130 = inttoptr i64 %129 to i64*
  %131 = load i32, i32* %6, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i64, i64* %130, i64 %132
  store volatile i64 %126, i64* %133, align 8
  br label %134

134:                                              ; preds = %77
  %135 = load i32, i32* %6, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %6, align 4
  br label %74

137:                                              ; preds = %74
  br label %138

138:                                              ; preds = %137, %64
  %139 = load i64, i64* %7, align 8
  %140 = load i64, i64* @ARM_DEBUG_OFFSET_DBGLAR, align 8
  %141 = add i64 %139, %140
  %142 = inttoptr i64 %141 to i64*
  store volatile i64 0, i64* %142, align 8
  br label %152

143:                                              ; preds = %1
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %150 = call i32 @arm_debug_set_cp14(%struct.TYPE_6__* %149)
  br label %151

151:                                              ; preds = %148, %143
  br label %152

152:                                              ; preds = %151, %138
  %153 = load i32, i32* %5, align 4
  %154 = call i32 @ml_set_interrupts_enabled(i32 %153)
  ret void
}

declare dso_local %struct.TYPE_7__* @arm_debug_info(...) #1

declare dso_local i32 @ml_set_interrupts_enabled(i32) #1

declare dso_local %struct.cpu_data* @getCpuDatap(...) #1

declare dso_local i32 @arm_debug_set_cp14(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
