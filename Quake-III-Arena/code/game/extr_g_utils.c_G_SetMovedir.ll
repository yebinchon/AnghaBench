; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_utils.c_G_SetMovedir.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_utils.c_G_SetMovedir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32 }

@G_SetMovedir.VEC_UP = internal global %struct.TYPE_11__ { i32 0, i32 -1, i32 0 }, align 4
@G_SetMovedir.MOVEDIR_UP = internal global %struct.TYPE_11__ { i32 0, i32 0, i32 1 }, align 4
@G_SetMovedir.VEC_DOWN = internal global %struct.TYPE_11__ { i32 0, i32 -2, i32 0 }, align 4
@G_SetMovedir.MOVEDIR_DOWN = internal global %struct.TYPE_11__ { i32 0, i32 0, i32 -1 }, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @G_SetMovedir(i64 %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_11__, align 4
  %6 = alloca { i64, i32 }, align 4
  %7 = alloca %struct.TYPE_11__, align 4
  %8 = alloca { i64, i32 }, align 4
  %9 = alloca { i64, i32 }, align 4
  %10 = alloca { i64, i32 }, align 4
  %11 = alloca { i64, i32 }, align 4
  %12 = alloca { i64, i32 }, align 4
  %13 = alloca { i64, i32 }, align 4
  %14 = alloca { i64, i32 }, align 4
  %15 = alloca { i64, i32 }, align 4
  %16 = alloca { i64, i32 }, align 4
  %17 = alloca { i64, i32 }, align 4
  %18 = alloca { i64, i32 }, align 4
  %19 = alloca { i64, i32 }, align 4
  %20 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 0
  store i64 %0, i64* %20, align 4
  %21 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 1
  store i32 %1, i32* %21, align 4
  %22 = bitcast %struct.TYPE_11__* %5 to i8*
  %23 = bitcast { i64, i32 }* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 12, i1 false)
  %24 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 0
  store i64 %2, i64* %24, align 4
  %25 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 1
  store i32 %3, i32* %25, align 4
  %26 = bitcast %struct.TYPE_11__* %7 to i8*
  %27 = bitcast { i64, i32 }* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 12, i1 false)
  %28 = bitcast { i64, i32 }* %9 to i8*
  %29 = bitcast %struct.TYPE_11__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 12, i1 false)
  %30 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 0
  %31 = load i64, i64* %30, align 4
  %32 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = bitcast { i64, i32 }* %10 to i8*
  %35 = bitcast %struct.TYPE_11__* @G_SetMovedir.VEC_UP to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 %35, i64 12, i1 false)
  %36 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 0
  %37 = load i64, i64* %36, align 4
  %38 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @VectorCompare(i64 %31, i32 %33, i64 %37, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %4
  %43 = bitcast { i64, i32 }* %11 to i8*
  %44 = bitcast %struct.TYPE_11__* @G_SetMovedir.MOVEDIR_UP to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 %44, i64 12, i1 false)
  %45 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 0
  %46 = load i64, i64* %45, align 4
  %47 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = bitcast { i64, i32 }* %12 to i8*
  %50 = bitcast %struct.TYPE_11__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %49, i8* align 4 %50, i64 12, i1 false)
  %51 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 0
  %52 = load i64, i64* %51, align 4
  %53 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @VectorCopy(i64 %46, i32 %48, i64 %52, i32 %54)
  br label %100

56:                                               ; preds = %4
  %57 = bitcast { i64, i32 }* %13 to i8*
  %58 = bitcast %struct.TYPE_11__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %57, i8* align 4 %58, i64 12, i1 false)
  %59 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 0
  %60 = load i64, i64* %59, align 4
  %61 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = bitcast { i64, i32 }* %14 to i8*
  %64 = bitcast %struct.TYPE_11__* @G_SetMovedir.VEC_DOWN to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %63, i8* align 4 %64, i64 12, i1 false)
  %65 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 0
  %66 = load i64, i64* %65, align 4
  %67 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @VectorCompare(i64 %60, i32 %62, i64 %66, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %56
  %72 = bitcast { i64, i32 }* %15 to i8*
  %73 = bitcast %struct.TYPE_11__* @G_SetMovedir.MOVEDIR_DOWN to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %72, i8* align 4 %73, i64 12, i1 false)
  %74 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 0
  %75 = load i64, i64* %74, align 4
  %76 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = bitcast { i64, i32 }* %16 to i8*
  %79 = bitcast %struct.TYPE_11__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %78, i8* align 4 %79, i64 12, i1 false)
  %80 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 0
  %81 = load i64, i64* %80, align 4
  %82 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @VectorCopy(i64 %75, i32 %77, i64 %81, i32 %83)
  br label %99

85:                                               ; preds = %56
  %86 = bitcast { i64, i32 }* %17 to i8*
  %87 = bitcast %struct.TYPE_11__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %86, i8* align 4 %87, i64 12, i1 false)
  %88 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 0
  %89 = load i64, i64* %88, align 4
  %90 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = bitcast { i64, i32 }* %18 to i8*
  %93 = bitcast %struct.TYPE_11__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %92, i8* align 4 %93, i64 12, i1 false)
  %94 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 0
  %95 = load i64, i64* %94, align 4
  %96 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @AngleVectors(i64 %89, i32 %91, i64 %95, i32 %97, i32* null, i32* null)
  br label %99

99:                                               ; preds = %85, %71
  br label %100

100:                                              ; preds = %99, %42
  %101 = bitcast { i64, i32 }* %19 to i8*
  %102 = bitcast %struct.TYPE_11__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %101, i8* align 4 %102, i64 12, i1 false)
  %103 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 0
  %104 = load i64, i64* %103, align 4
  %105 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @VectorClear(i64 %104, i32 %106)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @VectorCompare(i64, i32, i64, i32) #2

declare dso_local i32 @VectorCopy(i64, i32, i64, i32) #2

declare dso_local i32 @AngleVectors(i64, i32, i64, i32, i32*, i32*) #2

declare dso_local i32 @VectorClear(i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
