; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-db/extr_query.c_query_func_operator_or.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-db/extr_query.c_query_func_operator_or.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argument = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 (i64, i32, i32, i32)* }
%struct.rmsgpack_dom_value = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64 }

@RDT_BOOL = common dso_local global i32 0, align 4
@AT_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i32 } (i64, i32, i32, %struct.argument*)* @query_func_operator_or to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i32 } @query_func_operator_or(i64 %0, i32 %1, i32 %2, %struct.argument* %3) #0 {
  %5 = alloca %struct.rmsgpack_dom_value, align 8
  %6 = alloca %struct.rmsgpack_dom_value, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.argument*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rmsgpack_dom_value, align 8
  %11 = alloca %struct.rmsgpack_dom_value, align 8
  %12 = bitcast %struct.rmsgpack_dom_value* %6 to { i64, i32 }*
  %13 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 0
  store i64 %0, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 1
  store i32 %1, i32* %14, align 8
  store i32 %2, i32* %7, align 4
  store %struct.argument* %3, %struct.argument** %8, align 8
  %15 = load i32, i32* @RDT_BOOL, align 4
  %16 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %5, i32 0, i32 1
  store i32 %15, i32* %16, align 8
  %17 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %5, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %96, %4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %99

23:                                               ; preds = %19
  %24 = load %struct.argument*, %struct.argument** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.argument, %struct.argument* %24, i64 %26
  %28 = getelementptr inbounds %struct.argument, %struct.argument* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @AT_VALUE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %23
  %33 = load %struct.argument*, %struct.argument** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.argument, %struct.argument* %33, i64 %35
  %37 = bitcast %struct.rmsgpack_dom_value* %6 to { i64, i32 }*
  %38 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %37, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call { i64, i32 } @func_equals(i64 %39, i32 %41, i32 1, %struct.argument* %36)
  %43 = bitcast %struct.rmsgpack_dom_value* %10 to { i64, i32 }*
  %44 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %43, i32 0, i32 0
  %45 = extractvalue { i64, i32 } %42, 0
  store i64 %45, i64* %44, align 8
  %46 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %43, i32 0, i32 1
  %47 = extractvalue { i64, i32 } %42, 1
  store i32 %47, i32* %46, align 8
  %48 = bitcast %struct.rmsgpack_dom_value* %5 to i8*
  %49 = bitcast %struct.rmsgpack_dom_value* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 8 %49, i64 16, i1 false)
  br label %89

50:                                               ; preds = %23
  %51 = load %struct.argument*, %struct.argument** %8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.argument, %struct.argument* %51, i64 %53
  %55 = getelementptr inbounds %struct.argument, %struct.argument* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load i32 (i64, i32, i32, i32)*, i32 (i64, i32, i32, i32)** %57, align 8
  %59 = load %struct.argument*, %struct.argument** %8, align 8
  %60 = load i32, i32* %9, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.argument, %struct.argument* %59, i64 %61
  %63 = getelementptr inbounds %struct.argument, %struct.argument* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.argument*, %struct.argument** %8, align 8
  %68 = load i32, i32* %9, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.argument, %struct.argument* %67, i64 %69
  %71 = getelementptr inbounds %struct.argument, %struct.argument* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = bitcast %struct.rmsgpack_dom_value* %6 to { i64, i32 }*
  %76 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %75, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 %58(i64 %77, i32 %79, i32 %66, i32 %74)
  %81 = call { i64, i32 } @query_func_is_true(i32 %80, i32 0, i32* null)
  %82 = bitcast %struct.rmsgpack_dom_value* %11 to { i64, i32 }*
  %83 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %82, i32 0, i32 0
  %84 = extractvalue { i64, i32 } %81, 0
  store i64 %84, i64* %83, align 8
  %85 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %82, i32 0, i32 1
  %86 = extractvalue { i64, i32 } %81, 1
  store i32 %86, i32* %85, align 8
  %87 = bitcast %struct.rmsgpack_dom_value* %5 to i8*
  %88 = bitcast %struct.rmsgpack_dom_value* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %87, i8* align 8 %88, i64 16, i1 false)
  br label %89

89:                                               ; preds = %50, %32
  %90 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %5, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %100

95:                                               ; preds = %89
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %9, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %9, align 4
  br label %19

99:                                               ; preds = %19
  br label %100

100:                                              ; preds = %99, %94
  %101 = bitcast %struct.rmsgpack_dom_value* %5 to { i64, i32 }*
  %102 = load { i64, i32 }, { i64, i32 }* %101, align 8
  ret { i64, i32 } %102
}

declare dso_local { i64, i32 } @func_equals(i64, i32, i32, %struct.argument*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local { i64, i32 } @query_func_is_true(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
