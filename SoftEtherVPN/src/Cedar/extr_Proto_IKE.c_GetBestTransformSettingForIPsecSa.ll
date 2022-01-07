; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_GetBestTransformSettingForIPsecSa.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_GetBestTransformSettingForIPsecSa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 }
%struct.TYPE_17__ = type { i64, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, %struct.TYPE_19__, %struct.TYPE_18__ }
%struct.TYPE_19__ = type { i64, %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32 }

@IKE_PAYLOAD_SA = common dso_local global i32 0, align 4
@IKE_PAYLOAD_PROPOSAL = common dso_local global i32 0, align 4
@IKE_PROTOCOL_ID_IPSEC_ESP = common dso_local global i64 0, align 8
@IKE_PAYLOAD_TRANSFORM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetBestTransformSettingForIPsecSa(i32* %0, %struct.TYPE_21__* %1, %struct.TYPE_17__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_20__*, align 8
  %16 = alloca %struct.TYPE_19__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_20__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_17__, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %7, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %14, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %33, label %24

24:                                               ; preds = %4
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %26 = icmp eq %struct.TYPE_21__* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %29 = icmp eq %struct.TYPE_17__* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32*, i32** %9, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %30, %27, %24, %4
  store i32 0, i32* %5, align 4
  br label %147

34:                                               ; preds = %30
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %36 = call i32 @Zero(%struct.TYPE_17__* %35, i32 16)
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @IKE_PAYLOAD_SA, align 4
  %41 = call %struct.TYPE_20__* @IkeGetPayload(i32 %39, i32 %40, i64 0)
  store %struct.TYPE_20__* %41, %struct.TYPE_20__** %10, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %43 = icmp eq %struct.TYPE_20__* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %147

45:                                               ; preds = %34
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 2
  store %struct.TYPE_18__* %48, %struct.TYPE_18__** %11, align 8
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @IKE_PAYLOAD_PROPOSAL, align 4
  %53 = call i64 @IkeGetPayloadNum(i32 %51, i32 %52)
  store i64 %53, i64* %13, align 8
  store i64 0, i64* %12, align 8
  br label %54

54:                                               ; preds = %143, %45
  %55 = load i64, i64* %12, align 8
  %56 = load i64, i64* %13, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %146

58:                                               ; preds = %54
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @IKE_PAYLOAD_PROPOSAL, align 4
  %63 = load i64, i64* %12, align 8
  %64 = call %struct.TYPE_20__* @IkeGetPayload(i32 %61, i32 %62, i64 %63)
  store %struct.TYPE_20__* %64, %struct.TYPE_20__** %15, align 8
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %66 = icmp ne %struct.TYPE_20__* %65, null
  br i1 %66, label %67, label %142

67:                                               ; preds = %58
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 1
  store %struct.TYPE_19__* %70, %struct.TYPE_19__** %16, align 8
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @IKE_PROTOCOL_ID_IPSEC_ESP, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %141

76:                                               ; preds = %67
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 4
  br i1 %82, label %83, label %141

83:                                               ; preds = %76
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @IKE_PAYLOAD_TRANSFORM, align 4
  %88 = call i64 @IkeGetPayloadNum(i32 %86, i32 %87)
  store i64 %88, i64* %18, align 8
  store i64 0, i64* %17, align 8
  br label %89

89:                                               ; preds = %137, %83
  %90 = load i64, i64* %17, align 8
  %91 = load i64, i64* %18, align 8
  %92 = icmp slt i64 %90, %91
  br i1 %92, label %93, label %140

93:                                               ; preds = %89
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @IKE_PAYLOAD_TRANSFORM, align 4
  %98 = load i64, i64* %17, align 8
  %99 = call %struct.TYPE_20__* @IkeGetPayload(i32 %96, i32 %97, i64 %98)
  store %struct.TYPE_20__* %99, %struct.TYPE_20__** %19, align 8
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %101 = icmp ne %struct.TYPE_20__* %100, null
  br i1 %101, label %102, label %136

102:                                              ; preds = %93
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  store i32* %105, i32** %20, align 8
  %106 = call i32 @Zero(%struct.TYPE_17__* %21, i32 16)
  %107 = load i32*, i32** %6, align 8
  %108 = load i32*, i32** %20, align 8
  %109 = load i32*, i32** %9, align 8
  %110 = call i64 @TransformPayloadToTransformSettingForIPsecSa(i32* %107, i32* %108, %struct.TYPE_17__* %21, i32* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %102
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %114 = call i32 @Copy(%struct.TYPE_17__* %113, %struct.TYPE_17__* %21, i32 16)
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @READ_UINT(i32 %119)
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 8
  store i32 1, i32* %5, align 4
  br label %147

123:                                              ; preds = %102
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %123
  %128 = load i32, i32* %14, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %132 = call i32 @Copy(%struct.TYPE_17__* %131, %struct.TYPE_17__* %21, i32 16)
  store i32 1, i32* %14, align 4
  br label %133

133:                                              ; preds = %130, %127
  br label %134

134:                                              ; preds = %133, %123
  br label %135

135:                                              ; preds = %134
  br label %136

136:                                              ; preds = %135, %93
  br label %137

137:                                              ; preds = %136
  %138 = load i64, i64* %17, align 8
  %139 = add nsw i64 %138, 1
  store i64 %139, i64* %17, align 8
  br label %89

140:                                              ; preds = %89
  br label %141

141:                                              ; preds = %140, %76, %67
  br label %142

142:                                              ; preds = %141, %58
  br label %143

143:                                              ; preds = %142
  %144 = load i64, i64* %12, align 8
  %145 = add nsw i64 %144, 1
  store i64 %145, i64* %12, align 8
  br label %54

146:                                              ; preds = %54
  store i32 0, i32* %5, align 4
  br label %147

147:                                              ; preds = %146, %112, %44, %33
  %148 = load i32, i32* %5, align 4
  ret i32 %148
}

declare dso_local i32 @Zero(%struct.TYPE_17__*, i32) #1

declare dso_local %struct.TYPE_20__* @IkeGetPayload(i32, i32, i64) #1

declare dso_local i64 @IkeGetPayloadNum(i32, i32) #1

declare dso_local i64 @TransformPayloadToTransformSettingForIPsecSa(i32*, i32*, %struct.TYPE_17__*, i32*) #1

declare dso_local i32 @Copy(%struct.TYPE_17__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @READ_UINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
