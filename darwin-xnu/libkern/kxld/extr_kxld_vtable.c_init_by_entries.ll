; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld_vtable.c_init_by_entries.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld_vtable.c_init_by_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_18__, i32, i32 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i32* }
%struct.TYPE_17__ = type { i64, i32* }

@KERN_FAILURE = common dso_local global i32 0, align 4
@finish = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_16__*, i32*)* @init_by_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_by_entries(%struct.TYPE_16__* %0, %struct.TYPE_16__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store i32* %2, i32** %6, align 8
  %16 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %16, i32* %7, align 4
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %18 = call i32 @check(%struct.TYPE_16__* %17)
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %20 = call i32 @check(%struct.TYPE_16__* %19)
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @get_vtable_base_sizes(i32 %23, i64* %12, i64* %13)
  %25 = load i64, i64* %13, align 8
  store i64 %25, i64* %11, align 8
  br label %26

26:                                               ; preds = %3, %36
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i64, i64* %11, align 8
  %32 = call i64 @kxld_relocator_get_pointer_at_addr(%struct.TYPE_16__* %27, i32 %30, i64 %31)
  store i64 %32, i64* %10, align 8
  %33 = load i64, i64* %10, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %26
  br label %42

36:                                               ; preds = %26
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* %11, align 8
  %39 = add nsw i64 %38, %37
  store i64 %39, i64* %11, align 8
  %40 = load i64, i64* %14, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %14, align 8
  br label %26

42:                                               ; preds = %35
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load i64, i64* %14, align 8
  %46 = call i32 @kxld_array_init(%struct.TYPE_18__* %44, i32 16, i64 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @finish, align 4
  %49 = call i32 @require_noerr(i32 %47, i32 %48)
  store i64 0, i64* %15, align 8
  %50 = load i64, i64* %13, align 8
  store i64 %50, i64* %11, align 8
  br label %51

51:                                               ; preds = %94, %42
  %52 = load i64, i64* %15, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp slt i64 %52, %56
  br i1 %57, label %58, label %100

58:                                               ; preds = %51
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i64, i64* %11, align 8
  %64 = call i64 @kxld_relocator_get_pointer_at_addr(%struct.TYPE_16__* %59, i32 %62, i64 %63)
  store i64 %64, i64* %10, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load i64, i64* %15, align 8
  %68 = call %struct.TYPE_15__* @kxld_array_get_item(%struct.TYPE_18__* %66, i64 %67)
  store %struct.TYPE_15__* %68, %struct.TYPE_15__** %8, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = call %struct.TYPE_17__* @kxld_dict_find(i32* %69, i64* %10)
  store %struct.TYPE_17__* %70, %struct.TYPE_17__** %9, align 8
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %72 = icmp ne %struct.TYPE_17__* %71, null
  br i1 %72, label %73, label %86

73:                                               ; preds = %58
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 1
  store i32* %76, i32** %79, align 8
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  store i64 %82, i64* %85, align 8
  br label %93

86:                                               ; preds = %58
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 1
  store i32* null, i32** %89, align 8
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  store i64 0, i64* %92, align 8
  br label %93

93:                                               ; preds = %86, %73
  br label %94

94:                                               ; preds = %93
  %95 = load i64, i64* %15, align 8
  %96 = add nsw i64 %95, 1
  store i64 %96, i64* %15, align 8
  %97 = load i64, i64* %12, align 8
  %98 = load i64, i64* %11, align 8
  %99 = add nsw i64 %98, %97
  store i64 %99, i64* %11, align 8
  br label %51

100:                                              ; preds = %51
  %101 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %100
  %103 = load i32, i32* %7, align 4
  ret i32 %103
}

declare dso_local i32 @check(%struct.TYPE_16__*) #1

declare dso_local i32 @get_vtable_base_sizes(i32, i64*, i64*) #1

declare dso_local i64 @kxld_relocator_get_pointer_at_addr(%struct.TYPE_16__*, i32, i64) #1

declare dso_local i32 @kxld_array_init(%struct.TYPE_18__*, i32, i64) #1

declare dso_local i32 @require_noerr(i32, i32) #1

declare dso_local %struct.TYPE_15__* @kxld_array_get_item(%struct.TYPE_18__*, i64) #1

declare dso_local %struct.TYPE_17__* @kxld_dict_find(i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
