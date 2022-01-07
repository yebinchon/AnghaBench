; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_filt_sortouch.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_filt_sortouch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.kevent_internal_s = type { i32, i32 }
%struct.socket = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*, %struct.kevent_internal_s*)* @filt_sortouch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filt_sortouch(%struct.knote* %0, %struct.kevent_internal_s* %1) #0 {
  %3 = alloca %struct.knote*, align 8
  %4 = alloca %struct.kevent_internal_s*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  store %struct.knote* %0, %struct.knote** %3, align 8
  store %struct.kevent_internal_s* %1, %struct.kevent_internal_s** %4, align 8
  %7 = load %struct.knote*, %struct.knote** %3, align 8
  %8 = getelementptr inbounds %struct.knote, %struct.knote* %7, i32 0, i32 2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.socket*
  store %struct.socket* %14, %struct.socket** %5, align 8
  %15 = load %struct.socket*, %struct.socket** %5, align 8
  %16 = call i32 @socket_lock(%struct.socket* %15, i32 1)
  %17 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %4, align 8
  %18 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.knote*, %struct.knote** %3, align 8
  %21 = getelementptr inbounds %struct.knote, %struct.knote* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %4, align 8
  %23 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.knote*, %struct.knote** %3, align 8
  %26 = getelementptr inbounds %struct.knote, %struct.knote* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.knote*, %struct.knote** %3, align 8
  %28 = load %struct.socket*, %struct.socket** %5, align 8
  %29 = call i32 @filt_soread_common(%struct.knote* %27, %struct.socket* %28)
  store i32 %29, i32* %6, align 4
  %30 = load %struct.socket*, %struct.socket** %5, align 8
  %31 = call i32 @socket_unlock(%struct.socket* %30, i32 1)
  %32 = load i32, i32* %6, align 4
  ret i32 %32
}

declare dso_local i32 @socket_lock(%struct.socket*, i32) #1

declare dso_local i32 @filt_soread_common(%struct.knote*, %struct.socket*) #1

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
