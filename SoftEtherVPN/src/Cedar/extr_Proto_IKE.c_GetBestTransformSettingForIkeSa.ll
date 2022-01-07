; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_GetBestTransformSettingForIkeSa.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_GetBestTransformSettingForIkeSa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_11__, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_12__ = type { i32 }

@IKE_PAYLOAD_SA = common dso_local global i32 0, align 4
@IKE_PAYLOAD_PROPOSAL = common dso_local global i32 0, align 4
@IKE_PROTOCOL_ID_IKE = common dso_local global i64 0, align 8
@IKE_PAYLOAD_TRANSFORM = common dso_local global i32 0, align 4
@IKE_TRANSFORM_ID_P1_KEY_IKE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetBestTransformSettingForIkeSa(i32* %0, %struct.TYPE_15__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_14__*, align 8
  %17 = alloca %struct.TYPE_11__*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i32* %2, i32** %7, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %3
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %23 = icmp eq %struct.TYPE_15__* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32*, i32** %7, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %21, %3
  store i32 0, i32* %4, align 4
  br label %117

28:                                               ; preds = %24
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IKE_PAYLOAD_SA, align 4
  %33 = call %struct.TYPE_14__* @IkeGetPayload(i32 %31, i32 %32, i64 0)
  store %struct.TYPE_14__* %33, %struct.TYPE_14__** %8, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %35 = icmp eq %struct.TYPE_14__* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %117

37:                                               ; preds = %28
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  store %struct.TYPE_12__* %40, %struct.TYPE_12__** %9, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @IKE_PAYLOAD_PROPOSAL, align 4
  %45 = call i64 @IkeGetPayloadNum(i32 %43, i32 %44)
  store i64 %45, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %46

46:                                               ; preds = %113, %37
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* %11, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %116

50:                                               ; preds = %46
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @IKE_PAYLOAD_PROPOSAL, align 4
  %55 = load i64, i64* %10, align 8
  %56 = call %struct.TYPE_14__* @IkeGetPayload(i32 %53, i32 %54, i64 %55)
  store %struct.TYPE_14__* %56, %struct.TYPE_14__** %12, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %58 = icmp ne %struct.TYPE_14__* %57, null
  br i1 %58, label %59, label %112

59:                                               ; preds = %50
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  store %struct.TYPE_13__* %62, %struct.TYPE_13__** %13, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @IKE_PROTOCOL_ID_IKE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %111

68:                                               ; preds = %59
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @IKE_PAYLOAD_TRANSFORM, align 4
  %73 = call i64 @IkeGetPayloadNum(i32 %71, i32 %72)
  store i64 %73, i64* %15, align 8
  store i64 0, i64* %14, align 8
  br label %74

74:                                               ; preds = %107, %68
  %75 = load i64, i64* %14, align 8
  %76 = load i64, i64* %15, align 8
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %78, label %110

78:                                               ; preds = %74
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @IKE_PAYLOAD_TRANSFORM, align 4
  %83 = load i64, i64* %14, align 8
  %84 = call %struct.TYPE_14__* @IkeGetPayload(i32 %81, i32 %82, i64 %83)
  store %struct.TYPE_14__* %84, %struct.TYPE_14__** %16, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %86 = icmp ne %struct.TYPE_14__* %85, null
  br i1 %86, label %87, label %106

87:                                               ; preds = %78
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  store %struct.TYPE_11__* %90, %struct.TYPE_11__** %17, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @IKE_TRANSFORM_ID_P1_KEY_IKE, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %105

96:                                               ; preds = %87
  %97 = load i32*, i32** %5, align 8
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %99 = call i64 @TransformPayloadToTransformSettingForIkeSa(i32* %97, %struct.TYPE_11__* %98, i32* %18)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load i32*, i32** %7, align 8
  %103 = call i32 @Copy(i32* %102, i32* %18, i32 4)
  store i32 1, i32* %4, align 4
  br label %117

104:                                              ; preds = %96
  br label %105

105:                                              ; preds = %104, %87
  br label %106

106:                                              ; preds = %105, %78
  br label %107

107:                                              ; preds = %106
  %108 = load i64, i64* %14, align 8
  %109 = add nsw i64 %108, 1
  store i64 %109, i64* %14, align 8
  br label %74

110:                                              ; preds = %74
  br label %111

111:                                              ; preds = %110, %59
  br label %112

112:                                              ; preds = %111, %50
  br label %113

113:                                              ; preds = %112
  %114 = load i64, i64* %10, align 8
  %115 = add nsw i64 %114, 1
  store i64 %115, i64* %10, align 8
  br label %46

116:                                              ; preds = %46
  store i32 0, i32* %4, align 4
  br label %117

117:                                              ; preds = %116, %101, %36, %27
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local %struct.TYPE_14__* @IkeGetPayload(i32, i32, i64) #1

declare dso_local i64 @IkeGetPayloadNum(i32, i32) #1

declare dso_local i64 @TransformPayloadToTransformSettingForIkeSa(i32*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @Copy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
