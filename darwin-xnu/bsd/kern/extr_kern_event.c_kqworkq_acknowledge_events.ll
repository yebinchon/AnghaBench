; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqworkq_acknowledge_events.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqworkq_acknowledge_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kqworkq = type { i32 }
%struct.kqrequest = type { i64, i32, i32, i32 }
%struct.knote = type { i32 }

@THREAD_QOS_UNSPECIFIED = common dso_local global i64 0, align 8
@KN_SUPPRESSED = common dso_local global i32 0, align 4
@KN_STAYACTIVE = common dso_local global i32 0, align 4
@KQWQAE_UNBIND = common dso_local global i32 0, align 4
@KEVENT_FLAG_PARKING = common dso_local global i32 0, align 4
@KQWQAE_BEGIN_PROCESSING = common dso_local global i32 0, align 4
@KQR_WAKEUP = common dso_local global i32 0, align 4
@KQR_THREQUESTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kqworkq*, %struct.kqrequest*, i32, i32)* @kqworkq_acknowledge_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kqworkq_acknowledge_events(%struct.kqworkq* %0, %struct.kqrequest* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.kqworkq*, align 8
  %6 = alloca %struct.kqrequest*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.knote*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.kqworkq* %0, %struct.kqworkq** %5, align 8
  store %struct.kqrequest* %1, %struct.kqrequest** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i64, i64* @THREAD_QOS_UNSPECIFIED, align 8
  store i64 %15, i64* %9, align 8
  %16 = load %struct.kqrequest*, %struct.kqrequest** %6, align 8
  %17 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %19 = load %struct.kqworkq*, %struct.kqworkq** %5, align 8
  %20 = getelementptr inbounds %struct.kqworkq, %struct.kqworkq* %19, i32 0, i32 0
  %21 = call i32 @kqlock_held(i32* %20)
  %22 = load %struct.kqrequest*, %struct.kqrequest** %6, align 8
  %23 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %22, i32 0, i32 3
  %24 = call i32 @TAILQ_EMPTY(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %50, label %26

26:                                               ; preds = %4
  br label %27

27:                                               ; preds = %48, %26
  %28 = load %struct.kqrequest*, %struct.kqrequest** %6, align 8
  %29 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %28, i32 0, i32 3
  %30 = call %struct.knote* @TAILQ_FIRST(i32* %29)
  store %struct.knote* %30, %struct.knote** %11, align 8
  %31 = icmp ne %struct.knote* %30, null
  br i1 %31, label %32, label %49

32:                                               ; preds = %27
  %33 = load %struct.knote*, %struct.knote** %11, align 8
  %34 = getelementptr inbounds %struct.knote, %struct.knote* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @KN_SUPPRESSED, align 4
  %37 = and i32 %35, %36
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.knote*, %struct.knote** %11, align 8
  %40 = call i32 @knote_unsuppress(%struct.knote* %39)
  %41 = load %struct.knote*, %struct.knote** %11, align 8
  %42 = getelementptr inbounds %struct.knote, %struct.knote* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @KN_STAYACTIVE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %32
  store i32 1, i32* %13, align 4
  br label %48

48:                                               ; preds = %47, %32
  br label %27

49:                                               ; preds = %27
  br label %50

50:                                               ; preds = %49, %4
  %51 = load %struct.kqworkq*, %struct.kqworkq** %5, align 8
  %52 = call i32 @kq_req_lock(%struct.kqworkq* %51)
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @KQWQAE_UNBIND, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  store i32 1, i32* %14, align 4
  br label %81

57:                                               ; preds = %50
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @KEVENT_FLAG_PARKING, align 4
  %60 = and i32 %58, %59
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i32 0, i32* %14, align 4
  br label %80

63:                                               ; preds = %57
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @KQWQAE_BEGIN_PROCESSING, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 0, i32* %14, align 4
  br label %79

71:                                               ; preds = %67, %63
  %72 = load %struct.kqrequest*, %struct.kqrequest** %6, align 8
  %73 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @KQR_WAKEUP, align 4
  %76 = and i32 %74, %75
  %77 = icmp eq i32 %76, 0
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %14, align 4
  br label %79

79:                                               ; preds = %71, %70
  br label %80

80:                                               ; preds = %79, %62
  br label %81

81:                                               ; preds = %80, %56
  %82 = load i32, i32* %14, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %104

84:                                               ; preds = %81
  %85 = load %struct.kqworkq*, %struct.kqworkq** %5, align 8
  %86 = load %struct.kqrequest*, %struct.kqrequest** %6, align 8
  %87 = load i64, i64* %10, align 8
  %88 = call i64 @kqworkq_unbind_locked(%struct.kqworkq* %85, %struct.kqrequest* %86, i64 %87)
  store i64 %88, i64* %9, align 8
  store i32 -1, i32* %12, align 4
  %89 = load %struct.kqrequest*, %struct.kqrequest** %6, align 8
  %90 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @KQR_WAKEUP, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %84
  %96 = load %struct.kqworkq*, %struct.kqworkq** %5, align 8
  %97 = getelementptr inbounds %struct.kqworkq, %struct.kqworkq* %96, i32 0, i32 0
  %98 = load %struct.kqrequest*, %struct.kqrequest** %6, align 8
  %99 = load %struct.kqrequest*, %struct.kqrequest** %6, align 8
  %100 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @kqueue_threadreq_initiate(i32* %97, %struct.kqrequest* %98, i32 %101, i32 0)
  br label %103

103:                                              ; preds = %95, %84
  br label %104

104:                                              ; preds = %103, %81
  %105 = load i32, i32* %12, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %104
  %108 = load i32, i32* @KQR_WAKEUP, align 4
  %109 = xor i32 %108, -1
  %110 = load %struct.kqrequest*, %struct.kqrequest** %6, align 8
  %111 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = and i32 %112, %109
  store i32 %113, i32* %111, align 8
  br label %114

114:                                              ; preds = %107, %104
  %115 = load %struct.kqworkq*, %struct.kqworkq** %5, align 8
  %116 = call i32 @kq_req_unlock(%struct.kqworkq* %115)
  %117 = load i64, i64* %9, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load i64, i64* %10, align 8
  %121 = call i32 @thread_drop_ipc_override(i64 %120)
  br label %122

122:                                              ; preds = %119, %114
  %123 = load i32, i32* %12, align 4
  ret i32 %123
}

declare dso_local i32 @kqlock_held(i32*) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.knote* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @knote_unsuppress(%struct.knote*) #1

declare dso_local i32 @kq_req_lock(%struct.kqworkq*) #1

declare dso_local i64 @kqworkq_unbind_locked(%struct.kqworkq*, %struct.kqrequest*, i64) #1

declare dso_local i32 @kqueue_threadreq_initiate(i32*, %struct.kqrequest*, i32, i32) #1

declare dso_local i32 @kq_req_unlock(%struct.kqworkq*) #1

declare dso_local i32 @thread_drop_ipc_override(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
