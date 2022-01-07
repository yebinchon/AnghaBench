; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_TransformSettingToTransformPayloadForIke.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_TransformSettingToTransformPayloadForIke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i64, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@IKE_TRANSFORM_VALUE_P1_CRYPTO = common dso_local global i32 0, align 4
@IKE_TRANSFORM_VALUE_P1_HASH = common dso_local global i32 0, align 4
@IKE_TRANSFORM_VALUE_P1_AUTH_METHOD = common dso_local global i32 0, align 4
@IKE_P1_AUTH_METHOD_PRESHAREDKEY = common dso_local global i32 0, align 4
@IKE_TRANSFORM_VALUE_P1_DH_GROUP = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i64 0, align 8
@IKE_TRANSFORM_VALUE_P1_LIFE_TYPE = common dso_local global i32 0, align 4
@IKE_P1_LIFE_TYPE_SECONDS = common dso_local global i32 0, align 4
@IKE_TRANSFORM_VALUE_P1_LIFE_VALUE = common dso_local global i32 0, align 4
@IKE_P1_LIFE_TYPE_KILOBYTES = common dso_local global i32 0, align 4
@IKE_TRANSFORM_VALUE_P1_KET_SIZE = common dso_local global i32 0, align 4
@IKE_TRANSFORM_ID_P1_KEY_IKE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @TransformSettingToTransformPayloadForIke(i32* %0, %struct.TYPE_5__* %1) #0 {
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
  br label %100

13:                                               ; preds = %9
  %14 = call i32* @NewListFast(i32* null)
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* @IKE_TRANSFORM_VALUE_P1_CRYPTO, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @IkeNewTransformValue(i32 %16, i32 %19)
  %21 = call i32 @Add(i32* %15, i32 %20)
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* @IKE_TRANSFORM_VALUE_P1_HASH, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @IkeNewTransformValue(i32 %23, i32 %26)
  %28 = call i32 @Add(i32* %22, i32 %27)
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* @IKE_TRANSFORM_VALUE_P1_AUTH_METHOD, align 4
  %31 = load i32, i32* @IKE_P1_AUTH_METHOD_PRESHAREDKEY, align 4
  %32 = call i32 @IkeNewTransformValue(i32 %30, i32 %31)
  %33 = call i32 @Add(i32* %29, i32 %32)
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* @IKE_TRANSFORM_VALUE_P1_DH_GROUP, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @IkeNewTransformValue(i32 %35, i32 %38)
  %40 = call i32 @Add(i32* %34, i32 %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @INFINITE, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %13
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* @IKE_TRANSFORM_VALUE_P1_LIFE_TYPE, align 4
  %49 = load i32, i32* @IKE_P1_LIFE_TYPE_SECONDS, align 4
  %50 = call i32 @IkeNewTransformValue(i32 %48, i32 %49)
  %51 = call i32 @Add(i32* %47, i32 %50)
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* @IKE_TRANSFORM_VALUE_P1_LIFE_VALUE, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 @IkeNewTransformValue(i32 %53, i32 %57)
  %59 = call i32 @Add(i32* %52, i32 %58)
  br label %60

60:                                               ; preds = %46, %13
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @INFINITE, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %60
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* @IKE_TRANSFORM_VALUE_P1_LIFE_TYPE, align 4
  %69 = load i32, i32* @IKE_P1_LIFE_TYPE_KILOBYTES, align 4
  %70 = call i32 @IkeNewTransformValue(i32 %68, i32 %69)
  %71 = call i32 @Add(i32* %67, i32 %70)
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* @IKE_TRANSFORM_VALUE_P1_LIFE_VALUE, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 @IkeNewTransformValue(i32 %73, i32 %77)
  %79 = call i32 @Add(i32* %72, i32 %78)
  br label %80

80:                                               ; preds = %66, %60
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 6
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %80
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* @IKE_TRANSFORM_VALUE_P1_KET_SIZE, align 4
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = mul nsw i32 %92, 8
  %94 = call i32 @IkeNewTransformValue(i32 %89, i32 %93)
  %95 = call i32 @Add(i32* %88, i32 %94)
  br label %96

96:                                               ; preds = %87, %80
  %97 = load i32, i32* @IKE_TRANSFORM_ID_P1_KEY_IKE, align 4
  %98 = load i32*, i32** %6, align 8
  %99 = call i32* @IkeNewTransformPayload(i32 1, i32 %97, i32* %98)
  store i32* %99, i32** %3, align 8
  br label %100

100:                                              ; preds = %96, %12
  %101 = load i32*, i32** %3, align 8
  ret i32* %101
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
