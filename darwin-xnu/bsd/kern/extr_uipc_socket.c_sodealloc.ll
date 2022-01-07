; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_sodealloc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_sodealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, i32, i32, i32, i32*, i32 }

@SOF_ENABLE_MSGS = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@so_gencnt = common dso_local global i32 0, align 4
@SOF1_CACHED_IN_SOCK_LAYER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sodealloc(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  store %struct.socket* %0, %struct.socket** %2, align 8
  %3 = load %struct.socket*, %struct.socket** %2, align 8
  %4 = getelementptr inbounds %struct.socket, %struct.socket* %3, i32 0, i32 5
  %5 = call i32 @kauth_cred_unref(i32* %4)
  %6 = load %struct.socket*, %struct.socket** %2, align 8
  %7 = call i32 @sflt_termsock(%struct.socket* %6)
  %8 = load %struct.socket*, %struct.socket** %2, align 8
  %9 = getelementptr inbounds %struct.socket, %struct.socket* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @SOF_ENABLE_MSGS, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.socket*, %struct.socket** %2, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 4
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* @M_TEMP, align 4
  %19 = call i32 @FREE(i32* %17, i32 %18)
  %20 = load %struct.socket*, %struct.socket** %2, align 8
  %21 = getelementptr inbounds %struct.socket, %struct.socket* %20, i32 0, i32 4
  store i32* null, i32** %21, align 8
  br label %22

22:                                               ; preds = %14, %1
  %23 = load %struct.socket*, %struct.socket** %2, align 8
  %24 = getelementptr inbounds %struct.socket, %struct.socket* %23, i32 0, i32 4
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @VERIFY(i32 %27)
  %29 = call i32 @OSIncrementAtomic64(i32* @so_gencnt)
  %30 = load %struct.socket*, %struct.socket** %2, align 8
  %31 = getelementptr inbounds %struct.socket, %struct.socket* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.socket*, %struct.socket** %2, align 8
  %33 = getelementptr inbounds %struct.socket, %struct.socket* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SOF1_CACHED_IN_SOCK_LAYER, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %22
  %39 = load %struct.socket*, %struct.socket** %2, align 8
  %40 = call i32 @cached_sock_free(%struct.socket* %39)
  br label %47

41:                                               ; preds = %22
  %42 = load %struct.socket*, %struct.socket** %2, align 8
  %43 = load %struct.socket*, %struct.socket** %2, align 8
  %44 = getelementptr inbounds %struct.socket, %struct.socket* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @FREE_ZONE(%struct.socket* %42, i32 32, i32 %45)
  br label %47

47:                                               ; preds = %41, %38
  ret void
}

declare dso_local i32 @kauth_cred_unref(i32*) #1

declare dso_local i32 @sflt_termsock(%struct.socket*) #1

declare dso_local i32 @FREE(i32*, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @OSIncrementAtomic64(i32*) #1

declare dso_local i32 @cached_sock_free(%struct.socket*) #1

declare dso_local i32 @FREE_ZONE(%struct.socket*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
