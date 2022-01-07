; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_PollingArpWaitTable.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_PollingArpWaitTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_9__ = type { i32, i64, i32, i64 }

@ARP_REQUEST_TIMEOUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PollingArpWaitTable(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %8 = icmp eq %struct.TYPE_8__* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %110

10:                                               ; preds = %1
  store i32* null, i32** %4, align 8
  store i64 0, i64* %3, align 8
  br label %11

11:                                               ; preds = %83, %10
  %12 = load i64, i64* %3, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = call i64 @LIST_NUM(i32* %15)
  %17 = icmp slt i64 %12, %16
  br i1 %17, label %18, label %86

18:                                               ; preds = %11
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* %3, align 8
  %23 = call %struct.TYPE_9__* @LIST_DATA(i32* %21, i64 %22)
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %5, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %40, label %31

31:                                               ; preds = %18
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %34, 100000
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp sgt i32 %35, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %31, %18
  %41 = load i32*, i32** %4, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = call i32* @NewListFast(i32* null)
  store i32* %44, i32** %4, align 8
  br label %45

45:                                               ; preds = %43, %40
  %46 = load i32*, i32** %4, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = call i32 @Add(i32* %46, %struct.TYPE_9__* %47)
  br label %82

49:                                               ; preds = %31
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = icmp slt i64 %52, %56
  br i1 %57, label %58, label %81

58:                                               ; preds = %49
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @VirtualArpSendRequest(%struct.TYPE_8__* %59, i32 %62)
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %67, %70
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @ARP_REQUEST_TIMEOUT, align 8
  %78 = add nsw i64 %76, %77
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 3
  store i64 %78, i64* %80, align 8
  br label %81

81:                                               ; preds = %58, %49
  br label %82

82:                                               ; preds = %81, %45
  br label %83

83:                                               ; preds = %82
  %84 = load i64, i64* %3, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %3, align 8
  br label %11

86:                                               ; preds = %11
  %87 = load i32*, i32** %4, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %110

89:                                               ; preds = %86
  store i64 0, i64* %3, align 8
  br label %90

90:                                               ; preds = %104, %89
  %91 = load i64, i64* %3, align 8
  %92 = load i32*, i32** %4, align 8
  %93 = call i64 @LIST_NUM(i32* %92)
  %94 = icmp slt i64 %91, %93
  br i1 %94, label %95, label %107

95:                                               ; preds = %90
  %96 = load i32*, i32** %4, align 8
  %97 = load i64, i64* %3, align 8
  %98 = call %struct.TYPE_9__* @LIST_DATA(i32* %96, i64 %97)
  store %struct.TYPE_9__* %98, %struct.TYPE_9__** %6, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @DeleteArpWaitTable(%struct.TYPE_8__* %99, i32 %102)
  br label %104

104:                                              ; preds = %95
  %105 = load i64, i64* %3, align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* %3, align 8
  br label %90

107:                                              ; preds = %90
  %108 = load i32*, i32** %4, align 8
  %109 = call i32 @ReleaseList(i32* %108)
  br label %110

110:                                              ; preds = %9, %107, %86
  ret void
}

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local %struct.TYPE_9__* @LIST_DATA(i32*, i64) #1

declare dso_local i32* @NewListFast(i32*) #1

declare dso_local i32 @Add(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @VirtualArpSendRequest(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @DeleteArpWaitTable(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @ReleaseList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
