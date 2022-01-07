; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_do_disconnect.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_do_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apimsg_msg = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MQ_MSG_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.apimsg_msg*)* @do_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_disconnect(%struct.apimsg_msg* %0) #0 {
  %2 = alloca %struct.apimsg_msg*, align 8
  %3 = alloca i32, align 4
  store %struct.apimsg_msg* %0, %struct.apimsg_msg** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %5 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %4, i32 0, i32 0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %19 [
    i32 132, label %9
    i32 129, label %10
    i32 128, label %10
    i32 130, label %10
    i32 131, label %18
  ]

9:                                                ; preds = %1
  br label %19

10:                                               ; preds = %1, %1, %1
  %11 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %12 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @udp_disconnect(i32 %16)
  br label %19

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %1, %18, %10, %9
  %20 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %21 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MQ_MSG_BLOCK, align 4
  %26 = call i32 @MQ_Send(i32 %24, i32* %3, i32 %25)
  ret void
}

declare dso_local i32 @udp_disconnect(i32) #1

declare dso_local i32 @MQ_Send(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
