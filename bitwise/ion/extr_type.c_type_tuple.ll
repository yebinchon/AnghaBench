; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_type.c_type_tuple.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_type.c_type_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_18__* }
%struct.TYPE_17__ = type { %struct.TYPE_17__*, %struct.TYPE_18__* }

@cached_tuple_types = common dso_local global i32 0, align 4
@TYPE_TUPLE = common dso_local global i32 0, align 4
@tuple_types = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_18__* @type_tuple(%struct.TYPE_18__** %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_18__**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_18__** %0, %struct.TYPE_18__*** %4, align 8
  store i64 %1, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = mul i64 %15, 8
  store i64 %16, i64* %6, align 8
  %17 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %4, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @hash_bytes(%struct.TYPE_18__** %17, i64 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  br label %25

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ %23, %22 ], [ 1, %24 ]
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call %struct.TYPE_17__* @map_get_from_uint64(i32* @cached_tuple_types, i32 %27)
  store %struct.TYPE_17__* %28, %struct.TYPE_17__** %9, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  store %struct.TYPE_17__* %29, %struct.TYPE_17__** %10, align 8
  br label %30

30:                                               ; preds = %71, %25
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %32 = icmp ne %struct.TYPE_17__* %31, null
  br i1 %32, label %33, label %75

33:                                               ; preds = %30
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %35, align 8
  store %struct.TYPE_18__* %36, %struct.TYPE_18__** %11, align 8
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %69

43:                                               ; preds = %33
  store i64 0, i64* %12, align 8
  br label %44

44:                                               ; preds = %64, %43
  %45 = load i64, i64* %12, align 8
  %46 = load i64, i64* %5, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %67

48:                                               ; preds = %44
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %51, align 8
  %53 = load i64, i64* %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %55, align 8
  %57 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %4, align 8
  %58 = load i64, i64* %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %57, i64 %58
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %59, align 8
  %61 = icmp ne %struct.TYPE_18__* %56, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %48
  br label %70

63:                                               ; preds = %48
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %12, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %12, align 8
  br label %44

67:                                               ; preds = %44
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  store %struct.TYPE_18__* %68, %struct.TYPE_18__** %3, align 8
  br label %96

69:                                               ; preds = %33
  br label %70

70:                                               ; preds = %69, %62
  br label %71

71:                                               ; preds = %70
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %73, align 8
  store %struct.TYPE_17__* %74, %struct.TYPE_17__** %10, align 8
  br label %30

75:                                               ; preds = %30
  %76 = load i32, i32* @TYPE_TUPLE, align 4
  %77 = call %struct.TYPE_18__* @type_alloc(i32 %76)
  store %struct.TYPE_18__* %77, %struct.TYPE_18__** %13, align 8
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %79 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %4, align 8
  %80 = load i64, i64* %5, align 8
  %81 = call i32 @type_complete_tuple(%struct.TYPE_18__* %78, %struct.TYPE_18__** %79, i64 %80)
  %82 = call %struct.TYPE_17__* @xmalloc(i32 16)
  store %struct.TYPE_17__* %82, %struct.TYPE_17__** %14, align 8
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 1
  store %struct.TYPE_18__* %83, %struct.TYPE_18__** %85, align 8
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 0
  store %struct.TYPE_17__* %86, %struct.TYPE_17__** %88, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %91 = call i32 @map_put_from_uint64(i32* @cached_tuple_types, i32 %89, %struct.TYPE_17__* %90)
  %92 = load i32, i32* @tuple_types, align 4
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %94 = call i32 @buf_push(i32 %92, %struct.TYPE_18__* %93)
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  store %struct.TYPE_18__* %95, %struct.TYPE_18__** %3, align 8
  br label %96

96:                                               ; preds = %75, %67
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  ret %struct.TYPE_18__* %97
}

declare dso_local i32 @hash_bytes(%struct.TYPE_18__**, i64) #1

declare dso_local %struct.TYPE_17__* @map_get_from_uint64(i32*, i32) #1

declare dso_local %struct.TYPE_18__* @type_alloc(i32) #1

declare dso_local i32 @type_complete_tuple(%struct.TYPE_18__*, %struct.TYPE_18__**, i64) #1

declare dso_local %struct.TYPE_17__* @xmalloc(i32) #1

declare dso_local i32 @map_put_from_uint64(i32*, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @buf_push(i32, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
