; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_master_citus_tools.c_CreateTupleStore.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_master_citus_tools.c_CreateTupleStore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@work_mem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, %struct.TYPE_4__**, i32*, i32*, %struct.TYPE_4__**, i32)* @CreateTupleStore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @CreateTupleStore(i32 %0, %struct.TYPE_4__** %1, i32* %2, i32* %3, %struct.TYPE_4__** %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_4__**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca [4 x i32], align 16
  %16 = alloca [4 x i32], align 16
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_4__*, align 8
  %19 = alloca %struct.TYPE_4__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_4__** %1, %struct.TYPE_4__*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.TYPE_4__** %4, %struct.TYPE_4__*** %11, align 8
  store i32 %5, i32* %12, align 4
  %22 = load i32, i32* @work_mem, align 4
  %23 = call i32* @tuplestore_begin_heap(i32 1, i32 0, i32 %22)
  store i32* %23, i32** %13, align 8
  store i32 0, i32* %14, align 4
  %24 = bitcast [4 x i32]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %24, i8 0, i64 16, i1 false)
  store i32 0, i32* %14, align 4
  br label %25

25:                                               ; preds = %87, %6
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %90

29:                                               ; preds = %25
  store i32* null, i32** %17, align 8
  %30 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %8, align 8
  %31 = load i32, i32* %14, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %30, i64 %32
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  store %struct.TYPE_4__* %34, %struct.TYPE_4__** %18, align 8
  %35 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %11, align 8
  %36 = load i32, i32* %14, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %35, i64 %37
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  store %struct.TYPE_4__* %39, %struct.TYPE_4__** %19, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32* @cstring_to_text_with_len(i32 %42, i32 %45)
  store i32* %46, i32** %20, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32* @cstring_to_text_with_len(i32 %49, i32 %52)
  store i32* %53, i32** %21, align 8
  %54 = load i32*, i32** %20, align 8
  %55 = call i32 @PointerGetDatum(i32* %54)
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  store i32 %55, i32* %56, align 16
  %57 = load i32*, i32** %9, align 8
  %58 = load i32, i32* %14, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @Int32GetDatum(i32 %61)
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 1
  store i32 %62, i32* %63, align 4
  %64 = load i32*, i32** %10, align 8
  %65 = load i32, i32* %14, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @BoolGetDatum(i32 %68)
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 2
  store i32 %69, i32* %70, align 8
  %71 = load i32*, i32** %21, align 8
  %72 = call i32 @PointerGetDatum(i32* %71)
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 3
  store i32 %72, i32* %73, align 4
  %74 = load i32, i32* %7, align 4
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  %76 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %77 = call i32* @heap_form_tuple(i32 %74, i32* %75, i32* %76)
  store i32* %77, i32** %17, align 8
  %78 = load i32*, i32** %13, align 8
  %79 = load i32*, i32** %17, align 8
  %80 = call i32 @tuplestore_puttuple(i32* %78, i32* %79)
  %81 = load i32*, i32** %17, align 8
  %82 = call i32 @heap_freetuple(i32* %81)
  %83 = load i32*, i32** %20, align 8
  %84 = call i32 @pfree(i32* %83)
  %85 = load i32*, i32** %21, align 8
  %86 = call i32 @pfree(i32* %85)
  br label %87

87:                                               ; preds = %29
  %88 = load i32, i32* %14, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %14, align 4
  br label %25

90:                                               ; preds = %25
  %91 = load i32*, i32** %13, align 8
  %92 = call i32 @tuplestore_donestoring(i32* %91)
  %93 = load i32*, i32** %13, align 8
  ret i32* %93
}

declare dso_local i32* @tuplestore_begin_heap(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32* @cstring_to_text_with_len(i32, i32) #1

declare dso_local i32 @PointerGetDatum(i32*) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @BoolGetDatum(i32) #1

declare dso_local i32* @heap_form_tuple(i32, i32*, i32*) #1

declare dso_local i32 @tuplestore_puttuple(i32*, i32*) #1

declare dso_local i32 @heap_freetuple(i32*) #1

declare dso_local i32 @pfree(i32*) #1

declare dso_local i32 @tuplestore_donestoring(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
