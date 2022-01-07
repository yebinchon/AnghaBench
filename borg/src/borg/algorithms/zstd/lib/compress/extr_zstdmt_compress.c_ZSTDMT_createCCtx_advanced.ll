; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/compress/extr_zstdmt_compress.c_ZSTDMT_createCCtx_advanced.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/compress/extr_zstdmt_compress.c_ZSTDMT_createCCtx_advanced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32*, i32* }

@.str = private unnamed_addr constant [44 x i8] c"ZSTDMT_createCCtx_advanced (nbWorkers = %u)\00", align 1
@ZSTDMT_NBWORKERS_MAX = common dso_local global i32 0, align 4
@kNullRoundBuff = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"mt_cctx created, for %u threads\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @ZSTDMT_createCCtx_advanced(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = bitcast %struct.TYPE_12__* %5 to { i32*, i32* }*
  %11 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %10, i32 0, i32 0
  store i32* %1, i32** %11, align 8
  %12 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %10, i32 0, i32 1
  store i32* %2, i32** %12, align 8
  store i32 %0, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = add i32 %13, 2
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @DEBUGLOG(i32 3, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = icmp ult i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %166

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @ZSTDMT_NBWORKERS_MAX, align 4
  %23 = call i32 @MIN(i32 %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  %27 = zext i1 %26 to i32
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  %31 = zext i1 %30 to i32
  %32 = xor i32 %27, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %166

35:                                               ; preds = %20
  %36 = bitcast %struct.TYPE_12__* %5 to { i32*, i32* }*
  %37 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %36, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = call i64 @ZSTD_calloc(i32 64, i32* %38, i32* %40)
  %42 = inttoptr i64 %41 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %42, %struct.TYPE_13__** %7, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %44 = icmp ne %struct.TYPE_13__* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %35
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %166

46:                                               ; preds = %35
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 10
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @ZSTDMT_CCtxParam_setNbWorkers(i32* %48, i32 %49)
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 9
  %53 = bitcast %struct.TYPE_12__* %52 to i8*
  %54 = bitcast %struct.TYPE_12__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 %54, i64 16, i1 false)
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  %57 = load i32, i32* %6, align 4
  %58 = bitcast %struct.TYPE_12__* %5 to { i32*, i32* }*
  %59 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %58, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @POOL_create_advanced(i32 %57, i32 0, i32* %60, i32* %62)
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 6
  store i32 %63, i32* %65, align 8
  %66 = bitcast %struct.TYPE_12__* %5 to { i32*, i32* }*
  %67 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %66, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @ZSTDMT_createJobsTable(i32* %8, i32* %68, i32* %70)
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 5
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp sgt i32 %74, 0
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = sub nsw i32 %79, 1
  %81 = and i32 %78, %80
  %82 = icmp eq i32 %81, 0
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  %85 = load i32, i32* %8, align 4
  %86 = sub nsw i32 %85, 1
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %6, align 4
  %90 = bitcast %struct.TYPE_12__* %5 to { i32*, i32* }*
  %91 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %90, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @ZSTDMT_createBufferPool(i32 %89, i32* %92, i32* %94)
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* %6, align 4
  %99 = bitcast %struct.TYPE_12__* %5 to { i32*, i32* }*
  %100 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %99, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @ZSTDMT_createCCtxPool(i32 %98, i32* %101, i32* %103)
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %6, align 4
  %108 = bitcast %struct.TYPE_12__* %5 to { i32*, i32* }*
  %109 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %108, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @ZSTDMT_createSeqPool(i32 %107, i32* %110, i32* %112)
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 8
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 8
  %118 = call i32 @ZSTDMT_serialState_init(i32* %117)
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* @kNullRoundBuff, align 4
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 7
  store i32 %119, i32* %121, align 4
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  %126 = xor i1 %125, true
  %127 = zext i1 %126 to i32
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  %132 = xor i1 %131, true
  %133 = zext i1 %132 to i32
  %134 = or i32 %127, %133
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 0
  %139 = xor i1 %138, true
  %140 = zext i1 %139 to i32
  %141 = or i32 %134, %140
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  %146 = xor i1 %145, true
  %147 = zext i1 %146 to i32
  %148 = or i32 %141, %147
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 0
  %153 = xor i1 %152, true
  %154 = zext i1 %153 to i32
  %155 = or i32 %148, %154
  %156 = load i32, i32* %9, align 4
  %157 = or i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %46
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %161 = call i32 @ZSTDMT_freeCCtx(%struct.TYPE_13__* %160)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %166

162:                                              ; preds = %46
  %163 = load i32, i32* %6, align 4
  %164 = call i32 @DEBUGLOG(i32 3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %163)
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_13__* %165, %struct.TYPE_13__** %4, align 8
  br label %166

166:                                              ; preds = %162, %159, %45, %34, %19
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  ret %struct.TYPE_13__* %167
}

declare dso_local i32 @DEBUGLOG(i32, i8*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i64 @ZSTD_calloc(i32, i32*, i32*) #1

declare dso_local i32 @ZSTDMT_CCtxParam_setNbWorkers(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @POOL_create_advanced(i32, i32, i32*, i32*) #1

declare dso_local i32 @ZSTDMT_createJobsTable(i32*, i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ZSTDMT_createBufferPool(i32, i32*, i32*) #1

declare dso_local i32 @ZSTDMT_createCCtxPool(i32, i32*, i32*) #1

declare dso_local i32 @ZSTDMT_createSeqPool(i32, i32*, i32*) #1

declare dso_local i32 @ZSTDMT_serialState_init(i32*) #1

declare dso_local i32 @ZSTDMT_freeCCtx(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
