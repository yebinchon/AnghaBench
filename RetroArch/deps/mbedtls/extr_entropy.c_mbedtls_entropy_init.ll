; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_entropy.c_mbedtls_entropy_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_entropy.c_mbedtls_entropy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }

@mbedtls_platform_entropy_poll = common dso_local global i32 0, align 4
@MBEDTLS_ENTROPY_MIN_PLATFORM = common dso_local global i32 0, align 4
@MBEDTLS_ENTROPY_SOURCE_STRONG = common dso_local global i32 0, align 4
@MBEDTLS_ENTROPY_BLOCK_SIZE = common dso_local global i32 0, align 4
@MBEDTLS_ENTROPY_MIN_HARDCLOCK = common dso_local global i32 0, align 4
@MBEDTLS_ENTROPY_MIN_HARDWARE = common dso_local global i32 0, align 4
@MBEDTLS_ENTROPY_MIN_HAVEGE = common dso_local global i32 0, align 4
@MBEDTLS_ENTROPY_SOURCE_WEAK = common dso_local global i32 0, align 4
@mbedtls_hardclock_poll = common dso_local global i32 0, align 4
@mbedtls_hardware_poll = common dso_local global i32 0, align 4
@mbedtls_havege_poll = common dso_local global i32 0, align 4
@mbedtls_null_entropy_poll = common dso_local global i32 0, align 4
@mbedtls_nv_seed_poll = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_entropy_init(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %4 = call i32 @memset(%struct.TYPE_5__* %3, i32 0, i32 12)
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %7 = call i32 @mbedtls_sha256_starts(i32* %6, i32 0)
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %9 = load i32, i32* @mbedtls_platform_entropy_poll, align 4
  %10 = load i32, i32* @MBEDTLS_ENTROPY_MIN_PLATFORM, align 4
  %11 = load i32, i32* @MBEDTLS_ENTROPY_SOURCE_STRONG, align 4
  %12 = call i32 @mbedtls_entropy_add_source(%struct.TYPE_5__* %8, i32 %9, i32* null, i32 %10, i32 %11)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @mbedtls_sha256_starts(i32*, i32) #1

declare dso_local i32 @mbedtls_entropy_add_source(%struct.TYPE_5__*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
