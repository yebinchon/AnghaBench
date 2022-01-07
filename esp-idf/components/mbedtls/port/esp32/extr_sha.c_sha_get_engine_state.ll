; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mbedtls/port/esp32/extr_sha.c_sha_get_engine_state.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mbedtls/port/esp32/extr_sha.c_sha_get_engine_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@engine_states = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @sha_get_engine_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @sha_get_engine_state(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @sha_engine_index(i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32**, i32*** @engine_states, align 8
  %11 = load i32, i32* %3, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i32*, i32** %10, i64 %12
  store i32** %13, i32*** %4, align 8
  %14 = load i32**, i32*** %4, align 8
  %15 = load volatile i32*, i32** %14, align 8
  store i32* %15, i32** %5, align 8
  store i64 0, i64* %6, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %39

18:                                               ; preds = %1
  %19 = call i32* (...) @xSemaphoreCreateBinary()
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = icmp ne i32* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @xSemaphoreGive(i32* %24)
  %26 = load i32*, i32** %7, align 8
  %27 = ptrtoint i32* %26 to i64
  store i64 %27, i64* %6, align 8
  %28 = load i32**, i32*** %4, align 8
  %29 = bitcast i32** %28 to i64*
  %30 = call i32 @uxPortCompareSet(i64* %29, i32 0, i64* %6)
  %31 = load i64, i64* %6, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %18
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @vSemaphoreDelete(i32* %34)
  br label %36

36:                                               ; preds = %33, %18
  %37 = load i32**, i32*** %4, align 8
  %38 = load volatile i32*, i32** %37, align 8
  store i32* %38, i32** %5, align 8
  br label %39

39:                                               ; preds = %36, %1
  %40 = load i32*, i32** %5, align 8
  ret i32* %40
}

declare dso_local i32 @sha_engine_index(i32) #1

declare dso_local i32* @xSemaphoreCreateBinary(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @xSemaphoreGive(i32*) #1

declare dso_local i32 @uxPortCompareSet(i64*, i32, i64*) #1

declare dso_local i32 @vSemaphoreDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
