; ModuleID = '/home/carl/AnghaBench/disque/src/extr_queue.c_needJobsForQueue.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_queue.c_needJobsForQueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i8*, i32, i8*, i32, i32 }

@NEEDJOBS_REACHED_ZERO = common dso_local global i32 0, align 4
@NEEDJOBS_MIN_REQUEST = common dso_local global i64 0, align 8
@NEEDJOBS_MAX_REQUEST = common dso_local global i64 0, align 8
@NEEDJOBS_BCAST_ALL_MIN_DELAY = common dso_local global i32 0, align 4
@NEEDJOBS_BCAST_ALL_MAX_DELAY = common dso_local global i8* null, align 8
@server = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@NEEDJOBS_BCAST_ADHOC_MIN_DELAY = common dso_local global i32 0, align 4
@NEEDJOBS_BCAST_ADHOC_MAX_DELAY = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @needJobsForQueue(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %7, align 8
  %11 = call i8* (...) @mstime()
  store i8* %11, i8** %10, align 8
  %12 = call i64 (...) @myselfLeaving()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %136

15:                                               ; preds = %2
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = call i64 @getQueueImportRate(%struct.TYPE_8__* %16)
  store i64 %17, i64* %5, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @NEEDJOBS_REACHED_ZERO, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load i64, i64* %5, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %136

25:                                               ; preds = %21, %15
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = call i64 @getQueueValidResponders(%struct.TYPE_8__* %26)
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* @NEEDJOBS_MIN_REQUEST, align 8
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp ugt i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %7, align 8
  %34 = udiv i64 %32, %33
  store i64 %34, i64* %6, align 8
  br label %35

35:                                               ; preds = %31, %25
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @NEEDJOBS_MIN_REQUEST, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i64, i64* @NEEDJOBS_MIN_REQUEST, align 8
  store i64 %40, i64* %6, align 8
  br label %48

41:                                               ; preds = %35
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @NEEDJOBS_MAX_REQUEST, align 8
  %44 = icmp ugt i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i64, i64* @NEEDJOBS_MAX_REQUEST, align 8
  store i64 %46, i64* %6, align 8
  br label %47

47:                                               ; preds = %45, %41
  br label %48

48:                                               ; preds = %47, %39
  %49 = load i32, i32* @NEEDJOBS_BCAST_ALL_MIN_DELAY, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = shl i32 1, %52
  %54 = mul nsw i32 %49, %53
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  store i8* %56, i8** %8, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = load i8*, i8** @NEEDJOBS_BCAST_ALL_MAX_DELAY, align 8
  %59 = icmp ugt i8* %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %48
  %61 = load i8*, i8** @NEEDJOBS_BCAST_ALL_MAX_DELAY, align 8
  store i8* %61, i8** %8, align 8
  br label %62

62:                                               ; preds = %60, %48
  %63 = load i8*, i8** %10, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = ptrtoint i8* %63 to i64
  %68 = ptrtoint i8* %66 to i64
  %69 = sub i64 %67, %68
  %70 = inttoptr i64 %69 to i8*
  %71 = load i8*, i8** %8, align 8
  %72 = icmp ugt i8* %70, %71
  br i1 %72, label %73, label %88

73:                                               ; preds = %62
  %74 = load i8*, i8** %10, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 0), align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @clusterSendNeedJobs(i32 %83, i64 1, i32 %86)
  br label %88

88:                                               ; preds = %73, %62
  %89 = load i32, i32* @NEEDJOBS_BCAST_ADHOC_MIN_DELAY, align 4
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = shl i32 1, %92
  %94 = mul nsw i32 %89, %93
  %95 = sext i32 %94 to i64
  %96 = inttoptr i64 %95 to i8*
  store i8* %96, i8** %9, align 8
  %97 = load i8*, i8** %9, align 8
  %98 = load i8*, i8** @NEEDJOBS_BCAST_ADHOC_MAX_DELAY, align 8
  %99 = icmp ugt i8* %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %88
  %101 = load i8*, i8** @NEEDJOBS_BCAST_ADHOC_MAX_DELAY, align 8
  store i8* %101, i8** %9, align 8
  br label %102

102:                                              ; preds = %100, %88
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* @NEEDJOBS_REACHED_ZERO, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %117, label %106

106:                                              ; preds = %102
  %107 = load i8*, i8** %10, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 3
  %110 = load i8*, i8** %109, align 8
  %111 = ptrtoint i8* %107 to i64
  %112 = ptrtoint i8* %110 to i64
  %113 = sub i64 %111, %112
  %114 = inttoptr i64 %113 to i8*
  %115 = load i8*, i8** %9, align 8
  %116 = icmp ugt i8* %114, %115
  br i1 %116, label %117, label %136

117:                                              ; preds = %106, %102
  %118 = load i64, i64* %7, align 8
  %119 = icmp ugt i64 %118, 0
  br i1 %119, label %120, label %136

120:                                              ; preds = %117
  %121 = load i8*, i8** %10, align 8
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 3
  store i8* %121, i8** %123, align 8
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 8
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  %131 = load i64, i64* %6, align 8
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @clusterSendNeedJobs(i32 %130, i64 %131, i32 %134)
  br label %136

136:                                              ; preds = %14, %24, %120, %117, %106
  ret void
}

declare dso_local i8* @mstime(...) #1

declare dso_local i64 @myselfLeaving(...) #1

declare dso_local i64 @getQueueImportRate(%struct.TYPE_8__*) #1

declare dso_local i64 @getQueueValidResponders(%struct.TYPE_8__*) #1

declare dso_local i32 @clusterSendNeedJobs(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
