; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_hash.c_HASH_GetFlagStatus.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_hash.c_HASH_GetFlagStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@RESET = common dso_local global i64 0, align 8
@HASH_FLAG_DINNE = common dso_local global i32 0, align 4
@HASH = common dso_local global %struct.TYPE_2__* null, align 8
@SET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HASH_GetFlagStatus(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i64, i64* @RESET, align 8
  store i64 %5, i64* %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @IS_HASH_GET_FLAG(i32 %6)
  %8 = call i32 @assert_param(i32 %7)
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @HASH_FLAG_DINNE, align 4
  %11 = and i32 %9, %10
  %12 = load i64, i64* @RESET, align 8
  %13 = trunc i64 %12 to i32
  %14 = icmp ne i32 %11, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @HASH, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %4, align 4
  br label %23

19:                                               ; preds = %1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @HASH, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %19, %15
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %2, align 4
  %26 = and i32 %24, %25
  %27 = load i64, i64* @RESET, align 8
  %28 = trunc i64 %27 to i32
  %29 = icmp ne i32 %26, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i64, i64* @SET, align 8
  store i64 %31, i64* %3, align 8
  br label %34

32:                                               ; preds = %23
  %33 = load i64, i64* @RESET, align 8
  store i64 %33, i64* %3, align 8
  br label %34

34:                                               ; preds = %32, %30
  %35 = load i64, i64* %3, align 8
  ret i64 %35
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_HASH_GET_FLAG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
