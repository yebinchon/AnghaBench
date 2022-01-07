; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscUtil.c_tscColumnBaseInfoInsert.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscUtil.c_tscColumnBaseInfoInsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, %struct.TYPE_13__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @tscColumnBaseInfoInsert(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %6, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %126

17:                                               ; preds = %2
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %21

21:                                               ; preds = %59, %17
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %22, %25
  br i1 %26, label %27, label %60

27:                                               ; preds = %21
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %27
  %39 = load i64, i64* %8, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %8, align 8
  br label %59

41:                                               ; preds = %27
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %49, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %41
  %55 = load i64, i64* %8, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %8, align 8
  br label %58

57:                                               ; preds = %41
  br label %60

58:                                               ; preds = %54
  br label %59

59:                                               ; preds = %58, %38
  br label %21

60:                                               ; preds = %57, %21
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  %64 = load i64, i64* %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  store %struct.TYPE_11__* %66, %struct.TYPE_11__** %9, align 8
  %67 = load i64, i64* %8, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ult i64 %67, %70
  br i1 %71, label %72, label %86

72:                                               ; preds = %60
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %7, align 8
  %77 = icmp sgt i64 %75, %76
  br i1 %77, label %92, label %78

78:                                               ; preds = %72
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %81, %84
  br i1 %85, label %92, label %86

86:                                               ; preds = %78, %60
  %87 = load i64, i64* %8, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp uge i64 %87, %90
  br i1 %91, label %92, label %120

92:                                               ; preds = %86, %78, %72
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = add i64 %96, 1
  %98 = trunc i64 %97 to i32
  %99 = call i32 @_cf_ensureSpace(%struct.TYPE_12__* %93, i32 %98)
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %101 = load i64, i64* %8, align 8
  %102 = call i32 @_cf_evic(%struct.TYPE_12__* %100, i64 %101)
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %104, align 8
  %106 = load i64, i64* %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %110 = bitcast %struct.TYPE_11__* %108 to i8*
  %111 = bitcast %struct.TYPE_11__* %109 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %110, i8* align 8 %111, i64 16, i1 false)
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %113, align 8
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 8
  br label %120

120:                                              ; preds = %92, %86
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %122, align 8
  %124 = load i64, i64* %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i64 %124
  store %struct.TYPE_13__* %125, %struct.TYPE_13__** %3, align 8
  br label %126

126:                                              ; preds = %120, %16
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  ret %struct.TYPE_13__* %127
}

declare dso_local i32 @_cf_ensureSpace(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @_cf_evic(%struct.TYPE_12__*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
