; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/corecrypto/ccdbrg/src/extr_ccdrbg_nisthmac.c_ccdrbg_factory_nisthmac.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/corecrypto/ccdbrg/src/extr_ccdrbg_nisthmac.c_ccdrbg_factory_nisthmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccdrbg_info = type { i32, %struct.ccdrbg_nisthmac_custom*, i32, i32, i32, i32 }
%struct.ccdrbg_nisthmac_custom = type { i32 }

@init = common dso_local global i32 0, align 4
@generate = common dso_local global i32 0, align 4
@reseed = common dso_local global i32 0, align 4
@done = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccdrbg_factory_nisthmac(%struct.ccdrbg_info* %0, %struct.ccdrbg_nisthmac_custom* %1) #0 {
  %3 = alloca %struct.ccdrbg_info*, align 8
  %4 = alloca %struct.ccdrbg_nisthmac_custom*, align 8
  store %struct.ccdrbg_info* %0, %struct.ccdrbg_info** %3, align 8
  store %struct.ccdrbg_nisthmac_custom* %1, %struct.ccdrbg_nisthmac_custom** %4, align 8
  %5 = load %struct.ccdrbg_info*, %struct.ccdrbg_info** %3, align 8
  %6 = getelementptr inbounds %struct.ccdrbg_info, %struct.ccdrbg_info* %5, i32 0, i32 0
  store i32 8, i32* %6, align 8
  %7 = load i32, i32* @init, align 4
  %8 = load %struct.ccdrbg_info*, %struct.ccdrbg_info** %3, align 8
  %9 = getelementptr inbounds %struct.ccdrbg_info, %struct.ccdrbg_info* %8, i32 0, i32 5
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @generate, align 4
  %11 = load %struct.ccdrbg_info*, %struct.ccdrbg_info** %3, align 8
  %12 = getelementptr inbounds %struct.ccdrbg_info, %struct.ccdrbg_info* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* @reseed, align 4
  %14 = load %struct.ccdrbg_info*, %struct.ccdrbg_info** %3, align 8
  %15 = getelementptr inbounds %struct.ccdrbg_info, %struct.ccdrbg_info* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @done, align 4
  %17 = load %struct.ccdrbg_info*, %struct.ccdrbg_info** %3, align 8
  %18 = getelementptr inbounds %struct.ccdrbg_info, %struct.ccdrbg_info* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  %19 = load %struct.ccdrbg_nisthmac_custom*, %struct.ccdrbg_nisthmac_custom** %4, align 8
  %20 = load %struct.ccdrbg_info*, %struct.ccdrbg_info** %3, align 8
  %21 = getelementptr inbounds %struct.ccdrbg_info, %struct.ccdrbg_info* %20, i32 0, i32 1
  store %struct.ccdrbg_nisthmac_custom* %19, %struct.ccdrbg_nisthmac_custom** %21, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
