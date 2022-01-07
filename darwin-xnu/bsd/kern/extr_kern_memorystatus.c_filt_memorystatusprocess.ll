; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_filt_memorystatusprocess.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_filt_memorystatusprocess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i64, i64, i32, %struct.kevent_internal_s }
%struct.kevent_internal_s = type { i32 }
%struct.filt_process_s = type { i32 }

@EV_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*, %struct.filt_process_s*, %struct.kevent_internal_s*)* @filt_memorystatusprocess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filt_memorystatusprocess(%struct.knote* %0, %struct.filt_process_s* %1, %struct.kevent_internal_s* %2) #0 {
  %4 = alloca %struct.knote*, align 8
  %5 = alloca %struct.filt_process_s*, align 8
  %6 = alloca %struct.kevent_internal_s*, align 8
  %7 = alloca i32, align 4
  store %struct.knote* %0, %struct.knote** %4, align 8
  store %struct.filt_process_s* %1, %struct.filt_process_s** %5, align 8
  store %struct.kevent_internal_s* %2, %struct.kevent_internal_s** %6, align 8
  %8 = call i32 (...) @memorystatus_klist_lock()
  %9 = load %struct.knote*, %struct.knote** %4, align 8
  %10 = getelementptr inbounds %struct.knote, %struct.knote* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %3
  %17 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %6, align 8
  %18 = load %struct.knote*, %struct.knote** %4, align 8
  %19 = getelementptr inbounds %struct.knote, %struct.knote* %18, i32 0, i32 3
  %20 = bitcast %struct.kevent_internal_s* %17 to i8*
  %21 = bitcast %struct.kevent_internal_s* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 4, i1 false)
  %22 = load i32, i32* @EV_CLEAR, align 4
  %23 = load %struct.knote*, %struct.knote** %4, align 8
  %24 = getelementptr inbounds %struct.knote, %struct.knote* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load %struct.knote*, %struct.knote** %4, align 8
  %28 = getelementptr inbounds %struct.knote, %struct.knote* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load %struct.knote*, %struct.knote** %4, align 8
  %30 = getelementptr inbounds %struct.knote, %struct.knote* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %16, %3
  %32 = call i32 (...) @memorystatus_klist_unlock()
  %33 = load i32, i32* %7, align 4
  ret i32 %33
}

declare dso_local i32 @memorystatus_klist_lock(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memorystatus_klist_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
