; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_type.c_type_func.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_type.c_type_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_17__, i32, i32 }
%struct.TYPE_17__ = type { i64, i32, i32, %struct.TYPE_19__*, %struct.TYPE_19__*, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_18__*, %struct.TYPE_19__* }

@cached_func_types = common dso_local global i32 0, align 4
@TYPE_FUNC = common dso_local global i32 0, align 4
@type_metrics = common dso_local global %struct.TYPE_20__* null, align 8
@TYPE_PTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_19__* @type_func(%struct.TYPE_19__** %0, i64 %1, %struct.TYPE_19__* %2, i32 %3, i32 %4, %struct.TYPE_19__* %5) #0 {
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_19__**, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_18__*, align 8
  %18 = alloca %struct.TYPE_18__*, align 8
  %19 = alloca %struct.TYPE_19__*, align 8
  %20 = alloca %struct.TYPE_19__*, align 8
  %21 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_19__** %0, %struct.TYPE_19__*** %8, align 8
  store i64 %1, i64* %9, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.TYPE_19__* %5, %struct.TYPE_19__** %13, align 8
  %22 = load i64, i64* %9, align 8
  %23 = mul i64 %22, 8
  store i64 %23, i64* %14, align 8
  %24 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %8, align 8
  %25 = load i64, i64* %14, align 8
  %26 = call i32 @hash_bytes(%struct.TYPE_19__** %24, i64 %25)
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %28 = call i32 @hash_ptr(%struct.TYPE_19__* %27)
  %29 = call i32 @hash_mix(i32 %26, i32 %28)
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %6
  %33 = load i32, i32* %15, align 4
  br label %35

34:                                               ; preds = %6
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i32 [ %33, %32 ], [ 1, %34 ]
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %16, align 4
  %38 = call %struct.TYPE_18__* @map_get_from_uint64(i32* @cached_func_types, i32 %37)
  store %struct.TYPE_18__* %38, %struct.TYPE_18__** %17, align 8
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  store %struct.TYPE_18__* %39, %struct.TYPE_18__** %18, align 8
  br label %40

40:                                               ; preds = %94, %35
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %42 = icmp ne %struct.TYPE_18__* %41, null
  br i1 %42, label %43, label %98

43:                                               ; preds = %40
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %45, align 8
  store %struct.TYPE_19__* %46, %struct.TYPE_19__** %19, align 8
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %9, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %93

53:                                               ; preds = %43
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 3
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %56, align 8
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %59 = icmp eq %struct.TYPE_19__* %57, %58
  br i1 %59, label %60, label %93

60:                                               ; preds = %53
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %93

67:                                               ; preds = %60
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %93

74:                                               ; preds = %67
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 4
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %77, align 8
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %80 = icmp eq %struct.TYPE_19__* %78, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %74
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %8, align 8
  %87 = load i64, i64* %14, align 8
  %88 = call i64 @memcmp(i32 %85, %struct.TYPE_19__** %86, i64 %87)
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %81
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  store %struct.TYPE_19__* %91, %struct.TYPE_19__** %7, align 8
  br label %152

92:                                               ; preds = %81
  br label %93

93:                                               ; preds = %92, %74, %67, %60, %53, %43
  br label %94

94:                                               ; preds = %93
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %96, align 8
  store %struct.TYPE_18__* %97, %struct.TYPE_18__** %18, align 8
  br label %40

98:                                               ; preds = %40
  %99 = load i32, i32* @TYPE_FUNC, align 4
  %100 = call %struct.TYPE_19__* @type_alloc(i32 %99)
  store %struct.TYPE_19__* %100, %struct.TYPE_19__** %20, align 8
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** @type_metrics, align 8
  %102 = load i64, i64* @TYPE_PTR, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 4
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** @type_metrics, align 8
  %109 = load i64, i64* @TYPE_PTR, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 8
  %115 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %8, align 8
  %116 = load i64, i64* %14, align 8
  %117 = call i32 @memdup(%struct.TYPE_19__** %115, i64 %116)
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 5
  store i32 %117, i32* %120, align 8
  %121 = load i64, i64* %9, align 8
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 0
  store i64 %121, i64* %124, align 8
  %125 = load i32, i32* %11, align 4
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 1
  store i32 %125, i32* %128, align 8
  %129 = load i32, i32* %12, align 4
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 2
  store i32 %129, i32* %132, align 4
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 4
  store %struct.TYPE_19__* %133, %struct.TYPE_19__** %136, align 8
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 3
  store %struct.TYPE_19__* %137, %struct.TYPE_19__** %140, align 8
  %141 = call %struct.TYPE_18__* @xmalloc(i32 16)
  store %struct.TYPE_18__* %141, %struct.TYPE_18__** %21, align 8
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 1
  store %struct.TYPE_19__* %142, %struct.TYPE_19__** %144, align 8
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 0
  store %struct.TYPE_18__* %145, %struct.TYPE_18__** %147, align 8
  %148 = load i32, i32* %16, align 4
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %150 = call i32 @map_put_from_uint64(i32* @cached_func_types, i32 %148, %struct.TYPE_18__* %149)
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  store %struct.TYPE_19__* %151, %struct.TYPE_19__** %7, align 8
  br label %152

152:                                              ; preds = %98, %90
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  ret %struct.TYPE_19__* %153
}

declare dso_local i32 @hash_mix(i32, i32) #1

declare dso_local i32 @hash_bytes(%struct.TYPE_19__**, i64) #1

declare dso_local i32 @hash_ptr(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_18__* @map_get_from_uint64(i32*, i32) #1

declare dso_local i64 @memcmp(i32, %struct.TYPE_19__**, i64) #1

declare dso_local %struct.TYPE_19__* @type_alloc(i32) #1

declare dso_local i32 @memdup(%struct.TYPE_19__**, i64) #1

declare dso_local %struct.TYPE_18__* @xmalloc(i32) #1

declare dso_local i32 @map_put_from_uint64(i32*, i32, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
