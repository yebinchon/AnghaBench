; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_soo_kqfilter.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_soo_kqfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fileproc = type { i32 }
%struct.knote = type { i32, i32, i8*, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.kevent_internal_s = type { i32 }
%struct.socket = type { i32 }
%struct.TYPE_6__ = type { i32 (%struct.knote*, %struct.kevent_internal_s*)* }

@PROC_NULL = common dso_local global i32 0, align 4
@EVFILTID_SOREAD = common dso_local global i32 0, align 4
@EVFILTID_SOWRITE = common dso_local global i32 0, align 4
@EVFILTID_SCK = common dso_local global i32 0, align 4
@EVFILTID_SOEXCEPT = common dso_local global i32 0, align 4
@EV_ERROR = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @soo_kqfilter(%struct.fileproc* %0, %struct.knote* %1, %struct.kevent_internal_s* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fileproc*, align 8
  %7 = alloca %struct.knote*, align 8
  %8 = alloca %struct.kevent_internal_s*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.socket*, align 8
  %11 = alloca i32, align 4
  store %struct.fileproc* %0, %struct.fileproc** %6, align 8
  store %struct.knote* %1, %struct.knote** %7, align 8
  store %struct.kevent_internal_s* %2, %struct.kevent_internal_s** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.knote*, %struct.knote** %7, align 8
  %13 = getelementptr inbounds %struct.knote, %struct.knote* %12, i32 0, i32 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.socket*
  store %struct.socket* %19, %struct.socket** %10, align 8
  %20 = load %struct.socket*, %struct.socket** %10, align 8
  %21 = call i32 @socket_lock(%struct.socket* %20, i32 1)
  %22 = load %struct.socket*, %struct.socket** %10, align 8
  %23 = load i32, i32* @PROC_NULL, align 4
  %24 = call i32 @so_update_last_owner_locked(%struct.socket* %22, i32 %23)
  %25 = load %struct.socket*, %struct.socket** %10, align 8
  %26 = call i32 @so_update_policy(%struct.socket* %25)
  %27 = load %struct.knote*, %struct.knote** %7, align 8
  %28 = getelementptr inbounds %struct.knote, %struct.knote* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %46 [
    i32 130, label %30
    i32 128, label %34
    i32 129, label %38
    i32 131, label %42
  ]

30:                                               ; preds = %4
  %31 = load i32, i32* @EVFILTID_SOREAD, align 4
  %32 = load %struct.knote*, %struct.knote** %7, align 8
  %33 = getelementptr inbounds %struct.knote, %struct.knote* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  br label %55

34:                                               ; preds = %4
  %35 = load i32, i32* @EVFILTID_SOWRITE, align 4
  %36 = load %struct.knote*, %struct.knote** %7, align 8
  %37 = getelementptr inbounds %struct.knote, %struct.knote* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  br label %55

38:                                               ; preds = %4
  %39 = load i32, i32* @EVFILTID_SCK, align 4
  %40 = load %struct.knote*, %struct.knote** %7, align 8
  %41 = getelementptr inbounds %struct.knote, %struct.knote* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 8
  br label %55

42:                                               ; preds = %4
  %43 = load i32, i32* @EVFILTID_SOEXCEPT, align 4
  %44 = load %struct.knote*, %struct.knote** %7, align 8
  %45 = getelementptr inbounds %struct.knote, %struct.knote* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  br label %55

46:                                               ; preds = %4
  %47 = load %struct.socket*, %struct.socket** %10, align 8
  %48 = call i32 @socket_unlock(%struct.socket* %47, i32 1)
  %49 = load i8*, i8** @EV_ERROR, align 8
  %50 = load %struct.knote*, %struct.knote** %7, align 8
  %51 = getelementptr inbounds %struct.knote, %struct.knote* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* @EINVAL, align 4
  %53 = load %struct.knote*, %struct.knote** %7, align 8
  %54 = getelementptr inbounds %struct.knote, %struct.knote* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  store i32 0, i32* %5, align 4
  br label %66

55:                                               ; preds = %42, %38, %34, %30
  %56 = load %struct.knote*, %struct.knote** %7, align 8
  %57 = call %struct.TYPE_6__* @knote_fops(%struct.knote* %56)
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32 (%struct.knote*, %struct.kevent_internal_s*)*, i32 (%struct.knote*, %struct.kevent_internal_s*)** %58, align 8
  %60 = load %struct.knote*, %struct.knote** %7, align 8
  %61 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %8, align 8
  %62 = call i32 %59(%struct.knote* %60, %struct.kevent_internal_s* %61)
  store i32 %62, i32* %11, align 4
  %63 = load %struct.socket*, %struct.socket** %10, align 8
  %64 = call i32 @socket_unlock(%struct.socket* %63, i32 1)
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %55, %46
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @socket_lock(%struct.socket*, i32) #1

declare dso_local i32 @so_update_last_owner_locked(%struct.socket*, i32) #1

declare dso_local i32 @so_update_policy(%struct.socket*) #1

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #1

declare dso_local %struct.TYPE_6__* @knote_fops(%struct.knote*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
