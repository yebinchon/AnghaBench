; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_clock_oldops.c_clock_sleep_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_clock_oldops.c_clock_sleep_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (i32*)* }
%struct.TYPE_13__ = type { i64, %struct.TYPE_13__*, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_13__* }

@CLOCK_NULL = common dso_local global %struct.TYPE_12__* null, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@clock_list = common dso_local global %struct.TYPE_12__* null, align 8
@SYSTEM_CLOCK = common dso_local global i64 0, align 8
@KERN_FAILURE = common dso_local global i32 0, align 4
@KERN_INVALID_VALUE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@alrmfree = common dso_local global %struct.TYPE_13__* null, align 8
@alarm_zone = common dso_local global i32 0, align 4
@KERN_RESOURCE_SHORTAGE = common dso_local global i32 0, align 4
@THREAD_ABORTSAFE = common dso_local global i32 0, align 4
@THREAD_WAITING = common dso_local global i64 0, align 8
@ALARM_SLEEP = common dso_local global i64 0, align 8
@THREAD_CONTINUE_NULL = common dso_local global i32 0, align 4
@ALARM_DONE = common dso_local global i64 0, align 8
@THREAD_AWAKENED = common dso_local global i64 0, align 8
@KERN_ABORTED = common dso_local global i32 0, align 4
@ALARM_FREE = common dso_local global i64 0, align 8
@THREAD_INTERRUPTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32, i32*)* @clock_sleep_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clock_sleep_internal(%struct.TYPE_12__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** @CLOCK_NULL, align 8
  %16 = icmp eq %struct.TYPE_12__* %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %18, i32* %4, align 4
  br label %154

19:                                               ; preds = %3
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** @clock_list, align 8
  %22 = load i64, i64* @SYSTEM_CLOCK, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i64 %22
  %24 = icmp ne %struct.TYPE_12__* %20, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %26, i32* %4, align 4
  br label %154

27:                                               ; preds = %19
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32 (i32*)*, i32 (i32*)** %31, align 8
  %33 = call i32 %32(i32* %9)
  %34 = load i32, i32* %6, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @check_time(i32 %34, i32* %35, i32* %9)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %27
  %40 = load i32, i32* @KERN_INVALID_VALUE, align 4
  store i32 %40, i32* %4, align 4
  br label %154

41:                                               ; preds = %27
  %42 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %149

45:                                               ; preds = %41
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @LOCK_ALARM(i32 %46)
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** @alrmfree, align 8
  store %struct.TYPE_13__* %48, %struct.TYPE_13__** %8, align 8
  %49 = icmp eq %struct.TYPE_13__* %48, null
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @UNLOCK_ALARM(i32 %51)
  %53 = load i32, i32* @alarm_zone, align 4
  %54 = call i64 @zalloc(i32 %53)
  %55 = inttoptr i64 %54 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %55, %struct.TYPE_13__** %8, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %57 = icmp eq %struct.TYPE_13__* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i32, i32* @KERN_RESOURCE_SHORTAGE, align 4
  store i32 %59, i32* %4, align 4
  br label %154

60:                                               ; preds = %50
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @LOCK_ALARM(i32 %61)
  br label %67

63:                                               ; preds = %45
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %65, align 8
  store %struct.TYPE_13__* %66, %struct.TYPE_13__** @alrmfree, align 8
  br label %67

67:                                               ; preds = %63, %60
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %69 = ptrtoint %struct.TYPE_13__* %68 to i32
  %70 = load i32, i32* @THREAD_ABORTSAFE, align 4
  %71 = call i64 @assert_wait(i32 %69, i32 %70)
  store i64 %71, i64* %13, align 8
  %72 = load i64, i64* %13, align 8
  %73 = load i64, i64* @THREAD_WAITING, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %128

75:                                               ; preds = %67
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load i64, i64* @ALARM_SLEEP, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %84 = call i32 @post_alarm(%struct.TYPE_13__* %83)
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @UNLOCK_ALARM(i32 %85)
  %87 = load i32, i32* @THREAD_CONTINUE_NULL, align 4
  %88 = call i64 @thread_block(i32 %87)
  store i64 %88, i64* %13, align 8
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @LOCK_ALARM(i32 %89)
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @ALARM_DONE, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %120

96:                                               ; preds = %75
  %97 = load i64, i64* %13, align 8
  %98 = load i64, i64* @THREAD_AWAKENED, align 8
  %99 = icmp ne i64 %97, %98
  %100 = zext i1 %99 to i32
  %101 = call i32 @assert(i32 %100)
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %103, align 8
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 3
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  store %struct.TYPE_13__* %104, %struct.TYPE_13__** %108, align 8
  %109 = icmp ne %struct.TYPE_13__* %104, null
  br i1 %109, label %110, label %118

110:                                              ; preds = %96
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 3
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %112, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 3
  store %struct.TYPE_11__* %113, %struct.TYPE_11__** %117, align 8
  br label %118

118:                                              ; preds = %110, %96
  %119 = load i32, i32* @KERN_ABORTED, align 4
  store i32 %119, i32* %10, align 4
  br label %120

120:                                              ; preds = %118, %75
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32*, i32** %7, align 8
  store i32 %123, i32* %124, align 4
  %125 = load i64, i64* @ALARM_FREE, align 8
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  store i64 %125, i64* %127, align 8
  br label %142

128:                                              ; preds = %67
  %129 = load i64, i64* %13, align 8
  %130 = load i64, i64* @THREAD_INTERRUPTED, align 8
  %131 = icmp eq i64 %129, %130
  %132 = zext i1 %131 to i32
  %133 = call i32 @assert(i32 %132)
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @ALARM_FREE, align 8
  %138 = icmp eq i64 %136, %137
  %139 = zext i1 %138 to i32
  %140 = call i32 @assert(i32 %139)
  %141 = load i32, i32* @KERN_ABORTED, align 4
  store i32 %141, i32* %10, align 4
  br label %142

142:                                              ; preds = %128, %120
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** @alrmfree, align 8
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 1
  store %struct.TYPE_13__* %143, %struct.TYPE_13__** %145, align 8
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %146, %struct.TYPE_13__** @alrmfree, align 8
  %147 = load i32, i32* %12, align 4
  %148 = call i32 @UNLOCK_ALARM(i32 %147)
  br label %152

149:                                              ; preds = %41
  %150 = load i32, i32* %9, align 4
  %151 = load i32*, i32** %7, align 8
  store i32 %150, i32* %151, align 4
  br label %152

152:                                              ; preds = %149, %142
  %153 = load i32, i32* %10, align 4
  store i32 %153, i32* %4, align 4
  br label %154

154:                                              ; preds = %152, %58, %39, %25, %17
  %155 = load i32, i32* %4, align 4
  ret i32 %155
}

declare dso_local i32 @check_time(i32, i32*, i32*) #1

declare dso_local i32 @LOCK_ALARM(i32) #1

declare dso_local i32 @UNLOCK_ALARM(i32) #1

declare dso_local i64 @zalloc(i32) #1

declare dso_local i64 @assert_wait(i32, i32) #1

declare dso_local i32 @post_alarm(%struct.TYPE_13__*) #1

declare dso_local i64 @thread_block(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
