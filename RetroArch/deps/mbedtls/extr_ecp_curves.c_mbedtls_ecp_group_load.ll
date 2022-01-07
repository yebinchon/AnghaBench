; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp_curves.c_mbedtls_ecp_group_load.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp_curves.c_mbedtls_ecp_group_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@MBEDTLS_ERR_ECP_FEATURE_UNAVAILABLE = common dso_local global i32 0, align 4
@brainpoolP256r1 = common dso_local global i32 0, align 4
@brainpoolP384r1 = common dso_local global i32 0, align 4
@brainpoolP512r1 = common dso_local global i32 0, align 4
@ecp_mod_p192k1 = common dso_local global i32 0, align 4
@ecp_mod_p224k1 = common dso_local global i32 0, align 4
@ecp_mod_p255 = common dso_local global i32 0, align 4
@ecp_mod_p256k1 = common dso_local global i32 0, align 4
@p192 = common dso_local global i32 0, align 4
@p224 = common dso_local global i32 0, align 4
@p256 = common dso_local global i32 0, align 4
@p384 = common dso_local global i32 0, align 4
@p521 = common dso_local global i32 0, align 4
@secp192k1 = common dso_local global i32 0, align 4
@secp192r1 = common dso_local global i32 0, align 4
@secp224k1 = common dso_local global i32 0, align 4
@secp224r1 = common dso_local global i32 0, align 4
@secp256k1 = common dso_local global i32 0, align 4
@secp256r1 = common dso_local global i32 0, align 4
@secp384r1 = common dso_local global i32 0, align 4
@secp521r1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecp_group_load(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %6 = call i32 @mbedtls_ecp_group_free(%struct.TYPE_5__* %5)
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %11 [
  ]

11:                                               ; preds = %2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = call i32 @mbedtls_ecp_group_free(%struct.TYPE_5__* %12)
  %14 = load i32, i32* @MBEDTLS_ERR_ECP_FEATURE_UNAVAILABLE, align 4
  ret i32 %14
}

declare dso_local i32 @mbedtls_ecp_group_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
