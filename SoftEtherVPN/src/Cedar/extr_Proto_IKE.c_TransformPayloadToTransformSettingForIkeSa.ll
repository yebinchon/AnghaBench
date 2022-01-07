; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_TransformPayloadToTransformSettingForIkeSa.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_TransformPayloadToTransformSettingForIkeSa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__*, i32*, i32*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_10__ = type { i32*, i64 }

@IKE_TRANSFORM_VALUE_P1_CRYPTO = common dso_local global i32 0, align 4
@IKE_TRANSFORM_VALUE_P1_HASH = common dso_local global i32 0, align 4
@IKE_TRANSFORM_VALUE_P1_AUTH_METHOD = common dso_local global i32 0, align 4
@IKE_P1_AUTH_METHOD_PRESHAREDKEY = common dso_local global i8* null, align 8
@IKE_TRANSFORM_VALUE_P1_DH_GROUP = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i8* null, align 8
@IKE_TRANSFORM_VALUE_P1_LIFE_TYPE = common dso_local global i32 0, align 4
@IKE_TRANSFORM_VALUE_P1_LIFE_VALUE = common dso_local global i32 0, align 4
@IKE_TRANSFORM_VALUE_P1_KET_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TransformPayloadToTransformSettingForIkeSa(%struct.TYPE_8__* %0, i32* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %11 = icmp eq %struct.TYPE_8__* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = load i32*, i32** %6, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %17 = icmp eq %struct.TYPE_9__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %12, %3
  store i32 0, i32* %4, align 4
  br label %171

19:                                               ; preds = %15
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %21 = call i32 @Zero(%struct.TYPE_9__* %20, i32 72)
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* @IKE_TRANSFORM_VALUE_P1_CRYPTO, align 4
  %24 = call i8* @IkeGetTransformValue(i32* %22, i32 %23, i64 0)
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 6
  store i8* %24, i8** %26, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* @IKE_TRANSFORM_VALUE_P1_HASH, align 4
  %29 = call i8* @IkeGetTransformValue(i32* %27, i32 %28, i64 0)
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 5
  store i8* %29, i8** %31, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* @IKE_TRANSFORM_VALUE_P1_AUTH_METHOD, align 4
  %34 = call i8* @IkeGetTransformValue(i32* %32, i32 %33, i64 0)
  %35 = load i8*, i8** @IKE_P1_AUTH_METHOD_PRESHAREDKEY, align 8
  %36 = icmp ne i8* %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %171

38:                                               ; preds = %19
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* @IKE_TRANSFORM_VALUE_P1_DH_GROUP, align 4
  %41 = call i8* @IkeGetTransformValue(i32* %39, i32 %40, i64 0)
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 4
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** @INFINITE, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 7
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** @INFINITE, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 8
  store i8* %47, i8** %49, align 8
  store i64 0, i64* %8, align 8
  br label %50

50:                                               ; preds = %79, %38
  %51 = load i64, i64* %8, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* @IKE_TRANSFORM_VALUE_P1_LIFE_TYPE, align 4
  %54 = call i64 @IkeGetTransformValueNum(i32* %52, i32 %53)
  %55 = icmp slt i64 %51, %54
  br i1 %55, label %56, label %82

56:                                               ; preds = %50
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* @IKE_TRANSFORM_VALUE_P1_LIFE_TYPE, align 4
  %59 = load i64, i64* %8, align 8
  %60 = call i8* @IkeGetTransformValue(i32* %57, i32 %58, i64 %59)
  %61 = ptrtoint i8* %60 to i64
  store i64 %61, i64* %9, align 8
  %62 = load i64, i64* %9, align 8
  switch i64 %62, label %77 [
    i64 128, label %63
    i64 129, label %70
  ]

63:                                               ; preds = %56
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* @IKE_TRANSFORM_VALUE_P1_LIFE_VALUE, align 4
  %66 = load i64, i64* %8, align 8
  %67 = call i8* @IkeGetTransformValue(i32* %64, i32 %65, i64 %66)
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 8
  store i8* %67, i8** %69, align 8
  br label %78

70:                                               ; preds = %56
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* @IKE_TRANSFORM_VALUE_P1_LIFE_VALUE, align 4
  %73 = load i64, i64* %8, align 8
  %74 = call i8* @IkeGetTransformValue(i32* %71, i32 %72, i64 %73)
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 7
  store i8* %74, i8** %76, align 8
  br label %78

77:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %171

78:                                               ; preds = %70, %63
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %8, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %8, align 8
  br label %50

82:                                               ; preds = %50
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 6
  %88 = load i8*, i8** %87, align 8
  %89 = call %struct.TYPE_10__* @GetIkeCrypto(i32 %85, i32 0, i8* %88)
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  store %struct.TYPE_10__* %89, %struct.TYPE_10__** %91, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 5
  %97 = load i8*, i8** %96, align 8
  %98 = call i32* @GetIkeHash(i32 %94, i32 0, i8* %97)
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 3
  store i32* %98, i32** %100, align 8
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 4
  %106 = load i8*, i8** %105, align 8
  %107 = call i32* @GetIkeDh(i32 %103, i32 0, i8* %106)
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 2
  store i32* %107, i32** %109, align 8
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = icmp eq %struct.TYPE_10__* %112, null
  br i1 %113, label %124, label %114

114:                                              ; preds = %82
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 3
  %117 = load i32*, i32** %116, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %124, label %119

119:                                              ; preds = %114
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = icmp eq i32* %122, null
  br i1 %123, label %124, label %125

124:                                              ; preds = %119, %114, %82
  store i32 0, i32* %4, align 4
  br label %171

125:                                              ; preds = %119
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %160

132:                                              ; preds = %125
  %133 = load i32*, i32** %6, align 8
  %134 = load i32, i32* @IKE_TRANSFORM_VALUE_P1_KET_SIZE, align 4
  %135 = call i8* @IkeGetTransformValue(i32* %133, i32 %134, i64 0)
  %136 = ptrtoint i8* %135 to i32
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = sdiv i32 %141, 8
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 8
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %158, label %149

149:                                              ; preds = %132
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %151, align 8
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @IkeCheckKeySize(%struct.TYPE_10__* %152, i32 %155)
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %149, %132
  store i32 0, i32* %4, align 4
  br label %171

159:                                              ; preds = %149
  br label %170

160:                                              ; preds = %125
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 8
  br label %170

170:                                              ; preds = %160, %159
  store i32 1, i32* %4, align 4
  br label %171

171:                                              ; preds = %170, %158, %124, %77, %37, %18
  %172 = load i32, i32* %4, align 4
  ret i32 %172
}

declare dso_local i32 @Zero(%struct.TYPE_9__*, i32) #1

declare dso_local i8* @IkeGetTransformValue(i32*, i32, i64) #1

declare dso_local i64 @IkeGetTransformValueNum(i32*, i32) #1

declare dso_local %struct.TYPE_10__* @GetIkeCrypto(i32, i32, i8*) #1

declare dso_local i32* @GetIkeHash(i32, i32, i8*) #1

declare dso_local i32* @GetIkeDh(i32, i32, i8*) #1

declare dso_local i32 @IkeCheckKeySize(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
