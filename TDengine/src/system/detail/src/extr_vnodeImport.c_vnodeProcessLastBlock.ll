; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeImport.c_vnodeProcessLastBlock.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeImport.c_vnodeProcessLastBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_14__, i64 }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_19__ = type { i64, i32, i64, i32, i64 }

@vnodeList = common dso_local global %struct.TYPE_15__* null, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnodeProcessLastBlock(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_19__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store i32** %2, i32*** %7, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  store %struct.TYPE_16__* %15, %struct.TYPE_16__** %8, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** @vnodeList, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i64 %19
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %9, align 8
  store i32 0, i32* %11, align 4
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %106

27:                                               ; preds = %3
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 40
  %38 = add i64 %30, %37
  %39 = add i64 %38, 4
  store i64 %39, i64* %12, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %12, align 8
  %44 = load i32, i32* @SEEK_SET, align 4
  %45 = call i64 @lseek(i32 %42, i64 %43, i32 %44)
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @read(i32 %48, %struct.TYPE_19__* %10, i32 40)
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @assert(i64 %51)
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %54, %57
  br i1 %58, label %59, label %93

59:                                               ; preds = %27
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* @SEEK_SET, align 4
  %66 = call i64 @lseek(i32 %62, i64 %64, i32 %65)
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @SEEK_END, align 4
  %71 = call i64 @lseek(i32 %69, i64 0, i32 %70)
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 4
  store i64 %71, i64* %72, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @tsendfile(i32 %75, i32 %78, i32* null, i32 %80)
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 2
  store i64 0, i64* %82, align 8
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i64, i64* %12, align 8
  %87 = load i32, i32* @SEEK_SET, align 4
  %88 = call i64 @lseek(i32 %85, i64 %86, i32 %87)
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @twrite(i32 %91, %struct.TYPE_19__* %10, i32 40)
  br label %104

93:                                               ; preds = %27
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %95 = load i32**, i32*** %7, align 8
  %96 = call i32 @vnodeReadLastBlockToMem(%struct.TYPE_16__* %94, %struct.TYPE_19__* %10, i32** %95)
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %99, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* %11, align 4
  br label %104

104:                                              ; preds = %93, %59
  %105 = load i32, i32* %11, align 4
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %104, %26
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i32 @read(i32, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @assert(i64) #1

declare dso_local i32 @tsendfile(i32, i32, i32*, i32) #1

declare dso_local i32 @twrite(i32, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @vnodeReadLastBlockToMem(%struct.TYPE_16__*, %struct.TYPE_19__*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
