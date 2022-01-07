; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld_vtable.c_init_by_relocs.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld_vtable.c_init_by_relocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, %struct.TYPE_21__, %struct.TYPE_21__, i32 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_25__*, %struct.TYPE_24__* }

@KERN_FAILURE = common dso_local global i32 0, align 4
@finish = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*, %struct.TYPE_24__*, %struct.TYPE_24__*, %struct.TYPE_24__*)* @init_by_relocs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_by_relocs(%struct.TYPE_24__* %0, %struct.TYPE_24__* %1, %struct.TYPE_24__* %2, %struct.TYPE_24__* %3) #0 {
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca %struct.TYPE_24__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %5, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %6, align 8
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %7, align 8
  store %struct.TYPE_24__* %3, %struct.TYPE_24__** %8, align 8
  %21 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %21, i32* %9, align 4
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %10, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %11, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %20, align 8
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %23 = call i32 @check(%struct.TYPE_24__* %22)
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %25 = call i32 @check(%struct.TYPE_24__* %24)
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %27 = call i32 @check(%struct.TYPE_24__* %26)
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %29 = call i32 @check(%struct.TYPE_24__* %28)
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @get_vtable_base_sizes(i32 %32, i64* %17, i64* %18)
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %36 = call i64 @kxld_sym_get_section_offset(%struct.TYPE_24__* %34, %struct.TYPE_24__* %35)
  %37 = load i64, i64* %18, align 8
  %38 = add nsw i64 %36, %37
  store i64 %38, i64* %13, align 8
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %39, i32 0, i32 2
  %41 = load i64, i64* %13, align 8
  %42 = call i32 @kxld_reloc_get_reloc_index_by_offset(%struct.TYPE_21__* %40, i64 %41, i64* %19)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @finish, align 4
  %45 = call i32 @require_noerr(i32 %43, i32 %44)
  %46 = load i64, i64* %19, align 8
  store i64 %46, i64* %20, align 8
  %47 = load i64, i64* %13, align 8
  store i64 %47, i64* %14, align 8
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %48, i32 0, i32 2
  %50 = load i64, i64* %20, align 8
  %51 = call i8* @kxld_array_get_item(%struct.TYPE_21__* %49, i64 %50)
  %52 = bitcast i8* %51 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %52, %struct.TYPE_25__** %10, align 8
  br label %53

53:                                               ; preds = %65, %4
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %14, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %76

59:                                               ; preds = %53
  %60 = load i64, i64* %16, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %16, align 8
  %62 = load i64, i64* %20, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  br label %76

65:                                               ; preds = %59
  %66 = load i64, i64* %20, align 8
  %67 = add nsw i64 %66, -1
  store i64 %67, i64* %20, align 8
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 2
  %70 = load i64, i64* %20, align 8
  %71 = call i8* @kxld_array_get_item(%struct.TYPE_21__* %69, i64 %70)
  %72 = bitcast i8* %71 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %72, %struct.TYPE_25__** %10, align 8
  %73 = load i64, i64* %17, align 8
  %74 = load i64, i64* %14, align 8
  %75 = add nsw i64 %74, %73
  store i64 %75, i64* %14, align 8
  br label %53

76:                                               ; preds = %64, %53
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 1
  %79 = load i64, i64* %16, align 8
  %80 = call i32 @kxld_array_init(%struct.TYPE_21__* %78, i32 16, i64 %79)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @finish, align 4
  %83 = call i32 @require_noerr(i32 %81, i32 %82)
  store i64 0, i64* %15, align 8
  br label %84

84:                                               ; preds = %118, %76
  %85 = load i64, i64* %15, align 8
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp slt i64 %85, %89
  br i1 %90, label %91, label %121

91:                                               ; preds = %84
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %92, i32 0, i32 2
  %94 = load i64, i64* %19, align 8
  %95 = load i64, i64* %15, align 8
  %96 = sub nsw i64 %94, %95
  %97 = call i8* @kxld_array_get_item(%struct.TYPE_21__* %93, i64 %96)
  %98 = bitcast i8* %97 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %98, %struct.TYPE_25__** %10, align 8
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %99, i32 0, i32 1
  %101 = load i64, i64* %15, align 8
  %102 = call i8* @kxld_array_get_item(%struct.TYPE_21__* %100, i64 %101)
  %103 = bitcast i8* %102 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %103, %struct.TYPE_23__** %11, align 8
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %105 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call %struct.TYPE_24__* @kxld_reloc_get_symbol(%struct.TYPE_24__* %104, %struct.TYPE_25__* %105, i32 %108)
  store %struct.TYPE_24__* %109, %struct.TYPE_24__** %12, align 8
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 1
  store %struct.TYPE_24__* %110, %struct.TYPE_24__** %113, align 8
  %114 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 0
  store %struct.TYPE_25__* %114, %struct.TYPE_25__** %117, align 8
  br label %118

118:                                              ; preds = %91
  %119 = load i64, i64* %15, align 8
  %120 = add nsw i64 %119, 1
  store i64 %120, i64* %15, align 8
  br label %84

121:                                              ; preds = %84
  %122 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %122, i32* %9, align 4
  br label %123

123:                                              ; preds = %121
  %124 = load i32, i32* %9, align 4
  ret i32 %124
}

declare dso_local i32 @check(%struct.TYPE_24__*) #1

declare dso_local i32 @get_vtable_base_sizes(i32, i64*, i64*) #1

declare dso_local i64 @kxld_sym_get_section_offset(%struct.TYPE_24__*, %struct.TYPE_24__*) #1

declare dso_local i32 @kxld_reloc_get_reloc_index_by_offset(%struct.TYPE_21__*, i64, i64*) #1

declare dso_local i32 @require_noerr(i32, i32) #1

declare dso_local i8* @kxld_array_get_item(%struct.TYPE_21__*, i64) #1

declare dso_local i32 @kxld_array_init(%struct.TYPE_21__*, i32, i64) #1

declare dso_local %struct.TYPE_24__* @kxld_reloc_get_symbol(%struct.TYPE_24__*, %struct.TYPE_25__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
