; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_do_close.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_do_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apimsg_msg = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@ERR_OK = common dso_local global i32 0, align 4
@LISTEN = common dso_local global i32 0, align 4
@CLOSE_WAIT = common dso_local global i32 0, align 4
@MQ_MSG_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.apimsg_msg*)* @do_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_close(%struct.apimsg_msg* %0) #0 {
  %2 = alloca %struct.apimsg_msg*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.apimsg_msg* %0, %struct.apimsg_msg** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load i32, i32* @ERR_OK, align 4
  store i32 %5, i32* %4, align 4
  %6 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %7 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = icmp ne %struct.TYPE_7__* %11, null
  br i1 %12, label %13, label %67

13:                                               ; preds = %1
  %14 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %15 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %65 [
    i32 132, label %19
    i32 129, label %19
    i32 128, label %19
    i32 130, label %19
    i32 131, label %20
  ]

19:                                               ; preds = %13, %13, %13, %13
  br label %66

20:                                               ; preds = %13
  %21 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %22 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @LISTEN, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %20
  %32 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %33 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = call i32 @tcp_close(%struct.TYPE_7__* %37)
  store i32 %38, i32* %4, align 4
  br label %59

39:                                               ; preds = %20
  %40 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %41 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @CLOSE_WAIT, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %39
  %51 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %52 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = call i32 @tcp_output(%struct.TYPE_7__* %56)
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %50, %39
  br label %59

59:                                               ; preds = %58, %31
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %62 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  store i32 %60, i32* %64, align 8
  br label %66

65:                                               ; preds = %13
  br label %66

66:                                               ; preds = %65, %59, %19
  br label %67

67:                                               ; preds = %66, %1
  %68 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %69 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @MQ_MSG_BLOCK, align 4
  %74 = call i32 @MQ_Send(i32 %72, i32* %3, i32 %73)
  ret void
}

declare dso_local i32 @tcp_close(%struct.TYPE_7__*) #1

declare dso_local i32 @tcp_output(%struct.TYPE_7__*) #1

declare dso_local i32 @MQ_Send(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
