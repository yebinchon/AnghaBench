; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_raw_usrreq.c_raw_udisconnect.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_raw_usrreq.c_raw_udisconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.rawcb = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @raw_udisconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw_udisconnect(%struct.socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.rawcb*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  %5 = load %struct.socket*, %struct.socket** %3, align 8
  %6 = call %struct.rawcb* @sotorawcb(%struct.socket* %5)
  store %struct.rawcb* %6, %struct.rawcb** %4, align 8
  %7 = load %struct.rawcb*, %struct.rawcb** %4, align 8
  %8 = icmp eq %struct.rawcb* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  store i32 %10, i32* %2, align 4
  br label %23

11:                                               ; preds = %1
  %12 = load %struct.rawcb*, %struct.rawcb** %4, align 8
  %13 = getelementptr inbounds %struct.rawcb, %struct.rawcb* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* @ENOTCONN, align 4
  store i32 %17, i32* %2, align 4
  br label %23

18:                                               ; preds = %11
  %19 = load %struct.rawcb*, %struct.rawcb** %4, align 8
  %20 = call i32 @raw_disconnect(%struct.rawcb* %19)
  %21 = load %struct.socket*, %struct.socket** %3, align 8
  %22 = call i32 @soisdisconnected(%struct.socket* %21)
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %18, %16, %9
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local %struct.rawcb* @sotorawcb(%struct.socket*) #1

declare dso_local i32 @raw_disconnect(%struct.rawcb*) #1

declare dso_local i32 @soisdisconnected(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
