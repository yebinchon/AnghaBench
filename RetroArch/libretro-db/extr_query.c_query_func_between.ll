; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-db/extr_query.c_query_func_between.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-db/extr_query.c_query_func_between.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argument = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.rmsgpack_dom_value = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@RDT_BOOL = common dso_local global i32 0, align 4
@AT_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i32 } (i64, i32, i32, %struct.argument*)* @query_func_between to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i32 } @query_func_between(i64 %0, i32 %1, i32 %2, %struct.argument* %3) #0 {
  %5 = alloca %struct.rmsgpack_dom_value, align 4
  %6 = alloca %struct.rmsgpack_dom_value, align 4
  %7 = alloca { i64, i32 }, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.argument*, align 8
  %10 = alloca i32, align 4
  %11 = alloca { i64, i32 }, align 8
  %12 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 0
  store i64 %0, i64* %12, align 4
  %13 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 1
  store i32 %1, i32* %13, align 4
  %14 = bitcast %struct.rmsgpack_dom_value* %6 to i8*
  %15 = bitcast { i64, i32 }* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 %15, i64 12, i1 false)
  store i32 %2, i32* %8, align 4
  store %struct.argument* %3, %struct.argument** %9, align 8
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* @RDT_BOOL, align 4
  %17 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %5, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %5, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 2
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  br label %119

24:                                               ; preds = %4
  %25 = load %struct.argument*, %struct.argument** %9, align 8
  %26 = getelementptr inbounds %struct.argument, %struct.argument* %25, i64 0
  %27 = getelementptr inbounds %struct.argument, %struct.argument* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @AT_VALUE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %38, label %31

31:                                               ; preds = %24
  %32 = load %struct.argument*, %struct.argument** %9, align 8
  %33 = getelementptr inbounds %struct.argument, %struct.argument* %32, i64 1
  %34 = getelementptr inbounds %struct.argument, %struct.argument* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @AT_VALUE, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %31, %24
  br label %119

39:                                               ; preds = %31
  %40 = load %struct.argument*, %struct.argument** %9, align 8
  %41 = getelementptr inbounds %struct.argument, %struct.argument* %40, i64 0
  %42 = getelementptr inbounds %struct.argument, %struct.argument* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 129
  br i1 %46, label %55, label %47

47:                                               ; preds = %39
  %48 = load %struct.argument*, %struct.argument** %9, align 8
  %49 = getelementptr inbounds %struct.argument, %struct.argument* %48, i64 1
  %50 = getelementptr inbounds %struct.argument, %struct.argument* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 129
  br i1 %54, label %55, label %56

55:                                               ; preds = %47, %39
  br label %119

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %6, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %117 [
    i32 129, label %59
    i32 128, label %88
  ]

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %6, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.argument*, %struct.argument** %9, align 8
  %64 = getelementptr inbounds %struct.argument, %struct.argument* %63, i64 0
  %65 = getelementptr inbounds %struct.argument, %struct.argument* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp sge i32 %62, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %59
  %72 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %6, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.argument*, %struct.argument** %9, align 8
  %76 = getelementptr inbounds %struct.argument, %struct.argument* %75, i64 1
  %77 = getelementptr inbounds %struct.argument, %struct.argument* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp sle i32 %74, %81
  br label %83

83:                                               ; preds = %71, %59
  %84 = phi i1 [ false, %59 ], [ %82, %71 ]
  %85 = zext i1 %84 to i32
  %86 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %5, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  br label %118

88:                                               ; preds = %56
  %89 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %6, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.argument*, %struct.argument** %9, align 8
  %93 = getelementptr inbounds %struct.argument, %struct.argument* %92, i64 0
  %94 = getelementptr inbounds %struct.argument, %struct.argument* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp uge i32 %91, %98
  br i1 %99, label %100, label %112

100:                                              ; preds = %88
  %101 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %6, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.argument*, %struct.argument** %9, align 8
  %105 = getelementptr inbounds %struct.argument, %struct.argument* %104, i64 1
  %106 = getelementptr inbounds %struct.argument, %struct.argument* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp sle i32 %103, %110
  br label %112

112:                                              ; preds = %100, %88
  %113 = phi i1 [ false, %88 ], [ %111, %100 ]
  %114 = zext i1 %113 to i32
  %115 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %5, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 4
  br label %118

117:                                              ; preds = %56
  br label %119

118:                                              ; preds = %112, %83
  br label %119

119:                                              ; preds = %118, %117, %55, %38, %23
  %120 = bitcast { i64, i32 }* %11 to i8*
  %121 = bitcast %struct.rmsgpack_dom_value* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %120, i8* align 4 %121, i64 12, i1 false)
  %122 = load { i64, i32 }, { i64, i32 }* %11, align 8
  ret { i64, i32 } %122
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
