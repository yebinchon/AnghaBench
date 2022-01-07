; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bridgestp.c_bstp_set_port_state.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bridgestp.c_bstp_set_port_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bstp_port = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"state changed to DISCARDING on %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"state changed to LEARNING on %s\0A\00", align 1
@BSTP_PROTO_RSTP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"state changed to FORWARDING on %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bstp_port*, i32)* @bstp_set_port_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bstp_set_port_state(%struct.bstp_port* %0, i32 %1) #0 {
  %3 = alloca %struct.bstp_port*, align 8
  %4 = alloca i32, align 4
  store %struct.bstp_port* %0, %struct.bstp_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %6 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %68

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %14 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %16 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %64 [
    i32 130, label %18
    i32 128, label %25
    i32 129, label %50
  ]

18:                                               ; preds = %11
  %19 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %20 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %19, i32 0, i32 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @DPRINTF(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %64

25:                                               ; preds = %11
  %26 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %27 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %26, i32 0, i32 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @DPRINTF(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %33 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %32, i32 0, i32 3
  %34 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %35 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @BSTP_PROTO_RSTP, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %25
  %40 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %41 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  br label %47

43:                                               ; preds = %25
  %44 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %45 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  br label %47

47:                                               ; preds = %43, %39
  %48 = phi i32 [ %42, %39 ], [ %46, %43 ]
  %49 = call i32 @bstp_timer_start(i32* %33, i32 %48)
  br label %64

50:                                               ; preds = %11
  %51 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %52 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %51, i32 0, i32 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @DPRINTF(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %58 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %57, i32 0, i32 3
  %59 = call i32 @bstp_timer_stop(i32* %58)
  %60 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %61 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %11, %50, %47, %18
  %65 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %66 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %65, i32 0, i32 1
  %67 = call i32 @bstp_task_enqueue(i32* %66)
  br label %68

68:                                               ; preds = %64, %10
  ret void
}

declare dso_local i32 @DPRINTF(i8*, i32) #1

declare dso_local i32 @bstp_timer_start(i32*, i32) #1

declare dso_local i32 @bstp_timer_stop(i32*) #1

declare dso_local i32 @bstp_task_enqueue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
