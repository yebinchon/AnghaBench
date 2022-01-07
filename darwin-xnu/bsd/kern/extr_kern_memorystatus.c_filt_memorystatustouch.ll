; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_filt_memorystatustouch.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_filt_memorystatustouch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32, i64 }
%struct.kevent_internal_s = type { i32 }

@EVFILT_MEMORYSTATUS_ALL_MASK = common dso_local global i32 0, align 4
@NOTE_MEMORYSTATUS_PROC_LIMIT_WARN = common dso_local global i32 0, align 4
@NOTE_MEMORYSTATUS_PROC_LIMIT_WARN_ACTIVE = common dso_local global i32 0, align 4
@NOTE_MEMORYSTATUS_PROC_LIMIT_WARN_INACTIVE = common dso_local global i32 0, align 4
@NOTE_MEMORYSTATUS_PROC_LIMIT_CRITICAL = common dso_local global i32 0, align 4
@NOTE_MEMORYSTATUS_PROC_LIMIT_CRITICAL_ACTIVE = common dso_local global i32 0, align 4
@NOTE_MEMORYSTATUS_PROC_LIMIT_CRITICAL_INACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*, %struct.kevent_internal_s*)* @filt_memorystatustouch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filt_memorystatustouch(%struct.knote* %0, %struct.kevent_internal_s* %1) #0 {
  %3 = alloca %struct.knote*, align 8
  %4 = alloca %struct.kevent_internal_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.knote* %0, %struct.knote** %3, align 8
  store %struct.kevent_internal_s* %1, %struct.kevent_internal_s** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = call i32 (...) @memorystatus_klist_lock()
  %8 = load %struct.knote*, %struct.knote** %3, align 8
  %9 = getelementptr inbounds %struct.knote, %struct.knote* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  %11 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %4, align 8
  %12 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @EVFILT_MEMORYSTATUS_ALL_MASK, align 4
  %15 = and i32 %13, %14
  %16 = load %struct.knote*, %struct.knote** %3, align 8
  %17 = getelementptr inbounds %struct.knote, %struct.knote* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.knote*, %struct.knote** %3, align 8
  %19 = getelementptr inbounds %struct.knote, %struct.knote* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @NOTE_MEMORYSTATUS_PROC_LIMIT_WARN, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %64

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @NOTE_MEMORYSTATUS_PROC_LIMIT_WARN, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @NOTE_MEMORYSTATUS_PROC_LIMIT_WARN_ACTIVE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i32, i32* @NOTE_MEMORYSTATUS_PROC_LIMIT_WARN_ACTIVE, align 4
  %36 = load %struct.knote*, %struct.knote** %3, align 8
  %37 = getelementptr inbounds %struct.knote, %struct.knote* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %34, %29
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @NOTE_MEMORYSTATUS_PROC_LIMIT_WARN_INACTIVE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load i32, i32* @NOTE_MEMORYSTATUS_PROC_LIMIT_WARN_INACTIVE, align 4
  %47 = load %struct.knote*, %struct.knote** %3, align 8
  %48 = getelementptr inbounds %struct.knote, %struct.knote* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %45, %40
  br label %63

52:                                               ; preds = %24
  %53 = load i32, i32* @NOTE_MEMORYSTATUS_PROC_LIMIT_WARN_ACTIVE, align 4
  %54 = load %struct.knote*, %struct.knote** %3, align 8
  %55 = getelementptr inbounds %struct.knote, %struct.knote* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load i32, i32* @NOTE_MEMORYSTATUS_PROC_LIMIT_WARN_INACTIVE, align 4
  %59 = load %struct.knote*, %struct.knote** %3, align 8
  %60 = getelementptr inbounds %struct.knote, %struct.knote* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %52, %51
  br label %64

64:                                               ; preds = %63, %2
  %65 = load %struct.knote*, %struct.knote** %3, align 8
  %66 = getelementptr inbounds %struct.knote, %struct.knote* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @NOTE_MEMORYSTATUS_PROC_LIMIT_CRITICAL, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %111

71:                                               ; preds = %64
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @NOTE_MEMORYSTATUS_PROC_LIMIT_CRITICAL, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %99

76:                                               ; preds = %71
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @NOTE_MEMORYSTATUS_PROC_LIMIT_CRITICAL_ACTIVE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load i32, i32* @NOTE_MEMORYSTATUS_PROC_LIMIT_CRITICAL_ACTIVE, align 4
  %83 = load %struct.knote*, %struct.knote** %3, align 8
  %84 = getelementptr inbounds %struct.knote, %struct.knote* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  br label %87

87:                                               ; preds = %81, %76
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @NOTE_MEMORYSTATUS_PROC_LIMIT_CRITICAL_INACTIVE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load i32, i32* @NOTE_MEMORYSTATUS_PROC_LIMIT_CRITICAL_INACTIVE, align 4
  %94 = load %struct.knote*, %struct.knote** %3, align 8
  %95 = getelementptr inbounds %struct.knote, %struct.knote* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 8
  br label %98

98:                                               ; preds = %92, %87
  br label %110

99:                                               ; preds = %71
  %100 = load i32, i32* @NOTE_MEMORYSTATUS_PROC_LIMIT_CRITICAL_ACTIVE, align 4
  %101 = load %struct.knote*, %struct.knote** %3, align 8
  %102 = getelementptr inbounds %struct.knote, %struct.knote* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 8
  %105 = load i32, i32* @NOTE_MEMORYSTATUS_PROC_LIMIT_CRITICAL_INACTIVE, align 4
  %106 = load %struct.knote*, %struct.knote** %3, align 8
  %107 = getelementptr inbounds %struct.knote, %struct.knote* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 8
  br label %110

110:                                              ; preds = %99, %98
  br label %111

111:                                              ; preds = %110, %64
  %112 = load %struct.knote*, %struct.knote** %3, align 8
  %113 = getelementptr inbounds %struct.knote, %struct.knote* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  %116 = zext i1 %115 to i32
  store i32 %116, i32* %5, align 4
  %117 = call i32 (...) @memorystatus_klist_unlock()
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i32 @memorystatus_klist_lock(...) #1

declare dso_local i32 @memorystatus_klist_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
