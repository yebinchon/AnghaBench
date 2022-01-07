; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/dictBuilder/extr_fastcover.c_FASTCOVER_tryParameters.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/dictBuilder/extr_fastcover.c_FASTCOVER_tryParameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64, i32, %struct.TYPE_22__, %struct.TYPE_24__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_24__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_21__, i32 }
%struct.TYPE_21__ = type { i32 }

@GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Failed to allocate buffers: out of memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to finalize dictionary\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @FASTCOVER_tryParameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FASTCOVER_tryParameters(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_22__, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %14, %struct.TYPE_23__** %3, align 8
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  store %struct.TYPE_24__* %17, %struct.TYPE_24__** %4, align 8
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 2
  %20 = bitcast %struct.TYPE_22__* %5 to i8*
  %21 = bitcast %struct.TYPE_22__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 4, i1 false)
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %6, align 8
  %25 = load i32, i32* @GENERIC, align 4
  %26 = call i64 @ERROR(i32 %25)
  store i64 %26, i64* %7, align 8
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 1, %29
  %31 = call i64 @calloc(i32 %30, i32 24)
  %32 = inttoptr i64 %31 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %32, %struct.TYPE_23__** %8, align 8
  %33 = load i64, i64* %6, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i64 @malloc(i32 %34)
  %36 = inttoptr i64 %35 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %36, %struct.TYPE_23__** %9, align 8
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 1, %39
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 24
  %43 = trunc i64 %42 to i32
  %44 = call i64 @malloc(i32 %43)
  %45 = inttoptr i64 %44 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %45, %struct.TYPE_23__** %10, align 8
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %47 = icmp ne %struct.TYPE_23__* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %1
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %50 = icmp ne %struct.TYPE_23__* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %53 = icmp ne %struct.TYPE_23__* %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %51, %48, %1
  %55 = call i32 @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %130

56:                                               ; preds = %51
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 1, %63
  %65 = sext i32 %64 to i64
  %66 = mul i64 %65, 24
  %67 = trunc i64 %66 to i32
  %68 = call i32 @memcpy(%struct.TYPE_23__* %57, i32 %60, i32 %67)
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %72 = load i64, i64* %6, align 8
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %5, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @FASTCOVER_buildDictionary(%struct.TYPE_24__* %69, %struct.TYPE_23__* %70, %struct.TYPE_23__* %71, i64 %72, i32 %75, %struct.TYPE_23__* %73)
  store i64 %76, i64* %11, align 8
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %80, i32 0, i32 6
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %79, %83
  %85 = sdiv i32 %84, 100
  store i32 %85, i32* %12, align 4
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %87 = load i64, i64* %6, align 8
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %89 = load i64, i64* %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i64 %89
  %91 = load i64, i64* %6, align 8
  %92 = load i64, i64* %11, align 8
  %93 = sub i64 %91, %92
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %12, align 4
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %5, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @ZDICT_finalizeDictionary(%struct.TYPE_23__* %86, i64 %87, %struct.TYPE_23__* %90, i64 %93, i32 %96, i32 %99, i32 %100, i32 %102)
  store i64 %103, i64* %6, align 8
  %104 = load i64, i64* %6, align 8
  %105 = call i64 @ZDICT_isError(i64 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %56
  %108 = call i32 @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %130

109:                                              ; preds = %56
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %126 = load i64, i64* %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %5, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @COVER_checkTotalCompressedSize(i32 %128, i32 %112, i32 %115, i32 %118, i32 %121, i32 %124, %struct.TYPE_23__* %125, i64 %126)
  store i64 %129, i64* %7, align 8
  br label %130

130:                                              ; preds = %109, %107, %54
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load i64, i64* %7, align 8
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %136 = load i64, i64* %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %5, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @COVER_best_finish(i32 %133, i64 %134, i32 %138, %struct.TYPE_23__* %135, i64 %136)
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %141 = call i32 @free(%struct.TYPE_23__* %140)
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %143 = call i32 @free(%struct.TYPE_23__* %142)
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %145 = call i32 @free(%struct.TYPE_23__* %144)
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %147 = call i32 @free(%struct.TYPE_23__* %146)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @ERROR(i32) #2

declare dso_local i64 @calloc(i32, i32) #2

declare dso_local i64 @malloc(i32) #2

declare dso_local i32 @DISPLAYLEVEL(i32, i8*) #2

declare dso_local i32 @memcpy(%struct.TYPE_23__*, i32, i32) #2

declare dso_local i64 @FASTCOVER_buildDictionary(%struct.TYPE_24__*, %struct.TYPE_23__*, %struct.TYPE_23__*, i64, i32, %struct.TYPE_23__*) #2

declare dso_local i64 @ZDICT_finalizeDictionary(%struct.TYPE_23__*, i64, %struct.TYPE_23__*, i64, i32, i32, i32, i32) #2

declare dso_local i64 @ZDICT_isError(i64) #2

declare dso_local i64 @COVER_checkTotalCompressedSize(i32, i32, i32, i32, i32, i32, %struct.TYPE_23__*, i64) #2

declare dso_local i32 @COVER_best_finish(i32, i64, i32, %struct.TYPE_23__*, i64) #2

declare dso_local i32 @free(%struct.TYPE_23__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
