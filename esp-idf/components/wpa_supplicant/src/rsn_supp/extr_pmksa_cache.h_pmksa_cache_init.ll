; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/rsn_supp/extr_pmksa_cache.h_pmksa_cache_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/rsn_supp/extr_pmksa_cache.h_pmksa_cache_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsn_pmksa_cache = type opaque
%struct.wpa_sm = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rsn_pmksa_cache* ({}*, i8*, %struct.wpa_sm*)* @pmksa_cache_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rsn_pmksa_cache* @pmksa_cache_init({}* %0, i8* %1, %struct.wpa_sm* %2) #0 {
  %4 = alloca {}*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wpa_sm*, align 8
  store {}* %0, {}** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.wpa_sm* %2, %struct.wpa_sm** %6, align 8
  ret %struct.rsn_pmksa_cache* inttoptr (i64 -1 to %struct.rsn_pmksa_cache*)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
