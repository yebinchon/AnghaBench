; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-db/extr_query.c_query_func_all_map.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-db/extr_query.c_query_func_all_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argument = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 (i64, i32, i32, i32)* }
%struct.rmsgpack_dom_value = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@RDT_BOOL = common dso_local global i64 0, align 8
@RDT_NULL = common dso_local global i64 0, align 8
@RDT_MAP = common dso_local global i64 0, align 8
@AT_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i32 } (i64, i32, i32, %struct.argument*)* @query_func_all_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i32 } @query_func_all_map(i64 %0, i32 %1, i32 %2, %struct.argument* %3) #0 {
  %5 = alloca %struct.rmsgpack_dom_value, align 8
  %6 = alloca %struct.rmsgpack_dom_value, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.argument*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.argument, align 8
  %11 = alloca %struct.rmsgpack_dom_value, align 8
  %12 = alloca %struct.rmsgpack_dom_value*, align 8
  %13 = alloca %struct.rmsgpack_dom_value, align 8
  %14 = alloca %struct.rmsgpack_dom_value, align 8
  %15 = bitcast %struct.rmsgpack_dom_value* %6 to { i64, i32 }*
  %16 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 0
  store i64 %0, i64* %16, align 8
  %17 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 1
  store i32 %1, i32* %17, align 8
  store i32 %2, i32* %7, align 4
  store %struct.argument* %3, %struct.argument** %8, align 8
  store %struct.rmsgpack_dom_value* null, %struct.rmsgpack_dom_value** %12, align 8
  %18 = load i64, i64* @RDT_BOOL, align 8
  %19 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %5, i32 0, i32 0
  store i64 %18, i64* %19, align 8
  %20 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %5, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load i64, i64* @RDT_NULL, align 8
  %23 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %11, i32 0, i32 0
  store i64 %22, i64* %23, align 8
  %24 = load i32, i32* %7, align 4
  %25 = urem i32 %24, 2
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %5, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  br label %129

30:                                               ; preds = %4
  %31 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %6, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @RDT_MAP, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %129

36:                                               ; preds = %30
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %124, %36
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %127

41:                                               ; preds = %37
  %42 = load %struct.argument*, %struct.argument** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.argument, %struct.argument* %42, i64 %44
  %46 = bitcast %struct.argument* %10 to i8*
  %47 = bitcast %struct.argument* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 %47, i64 32, i1 false)
  %48 = getelementptr inbounds %struct.argument, %struct.argument* %10, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @AT_VALUE, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %41
  %53 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %5, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  br label %128

55:                                               ; preds = %41
  %56 = getelementptr inbounds %struct.argument, %struct.argument* %10, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = call %struct.rmsgpack_dom_value* @rmsgpack_dom_value_map_value(%struct.rmsgpack_dom_value* %6, i32* %57)
  store %struct.rmsgpack_dom_value* %58, %struct.rmsgpack_dom_value** %12, align 8
  %59 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %12, align 8
  %60 = icmp ne %struct.rmsgpack_dom_value* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %55
  store %struct.rmsgpack_dom_value* %11, %struct.rmsgpack_dom_value** %12, align 8
  br label %62

62:                                               ; preds = %61, %55
  %63 = load %struct.argument*, %struct.argument** %8, align 8
  %64 = load i32, i32* %9, align 4
  %65 = add i32 %64, 1
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.argument, %struct.argument* %63, i64 %66
  %68 = bitcast %struct.argument* %10 to i8*
  %69 = bitcast %struct.argument* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %68, i8* align 8 %69, i64 32, i1 false)
  %70 = getelementptr inbounds %struct.argument, %struct.argument* %10, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @AT_VALUE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %89

74:                                               ; preds = %62
  %75 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %12, align 8
  %76 = bitcast %struct.rmsgpack_dom_value* %75 to { i64, i32 }*
  %77 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %76, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call { i64, i32 } @func_equals(i64 %78, i32 %80, i32 1, %struct.argument* %10)
  %82 = bitcast %struct.rmsgpack_dom_value* %13 to { i64, i32 }*
  %83 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %82, i32 0, i32 0
  %84 = extractvalue { i64, i32 } %81, 0
  store i64 %84, i64* %83, align 8
  %85 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %82, i32 0, i32 1
  %86 = extractvalue { i64, i32 } %81, 1
  store i32 %86, i32* %85, align 8
  %87 = bitcast %struct.rmsgpack_dom_value* %5 to i8*
  %88 = bitcast %struct.rmsgpack_dom_value* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %87, i8* align 8 %88, i64 16, i1 false)
  br label %117

89:                                               ; preds = %62
  %90 = getelementptr inbounds %struct.argument, %struct.argument* %10, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  %93 = load i32 (i64, i32, i32, i32)*, i32 (i64, i32, i32, i32)** %92, align 8
  %94 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %12, align 8
  %95 = getelementptr inbounds %struct.argument, %struct.argument* %10, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.argument, %struct.argument* %10, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = bitcast %struct.rmsgpack_dom_value* %94 to { i64, i32 }*
  %104 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %103, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 %93(i64 %105, i32 %107, i32 %98, i32 %102)
  %109 = call { i64, i32 } @query_func_is_true(i32 %108, i32 0, i32* null)
  %110 = bitcast %struct.rmsgpack_dom_value* %14 to { i64, i32 }*
  %111 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %110, i32 0, i32 0
  %112 = extractvalue { i64, i32 } %109, 0
  store i64 %112, i64* %111, align 8
  %113 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %110, i32 0, i32 1
  %114 = extractvalue { i64, i32 } %109, 1
  store i32 %114, i32* %113, align 8
  %115 = bitcast %struct.rmsgpack_dom_value* %5 to i8*
  %116 = bitcast %struct.rmsgpack_dom_value* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %115, i8* align 8 %116, i64 16, i1 false)
  store %struct.rmsgpack_dom_value* null, %struct.rmsgpack_dom_value** %12, align 8
  br label %117

117:                                              ; preds = %89, %74
  %118 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %5, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %117
  br label %127

123:                                              ; preds = %117
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %9, align 4
  %126 = add i32 %125, 2
  store i32 %126, i32* %9, align 4
  br label %37

127:                                              ; preds = %122, %37
  br label %128

128:                                              ; preds = %127, %52
  br label %129

129:                                              ; preds = %128, %35, %27
  %130 = bitcast %struct.rmsgpack_dom_value* %5 to { i64, i32 }*
  %131 = load { i64, i32 }, { i64, i32 }* %130, align 8
  ret { i64, i32 } %131
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.rmsgpack_dom_value* @rmsgpack_dom_value_map_value(%struct.rmsgpack_dom_value*, i32*) #2

declare dso_local { i64, i32 } @func_equals(i64, i32, i32, %struct.argument*) #2

declare dso_local { i64, i32 } @query_func_is_true(i32, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
