; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_filt_wlattach.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_filt_wlattach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8** }
%struct.kevent_internal_s = type { i64, i64, i32, i8** }
%struct.kqueue = type { i32 }
%struct.kqworkloop = type { i32, %struct.kqrequest, i32 }
%struct.kqrequest = type { i64, i32, i64 }

@KQ_WORKLOOP = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@NOTE_WL_COMMANDS_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@THREAD_QOS_UNSPECIFIED = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@EV_DISABLE = common dso_local global i32 0, align 4
@NOTE_WL_END_OWNERSHIP = common dso_local global i32 0, align 4
@FILT_WLATTACH = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@NOTE_WL_IGNORE_ESTALE = common dso_local global i32 0, align 4
@EV_CLEAR = common dso_local global i32 0, align 4
@FILTER_ACTIVE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*, %struct.kevent_internal_s*)* @filt_wlattach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filt_wlattach(%struct.knote* %0, %struct.kevent_internal_s* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.knote*, align 8
  %5 = alloca %struct.kevent_internal_s*, align 8
  %6 = alloca %struct.kqueue*, align 8
  %7 = alloca %struct.kqworkloop*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.knote* %0, %struct.knote** %4, align 8
  store %struct.kevent_internal_s* %1, %struct.kevent_internal_s** %5, align 8
  %11 = load %struct.knote*, %struct.knote** %4, align 8
  %12 = call %struct.kqueue* @knote_get_kq(%struct.knote* %11)
  store %struct.kqueue* %12, %struct.kqueue** %6, align 8
  %13 = load %struct.kqueue*, %struct.kqueue** %6, align 8
  %14 = bitcast %struct.kqueue* %13 to %struct.kqworkloop*
  store %struct.kqworkloop* %14, %struct.kqworkloop** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load %struct.kqueue*, %struct.kqueue** %6, align 8
  %16 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @KQ_WORKLOOP, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOTSUP, align 4
  store i32 %22, i32* %8, align 4
  br label %97

23:                                               ; preds = %2
  %24 = load %struct.knote*, %struct.knote** %4, align 8
  %25 = getelementptr inbounds %struct.knote, %struct.knote* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @NOTE_WL_COMMANDS_MASK, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  switch i32 %29, label %88 [
    i32 128, label %30
    i32 130, label %59
    i32 129, label %59
  ]

30:                                               ; preds = %23
  %31 = load %struct.knote*, %struct.knote** %4, align 8
  %32 = getelementptr inbounds %struct.knote, %struct.knote* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.kqworkloop*, %struct.kqworkloop** %7, align 8
  %35 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %33, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* @EINVAL, align 4
  store i32 %39, i32* %8, align 4
  br label %97

40:                                               ; preds = %30
  %41 = load %struct.knote*, %struct.knote** %4, align 8
  %42 = getelementptr inbounds %struct.knote, %struct.knote* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @_pthread_priority_thread_qos(i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @THREAD_QOS_UNSPECIFIED, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* @ERANGE, align 4
  store i32 %49, i32* %8, align 4
  br label %97

50:                                               ; preds = %40
  %51 = load %struct.kqworkloop*, %struct.kqworkloop** %7, align 8
  %52 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* @EALREADY, align 4
  store i32 %57, i32* %8, align 4
  br label %97

58:                                               ; preds = %50
  br label %90

59:                                               ; preds = %23, %23
  %60 = load %struct.knote*, %struct.knote** %4, align 8
  %61 = getelementptr inbounds %struct.knote, %struct.knote* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.kqworkloop*, %struct.kqworkloop** %7, align 8
  %64 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %62, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i32, i32* @EINVAL, align 4
  store i32 %68, i32* %8, align 4
  br label %97

69:                                               ; preds = %59
  %70 = load %struct.knote*, %struct.knote** %4, align 8
  %71 = getelementptr inbounds %struct.knote, %struct.knote* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @EV_DISABLE, align 4
  %74 = and i32 %72, %73
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* @EINVAL, align 4
  store i32 %77, i32* %8, align 4
  br label %97

78:                                               ; preds = %69
  %79 = load %struct.knote*, %struct.knote** %4, align 8
  %80 = getelementptr inbounds %struct.knote, %struct.knote* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @NOTE_WL_END_OWNERSHIP, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i32, i32* @EINVAL, align 4
  store i32 %86, i32* %8, align 4
  br label %97

87:                                               ; preds = %78
  br label %90

88:                                               ; preds = %23
  %89 = load i32, i32* @EINVAL, align 4
  store i32 %89, i32* %8, align 4
  br label %97

90:                                               ; preds = %87, %58
  %91 = load %struct.kqworkloop*, %struct.kqworkloop** %7, align 8
  %92 = load %struct.knote*, %struct.knote** %4, align 8
  %93 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %5, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @FILT_WLATTACH, align 4
  %96 = call i32 @filt_wlupdate(%struct.kqworkloop* %91, %struct.knote* %92, %struct.kevent_internal_s* %93, i32 %94, i32 %95)
  store i32 %96, i32* %8, align 4
  br label %97

97:                                               ; preds = %90, %88, %85, %76, %67, %56, %48, %38, %21
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %116

100:                                              ; preds = %97
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @ESTALE, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %100
  %105 = load %struct.knote*, %struct.knote** %4, align 8
  %106 = getelementptr inbounds %struct.knote, %struct.knote* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @NOTE_WL_IGNORE_ESTALE, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  store i32 0, i32* %8, align 4
  br label %112

112:                                              ; preds = %111, %104, %100
  %113 = load %struct.knote*, %struct.knote** %4, align 8
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @knote_set_error(%struct.knote* %113, i32 %114)
  store i32 0, i32* %3, align 4
  br label %134

116:                                              ; preds = %97
  %117 = load i32, i32* %10, align 4
  %118 = icmp eq i32 %117, 130
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = load %struct.knote*, %struct.knote** %4, align 8
  %121 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %5, align 8
  %122 = call i32 @kevent_register_wait_prepare(%struct.knote* %120, %struct.kevent_internal_s* %121)
  store i32 %122, i32* %3, align 4
  br label %134

123:                                              ; preds = %116
  %124 = load i32, i32* %10, align 4
  %125 = icmp eq i32 %124, 128
  br i1 %125, label %126, label %133

126:                                              ; preds = %123
  %127 = load i32, i32* @EV_CLEAR, align 4
  %128 = load %struct.knote*, %struct.knote** %4, align 8
  %129 = getelementptr inbounds %struct.knote, %struct.knote* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 4
  %132 = load i32, i32* @FILTER_ACTIVE, align 4
  store i32 %132, i32* %3, align 4
  br label %134

133:                                              ; preds = %123
  store i32 0, i32* %3, align 4
  br label %134

134:                                              ; preds = %133, %126, %119, %112
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local %struct.kqueue* @knote_get_kq(%struct.knote*) #1

declare dso_local i32 @_pthread_priority_thread_qos(i32) #1

declare dso_local i32 @filt_wlupdate(%struct.kqworkloop*, %struct.knote*, %struct.kevent_internal_s*, i32, i32) #1

declare dso_local i32 @knote_set_error(%struct.knote*, i32) #1

declare dso_local i32 @kevent_register_wait_prepare(%struct.knote*, %struct.kevent_internal_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
