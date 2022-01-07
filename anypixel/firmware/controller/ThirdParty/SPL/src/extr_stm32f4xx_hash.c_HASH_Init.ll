; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_hash.c_HASH_Init.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_hash.c_HASH_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@HASH_CR_ALGO = common dso_local global i32 0, align 4
@HASH_CR_DATATYPE = common dso_local global i32 0, align 4
@HASH_CR_MODE = common dso_local global i32 0, align 4
@HASH = common dso_local global %struct.TYPE_5__* null, align 8
@HASH_AlgoMode_HMAC = common dso_local global i32 0, align 4
@HASH_CR_LKEY = common dso_local global i32 0, align 4
@HASH_CR_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HASH_Init(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @IS_HASH_ALGOSELECTION(i32 %5)
  %7 = call i32 @assert_param(i32 %6)
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @IS_HASH_DATATYPE(i32 %10)
  %12 = call i32 @assert_param(i32 %11)
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @IS_HASH_ALGOMODE(i32 %15)
  %17 = call i32 @assert_param(i32 %16)
  %18 = load i32, i32* @HASH_CR_ALGO, align 4
  %19 = load i32, i32* @HASH_CR_DATATYPE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @HASH_CR_MODE, align 4
  %22 = or i32 %20, %21
  %23 = xor i32 %22, -1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @HASH, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %30, %33
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %34, %37
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** @HASH, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @HASH_AlgoMode_HMAC, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %67

48:                                               ; preds = %1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @IS_HASH_HMAC_KEYTYPE(i32 %51)
  %53 = call i32 @assert_param(i32 %52)
  %54 = load i32, i32* @HASH_CR_LKEY, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** @HASH, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** @HASH, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %48, %1
  %68 = load i32, i32* @HASH_CR_INIT, align 4
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** @HASH, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  ret void
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_HASH_ALGOSELECTION(i32) #1

declare dso_local i32 @IS_HASH_DATATYPE(i32) #1

declare dso_local i32 @IS_HASH_ALGOMODE(i32) #1

declare dso_local i32 @IS_HASH_HMAC_KEYTYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
