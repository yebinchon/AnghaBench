; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_sample.c_AAS_PresenceTypeBoundingBox.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_sample.c_AAS_PresenceTypeBoundingBox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (i32, i8*)* }
%struct.TYPE_7__ = type { i32, i32, i32 }

@PRESENCE_NORMAL = common dso_local global i32 0, align 4
@PRESENCE_CROUCH = common dso_local global i32 0, align 4
@botimport = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@PRT_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"AAS_PresenceTypeBoundingBox: unknown presence type\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AAS_PresenceTypeBoundingBox(i32 %0, i64 %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_7__, align 4
  %7 = alloca { i64, i32 }, align 4
  %8 = alloca %struct.TYPE_7__, align 4
  %9 = alloca { i64, i32 }, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [3 x %struct.TYPE_7__], align 16
  %13 = alloca [3 x %struct.TYPE_7__], align 16
  %14 = alloca { i64, i32 }, align 4
  %15 = alloca { i64, i32 }, align 4
  %16 = alloca { i64, i32 }, align 4
  %17 = alloca { i64, i32 }, align 4
  %18 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 0
  store i64 %1, i64* %18, align 4
  %19 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 1
  store i32 %2, i32* %19, align 4
  %20 = bitcast %struct.TYPE_7__* %6 to i8*
  %21 = bitcast { i64, i32 }* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 12, i1 false)
  %22 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 0
  store i64 %3, i64* %22, align 4
  %23 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 1
  store i32 %4, i32* %23, align 4
  %24 = bitcast %struct.TYPE_7__* %8 to i8*
  %25 = bitcast { i64, i32 }* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 12, i1 false)
  store i32 %0, i32* %10, align 4
  %26 = bitcast [3 x %struct.TYPE_7__]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %26, i8 0, i64 36, i1 false)
  %27 = bitcast i8* %26 to [3 x %struct.TYPE_7__]*
  %28 = getelementptr inbounds [3 x %struct.TYPE_7__], [3 x %struct.TYPE_7__]* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  store i32 -15, i32* %29, align 4
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  store i32 -15, i32* %30, align 4
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  store i32 -24, i32* %31, align 4
  %32 = getelementptr inbounds [3 x %struct.TYPE_7__], [3 x %struct.TYPE_7__]* %27, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  store i32 -15, i32* %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  store i32 -15, i32* %34, align 4
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  store i32 -24, i32* %35, align 8
  %36 = bitcast [3 x %struct.TYPE_7__]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %36, i8 0, i64 36, i1 false)
  %37 = bitcast i8* %36 to [3 x %struct.TYPE_7__]*
  %38 = getelementptr inbounds [3 x %struct.TYPE_7__], [3 x %struct.TYPE_7__]* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  store i32 15, i32* %39, align 4
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  store i32 15, i32* %40, align 4
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  store i32 32, i32* %41, align 4
  %42 = getelementptr inbounds [3 x %struct.TYPE_7__], [3 x %struct.TYPE_7__]* %37, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store i32 15, i32* %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  store i32 15, i32* %44, align 4
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  store i32 8, i32* %45, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @PRESENCE_NORMAL, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %5
  store i32 1, i32* %11, align 4
  br label %60

50:                                               ; preds = %5
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @PRESENCE_CROUCH, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 2, i32* %11, align 4
  br label %59

55:                                               ; preds = %50
  %56 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @botimport, i32 0, i32 0), align 8
  %57 = load i32, i32* @PRT_FATAL, align 4
  %58 = call i32 %56(i32 %57, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  store i32 2, i32* %11, align 4
  br label %59

59:                                               ; preds = %55, %54
  br label %60

60:                                               ; preds = %59, %49
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [3 x %struct.TYPE_7__], [3 x %struct.TYPE_7__]* %12, i64 0, i64 %62
  %64 = bitcast { i64, i32 }* %14 to i8*
  %65 = bitcast %struct.TYPE_7__* %63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %64, i8* align 4 %65, i64 12, i1 false)
  %66 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 0
  %67 = load i64, i64* %66, align 4
  %68 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = bitcast { i64, i32 }* %15 to i8*
  %71 = bitcast %struct.TYPE_7__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %70, i8* align 4 %71, i64 12, i1 false)
  %72 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 0
  %73 = load i64, i64* %72, align 4
  %74 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @VectorCopy(i64 %67, i32 %69, i64 %73, i32 %75)
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [3 x %struct.TYPE_7__], [3 x %struct.TYPE_7__]* %13, i64 0, i64 %78
  %80 = bitcast { i64, i32 }* %16 to i8*
  %81 = bitcast %struct.TYPE_7__* %79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %80, i8* align 4 %81, i64 12, i1 false)
  %82 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 0
  %83 = load i64, i64* %82, align 4
  %84 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = bitcast { i64, i32 }* %17 to i8*
  %87 = bitcast %struct.TYPE_7__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %86, i8* align 4 %87, i64 12, i1 false)
  %88 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 0
  %89 = load i64, i64* %88, align 4
  %90 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @VectorCopy(i64 %83, i32 %85, i64 %89, i32 %91)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @VectorCopy(i64, i32, i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
