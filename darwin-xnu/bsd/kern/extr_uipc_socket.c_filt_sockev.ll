; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_filt_sockev.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_filt_sockev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.socket = type { i32 }

@SO_FILT_HINT_EV = common dso_local global i64 0, align 8
@SO_FILT_HINT_LOCKED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*, i64)* @filt_sockev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filt_sockev(%struct.knote* %0, i64 %1) #0 {
  %3 = alloca %struct.knote*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i64, align 8
  store %struct.knote* %0, %struct.knote** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.knote*, %struct.knote** %3, align 8
  %10 = getelementptr inbounds %struct.knote, %struct.knote* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.socket*
  store %struct.socket* %16, %struct.socket** %7, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @SO_FILT_HINT_EV, align 8
  %19 = and i64 %17, %18
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @SO_FILT_HINT_LOCKED, align 8
  %22 = and i64 %20, %21
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.socket*, %struct.socket** %7, align 8
  %26 = call i32 @socket_lock(%struct.socket* %25, i32 1)
  store i32 1, i32* %6, align 4
  br label %27

27:                                               ; preds = %24, %2
  %28 = load %struct.knote*, %struct.knote** %3, align 8
  %29 = load %struct.socket*, %struct.socket** %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @filt_sockev_common(%struct.knote* %28, %struct.socket* %29, i64 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load %struct.socket*, %struct.socket** %7, align 8
  %36 = call i32 @socket_unlock(%struct.socket* %35, i32 1)
  br label %37

37:                                               ; preds = %34, %27
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @socket_lock(%struct.socket*, i32) #1

declare dso_local i32 @filt_sockev_common(%struct.knote*, %struct.socket*, i64) #1

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
