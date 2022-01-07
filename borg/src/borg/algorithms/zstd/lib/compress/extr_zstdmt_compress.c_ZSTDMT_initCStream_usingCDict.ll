; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/compress/extr_zstdmt_compress.c_ZSTDMT_initCStream_usingCDict.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/compress/extr_zstdmt_compress.c_ZSTDMT_initCStream_usingCDict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@dictionary_wrong = common dso_local global i32 0, align 4
@ZSTD_dct_auto = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTDMT_initCStream_usingCDict(%struct.TYPE_7__* %0, i32* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = bitcast %struct.TYPE_6__* %10 to i8*
  %14 = bitcast %struct.TYPE_6__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 8, i1 false)
  %15 = load i32*, i32** %7, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @dictionary_wrong, align 4
  %19 = call i64 @ERROR(i32 %18)
  store i64 %19, i64* %5, align 8
  br label %33

20:                                               ; preds = %4
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @ZSTD_getCParamsFromCDict(i32* %21)
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %8, align 4
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = load i32, i32* @ZSTD_dct_auto, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = load i64, i64* %9, align 8
  %30 = bitcast %struct.TYPE_6__* %10 to i64*
  %31 = load i64, i64* %30, align 4
  %32 = call i64 @ZSTDMT_initCStream_internal(%struct.TYPE_7__* %26, i32* null, i32 0, i32 %27, i32* %28, i64 %31, i64 %29)
  store i64 %32, i64* %5, align 8
  br label %33

33:                                               ; preds = %20, %17
  %34 = load i64, i64* %5, align 8
  ret i64 %34
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @ERROR(i32) #2

declare dso_local i32 @ZSTD_getCParamsFromCDict(i32*) #2

declare dso_local i64 @ZSTDMT_initCStream_internal(%struct.TYPE_7__*, i32*, i32, i32, i32*, i64, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
