; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-db/extr_query.c_query_parse_integer.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-db/extr_query.c_query_parse_integer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmsgpack_dom_value = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.buffer = type { i32, i64* }

@RDT_INT = common dso_local global i32 0, align 4
@STRING_REP_INT64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i32, i64* } (i32, i64*, %struct.rmsgpack_dom_value*, i8**)* @query_parse_integer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i32, i64* } @query_parse_integer(i32 %0, i64* %1, %struct.rmsgpack_dom_value* %2, i8** %3) #0 {
  %5 = alloca %struct.buffer, align 8
  %6 = alloca %struct.buffer, align 8
  %7 = alloca %struct.rmsgpack_dom_value*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = bitcast %struct.buffer* %6 to { i32, i64* }*
  %11 = getelementptr inbounds { i32, i64* }, { i32, i64* }* %10, i32 0, i32 0
  store i32 %0, i32* %11, align 8
  %12 = getelementptr inbounds { i32, i64* }, { i32, i64* }* %10, i32 0, i32 1
  store i64* %1, i64** %12, align 8
  store %struct.rmsgpack_dom_value* %2, %struct.rmsgpack_dom_value** %7, align 8
  store i8** %3, i8*** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* @RDT_INT, align 4
  %14 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %7, align 8
  %15 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %17, i64 %20
  %22 = load i32, i32* @STRING_REP_INT64, align 4
  %23 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %7, align 8
  %24 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i64 @sscanf(i64* %21, i32 %22, i32* %25)
  %27 = icmp eq i64 %26, 0
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %4
  %32 = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i8**, i8*** %8, align 8
  %35 = call i32 @query_raise_expected_number(i32 %33, i8** %34)
  br label %53

36:                                               ; preds = %4
  br label %37

37:                                               ; preds = %48, %36
  %38 = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %39, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i64 @isdigit(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %37
  %49 = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 8
  br label %37

52:                                               ; preds = %37
  br label %53

53:                                               ; preds = %52, %31
  %54 = bitcast %struct.buffer* %5 to i8*
  %55 = bitcast %struct.buffer* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %54, i8* align 8 %55, i64 16, i1 false)
  %56 = bitcast %struct.buffer* %5 to { i32, i64* }*
  %57 = load { i32, i64* }, { i32, i64* }* %56, align 8
  ret { i32, i64* } %57
}

declare dso_local i64 @sscanf(i64*, i32, i32*) #1

declare dso_local i32 @query_raise_expected_number(i32, i8**) #1

declare dso_local i64 @isdigit(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
