; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscUtil.c_tscSqlExprCopy.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscUtil.c_tscSqlExprCopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tscSqlExprCopy(%struct.TYPE_5__* %0, %struct.TYPE_5__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = icmp eq %struct.TYPE_5__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %110

14:                                               ; preds = %3
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = bitcast %struct.TYPE_5__* %15 to i8*
  %18 = bitcast %struct.TYPE_5__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 24, i1 false)
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = mul i64 4, %22
  %24 = trunc i64 %23 to i32
  %25 = call %struct.TYPE_6__* @malloc(i32 %24)
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %27, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %28

28:                                               ; preds = %59, %14
  %29 = load i64, i64* %8, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ult i64 %29, %32
  br i1 %33, label %34, label %62

34:                                               ; preds = %28
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = load i64, i64* %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %34
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %48
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load i64, i64* %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %54
  %56 = bitcast %struct.TYPE_6__* %50 to i8*
  %57 = bitcast %struct.TYPE_6__* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 24, i1 false)
  br label %58

58:                                               ; preds = %44, %34
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %8, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %8, align 8
  br label %28

62:                                               ; preds = %28
  %63 = load i64, i64* %7, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  store i64 0, i64* %9, align 8
  br label %66

66:                                               ; preds = %107, %62
  %67 = load i64, i64* %9, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ult i64 %67, %70
  br i1 %71, label %72, label %110

72:                                               ; preds = %66
  store i64 0, i64* %10, align 8
  br label %73

73:                                               ; preds = %103, %72
  %74 = load i64, i64* %10, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = load i64, i64* %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ult i64 %74, %81
  br i1 %82, label %83, label %106

83:                                               ; preds = %73
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = load i64, i64* %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = load i64, i64* %10, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = load i64, i64* %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = load i64, i64* %10, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = call i32 @tVariantAssign(i32* %92, i32* %101)
  br label %103

103:                                              ; preds = %83
  %104 = load i64, i64* %10, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %10, align 8
  br label %73

106:                                              ; preds = %73
  br label %107

107:                                              ; preds = %106
  %108 = load i64, i64* %9, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %9, align 8
  br label %66

110:                                              ; preds = %13, %66
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_6__* @malloc(i32) #2

declare dso_local i32 @tVariantAssign(i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
