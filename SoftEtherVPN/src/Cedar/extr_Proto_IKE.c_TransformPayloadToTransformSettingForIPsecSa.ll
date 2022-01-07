; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_TransformPayloadToTransformSettingForIPsecSa.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_TransformPayloadToTransformSettingForIPsecSa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i64, %struct.TYPE_13__*, i32*, i8*, i32, i8*, i32, i8*, i8* }
%struct.TYPE_13__ = type { i32*, i64 }

@IPSEC_PORT_IPSEC_ESP_RAW = common dso_local global i32 0, align 4
@IKE_TRANSFORM_VALUE_P2_HMAC = common dso_local global i32 0, align 4
@IKE_TRANSFORM_VALUE_P2_DH_GROUP = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i8* null, align 8
@IKE_TRANSFORM_VALUE_P2_LIFE_TYPE = common dso_local global i32 0, align 4
@IKE_TRANSFORM_VALUE_P2_LIFE_VALUE = common dso_local global i32 0, align 4
@IKE_TRANSFORM_VALUE_P2_KEY_SIZE = common dso_local global i32 0, align 4
@IKE_TRANSFORM_VALUE_P2_CAPSULE = common dso_local global i32 0, align 4
@IKE_P2_CAPSULE_NAT_TUNNEL_1 = common dso_local global i64 0, align 8
@IKE_P2_CAPSULE_NAT_TUNNEL_2 = common dso_local global i64 0, align 8
@IKE_P2_CAPSULE_NAT_TRANSPORT_1 = common dso_local global i64 0, align 8
@IKE_P2_CAPSULE_NAT_TRANSPORT_2 = common dso_local global i64 0, align 8
@IKE_P2_CAPSULE_TRANSPORT = common dso_local global i64 0, align 8
@IKE_P2_CAPSULE_TUNNEL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TransformPayloadToTransformSettingForIPsecSa(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1, %struct.TYPE_15__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %15 = icmp eq %struct.TYPE_16__* %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %4
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %18 = icmp eq %struct.TYPE_17__* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %21 = icmp eq %struct.TYPE_15__* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32*, i32** %9, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %19, %16, %4
  store i32 0, i32* %5, align 4
  br label %215

26:                                               ; preds = %22
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* @IPSEC_PORT_IPSEC_ESP_RAW, align 4
  %34 = call i32 @IsUdpPortOpened(i32 %31, i32* %32, i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %36 = call i32 @Zero(%struct.TYPE_15__* %35, i32 80)
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 8
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %43 = load i32, i32* @IKE_TRANSFORM_VALUE_P2_HMAC, align 4
  %44 = call i8* @IkeGetTransformValue(%struct.TYPE_17__* %42, i32 %43, i64 0)
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 7
  store i8* %44, i8** %46, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %48 = load i32, i32* @IKE_TRANSFORM_VALUE_P2_DH_GROUP, align 4
  %49 = call i8* @IkeGetTransformValue(%struct.TYPE_17__* %47, i32 %48, i64 0)
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 5
  store i8* %49, i8** %51, align 8
  %52 = load i8*, i8** @INFINITE, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 9
  store i8* %52, i8** %54, align 8
  %55 = load i8*, i8** @INFINITE, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 10
  store i8* %55, i8** %57, align 8
  store i64 0, i64* %10, align 8
  br label %58

58:                                               ; preds = %87, %26
  %59 = load i64, i64* %10, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %61 = load i32, i32* @IKE_TRANSFORM_VALUE_P2_LIFE_TYPE, align 4
  %62 = call i64 @IkeGetTransformValueNum(%struct.TYPE_17__* %60, i32 %61)
  %63 = icmp slt i64 %59, %62
  br i1 %63, label %64, label %90

64:                                               ; preds = %58
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %66 = load i32, i32* @IKE_TRANSFORM_VALUE_P2_LIFE_TYPE, align 4
  %67 = load i64, i64* %10, align 8
  %68 = call i8* @IkeGetTransformValue(%struct.TYPE_17__* %65, i32 %66, i64 %67)
  %69 = ptrtoint i8* %68 to i64
  store i64 %69, i64* %13, align 8
  %70 = load i64, i64* %13, align 8
  switch i64 %70, label %85 [
    i64 128, label %71
    i64 129, label %78
  ]

71:                                               ; preds = %64
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %73 = load i32, i32* @IKE_TRANSFORM_VALUE_P2_LIFE_VALUE, align 4
  %74 = load i64, i64* %10, align 8
  %75 = call i8* @IkeGetTransformValue(%struct.TYPE_17__* %72, i32 %73, i64 %74)
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 10
  store i8* %75, i8** %77, align 8
  br label %86

78:                                               ; preds = %64
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %80 = load i32, i32* @IKE_TRANSFORM_VALUE_P2_LIFE_VALUE, align 4
  %81 = load i64, i64* %10, align 8
  %82 = call i8* @IkeGetTransformValue(%struct.TYPE_17__* %79, i32 %80, i64 %81)
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 9
  store i8* %82, i8** %84, align 8
  br label %86

85:                                               ; preds = %64
  store i32 0, i32* %5, align 4
  br label %215

86:                                               ; preds = %78, %71
  br label %87

87:                                               ; preds = %86
  %88 = load i64, i64* %10, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %10, align 8
  br label %58

90:                                               ; preds = %58
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 8
  %96 = load i32, i32* %95, align 8
  %97 = call %struct.TYPE_13__* @GetIkeCrypto(i32 %93, i32 1, i32 %96)
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 3
  store %struct.TYPE_13__* %97, %struct.TYPE_13__** %99, align 8
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 7
  %105 = load i8*, i8** %104, align 8
  %106 = call i32* @GetIkeHash(i32 %102, i32 1, i8* %105)
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 4
  store i32* %106, i32** %108, align 8
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 5
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @GetIkeDh(i32 %111, i32 1, i8* %114)
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 6
  store i32 %115, i32* %117, align 8
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 3
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %119, align 8
  %121 = icmp eq %struct.TYPE_13__* %120, null
  br i1 %121, label %127, label %122

122:                                              ; preds = %90
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 4
  %125 = load i32*, i32** %124, align 8
  %126 = icmp eq i32* %125, null
  br i1 %126, label %127, label %128

127:                                              ; preds = %122, %90
  store i32 0, i32* %5, align 4
  br label %215

128:                                              ; preds = %122
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 3
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %163

135:                                              ; preds = %128
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %137 = load i32, i32* @IKE_TRANSFORM_VALUE_P2_KEY_SIZE, align 4
  %138 = call i8* @IkeGetTransformValue(%struct.TYPE_17__* %136, i32 %137, i64 0)
  %139 = ptrtoint i8* %138 to i32
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = sdiv i32 %144, 8
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %161, label %152

152:                                              ; preds = %135
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 3
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %154, align 8
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @IkeCheckKeySize(%struct.TYPE_13__* %155, i32 %158)
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %152, %135
  store i32 0, i32* %5, align 4
  br label %215

162:                                              ; preds = %152
  br label %173

163:                                              ; preds = %128
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 3
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 8
  br label %173

173:                                              ; preds = %163, %162
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %175 = load i32, i32* @IKE_TRANSFORM_VALUE_P2_CAPSULE, align 4
  %176 = call i8* @IkeGetTransformValue(%struct.TYPE_17__* %174, i32 %175, i64 0)
  %177 = ptrtoint i8* %176 to i64
  store i64 %177, i64* %11, align 8
  %178 = load i64, i64* %11, align 8
  %179 = load i64, i64* @IKE_P2_CAPSULE_NAT_TUNNEL_1, align 8
  %180 = icmp ne i64 %178, %179
  br i1 %180, label %181, label %211

181:                                              ; preds = %173
  %182 = load i64, i64* %11, align 8
  %183 = load i64, i64* @IKE_P2_CAPSULE_NAT_TUNNEL_2, align 8
  %184 = icmp ne i64 %182, %183
  br i1 %184, label %185, label %211

185:                                              ; preds = %181
  %186 = load i64, i64* %11, align 8
  %187 = load i64, i64* @IKE_P2_CAPSULE_NAT_TRANSPORT_1, align 8
  %188 = icmp ne i64 %186, %187
  br i1 %188, label %189, label %211

189:                                              ; preds = %185
  %190 = load i64, i64* %11, align 8
  %191 = load i64, i64* @IKE_P2_CAPSULE_NAT_TRANSPORT_2, align 8
  %192 = icmp ne i64 %190, %191
  br i1 %192, label %193, label %211

193:                                              ; preds = %189
  %194 = load i64, i64* %11, align 8
  %195 = load i64, i64* @IKE_P2_CAPSULE_TRANSPORT, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %201, label %197

197:                                              ; preds = %193
  %198 = load i64, i64* %11, align 8
  %199 = load i64, i64* @IKE_P2_CAPSULE_TUNNEL, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %209

201:                                              ; preds = %197, %193
  %202 = load i32, i32* %12, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %201
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 1
  store i32 1, i32* %206, align 4
  store i32 0, i32* %5, align 4
  br label %215

207:                                              ; preds = %201
  br label %208

208:                                              ; preds = %207
  br label %210

209:                                              ; preds = %197
  store i32 0, i32* %5, align 4
  br label %215

210:                                              ; preds = %208
  br label %211

211:                                              ; preds = %210, %189, %185, %181, %173
  %212 = load i64, i64* %11, align 8
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 2
  store i64 %212, i64* %214, align 8
  store i32 1, i32* %5, align 4
  br label %215

215:                                              ; preds = %211, %209, %204, %161, %127, %85, %25
  %216 = load i32, i32* %5, align 4
  ret i32 %216
}

declare dso_local i32 @IsUdpPortOpened(i32, i32*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_15__*, i32) #1

declare dso_local i8* @IkeGetTransformValue(%struct.TYPE_17__*, i32, i64) #1

declare dso_local i64 @IkeGetTransformValueNum(%struct.TYPE_17__*, i32) #1

declare dso_local %struct.TYPE_13__* @GetIkeCrypto(i32, i32, i32) #1

declare dso_local i32* @GetIkeHash(i32, i32, i8*) #1

declare dso_local i32 @GetIkeDh(i32, i32, i8*) #1

declare dso_local i32 @IkeCheckKeySize(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
