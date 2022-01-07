; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_tensor_io.c_ccv_nnc_tensor_read.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_tensor_io.c_ccv_nnc_tensor_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, %struct.TYPE_11__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i8*, i8*, i8* }

@CCV_IO_ERROR = common dso_local global i32 0, align 4
@__const.ccv_nnc_tensor_read.tensor_select_qs = private unnamed_addr constant [71 x i8] c"SELECT data, type, format, datatype, dim FROM tensors WHERE name=$name\00", align 16
@SQLITE_OK = common dso_local global i64 0, align 8
@SQLITE_ROW = common dso_local global i64 0, align 8
@CCV_GARBAGE = common dso_local global i32 0, align 4
@CCV_IO_FINAL = common dso_local global i32 0, align 4
@CCV_TENSOR_CPU_MEMORY = common dso_local global i32 0, align 4
@CCV_TENSOR_GPU_MEMORY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccv_nnc_tensor_read(i8* %0, i8* %1, %struct.TYPE_9__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_9__**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [71 x i8], align 16
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_10__, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_9__** %2, %struct.TYPE_9__*** %7, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @assert(i8* %16)
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %8, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @CCV_IO_ERROR, align 4
  store i32 %23, i32* %4, align 4
  br label %100

24:                                               ; preds = %3
  %25 = bitcast [71 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %25, i8* align 16 getelementptr inbounds ([71 x i8], [71 x i8]* @__const.ccv_nnc_tensor_read.tensor_select_qs, i32 0, i32 0), i64 71, i1 false)
  store i32* null, i32** %10, align 8
  %26 = load i64, i64* @SQLITE_OK, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = getelementptr inbounds [71 x i8], [71 x i8]* %9, i64 0, i64 0
  %29 = call i64 @sqlite3_prepare_v2(i32* %27, i8* %28, i32 71, i32** %10, i32 0)
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @CCV_IO_ERROR, align 4
  store i32 %32, i32* %4, align 4
  br label %100

33:                                               ; preds = %24
  %34 = load i32*, i32** %10, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @sqlite3_bind_text(i32* %34, i32 1, i8* %35, i32 -1, i32 0)
  %37 = load i64, i64* @SQLITE_ROW, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = call i64 @sqlite3_step(i32* %38)
  %40 = icmp ne i64 %37, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* @CCV_IO_ERROR, align 4
  store i32 %42, i32* %4, align 4
  br label %100

43:                                               ; preds = %33
  %44 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  store %struct.TYPE_9__* %45, %struct.TYPE_9__** %11, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %47 = icmp ne %struct.TYPE_9__* %46, null
  br i1 %47, label %69, label %48

48:                                               ; preds = %43
  %49 = load i32*, i32** %10, align 8
  %50 = call i8* @sqlite3_column_int(i32* %49, i32 1)
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 3
  store i8* %50, i8** %51, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = call i8* @sqlite3_column_int(i32* %52, i32 2)
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  store i8* %53, i8** %54, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = call i8* @sqlite3_column_int(i32* %55, i32 3)
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  store i8* %56, i8** %57, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = call i8* @sqlite3_column_blob(i32* %58, i32 4)
  store i8* %59, i8** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i8*, i8** %13, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = call i32 @sqlite3_column_bytes(i32* %63, i32 4)
  %65 = call i32 @ccv_min(i64 4, i32 %64)
  %66 = call i32 @memcpy(i32 %61, i8* %62, i32 %65)
  %67 = call %struct.TYPE_9__* @ccv_nnc_tensor_new(i32 0, %struct.TYPE_10__* byval(%struct.TYPE_10__) align 8 %12, i32 0)
  store %struct.TYPE_9__* %67, %struct.TYPE_9__** %11, align 8
  %68 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  store %struct.TYPE_9__* %67, %struct.TYPE_9__** %68, align 8
  br label %69

69:                                               ; preds = %48, %43
  %70 = load i32*, i32** %10, align 8
  %71 = call i8* @sqlite3_column_blob(i32* %70, i32 0)
  store i8* %71, i8** %14, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @ccv_nnc_tensor_data_size(i32 %75)
  store i64 %76, i64* %15, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i8*, i8** %14, align 8
  %82 = load i64, i64* %15, align 8
  %83 = load i32*, i32** %10, align 8
  %84 = call i32 @sqlite3_column_bytes(i32* %83, i32 0)
  %85 = call i32 @ccv_min(i64 %82, i32 %84)
  %86 = call i32 @memcpy(i32 %80, i8* %81, i32 %85)
  %87 = load i32, i32* @CCV_GARBAGE, align 4
  %88 = xor i32 %87, -1
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, %88
  store i32 %92, i32* %90, align 4
  %93 = load i32*, i32** %10, align 8
  %94 = call i32 @sqlite3_reset(i32* %93)
  %95 = load i32*, i32** %10, align 8
  %96 = call i32 @sqlite3_clear_bindings(i32* %95)
  %97 = load i32*, i32** %10, align 8
  %98 = call i32 @sqlite3_finalize(i32* %97)
  %99 = load i32, i32* @CCV_IO_FINAL, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %69, %41, %31, %22
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @assert(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @sqlite3_prepare_v2(i32*, i8*, i32, i32**, i32) #1

declare dso_local i32 @sqlite3_bind_text(i32*, i32, i8*, i32, i32) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i8* @sqlite3_column_int(i32*, i32) #1

declare dso_local i8* @sqlite3_column_blob(i32*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @ccv_min(i64, i32) #1

declare dso_local i32 @sqlite3_column_bytes(i32*, i32) #1

declare dso_local %struct.TYPE_9__* @ccv_nnc_tensor_new(i32, %struct.TYPE_10__* byval(%struct.TYPE_10__) align 8, i32) #1

declare dso_local i64 @ccv_nnc_tensor_data_size(i32) #1

declare dso_local i32 @sqlite3_reset(i32*) #1

declare dso_local i32 @sqlite3_clear_bindings(i32*) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
