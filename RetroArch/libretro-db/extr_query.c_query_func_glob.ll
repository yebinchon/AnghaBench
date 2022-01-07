; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-db/extr_query.c_query_func_glob.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-db/extr_query.c_query_func_glob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argument = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.rmsgpack_dom_value = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@RDT_BOOL = common dso_local global i64 0, align 8
@AT_VALUE = common dso_local global i64 0, align 8
@RDT_STRING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i64 } (i64, i64, i32, %struct.argument*)* @query_func_glob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @query_func_glob(i64 %0, i64 %1, i32 %2, %struct.argument* %3) #0 {
  %5 = alloca %struct.rmsgpack_dom_value, align 8
  %6 = alloca %struct.rmsgpack_dom_value, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.argument*, align 8
  %9 = alloca i32, align 4
  %10 = bitcast %struct.rmsgpack_dom_value* %6 to { i64, i64 }*
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 0
  store i64 %0, i64* %11, align 8
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 1
  store i64 %1, i64* %12, align 8
  store i32 %2, i32* %7, align 4
  store %struct.argument* %3, %struct.argument** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load i64, i64* @RDT_BOOL, align 8
  %14 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %5, i32 0, i32 0
  store i64 %13, i64* %14, align 8
  %15 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %5, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  br label %62

21:                                               ; preds = %4
  %22 = load %struct.argument*, %struct.argument** %8, align 8
  %23 = getelementptr inbounds %struct.argument, %struct.argument* %22, i64 0
  %24 = getelementptr inbounds %struct.argument, %struct.argument* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @AT_VALUE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %37, label %28

28:                                               ; preds = %21
  %29 = load %struct.argument*, %struct.argument** %8, align 8
  %30 = getelementptr inbounds %struct.argument, %struct.argument* %29, i64 0
  %31 = getelementptr inbounds %struct.argument, %struct.argument* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @RDT_STRING, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %28, %21
  br label %62

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %6, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @RDT_STRING, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %62

44:                                               ; preds = %38
  %45 = load %struct.argument*, %struct.argument** %8, align 8
  %46 = getelementptr inbounds %struct.argument, %struct.argument* %45, i64 0
  %47 = getelementptr inbounds %struct.argument, %struct.argument* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %6, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @rl_fnmatch(i32 %52, i32 %56, i32 0)
  %58 = icmp eq i64 %57, 0
  %59 = zext i1 %58 to i32
  %60 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %5, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  br label %62

62:                                               ; preds = %44, %43, %37, %20
  %63 = bitcast %struct.rmsgpack_dom_value* %5 to { i64, i64 }*
  %64 = load { i64, i64 }, { i64, i64 }* %63, align 8
  ret { i64, i64 } %64
}

declare dso_local i64 @rl_fnmatch(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
