; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtSupertableQuery.c_mgmtCheckForDuplicateTagValue.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtSupertableQuery.c_mgmtCheckForDuplicateTagValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32** }
%struct.TYPE_6__ = type { i32, i32, i32 }

@TSDB_CODE_DUPLICATE_TAGS = common dso_local global i64 0, align 8
@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i64, i64)* @mgmtCheckForDuplicateTagValue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mgmtCheckForDuplicateTagValue(%struct.TYPE_5__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = bitcast %struct.TYPE_6__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 12, i1 false)
  store i64 1, i64* %9, align 8
  br label %15

15:                                               ; preds = %58, %3
  %16 = load i64, i64* %9, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %16, %21
  br i1 %22, label %23, label %61

23:                                               ; preds = %15
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32**, i32*** %27, align 8
  %29 = load i64, i64* %9, align 8
  %30 = sub i64 %29, 1
  %31 = getelementptr inbounds i32*, i32** %28, i64 %30
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %10, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32**, i32*** %36, align 8
  %38 = load i64, i64* %9, align 8
  %39 = getelementptr inbounds i32*, i32** %37, i64 %38
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %11, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i8* @mgmtMeterGetTag(i32* %41, i64 %42, %struct.TYPE_6__* %8)
  store i8* %43, i8** %12, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i8* @mgmtMeterGetTag(i32* %44, i64 %45, %struct.TYPE_6__* null)
  store i8* %46, i8** %13, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = load i8*, i8** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @doCompare(i8* %47, i8* %48, i32 %50, i32 %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %23
  %56 = load i64, i64* @TSDB_CODE_DUPLICATE_TAGS, align 8
  store i64 %56, i64* %4, align 8
  br label %63

57:                                               ; preds = %23
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %9, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %9, align 8
  br label %15

61:                                               ; preds = %15
  %62 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %62, i64* %4, align 8
  br label %63

63:                                               ; preds = %61, %55
  %64 = load i64, i64* %4, align 8
  ret i64 %64
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @mgmtMeterGetTag(i32*, i64, %struct.TYPE_6__*) #2

declare dso_local i64 @doCompare(i8*, i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
