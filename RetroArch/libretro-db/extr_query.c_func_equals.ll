; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-db/extr_query.c_func_equals.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-db/extr_query.c_func_equals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argument = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.rmsgpack_dom_value = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@RDT_BOOL = common dso_local global i64 0, align 8
@AT_VALUE = common dso_local global i64 0, align 8
@RDT_UINT = common dso_local global i64 0, align 8
@RDT_INT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i32 } (i64, i32, i32, %struct.argument*)* @func_equals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i32 } @func_equals(i64 %0, i32 %1, i32 %2, %struct.argument* %3) #0 {
  %5 = alloca %struct.rmsgpack_dom_value, align 8
  %6 = alloca %struct.rmsgpack_dom_value, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.argument*, align 8
  %9 = alloca %struct.argument, align 8
  %10 = bitcast %struct.rmsgpack_dom_value* %6 to { i64, i32 }*
  %11 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 0
  store i64 %0, i64* %11, align 8
  %12 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 1
  store i32 %1, i32* %12, align 8
  store i32 %2, i32* %7, align 4
  store %struct.argument* %3, %struct.argument** %8, align 8
  %13 = load i64, i64* @RDT_BOOL, align 8
  %14 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %5, i32 0, i32 0
  store i64 %13, i64* %14, align 8
  %15 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %5, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %66

19:                                               ; preds = %4
  %20 = load %struct.argument*, %struct.argument** %8, align 8
  %21 = getelementptr inbounds %struct.argument, %struct.argument* %20, i64 0
  %22 = bitcast %struct.argument* %9 to i8*
  %23 = bitcast %struct.argument* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 24, i1 false)
  %24 = getelementptr inbounds %struct.argument, %struct.argument* %9, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @AT_VALUE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %5, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  br label %65

31:                                               ; preds = %19
  %32 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %6, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @RDT_UINT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %57

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.argument, %struct.argument* %9, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @RDT_INT, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %36
  %44 = load i64, i64* @RDT_UINT, align 8
  %45 = getelementptr inbounds %struct.argument, %struct.argument* %9, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  store i64 %44, i64* %47, align 8
  %48 = getelementptr inbounds %struct.argument, %struct.argument* %9, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds %struct.argument, %struct.argument* %9, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  store i32 %52, i32* %56, align 4
  br label %57

57:                                               ; preds = %43, %36, %31
  %58 = getelementptr inbounds %struct.argument, %struct.argument* %9, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = call i64 @rmsgpack_dom_value_cmp(%struct.rmsgpack_dom_value* %6, %struct.TYPE_8__* %59)
  %61 = icmp eq i64 %60, 0
  %62 = zext i1 %61 to i32
  %63 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %5, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  br label %65

65:                                               ; preds = %57, %28
  br label %66

66:                                               ; preds = %65, %4
  %67 = bitcast %struct.rmsgpack_dom_value* %5 to { i64, i32 }*
  %68 = load { i64, i32 }, { i64, i32 }* %67, align 8
  ret { i64, i32 } %68
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @rmsgpack_dom_value_cmp(%struct.rmsgpack_dom_value*, %struct.TYPE_8__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
