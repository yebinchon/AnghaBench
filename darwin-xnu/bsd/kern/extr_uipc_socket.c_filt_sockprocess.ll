; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_filt_sockprocess.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_filt_sockprocess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32, i32, i32, i64, %struct.kevent_internal_s, %struct.TYPE_4__* }
%struct.kevent_internal_s = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.filt_process_s = type { i32 }
%struct.socket = type { i32 }

@EVFILT_SOCK_LEVEL_TRIGGER_MASK = common dso_local global i32 0, align 4
@NOTE_SUSPEND = common dso_local global i32 0, align 4
@NOTE_RESUME = common dso_local global i32 0, align 4
@EV_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*, %struct.filt_process_s*, %struct.kevent_internal_s*)* @filt_sockprocess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filt_sockprocess(%struct.knote* %0, %struct.filt_process_s* %1, %struct.kevent_internal_s* %2) #0 {
  %4 = alloca %struct.knote*, align 8
  %5 = alloca %struct.filt_process_s*, align 8
  %6 = alloca %struct.kevent_internal_s*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  store %struct.knote* %0, %struct.knote** %4, align 8
  store %struct.filt_process_s* %1, %struct.filt_process_s** %5, align 8
  store %struct.kevent_internal_s* %2, %struct.kevent_internal_s** %6, align 8
  %9 = load %struct.knote*, %struct.knote** %4, align 8
  %10 = getelementptr inbounds %struct.knote, %struct.knote* %9, i32 0, i32 5
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.socket*
  store %struct.socket* %16, %struct.socket** %7, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.socket*, %struct.socket** %7, align 8
  %18 = call i32 @socket_lock(%struct.socket* %17, i32 1)
  %19 = load %struct.knote*, %struct.knote** %4, align 8
  %20 = load %struct.socket*, %struct.socket** %7, align 8
  %21 = call i32 @filt_sockev_common(%struct.knote* %19, %struct.socket* %20, i32 0)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %85

24:                                               ; preds = %3
  %25 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %6, align 8
  %26 = load %struct.knote*, %struct.knote** %4, align 8
  %27 = getelementptr inbounds %struct.knote, %struct.knote* %26, i32 0, i32 4
  %28 = bitcast %struct.kevent_internal_s* %25 to i8*
  %29 = bitcast %struct.kevent_internal_s* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 8 %29, i64 4, i1 false)
  %30 = load %struct.knote*, %struct.knote** %4, align 8
  %31 = getelementptr inbounds %struct.knote, %struct.knote* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %24
  %35 = load %struct.knote*, %struct.knote** %4, align 8
  %36 = getelementptr inbounds %struct.knote, %struct.knote* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @EVFILT_SOCK_LEVEL_TRIGGER_MASK, align 4
  %39 = and i32 %37, %38
  %40 = load %struct.knote*, %struct.knote** %4, align 8
  %41 = getelementptr inbounds %struct.knote, %struct.knote* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %34, %24
  %45 = load %struct.knote*, %struct.knote** %4, align 8
  %46 = getelementptr inbounds %struct.knote, %struct.knote* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @NOTE_SUSPEND, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %44
  %52 = load i32, i32* @NOTE_RESUME, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.knote*, %struct.knote** %4, align 8
  %55 = getelementptr inbounds %struct.knote, %struct.knote* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %51, %44
  %59 = load %struct.knote*, %struct.knote** %4, align 8
  %60 = getelementptr inbounds %struct.knote, %struct.knote* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @NOTE_RESUME, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %58
  %66 = load i32, i32* @NOTE_SUSPEND, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.knote*, %struct.knote** %4, align 8
  %69 = getelementptr inbounds %struct.knote, %struct.knote* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %65, %58
  %73 = load %struct.knote*, %struct.knote** %4, align 8
  %74 = getelementptr inbounds %struct.knote, %struct.knote* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @EV_CLEAR, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %72
  %80 = load %struct.knote*, %struct.knote** %4, align 8
  %81 = getelementptr inbounds %struct.knote, %struct.knote* %80, i32 0, i32 3
  store i64 0, i64* %81, align 8
  %82 = load %struct.knote*, %struct.knote** %4, align 8
  %83 = getelementptr inbounds %struct.knote, %struct.knote* %82, i32 0, i32 0
  store i32 0, i32* %83, align 8
  br label %84

84:                                               ; preds = %79, %72
  br label %85

85:                                               ; preds = %84, %3
  %86 = load %struct.socket*, %struct.socket** %7, align 8
  %87 = call i32 @socket_unlock(%struct.socket* %86, i32 1)
  %88 = load i32, i32* %8, align 4
  ret i32 %88
}

declare dso_local i32 @socket_lock(%struct.socket*, i32) #1

declare dso_local i32 @filt_sockev_common(%struct.knote*, %struct.socket*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
