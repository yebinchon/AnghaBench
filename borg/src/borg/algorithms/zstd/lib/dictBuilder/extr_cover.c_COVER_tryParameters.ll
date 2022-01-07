; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/dictBuilder/extr_cover.c_COVER_tryParameters.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/dictBuilder/extr_cover.c_COVER_tryParameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i32, %struct.TYPE_18__, %struct.TYPE_20__* }
%struct.TYPE_18__ = type { i32, i64, i64 }
%struct.TYPE_20__ = type { i32, i32, i64, i32, i32, i32, i32 }

@GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Failed to allocate dmer map: out of memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Failed to allocate buffers: out of memory\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to finalize dictionary\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @COVER_tryParameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @COVER_tryParameters(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_18__, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %13, %struct.TYPE_19__** %3, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  store %struct.TYPE_20__* %16, %struct.TYPE_20__** %4, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 2
  %19 = bitcast %struct.TYPE_18__* %5 to i8*
  %20 = bitcast %struct.TYPE_18__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 24, i1 false)
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %6, align 8
  %24 = load i32, i32* @GENERIC, align 4
  %25 = call i64 @ERROR(i32 %24)
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %6, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i64 @malloc(i32 %27)
  %29 = inttoptr i64 %28 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %29, %struct.TYPE_19__** %9, align 8
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 48
  %35 = trunc i64 %34 to i32
  %36 = call i64 @malloc(i32 %35)
  %37 = inttoptr i64 %36 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %37, %struct.TYPE_19__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %39, %41
  %43 = add nsw i64 %42, 1
  %44 = call i32 @COVER_map_init(i32* %8, i64 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %1
  %47 = call i32 @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %118

48:                                               ; preds = %1
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %50 = icmp ne %struct.TYPE_19__* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %53 = icmp ne %struct.TYPE_19__* %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %51, %48
  %55 = call i32 @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %118

56:                                               ; preds = %51
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 48
  %66 = trunc i64 %65 to i32
  %67 = call i32 @memcpy(%struct.TYPE_19__* %57, i32 %60, i32 %66)
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %71 = load i64, i64* %6, align 8
  %72 = call i64 @COVER_buildDictionary(%struct.TYPE_20__* %68, %struct.TYPE_19__* %69, i32* %8, %struct.TYPE_19__* %70, i64 %71, %struct.TYPE_18__* byval(%struct.TYPE_18__) align 8 %5)
  store i64 %72, i64* %11, align 8
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %74 = load i64, i64* %6, align 8
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %76 = load i64, i64* %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i64 %76
  %78 = load i64, i64* %6, align 8
  %79 = load i64, i64* %11, align 8
  %80 = sub i64 %78, %79
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i32
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @ZDICT_finalizeDictionary(%struct.TYPE_19__* %73, i64 %74, %struct.TYPE_19__* %77, i64 %80, i32 %83, i32 %86, i32 %90, i32 %92)
  store i64 %93, i64* %6, align 8
  %94 = load i64, i64* %6, align 8
  %95 = call i64 @ZDICT_isError(i64 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %56
  %98 = call i32 @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %118

99:                                               ; preds = %56
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %116 = load i64, i64* %6, align 8
  %117 = call i64 @COVER_checkTotalCompressedSize(%struct.TYPE_18__* byval(%struct.TYPE_18__) align 8 %5, i32 %102, i32 %105, i32 %108, i64 %111, i32 %114, %struct.TYPE_19__* %115, i64 %116)
  store i64 %117, i64* %7, align 8
  br label %118

118:                                              ; preds = %99, %97, %54, %46
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i64, i64* %7, align 8
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %124 = load i64, i64* %6, align 8
  %125 = call i32 @COVER_best_finish(i32 %121, i64 %122, %struct.TYPE_18__* byval(%struct.TYPE_18__) align 8 %5, %struct.TYPE_19__* %123, i64 %124)
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %127 = call i32 @free(%struct.TYPE_19__* %126)
  %128 = call i32 @COVER_map_destroy(i32* %8)
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %130 = icmp ne %struct.TYPE_19__* %129, null
  br i1 %130, label %131, label %134

131:                                              ; preds = %118
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %133 = call i32 @free(%struct.TYPE_19__* %132)
  br label %134

134:                                              ; preds = %131, %118
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %136 = icmp ne %struct.TYPE_19__* %135, null
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %139 = call i32 @free(%struct.TYPE_19__* %138)
  br label %140

140:                                              ; preds = %137, %134
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @ERROR(i32) #2

declare dso_local i64 @malloc(i32) #2

declare dso_local i32 @COVER_map_init(i32*, i64) #2

declare dso_local i32 @DISPLAYLEVEL(i32, i8*) #2

declare dso_local i32 @memcpy(%struct.TYPE_19__*, i32, i32) #2

declare dso_local i64 @COVER_buildDictionary(%struct.TYPE_20__*, %struct.TYPE_19__*, i32*, %struct.TYPE_19__*, i64, %struct.TYPE_18__* byval(%struct.TYPE_18__) align 8) #2

declare dso_local i64 @ZDICT_finalizeDictionary(%struct.TYPE_19__*, i64, %struct.TYPE_19__*, i64, i32, i32, i32, i32) #2

declare dso_local i64 @ZDICT_isError(i64) #2

declare dso_local i64 @COVER_checkTotalCompressedSize(%struct.TYPE_18__* byval(%struct.TYPE_18__) align 8, i32, i32, i32, i64, i32, %struct.TYPE_19__*, i64) #2

declare dso_local i32 @COVER_best_finish(i32, i64, %struct.TYPE_18__* byval(%struct.TYPE_18__) align 8, %struct.TYPE_19__*, i64) #2

declare dso_local i32 @free(%struct.TYPE_19__*) #2

declare dso_local i32 @COVER_map_destroy(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
