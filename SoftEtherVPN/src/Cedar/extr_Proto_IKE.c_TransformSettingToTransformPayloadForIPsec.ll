; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_TransformSettingToTransformPayloadForIPsec.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_TransformSettingToTransformPayloadForIPsec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64, i64, i32, i32, i32, %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i64 }

@IKE_TRANSFORM_VALUE_P2_HMAC = common dso_local global i32 0, align 4
@IKE_TRANSFORM_VALUE_P2_DH_GROUP = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i64 0, align 8
@IKE_TRANSFORM_VALUE_P2_LIFE_TYPE = common dso_local global i32 0, align 4
@IKE_P2_LIFE_TYPE_SECONDS = common dso_local global i32 0, align 4
@IKE_TRANSFORM_VALUE_P2_LIFE_VALUE = common dso_local global i32 0, align 4
@IKE_P2_LIFE_TYPE_KILOBYTES = common dso_local global i32 0, align 4
@IKE_TRANSFORM_VALUE_P2_KEY_SIZE = common dso_local global i32 0, align 4
@IKE_TRANSFORM_VALUE_P2_CAPSULE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @TransformSettingToTransformPayloadForIPsec(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = icmp eq %struct.TYPE_5__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %2
  store i32* null, i32** %3, align 8
  br label %103

13:                                               ; preds = %9
  %14 = call i32* @NewListFast(i32* null)
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* @IKE_TRANSFORM_VALUE_P2_HMAC, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @IkeNewTransformValue(i32 %16, i32 %19)
  %21 = call i32 @Add(i32* %15, i32 %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 8
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %13
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* @IKE_TRANSFORM_VALUE_P2_DH_GROUP, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @IkeNewTransformValue(i32 %28, i32 %31)
  %33 = call i32 @Add(i32* %27, i32 %32)
  br label %34

34:                                               ; preds = %26, %13
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @INFINITE, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %34
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* @IKE_TRANSFORM_VALUE_P2_LIFE_TYPE, align 4
  %43 = load i32, i32* @IKE_P2_LIFE_TYPE_SECONDS, align 4
  %44 = call i32 @IkeNewTransformValue(i32 %42, i32 %43)
  %45 = call i32 @Add(i32* %41, i32 %44)
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* @IKE_TRANSFORM_VALUE_P2_LIFE_VALUE, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 @IkeNewTransformValue(i32 %47, i32 %51)
  %53 = call i32 @Add(i32* %46, i32 %52)
  br label %54

54:                                               ; preds = %40, %34
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @INFINITE, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %54
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* @IKE_TRANSFORM_VALUE_P2_LIFE_TYPE, align 4
  %63 = load i32, i32* @IKE_P2_LIFE_TYPE_KILOBYTES, align 4
  %64 = call i32 @IkeNewTransformValue(i32 %62, i32 %63)
  %65 = call i32 @Add(i32* %61, i32 %64)
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* @IKE_TRANSFORM_VALUE_P2_LIFE_VALUE, align 4
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i32 @IkeNewTransformValue(i32 %67, i32 %71)
  %73 = call i32 @Add(i32* %66, i32 %72)
  br label %74

74:                                               ; preds = %60, %54
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 7
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %74
  %82 = load i32*, i32** %6, align 8
  %83 = load i32, i32* @IKE_TRANSFORM_VALUE_P2_KEY_SIZE, align 4
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = mul nsw i32 %86, 8
  %88 = call i32 @IkeNewTransformValue(i32 %83, i32 %87)
  %89 = call i32 @Add(i32* %82, i32 %88)
  br label %90

90:                                               ; preds = %81, %74
  %91 = load i32*, i32** %6, align 8
  %92 = load i32, i32* @IKE_TRANSFORM_VALUE_P2_CAPSULE, align 4
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @IkeNewTransformValue(i32 %92, i32 %95)
  %97 = call i32 @Add(i32* %91, i32 %96)
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = call i32* @IkeNewTransformPayload(i32 1, i32 %100, i32* %101)
  store i32* %102, i32** %3, align 8
  br label %103

103:                                              ; preds = %90, %12
  %104 = load i32*, i32** %3, align 8
  ret i32* %104
}

declare dso_local i32* @NewListFast(i32*) #1

declare dso_local i32 @Add(i32*, i32) #1

declare dso_local i32 @IkeNewTransformValue(i32, i32) #1

declare dso_local i32* @IkeNewTransformPayload(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
