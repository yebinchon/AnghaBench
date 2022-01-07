; ModuleID = '/home/carl/AnghaBench/esp-idf/components/heap/extr_multi_heap.c_multi_heap_register_impl.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/heap/extr_multi_heap.c_multi_heap_register_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, %struct.TYPE_6__, %struct.TYPE_8__*, i32* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_8__* }

@BLOCK_FREE_FLAG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @multi_heap_register_impl(i8* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = ptrtoint i8* %10 to i64
  %12 = call i64 @ALIGN_UP(i64 %11)
  store i64 %12, i64* %6, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = ptrtoint i8* %13 to i64
  %15 = load i64, i64* %5, align 8
  %16 = add i64 %14, %15
  %17 = call i64 @ALIGN(i64 %16)
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %6, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %8, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %6, align 8
  %22 = sub i64 %20, %21
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i64, i64* %5, align 8
  %28 = icmp ult i64 %27, 80
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %2
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %86

30:                                               ; preds = %26
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 4
  store i32* null, i32** %32, align 8
  %33 = load i64, i64* %7, align 8
  %34 = sub i64 %33, 16
  %35 = inttoptr i64 %34 to %struct.TYPE_8__*
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 3
  store %struct.TYPE_8__* %35, %struct.TYPE_8__** %37, align 8
  %38 = load i64, i64* %6, align 8
  %39 = add i64 %38, 48
  %40 = inttoptr i64 %39 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %9, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = ptrtoint %struct.TYPE_8__* %43 to i64
  %45 = load i64, i64* @BLOCK_FREE_FLAG, align 8
  %46 = or i64 %44, %45
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 3
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  store %struct.TYPE_8__* %51, %struct.TYPE_8__** %53, align 8
  %54 = load i64, i64* @BLOCK_FREE_FLAG, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 3
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  store i64 %54, i64* %58, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %62, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %64 = ptrtoint %struct.TYPE_8__* %63 to i64
  %65 = load i64, i64* @BLOCK_FREE_FLAG, align 8
  %66 = or i64 %64, %65
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i64 %66, i64* %69, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  store %struct.TYPE_8__* %70, %struct.TYPE_8__** %73, align 8
  %74 = load i64, i64* %5, align 8
  %75 = sub i64 %74, 48
  %76 = sub i64 %75, 8
  %77 = sub i64 %76, 16
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %85, %struct.TYPE_7__** %3, align 8
  br label %86

86:                                               ; preds = %30, %29
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %87
}

declare dso_local i64 @ALIGN_UP(i64) #1

declare dso_local i64 @ALIGN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
