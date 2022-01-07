; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_clock_oldops.c_clock_alarm.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_clock_oldops.c_clock_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (i32*)* }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__*, i32, i32, i32, i32, i32, %struct.TYPE_11__* }

@CLOCK_NULL = common dso_local global %struct.TYPE_10__* null, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@clock_list = common dso_local global %struct.TYPE_10__* null, align 8
@SYSTEM_CLOCK = common dso_local global i64 0, align 8
@KERN_FAILURE = common dso_local global i32 0, align 4
@KERN_INVALID_CAPABILITY = common dso_local global i32 0, align 4
@KERN_INVALID_VALUE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@alrmfree = common dso_local global %struct.TYPE_11__* null, align 8
@alarm_zone = common dso_local global i32 0, align 4
@KERN_RESOURCE_SHORTAGE = common dso_local global i32 0, align 4
@ALARM_CLOCK = common dso_local global i32 0, align 4
@alrm_seqno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clock_alarm(%struct.TYPE_10__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** @CLOCK_NULL, align 8
  %19 = icmp eq %struct.TYPE_10__* %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %21, i32* %6, align 4
  br label %114

22:                                               ; preds = %5
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** @clock_list, align 8
  %25 = load i64, i64* @SYSTEM_CLOCK, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i64 %25
  %27 = icmp ne %struct.TYPE_10__* %23, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %29, i32* %6, align 4
  br label %114

30:                                               ; preds = %22
  %31 = load i32, i32* %10, align 4
  %32 = call i64 @IP_VALID(i32 %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @KERN_INVALID_CAPABILITY, align 4
  store i32 %35, i32* %6, align 4
  br label %114

36:                                               ; preds = %30
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32 (i32*)*, i32 (i32*)** %40, align 8
  %42 = call i32 %41(i32* %13)
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @check_time(i32 %43, i32* %9, i32* %13)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp sle i32 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %36
  %48 = load i32, i32* %14, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* @KERN_INVALID_VALUE, align 4
  br label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @KERN_SUCCESS, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @clock_alarm_reply(i32 %56, i32 %57, i32 %58, i32 %59, i32 %60)
  %62 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %62, i32* %6, align 4
  br label %114

63:                                               ; preds = %36
  %64 = load i32, i32* %16, align 4
  %65 = call i32 @LOCK_ALARM(i32 %64)
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** @alrmfree, align 8
  store %struct.TYPE_11__* %66, %struct.TYPE_11__** %12, align 8
  %67 = icmp eq %struct.TYPE_11__* %66, null
  br i1 %67, label %68, label %81

68:                                               ; preds = %63
  %69 = load i32, i32* %16, align 4
  %70 = call i32 @UNLOCK_ALARM(i32 %69)
  %71 = load i32, i32* @alarm_zone, align 4
  %72 = call i64 @zalloc(i32 %71)
  %73 = inttoptr i64 %72 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %73, %struct.TYPE_11__** %12, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %75 = icmp eq %struct.TYPE_11__* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %68
  %77 = load i32, i32* @KERN_RESOURCE_SHORTAGE, align 4
  store i32 %77, i32* %6, align 4
  br label %114

78:                                               ; preds = %68
  %79 = load i32, i32* %16, align 4
  %80 = call i32 @LOCK_ALARM(i32 %79)
  br label %85

81:                                               ; preds = %63
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 7
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  store %struct.TYPE_11__* %84, %struct.TYPE_11__** @alrmfree, align 8
  br label %85

85:                                               ; preds = %81, %78
  %86 = load i32, i32* @ALARM_CLOCK, align 4
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 6
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 5
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 4
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* %10, align 4
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* %11, align 4
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 1
  store %struct.TYPE_10__* %101, %struct.TYPE_10__** %103, align 8
  %104 = load i32, i32* @alrm_seqno, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* @alrm_seqno, align 4
  %106 = sext i32 %104 to i64
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  store i64 %106, i64* %108, align 8
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %110 = call i32 @post_alarm(%struct.TYPE_11__* %109)
  %111 = load i32, i32* %16, align 4
  %112 = call i32 @UNLOCK_ALARM(i32 %111)
  %113 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %85, %76, %54, %34, %28, %20
  %115 = load i32, i32* %6, align 4
  ret i32 %115
}

declare dso_local i64 @IP_VALID(i32) #1

declare dso_local i32 @check_time(i32, i32*, i32*) #1

declare dso_local i32 @clock_alarm_reply(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LOCK_ALARM(i32) #1

declare dso_local i32 @UNLOCK_ALARM(i32) #1

declare dso_local i64 @zalloc(i32) #1

declare dso_local i32 @post_alarm(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
