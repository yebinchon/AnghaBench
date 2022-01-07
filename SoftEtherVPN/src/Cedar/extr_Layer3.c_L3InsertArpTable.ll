; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Layer3.c_L3InsertArpTable.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Layer3.c_L3InsertArpTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i64, i32 }

@ARP_ENTRY_EXPIRES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @L3InsertArpTable(%struct.TYPE_11__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_12__, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %10 = icmp eq %struct.TYPE_11__* %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i32*, i32** %6, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %14, %11, %3
  br label %57

21:                                               ; preds = %17
  %22 = call i32 @Zero(%struct.TYPE_12__* %8, i32 24)
  %23 = load i32, i32* %5, align 4
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  store i32 %23, i32* %24, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.TYPE_12__* @Search(i32 %27, %struct.TYPE_12__* %8)
  store %struct.TYPE_12__* %28, %struct.TYPE_12__** %7, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %30 = icmp eq %struct.TYPE_12__* %29, null
  br i1 %30, label %31, label %46

31:                                               ; preds = %21
  %32 = call %struct.TYPE_12__* @ZeroMalloc(i32 24)
  store %struct.TYPE_12__* %32, %struct.TYPE_12__** %7, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @Copy(i32 %38, i32* %39, i32 6)
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %45 = call i32 @Insert(i32 %43, %struct.TYPE_12__* %44)
  br label %46

46:                                               ; preds = %31, %21
  %47 = call i64 (...) @Tick64()
  %48 = load i64, i64* @ARP_ENTRY_EXPIRES, align 8
  %49 = add nsw i64 %47, %48
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %56 = call i32 @L3SendWaitingIp(%struct.TYPE_11__* %52, i32* %53, i32 %54, %struct.TYPE_12__* %55)
  br label %57

57:                                               ; preds = %46, %20
  ret void
}

declare dso_local i32 @Zero(%struct.TYPE_12__*, i32) #1

declare dso_local %struct.TYPE_12__* @Search(i32, %struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @ZeroMalloc(i32) #1

declare dso_local i32 @Copy(i32, i32*, i32) #1

declare dso_local i32 @Insert(i32, %struct.TYPE_12__*) #1

declare dso_local i64 @Tick64(...) #1

declare dso_local i32 @L3SendWaitingIp(%struct.TYPE_11__*, i32*, i32, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
