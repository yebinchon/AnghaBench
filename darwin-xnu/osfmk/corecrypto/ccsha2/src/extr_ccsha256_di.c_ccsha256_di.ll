; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/corecrypto/ccsha2/src/extr_ccsha256_di.c_ccsha256_di.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/corecrypto/ccsha2/src/extr_ccsha256_di.c_ccsha256_di.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccdigest_info = type { i32 }

@FIPSPOST_TRACE_EVENT = common dso_local global i32 0, align 4
@ccsha256_ltc_di = common dso_local global %struct.ccdigest_info zeroinitializer, align 4
@ccsha256_v6m_di = common dso_local global %struct.ccdigest_info zeroinitializer, align 4
@ccsha256_vng_armv7neon_di = common dso_local global %struct.ccdigest_info zeroinitializer, align 4
@ccsha256_vng_intel_AVX1_di = common dso_local global %struct.ccdigest_info zeroinitializer, align 4
@ccsha256_vng_intel_AVX2_di = common dso_local global %struct.ccdigest_info zeroinitializer, align 4
@ccsha256_vng_intel_SupplementalSSE3_di = common dso_local global %struct.ccdigest_info zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ccdigest_info* @ccsha256_di() #0 {
  %1 = load i32, i32* @FIPSPOST_TRACE_EVENT, align 4
  ret %struct.ccdigest_info* @ccsha256_ltc_di
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
