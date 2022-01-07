; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParserImpl.c_tVariantListAppend.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParserImpl.c_tVariantListAppend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @tVariantListAppend(%struct.TYPE_9__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %10 = icmp eq %struct.TYPE_9__* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = call %struct.TYPE_9__* @calloc(i32 1, i32 16)
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %5, align 8
  br label %13

13:                                               ; preds = %11, %3
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %15 = call i32* @tVariantListExpand(%struct.TYPE_9__* %14)
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %4, align 8
  br label %40

19:                                               ; preds = %13
  %20 = load i32*, i32** %6, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %38

22:                                               ; preds = %19
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i64 %30
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %8, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @memcpy(%struct.TYPE_8__* %32, i32* %33, i32 4)
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %22, %19
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %39, %struct.TYPE_9__** %4, align 8
  br label %40

40:                                               ; preds = %38, %17
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  ret %struct.TYPE_9__* %41
}

declare dso_local %struct.TYPE_9__* @calloc(i32, i32) #1

declare dso_local i32* @tVariantListExpand(%struct.TYPE_9__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_8__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
