; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/specfs/extr_spec_vnops.c_spec_kqfilter.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/specfs/extr_spec_vnops.c_spec_kqfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.knote = type { i32, i32, i32, i32, i32 }
%struct.kevent_internal_s = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.knote*, %struct.kevent_internal_s*)* }

@nchrdev = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@cdevsw_flags = common dso_local global i32* null, align 8
@CDEVSW_SELECT_KQUEUE = common dso_local global i32 0, align 4
@CDEVSW_USE_OFFSET = common dso_local global i32 0, align 4
@CDEVSW_IS_PTS = common dso_local global i32 0, align 4
@EVFILTID_PTSD = common dso_local global i32 0, align 4
@CDEVSW_IS_PTC = common dso_local global i32 0, align 4
@EVFILTID_PTMX = common dso_local global i32 0, align 4
@cdevsw = common dso_local global %struct.TYPE_4__* null, align 8
@D_TTY = common dso_local global i64 0, align 8
@EVFILTID_TTY = common dso_local global i32 0, align 4
@EV_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spec_kqfilter(i32 %0, %struct.knote* %1, %struct.kevent_internal_s* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.knote*, align 8
  %7 = alloca %struct.kevent_internal_s*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.knote* %1, %struct.knote** %6, align 8
  store %struct.kevent_internal_s* %2, %struct.kevent_internal_s** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @vnode_ischr(i32 %9)
  %11 = call i32 @assert(i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @vnode_specrdev(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i64 @major(i32 %14)
  %16 = load i64, i64* @nchrdev, align 8
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.knote*, %struct.knote** %6, align 8
  %20 = load i32, i32* @ENXIO, align 4
  %21 = call i32 @knote_set_error(%struct.knote* %19, i32 %20)
  store i32 0, i32* %4, align 4
  br label %111

22:                                               ; preds = %3
  %23 = load i32*, i32** @cdevsw_flags, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i64 @major(i32 %24)
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CDEVSW_SELECT_KQUEUE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = load %struct.knote*, %struct.knote** %6, align 8
  %35 = getelementptr inbounds %struct.knote, %struct.knote* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32*, i32** @cdevsw_flags, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i64 @major(i32 %37)
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @CDEVSW_USE_OFFSET, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = load %struct.knote*, %struct.knote** %6, align 8
  %48 = getelementptr inbounds %struct.knote, %struct.knote* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load i32*, i32** @cdevsw_flags, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i64 @major(i32 %50)
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @CDEVSW_IS_PTS, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %22
  %58 = load i32, i32* @EVFILTID_PTSD, align 4
  %59 = load %struct.knote*, %struct.knote** %6, align 8
  %60 = getelementptr inbounds %struct.knote, %struct.knote* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.knote*, %struct.knote** %6, align 8
  %63 = call i32 @ptsd_kqfilter(i32 %61, %struct.knote* %62)
  store i32 %63, i32* %4, align 4
  br label %111

64:                                               ; preds = %22
  %65 = load i32*, i32** @cdevsw_flags, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i64 @major(i32 %66)
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @CDEVSW_IS_PTC, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %64
  %74 = load i32, i32* @EVFILTID_PTMX, align 4
  %75 = load %struct.knote*, %struct.knote** %6, align 8
  %76 = getelementptr inbounds %struct.knote, %struct.knote* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.knote*, %struct.knote** %6, align 8
  %79 = call i32 @ptmx_kqfilter(i32 %77, %struct.knote* %78)
  store i32 %79, i32* %4, align 4
  br label %111

80:                                               ; preds = %64
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cdevsw, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i64 @major(i32 %82)
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @D_TTY, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %105

89:                                               ; preds = %80
  %90 = load %struct.knote*, %struct.knote** %6, align 8
  %91 = getelementptr inbounds %struct.knote, %struct.knote* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %89
  %95 = load i32, i32* @EVFILTID_TTY, align 4
  %96 = load %struct.knote*, %struct.knote** %6, align 8
  %97 = getelementptr inbounds %struct.knote, %struct.knote* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  %98 = load %struct.knote*, %struct.knote** %6, align 8
  %99 = call %struct.TYPE_3__* @knote_fops(%struct.knote* %98)
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32 (%struct.knote*, %struct.kevent_internal_s*)*, i32 (%struct.knote*, %struct.kevent_internal_s*)** %100, align 8
  %102 = load %struct.knote*, %struct.knote** %6, align 8
  %103 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %7, align 8
  %104 = call i32 %101(%struct.knote* %102, %struct.kevent_internal_s* %103)
  store i32 %104, i32* %4, align 4
  br label %111

105:                                              ; preds = %89, %80
  br label %106

106:                                              ; preds = %105
  br label %107

107:                                              ; preds = %106
  %108 = load %struct.knote*, %struct.knote** %6, align 8
  %109 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %7, align 8
  %110 = call i32 @filt_specattach(%struct.knote* %108, %struct.kevent_internal_s* %109)
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %107, %94, %73, %57, %18
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vnode_ischr(i32) #1

declare dso_local i32 @vnode_specrdev(i32) #1

declare dso_local i64 @major(i32) #1

declare dso_local i32 @knote_set_error(%struct.knote*, i32) #1

declare dso_local i32 @ptsd_kqfilter(i32, %struct.knote*) #1

declare dso_local i32 @ptmx_kqfilter(i32, %struct.knote*) #1

declare dso_local %struct.TYPE_3__* @knote_fops(%struct.knote*) #1

declare dso_local i32 @filt_specattach(%struct.knote*, %struct.kevent_internal_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
