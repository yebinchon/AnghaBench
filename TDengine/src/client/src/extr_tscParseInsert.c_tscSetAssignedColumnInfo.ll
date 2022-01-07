; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscParseInsert.c_tscSetAssignedColumnInfo.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscParseInsert.c_tscSetAssignedColumnInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_7__*, i64)* @tscSetAssignedColumnInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tscSetAssignedColumnInfo(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  store i64 %8, i64* %10, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  store i64 %11, i64* %13, align 8
  store i64 0, i64* %7, align 8
  br label %14

14:                                               ; preds = %56, %3
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %59

18:                                               ; preds = %14
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  store i32 1, i32* %23, align 4
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store i64 %24, i64* %30, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp ugt i64 %31, 0
  br i1 %32, label %33, label %55

33:                                               ; preds = %18
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = sub i64 %37, 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %43 = load i64, i64* %7, align 8
  %44 = sub i64 %43, 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %41, %47
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 3
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = load i64, i64* %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  store i64 %48, i64* %54, align 8
  br label %55

55:                                               ; preds = %33, %18
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %7, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %7, align 8
  br label %14

59:                                               ; preds = %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
