; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParserImpl.c_tSQLSetColumnInfo.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParserImpl.c_tSQLSetColumnInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32, i32, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tSQLSetColumnInfo(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %6, align 8
  store i64 1, i64* %7, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load i64, i64* %7, align 8
  %15 = sub nsw i64 %14, 1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  br label %18

18:                                               ; preds = %13, %3
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %21 = load i64*, i64** %20, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @strncpy(i64* %21, i32 %24, i64 %27)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load i64*, i64** %30, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i64, i64* %31, i64 %34
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  ret void
}

declare dso_local i32 @strncpy(i64*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
