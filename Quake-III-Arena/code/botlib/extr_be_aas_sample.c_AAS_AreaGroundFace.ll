; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_sample.c_AAS_AreaGroundFace.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_sample.c_AAS_AreaGroundFace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i32*, %struct.TYPE_15__*, %struct.TYPE_17__*, %struct.TYPE_18__*, i32 }
%struct.TYPE_15__ = type { i64* }
%struct.TYPE_17__ = type { i32, i64 }
%struct.TYPE_18__ = type { i32, i32 }

@__const.AAS_AreaGroundFace.up = private unnamed_addr constant %struct.TYPE_16__ { i32 0, i32 0, i32 1 }, align 4
@aasworld = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@FACE_GROUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @AAS_AreaGroundFace(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__, align 4
  %6 = alloca { i64, i32 }, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__, align 4
  %11 = alloca %struct.TYPE_16__, align 4
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca { i64, i32 }, align 4
  %15 = alloca { i64, i32 }, align 4
  %16 = alloca { i64, i32 }, align 4
  %17 = alloca { i64, i32 }, align 4
  %18 = alloca { i64, i32 }, align 4
  %19 = alloca { i64, i32 }, align 4
  %20 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 0
  store i64 %1, i64* %20, align 4
  %21 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 1
  store i32 %2, i32* %21, align 4
  %22 = bitcast %struct.TYPE_16__* %5 to i8*
  %23 = bitcast { i64, i32 }* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 12, i1 false)
  store i32 %0, i32* %7, align 4
  %24 = bitcast %struct.TYPE_16__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 bitcast (%struct.TYPE_16__* @__const.AAS_AreaGroundFace.up to i8*), i64 12, i1 false)
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @aasworld, i32 0, i32 4), align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %4, align 8
  br label %122

28:                                               ; preds = %3
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @aasworld, i32 0, i32 3), align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i64 %31
  store %struct.TYPE_18__* %32, %struct.TYPE_18__** %12, align 8
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %118, %28
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %121

39:                                               ; preds = %33
  %40 = load i32*, i32** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @aasworld, i32 0, i32 0), align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %40, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %9, align 4
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @aasworld, i32 0, i32 2), align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i64 @abs(i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i64 %51
  store %struct.TYPE_17__* %52, %struct.TYPE_17__** %13, align 8
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @FACE_GROUND, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %117

59:                                               ; preds = %39
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @aasworld, i32 0, i32 1), align 8
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %59
  %71 = bitcast { i64, i32 }* %14 to i8*
  %72 = bitcast %struct.TYPE_16__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %71, i8* align 4 %72, i64 12, i1 false)
  %73 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 0
  %74 = load i64, i64* %73, align 4
  %75 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = bitcast { i64, i32 }* %15 to i8*
  %78 = bitcast %struct.TYPE_16__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %77, i8* align 4 %78, i64 12, i1 false)
  %79 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 0
  %80 = load i64, i64* %79, align 4
  %81 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @VectorNegate(i64 %74, i32 %76, i64 %80, i32 %82)
  br label %98

84:                                               ; preds = %59
  %85 = bitcast { i64, i32 }* %16 to i8*
  %86 = bitcast %struct.TYPE_16__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %85, i8* align 4 %86, i64 12, i1 false)
  %87 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 0
  %88 = load i64, i64* %87, align 4
  %89 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = bitcast { i64, i32 }* %17 to i8*
  %92 = bitcast %struct.TYPE_16__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %91, i8* align 4 %92, i64 12, i1 false)
  %93 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 0
  %94 = load i64, i64* %93, align 4
  %95 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @VectorCopy(i64 %88, i32 %90, i64 %94, i32 %96)
  br label %98

98:                                               ; preds = %84, %70
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %100 = bitcast { i64, i32 }* %18 to i8*
  %101 = bitcast %struct.TYPE_16__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %100, i8* align 4 %101, i64 12, i1 false)
  %102 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 0
  %103 = load i64, i64* %102, align 4
  %104 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = bitcast { i64, i32 }* %19 to i8*
  %107 = bitcast %struct.TYPE_16__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %106, i8* align 4 %107, i64 12, i1 false)
  %108 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 0
  %109 = load i64, i64* %108, align 4
  %110 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @AAS_InsideFace(%struct.TYPE_17__* %99, i64 %103, i32 %105, i64 %109, i32 %111, float 0x3F847AE140000000)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %98
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  store %struct.TYPE_17__* %115, %struct.TYPE_17__** %4, align 8
  br label %122

116:                                              ; preds = %98
  br label %117

117:                                              ; preds = %116, %39
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %8, align 4
  br label %33

121:                                              ; preds = %33
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %4, align 8
  br label %122

122:                                              ; preds = %121, %114, %27
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  ret %struct.TYPE_17__* %123
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @abs(i32) #2

declare dso_local i32 @VectorNegate(i64, i32, i64, i32) #2

declare dso_local i32 @VectorCopy(i64, i32, i64, i32) #2

declare dso_local i64 @AAS_InsideFace(%struct.TYPE_17__*, i64, i32, i64, i32, float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
