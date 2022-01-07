; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-db/extr_query.c_libretrodb_query_filter.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-db/extr_query.c_libretrodb_query_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmsgpack_dom_value = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.invocation = type { i32, i32, { i64, i64 } (i64, i64, i32, i32)* }
%struct.query = type { %struct.invocation }

@RDT_BOOL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libretrodb_query_filter(i32* %0, %struct.rmsgpack_dom_value* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.rmsgpack_dom_value*, align 8
  %5 = alloca %struct.invocation, align 8
  %6 = alloca %struct.rmsgpack_dom_value, align 8
  store i32* %0, i32** %3, align 8
  store %struct.rmsgpack_dom_value* %1, %struct.rmsgpack_dom_value** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = bitcast i32* %7 to %struct.query*
  %9 = getelementptr inbounds %struct.query, %struct.query* %8, i32 0, i32 0
  %10 = bitcast %struct.invocation* %5 to i8*
  %11 = bitcast %struct.invocation* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 16, i1 false)
  %12 = getelementptr inbounds %struct.invocation, %struct.invocation* %5, i32 0, i32 2
  %13 = load { i64, i64 } (i64, i64, i32, i32)*, { i64, i64 } (i64, i64, i32, i32)** %12, align 8
  %14 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %4, align 8
  %15 = getelementptr inbounds %struct.invocation, %struct.invocation* %5, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.invocation, %struct.invocation* %5, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = bitcast %struct.rmsgpack_dom_value* %14 to { i64, i64 }*
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %19, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call { i64, i64 } %13(i64 %21, i64 %23, i32 %16, i32 %18)
  %25 = bitcast %struct.rmsgpack_dom_value* %6 to { i64, i64 }*
  %26 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %25, i32 0, i32 0
  %27 = extractvalue { i64, i64 } %24, 0
  store i64 %27, i64* %26, align 8
  %28 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %25, i32 0, i32 1
  %29 = extractvalue { i64, i64 } %24, 1
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %6, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @RDT_BOOL, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %2
  %35 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %6, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %34, %2
  %40 = phi i1 [ false, %2 ], [ %38, %34 ]
  %41 = zext i1 %40 to i32
  ret i32 %41
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
