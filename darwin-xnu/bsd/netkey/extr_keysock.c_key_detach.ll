; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_keysock.c_key_detach.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_keysock.c_key_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 (%struct.socket*)* }
%struct.socket = type { i32 }
%struct.keycb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@PF_KEY = common dso_local global i64 0, align 8
@key_cb = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@raw_usrreqs = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @key_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key_detach(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca %struct.keycb*, align 8
  %4 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %2, align 8
  %5 = load %struct.socket*, %struct.socket** %2, align 8
  %6 = call i64 @sotorawcb(%struct.socket* %5)
  %7 = inttoptr i64 %6 to %struct.keycb*
  store %struct.keycb* %7, %struct.keycb** %3, align 8
  %8 = load %struct.keycb*, %struct.keycb** %3, align 8
  %9 = icmp ne %struct.keycb* %8, null
  br i1 %9, label %10, label %30

10:                                               ; preds = %1
  %11 = load %struct.keycb*, %struct.keycb** %3, align 8
  %12 = getelementptr inbounds %struct.keycb, %struct.keycb* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PF_KEY, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @key_cb, i32 0, i32 1), align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @key_cb, i32 0, i32 1), align 4
  br label %21

21:                                               ; preds = %18, %10
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @key_cb, i32 0, i32 0), align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @key_cb, i32 0, i32 0), align 4
  %24 = load %struct.socket*, %struct.socket** %2, align 8
  %25 = call i32 @socket_unlock(%struct.socket* %24, i32 0)
  %26 = load %struct.socket*, %struct.socket** %2, align 8
  %27 = call i32 @key_freereg(%struct.socket* %26)
  %28 = load %struct.socket*, %struct.socket** %2, align 8
  %29 = call i32 @socket_lock(%struct.socket* %28, i32 0)
  br label %30

30:                                               ; preds = %21, %1
  %31 = load i32 (%struct.socket*)*, i32 (%struct.socket*)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @raw_usrreqs, i32 0, i32 0), align 8
  %32 = load %struct.socket*, %struct.socket** %2, align 8
  %33 = call i32 %31(%struct.socket* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i64 @sotorawcb(%struct.socket*) #1

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #1

declare dso_local i32 @key_freereg(%struct.socket*) #1

declare dso_local i32 @socket_lock(%struct.socket*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
