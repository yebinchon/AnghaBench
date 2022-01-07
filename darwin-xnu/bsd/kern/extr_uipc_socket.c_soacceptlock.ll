; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_soacceptlock.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_soacceptlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.socket*, %struct.sockaddr**)* }
%struct.sockaddr = type { i32 }

@PROC_NULL = common dso_local global i32 0, align 4
@SS_NOFDREF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"soaccept: !NOFDREF\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @soacceptlock(%struct.socket* %0, %struct.sockaddr** %1, i32 %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.sockaddr**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.sockaddr** %1, %struct.sockaddr*** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load %struct.socket*, %struct.socket** %4, align 8
  %12 = call i32 @socket_lock(%struct.socket* %11, i32 1)
  br label %13

13:                                               ; preds = %10, %3
  %14 = load %struct.socket*, %struct.socket** %4, align 8
  %15 = load i32, i32* @PROC_NULL, align 4
  %16 = call i32 @so_update_last_owner_locked(%struct.socket* %14, i32 %15)
  %17 = load %struct.socket*, %struct.socket** %4, align 8
  %18 = call i32 @so_update_policy(%struct.socket* %17)
  %19 = load %struct.socket*, %struct.socket** %4, align 8
  %20 = getelementptr inbounds %struct.socket, %struct.socket* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SS_NOFDREF, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %13
  %26 = call i32 @panic(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %13
  %28 = load i32, i32* @SS_NOFDREF, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.socket*, %struct.socket** %4, align 8
  %31 = getelementptr inbounds %struct.socket, %struct.socket* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.socket*, %struct.socket** %4, align 8
  %35 = getelementptr inbounds %struct.socket, %struct.socket* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32 (%struct.socket*, %struct.sockaddr**)*, i32 (%struct.socket*, %struct.sockaddr**)** %39, align 8
  %41 = load %struct.socket*, %struct.socket** %4, align 8
  %42 = load %struct.sockaddr**, %struct.sockaddr*** %5, align 8
  %43 = call i32 %40(%struct.socket* %41, %struct.sockaddr** %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %27
  %47 = load %struct.socket*, %struct.socket** %4, align 8
  %48 = call i32 @socket_unlock(%struct.socket* %47, i32 1)
  br label %49

49:                                               ; preds = %46, %27
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

declare dso_local i32 @socket_lock(%struct.socket*, i32) #1

declare dso_local i32 @so_update_last_owner_locked(%struct.socket*, i32) #1

declare dso_local i32 @so_update_policy(%struct.socket*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
