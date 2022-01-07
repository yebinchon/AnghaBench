; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParserImpl.c_tSetCreateSQLElems.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParserImpl.c_tSetCreateSQLElems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_6__ = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @tSetCreateSQLElems(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = call %struct.TYPE_8__* @calloc(i32 1, i32 40)
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %13, align 8
  %15 = load i32, i32* %12, align 4
  switch i32 %15, label %65 [
    i32 130, label %16
    i32 129, label %30
    i32 131, label %51
    i32 128, label %61
  ]

16:                                               ; preds = %6
  %17 = load i32*, i32** %7, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  store i32* %17, i32** %20, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32*, i32** %8, align 8
  %25 = icmp eq i32* %24, null
  br label %26

26:                                               ; preds = %23, %16
  %27 = phi i1 [ false, %16 ], [ %25, %23 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  br label %67

30:                                               ; preds = %6
  %31 = load i32*, i32** %7, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  store i32* %31, i32** %34, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i32* %35, i32** %38, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %30
  %42 = load i32*, i32** %8, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32*, i32** %7, align 8
  %46 = icmp ne i32* %45, null
  br label %47

47:                                               ; preds = %44, %41, %30
  %48 = phi i1 [ false, %41 ], [ false, %30 ], [ %46, %44 ]
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  br label %67

51:                                               ; preds = %6
  %52 = load i32*, i32** %10, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  store i32* %52, i32** %55, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  br label %67

61:                                               ; preds = %6
  %62 = load i32*, i32** %11, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  store i32* %62, i32** %64, align 8
  br label %67

65:                                               ; preds = %6
  %66 = call i32 @assert(i32 0)
  br label %67

67:                                               ; preds = %65, %61, %51, %47, %26
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  ret %struct.TYPE_8__* %68
}

declare dso_local %struct.TYPE_8__* @calloc(i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
