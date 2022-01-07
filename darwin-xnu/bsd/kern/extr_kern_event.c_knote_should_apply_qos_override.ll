; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_knote_should_apply_qos_override.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_knote_should_apply_qos_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kqueue = type { i32 }
%struct.knote = type { i64, i32, i32, i64, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@FILTER_ADJUST_EVENT_QOS_SHIFT = common dso_local global i32 0, align 4
@FILTER_ADJUST_EVENT_QOS_BIT = common dso_local global i32 0, align 4
@THREAD_QOS_LAST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"filter %d cannot change QoS\00", align 1
@KQ_WORKLOOP = common dso_local global i32 0, align 4
@KQWL_BUCKET_STAYACTIVE = common dso_local global i64 0, align 8
@KQ_WORKQ = common dso_local global i32 0, align 4
@KQWQ_QOS_MANAGER = common dso_local global i64 0, align 8
@_PTHREAD_PRIORITY_FALLBACK_FLAG = common dso_local global i32 0, align 4
@THREAD_QOS_UNSPECIFIED = common dso_local global i64 0, align 8
@KN_MERGE_QOS = common dso_local global i32 0, align 4
@KN_LOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kqueue*, %struct.knote*, i32, i64*)* @knote_should_apply_qos_override to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @knote_should_apply_qos_override(%struct.kqueue* %0, %struct.knote* %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kqueue*, align 8
  %7 = alloca %struct.knote*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  store %struct.kqueue* %0, %struct.kqueue** %6, align 8
  store %struct.knote* %1, %struct.knote** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @FILTER_ADJUST_EVENT_QOS_SHIFT, align 4
  %13 = ashr i32 %11, %12
  %14 = and i32 %13, 7
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %10, align 8
  %16 = load %struct.kqueue*, %struct.kqueue** %6, align 8
  %17 = call i32 @kqlock_held(%struct.kqueue* %16)
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @FILTER_ADJUST_EVENT_QOS_BIT, align 4
  %20 = and i32 %18, %19
  %21 = call i32 @assert(i32 %20)
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* @THREAD_QOS_LAST, align 8
  %24 = icmp slt i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.knote*, %struct.knote** %7, align 8
  %28 = call %struct.TYPE_2__* @knote_fops(%struct.knote* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @__improbable(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %4
  %37 = load %struct.knote*, %struct.knote** %7, align 8
  %38 = getelementptr inbounds %struct.knote, %struct.knote* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %74

41:                                               ; preds = %4
  %42 = load %struct.kqueue*, %struct.kqueue** %6, align 8
  %43 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @KQ_WORKLOOP, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %41
  %49 = load %struct.knote*, %struct.knote** %7, align 8
  %50 = getelementptr inbounds %struct.knote, %struct.knote* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @KQWL_BUCKET_STAYACTIVE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %143

55:                                               ; preds = %48
  br label %73

56:                                               ; preds = %41
  %57 = load %struct.kqueue*, %struct.kqueue** %6, align 8
  %58 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @KQ_WORKQ, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %56
  %64 = load %struct.knote*, %struct.knote** %7, align 8
  %65 = getelementptr inbounds %struct.knote, %struct.knote* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @KQWQ_QOS_MANAGER, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store i32 0, i32* %5, align 4
  br label %143

70:                                               ; preds = %63
  br label %72

71:                                               ; preds = %56
  store i32 0, i32* %5, align 4
  br label %143

72:                                               ; preds = %70
  br label %73

73:                                               ; preds = %72, %55
  br label %74

74:                                               ; preds = %73, %36
  %75 = load %struct.knote*, %struct.knote** %7, align 8
  %76 = getelementptr inbounds %struct.knote, %struct.knote* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @_PTHREAD_PRIORITY_FALLBACK_FLAG, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %74
  %82 = load i64, i64* %10, align 8
  %83 = load i64, i64* @THREAD_QOS_UNSPECIFIED, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load %struct.knote*, %struct.knote** %7, align 8
  %87 = getelementptr inbounds %struct.knote, %struct.knote* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %10, align 8
  br label %89

89:                                               ; preds = %85, %81
  br label %101

90:                                               ; preds = %74
  %91 = load i64, i64* %10, align 8
  %92 = load %struct.knote*, %struct.knote** %7, align 8
  %93 = getelementptr inbounds %struct.knote, %struct.knote* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp slt i64 %91, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load %struct.knote*, %struct.knote** %7, align 8
  %98 = getelementptr inbounds %struct.knote, %struct.knote* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %10, align 8
  br label %100

100:                                              ; preds = %96, %90
  br label %101

101:                                              ; preds = %100, %89
  %102 = load %struct.knote*, %struct.knote** %7, align 8
  %103 = getelementptr inbounds %struct.knote, %struct.knote* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @KN_MERGE_QOS, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %101
  %109 = load i64, i64* %10, align 8
  %110 = load %struct.knote*, %struct.knote** %7, align 8
  %111 = getelementptr inbounds %struct.knote, %struct.knote* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = icmp slt i64 %109, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  store i32 0, i32* %5, align 4
  br label %143

115:                                              ; preds = %108, %101
  %116 = load %struct.knote*, %struct.knote** %7, align 8
  %117 = getelementptr inbounds %struct.knote, %struct.knote* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @KN_LOCKED, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %133

122:                                              ; preds = %115
  %123 = load %struct.knote*, %struct.knote** %7, align 8
  %124 = getelementptr inbounds %struct.knote, %struct.knote* %123, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %122
  %128 = load i32, i32* @KN_MERGE_QOS, align 4
  %129 = load %struct.knote*, %struct.knote** %7, align 8
  %130 = getelementptr inbounds %struct.knote, %struct.knote* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %127, %122, %115
  %134 = load %struct.knote*, %struct.knote** %7, align 8
  %135 = getelementptr inbounds %struct.knote, %struct.knote* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* %10, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %133
  store i32 0, i32* %5, align 4
  br label %143

140:                                              ; preds = %133
  %141 = load i64, i64* %10, align 8
  %142 = load i64*, i64** %9, align 8
  store i64 %141, i64* %142, align 8
  store i32 1, i32* %5, align 4
  br label %143

143:                                              ; preds = %140, %139, %114, %71, %69, %54
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

declare dso_local i32 @kqlock_held(%struct.kqueue*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @__improbable(i32) #1

declare dso_local %struct.TYPE_2__* @knote_fops(%struct.knote*) #1

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
