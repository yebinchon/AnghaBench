; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_type.c_type_array.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_type.c_type_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, i32, %struct.TYPE_13__*, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_14__*, %struct.TYPE_13__* }

@cached_array_types = common dso_local global i32 0, align 4
@TYPE_ARRAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @type_array(%struct.TYPE_13__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %16 = call i32 @hash_ptr(%struct.TYPE_13__* %15)
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @hash_uint64(i64 %17)
  %19 = call i32 @hash_mix(i32 %16, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %8, align 4
  br label %25

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ %23, %22 ], [ 1, %24 ]
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call %struct.TYPE_14__* @map_get_from_uint64(i32* @cached_array_types, i32 %27)
  store %struct.TYPE_14__* %28, %struct.TYPE_14__** %10, align 8
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %59, label %31

31:                                               ; preds = %25
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  store %struct.TYPE_14__* %32, %struct.TYPE_14__** %11, align 8
  br label %33

33:                                               ; preds = %54, %31
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %35 = icmp ne %struct.TYPE_14__* %34, null
  br i1 %35, label %36, label %58

36:                                               ; preds = %33
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %38, align 8
  store %struct.TYPE_13__* %39, %struct.TYPE_13__** %12, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %41, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %44 = icmp eq %struct.TYPE_13__* %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %36
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %52, %struct.TYPE_13__** %4, align 8
  br label %103

53:                                               ; preds = %45, %36
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %56, align 8
  store %struct.TYPE_14__* %57, %struct.TYPE_14__** %11, align 8
  br label %33

58:                                               ; preds = %33
  br label %59

59:                                               ; preds = %58, %25
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %61 = call i32 @complete_type(%struct.TYPE_13__* %60)
  %62 = load i32, i32* @TYPE_ARRAY, align 4
  %63 = call %struct.TYPE_13__* @type_alloc(i32 %62)
  store %struct.TYPE_13__* %63, %struct.TYPE_13__** %13, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 4
  %69 = load i64, i64* %6, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %71 = call i64 @type_sizeof(%struct.TYPE_13__* %70)
  %72 = mul i64 %69, %71
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %76 = call i32 @type_alignof(%struct.TYPE_13__* %75)
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 3
  store %struct.TYPE_13__* %79, %struct.TYPE_13__** %81, align 8
  %82 = load i64, i64* %6, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %101, label %90

90:                                               ; preds = %59
  %91 = call %struct.TYPE_14__* @xmalloc(i32 16)
  store %struct.TYPE_14__* %91, %struct.TYPE_14__** %14, align 8
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 1
  store %struct.TYPE_13__* %92, %struct.TYPE_13__** %94, align 8
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  store %struct.TYPE_14__* %95, %struct.TYPE_14__** %97, align 8
  %98 = load i32, i32* %9, align 4
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %100 = call i32 @map_put_from_uint64(i32* @cached_array_types, i32 %98, %struct.TYPE_14__* %99)
  br label %101

101:                                              ; preds = %90, %59
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  store %struct.TYPE_13__* %102, %struct.TYPE_13__** %4, align 8
  br label %103

103:                                              ; preds = %101, %51
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  ret %struct.TYPE_13__* %104
}

declare dso_local i32 @hash_mix(i32, i32) #1

declare dso_local i32 @hash_ptr(%struct.TYPE_13__*) #1

declare dso_local i32 @hash_uint64(i64) #1

declare dso_local %struct.TYPE_14__* @map_get_from_uint64(i32*, i32) #1

declare dso_local i32 @complete_type(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_13__* @type_alloc(i32) #1

declare dso_local i64 @type_sizeof(%struct.TYPE_13__*) #1

declare dso_local i32 @type_alignof(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_14__* @xmalloc(i32) #1

declare dso_local i32 @map_put_from_uint64(i32*, i32, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
