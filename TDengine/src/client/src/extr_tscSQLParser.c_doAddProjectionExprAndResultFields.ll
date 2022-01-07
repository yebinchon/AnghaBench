; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_doAddProjectionExprAndResultFields.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_doAddProjectionExprAndResultFields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_16__*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_16__*, i64)* @doAddProjectionExprAndResultFields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @doAddProjectionExprAndResultFields(i32* %0, %struct.TYPE_16__* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_15__, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.TYPE_13__* @tscGetMeterMetaInfo(i32* %13, i32 %16)
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %7, align 8
  store i64 0, i64* %8, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %9, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %22 = call %struct.TYPE_12__* @tsGetSchema(%struct.TYPE_14__* %21)
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %10, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %24 = call i64 @UTIL_METER_IS_METRIC(%struct.TYPE_13__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %3
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  store i64 %33, i64* %8, align 8
  br label %38

34:                                               ; preds = %3
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %8, align 8
  br label %38

38:                                               ; preds = %34, %26
  store i64 0, i64* %11, align 8
  br label %39

39:                                               ; preds = %91, %38
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* %8, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %94

43:                                               ; preds = %39
  %44 = load i32*, i32** %4, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* %11, align 8
  %47 = add nsw i64 %45, %46
  %48 = load i64, i64* %11, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @doAddProjectCol(i32* %44, i64 %47, i64 %48, i32 %51)
  %53 = load i64, i64* %11, align 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = bitcast %struct.TYPE_15__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %56, i8 0, i64 24, i1 false)
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i64 0
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %61 = bitcast %struct.TYPE_16__* %59 to i8*
  %62 = bitcast %struct.TYPE_16__* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %61, i8* align 8 %62, i64 16, i1 false)
  %63 = load i64, i64* %11, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp sge i64 %63, %66
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  store i32 %69, i32* %70, align 8
  %71 = load i32*, i32** %4, align 8
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* %11, align 8
  %74 = add nsw i64 %72, %73
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %76 = load i64, i64* %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %81 = load i64, i64* %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %86 = load i64, i64* %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @insertResultField(i32* %71, i64 %74, %struct.TYPE_15__* %12, i32 %79, i32 %84, i32 %89)
  br label %91

91:                                               ; preds = %43
  %92 = load i64, i64* %11, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %11, align 8
  br label %39

94:                                               ; preds = %39
  %95 = load i64, i64* %8, align 8
  ret i64 %95
}

declare dso_local %struct.TYPE_13__* @tscGetMeterMetaInfo(i32*, i32) #1

declare dso_local %struct.TYPE_12__* @tsGetSchema(%struct.TYPE_14__*) #1

declare dso_local i64 @UTIL_METER_IS_METRIC(%struct.TYPE_13__*) #1

declare dso_local i32 @doAddProjectCol(i32*, i64, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @insertResultField(i32*, i64, %struct.TYPE_15__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
