; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bridgestp.c_bstp_set_port_tc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bridgestp.c_bstp_set_port_tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bstp_port = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.bstp_state* }
%struct.TYPE_2__ = type { i32 }
%struct.bstp_state = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"%s -> TC_ACTIVE\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%s -> TC_INACTIVE\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"%s -> TC_LEARNING\0A\00", align 1
@BSTP_PORT_NEWINFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"%s -> TC_DETECTED\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"%s -> TC_TCN\0A\00", align 1
@BSTP_ROLE_DESIGNATED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"%s -> TC_TC\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"%s -> TC_PROPAG\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"%s -> TC_ACK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bstp_port*, i32)* @bstp_set_port_tc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bstp_set_port_tc(%struct.bstp_port* %0, i32 %1) #0 {
  %3 = alloca %struct.bstp_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bstp_state*, align 8
  store %struct.bstp_port* %0, %struct.bstp_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %7 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %6, i32 0, i32 12
  %8 = load %struct.bstp_state*, %struct.bstp_state** %7, align 8
  store %struct.bstp_state* %8, %struct.bstp_state** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %11 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %13 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %143 [
    i32 134, label %15
    i32 132, label %22
    i32 131, label %39
    i32 133, label %54
    i32 128, label %78
    i32 129, label %87
    i32 130, label %111
    i32 135, label %129
  ]

15:                                               ; preds = %2
  %16 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %17 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %16, i32 0, i32 3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @DPRINTF(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %143

22:                                               ; preds = %2
  %23 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %24 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %23, i32 0, i32 5
  %25 = call i32 @bstp_timer_stop(i32* %24)
  %26 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %27 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %26, i32 0, i32 1
  store i32 1, i32* %27, align 4
  %28 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %29 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %28, i32 0, i32 7
  %30 = call i32 @bstp_task_enqueue(i32* %29)
  %31 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %32 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %31, i32 0, i32 2
  store i32 0, i32* %32, align 8
  %33 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %34 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %33, i32 0, i32 3
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @DPRINTF(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %143

39:                                               ; preds = %2
  %40 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %41 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %40, i32 0, i32 10
  store i32 0, i32* %41, align 8
  %42 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %43 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %42, i32 0, i32 9
  store i32 0, i32* %43, align 4
  %44 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %45 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %44, i32 0, i32 4
  store i32 0, i32* %45, align 8
  %46 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %47 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %46, i32 0, i32 6
  store i32 0, i32* %47, align 8
  %48 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %49 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %48, i32 0, i32 3
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @DPRINTF(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  br label %143

54:                                               ; preds = %2
  %55 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %56 = call i32 @bstp_set_timer_tc(%struct.bstp_port* %55)
  %57 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %58 = call i32 @bstp_set_other_tcprop(%struct.bstp_port* %57)
  %59 = load i32, i32* @BSTP_PORT_NEWINFO, align 4
  %60 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %61 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %60, i32 0, i32 11
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load %struct.bstp_state*, %struct.bstp_state** %5, align 8
  %65 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %66 = call i32 @bstp_transmit(%struct.bstp_state* %64, %struct.bstp_port* %65)
  %67 = load %struct.bstp_state*, %struct.bstp_state** %5, align 8
  %68 = getelementptr inbounds %struct.bstp_state, %struct.bstp_state* %67, i32 0, i32 0
  %69 = call i32 @getmicrotime(i32* %68)
  %70 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %71 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %70, i32 0, i32 3
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @DPRINTF(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  %76 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %77 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %76, i32 0, i32 0
  store i32 134, i32* %77, align 8
  br label %143

78:                                               ; preds = %2
  %79 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %80 = call i32 @bstp_set_timer_tc(%struct.bstp_port* %79)
  %81 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %82 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %81, i32 0, i32 3
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @DPRINTF(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %2, %78
  %88 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %89 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %88, i32 0, i32 10
  store i32 0, i32* %89, align 8
  %90 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %91 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %90, i32 0, i32 9
  store i32 0, i32* %91, align 4
  %92 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %93 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %92, i32 0, i32 8
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @BSTP_ROLE_DESIGNATED, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %87
  %98 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %99 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %98, i32 0, i32 2
  store i32 1, i32* %99, align 8
  br label %100

100:                                              ; preds = %97, %87
  %101 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %102 = call i32 @bstp_set_other_tcprop(%struct.bstp_port* %101)
  %103 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %104 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %103, i32 0, i32 3
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @DPRINTF(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %107)
  %109 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %110 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %109, i32 0, i32 0
  store i32 134, i32* %110, align 8
  br label %143

111:                                              ; preds = %2
  %112 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %113 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %112, i32 0, i32 1
  store i32 1, i32* %113, align 4
  %114 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %115 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %114, i32 0, i32 7
  %116 = call i32 @bstp_task_enqueue(i32* %115)
  %117 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %118 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %117, i32 0, i32 6
  store i32 0, i32* %118, align 8
  %119 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %120 = call i32 @bstp_set_timer_tc(%struct.bstp_port* %119)
  %121 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %122 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %121, i32 0, i32 3
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @DPRINTF(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %125)
  %127 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %128 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %127, i32 0, i32 0
  store i32 134, i32* %128, align 8
  br label %143

129:                                              ; preds = %2
  %130 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %131 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %130, i32 0, i32 5
  %132 = call i32 @bstp_timer_stop(i32* %131)
  %133 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %134 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %133, i32 0, i32 4
  store i32 0, i32* %134, align 8
  %135 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %136 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %135, i32 0, i32 3
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @DPRINTF(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %139)
  %141 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %142 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %141, i32 0, i32 0
  store i32 134, i32* %142, align 8
  br label %143

143:                                              ; preds = %2, %129, %111, %100, %54, %39, %22, %15
  ret void
}

declare dso_local i32 @DPRINTF(i8*, i32) #1

declare dso_local i32 @bstp_timer_stop(i32*) #1

declare dso_local i32 @bstp_task_enqueue(i32*) #1

declare dso_local i32 @bstp_set_timer_tc(%struct.bstp_port*) #1

declare dso_local i32 @bstp_set_other_tcprop(%struct.bstp_port*) #1

declare dso_local i32 @bstp_transmit(%struct.bstp_state*, %struct.bstp_port*) #1

declare dso_local i32 @getmicrotime(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
