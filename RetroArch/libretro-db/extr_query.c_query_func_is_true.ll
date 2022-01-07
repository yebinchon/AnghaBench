; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-db/extr_query.c_query_func_is_true.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-db/extr_query.c_query_func_is_true.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argument = type { i32 }
%struct.rmsgpack_dom_value = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@RDT_BOOL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i64 } (i64, i64, i32, %struct.argument*)* @query_func_is_true to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @query_func_is_true(i64 %0, i64 %1, i32 %2, %struct.argument* %3) #0 {
  %5 = alloca %struct.rmsgpack_dom_value, align 8
  %6 = alloca %struct.rmsgpack_dom_value, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.argument*, align 8
  %9 = bitcast %struct.rmsgpack_dom_value* %6 to { i64, i64 }*
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  store i64 %0, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  store i64 %1, i64* %11, align 8
  store i32 %2, i32* %7, align 4
  store %struct.argument* %3, %struct.argument** %8, align 8
  %12 = load i64, i64* @RDT_BOOL, align 8
  %13 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %5, i32 0, i32 0
  store i64 %12, i64* %13, align 8
  %14 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %5, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* %7, align 4
  %17 = icmp ugt i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %6, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @RDT_BOOL, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %18, %4
  %24 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %5, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  br label %32

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %6, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %5, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %26, %23
  %33 = bitcast %struct.rmsgpack_dom_value* %5 to { i64, i64 }*
  %34 = load { i64, i64 }, { i64, i64 }* %33, align 8
  ret { i64, i64 } %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
