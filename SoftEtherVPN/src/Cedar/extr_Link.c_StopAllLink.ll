; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Link.c_StopAllLink.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Link.c_StopAllLink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @StopAllLink(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_8__**, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %7 = icmp eq %struct.TYPE_9__* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %67

9:                                                ; preds = %1
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @LockList(i32 %14)
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.TYPE_8__** @ToArray(i32 %18)
  store %struct.TYPE_8__** %19, %struct.TYPE_8__*** %3, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @LIST_NUM(i32 %22)
  store i64 %23, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %24

24:                                               ; preds = %36, %9
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %24
  %29 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %3, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %29, i64 %30
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @AddRef(i32 %34)
  br label %36

36:                                               ; preds = %28
  %37 = load i64, i64* %5, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %5, align 8
  br label %24

39:                                               ; preds = %24
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @UnlockList(i32 %42)
  store i64 0, i64* %5, align 8
  br label %44

44:                                               ; preds = %59, %39
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* %4, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %44
  %49 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %3, align 8
  %50 = load i64, i64* %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %49, i64 %50
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = call i32 @StopLink(%struct.TYPE_8__* %52)
  %54 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %3, align 8
  %55 = load i64, i64* %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %54, i64 %55
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = call i32 @ReleaseLink(%struct.TYPE_8__* %57)
  br label %59

59:                                               ; preds = %48
  %60 = load i64, i64* %5, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %5, align 8
  br label %44

62:                                               ; preds = %44
  %63 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %3, align 8
  %64 = call i32 @Free(%struct.TYPE_8__** %63)
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  store i32 0, i32* %66, align 4
  br label %67

67:                                               ; preds = %62, %8
  ret void
}

declare dso_local i32 @LockList(i32) #1

declare dso_local %struct.TYPE_8__** @ToArray(i32) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local i32 @AddRef(i32) #1

declare dso_local i32 @UnlockList(i32) #1

declare dso_local i32 @StopLink(%struct.TYPE_8__*) #1

declare dso_local i32 @ReleaseLink(%struct.TYPE_8__*) #1

declare dso_local i32 @Free(%struct.TYPE_8__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
