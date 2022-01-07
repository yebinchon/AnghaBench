; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_object.c_ipc_object_destroy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_object.c_ipc_object_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IOT_PORT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"ipc_object_destroy: strange rights\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipc_object_destroy(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @IO_VALID(i32 %5)
  %7 = call i32 @assert(i32 %6)
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @io_otype(i32 %8)
  %10 = load i64, i64* @IOT_PORT, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %24 [
    i32 129, label %15
    i32 128, label %18
    i32 130, label %21
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @ipc_port_release_send(i32 %16)
  br label %26

18:                                               ; preds = %2
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @ipc_notify_send_once(i32 %19)
  br label %26

21:                                               ; preds = %2
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @ipc_port_release_receive(i32 %22)
  br label %26

24:                                               ; preds = %2
  %25 = call i32 @panic(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %21, %18, %15
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @IO_VALID(i32) #1

declare dso_local i64 @io_otype(i32) #1

declare dso_local i32 @ipc_port_release_send(i32) #1

declare dso_local i32 @ipc_notify_send_once(i32) #1

declare dso_local i32 @ipc_port_release_receive(i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
