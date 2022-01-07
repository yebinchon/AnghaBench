; ModuleID = '/home/carl/AnghaBench/Mirai-Source-Code/loader/src/extr_server.c_server_queue_telnet.c'
source_filename = "/home/carl/AnghaBench/Mirai-Source-Code/loader/src/extr_server.c_server_queue_telnet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.server = type { i64, i32 }
%struct.telnet_info = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"srv == NULL 3\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @server_queue_telnet(%struct.server* %0, %struct.telnet_info* %1) #0 {
  %3 = alloca %struct.server*, align 8
  %4 = alloca %struct.telnet_info*, align 8
  store %struct.server* %0, %struct.server** %3, align 8
  store %struct.telnet_info* %1, %struct.telnet_info** %4, align 8
  br label %5

5:                                                ; preds = %13, %2
  %6 = load %struct.server*, %struct.server** %3, align 8
  %7 = getelementptr inbounds %struct.server, %struct.server* %6, i32 0, i32 1
  %8 = call i64 @ATOMIC_GET(i32* %7)
  %9 = load %struct.server*, %struct.server** %3, align 8
  %10 = getelementptr inbounds %struct.server, %struct.server* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sge i64 %8, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %5
  %14 = call i32 @sleep(i32 1)
  br label %5

15:                                               ; preds = %5
  %16 = load %struct.server*, %struct.server** %3, align 8
  %17 = getelementptr inbounds %struct.server, %struct.server* %16, i32 0, i32 1
  %18 = call i32 @ATOMIC_INC(i32* %17)
  %19 = load %struct.server*, %struct.server** %3, align 8
  %20 = icmp eq %struct.server* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %15
  %24 = load %struct.server*, %struct.server** %3, align 8
  %25 = load %struct.telnet_info*, %struct.telnet_info** %4, align 8
  %26 = call i32 @server_telnet_probe(%struct.server* %24, %struct.telnet_info* %25)
  ret void
}

declare dso_local i64 @ATOMIC_GET(i32*) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @ATOMIC_INC(i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @server_telnet_probe(%struct.server*, %struct.telnet_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
