; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_soclose.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_soclose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64, i32 }

@.str = private unnamed_addr constant [51 x i8] c"soclose: retaincnt non null and so=%p usecount=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @soclose(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.socket*, %struct.socket** %2, align 8
  %5 = call i32 @socket_lock(%struct.socket* %4, i32 1)
  %6 = load %struct.socket*, %struct.socket** %2, align 8
  %7 = getelementptr inbounds %struct.socket, %struct.socket* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.socket*, %struct.socket** %2, align 8
  %12 = call i32 @soclose_locked(%struct.socket* %11)
  store i32 %12, i32* %3, align 4
  br label %29

13:                                               ; preds = %1
  %14 = load %struct.socket*, %struct.socket** %2, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %15, align 8
  %18 = load %struct.socket*, %struct.socket** %2, align 8
  %19 = getelementptr inbounds %struct.socket, %struct.socket* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %22, label %28

22:                                               ; preds = %13
  %23 = load %struct.socket*, %struct.socket** %2, align 8
  %24 = load %struct.socket*, %struct.socket** %2, align 8
  %25 = getelementptr inbounds %struct.socket, %struct.socket* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @panic(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), %struct.socket* %23, i32 %26)
  br label %28

28:                                               ; preds = %22, %13
  br label %29

29:                                               ; preds = %28, %10
  %30 = load %struct.socket*, %struct.socket** %2, align 8
  %31 = call i32 @socket_unlock(%struct.socket* %30, i32 1)
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @socket_lock(%struct.socket*, i32) #1

declare dso_local i32 @soclose_locked(%struct.socket*) #1

declare dso_local i32 @panic(i8*, %struct.socket*, i32) #1

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
