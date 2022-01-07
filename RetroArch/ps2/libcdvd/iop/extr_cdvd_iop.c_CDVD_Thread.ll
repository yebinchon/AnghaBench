; ModuleID = '/home/carl/AnghaBench/RetroArch/ps2/libcdvd/iop/extr_cdvd_iop.c_CDVD_Thread.c'
source_filename = "/home/carl/AnghaBench/RetroArch/ps2/libcdvd/iop/extr_cdvd_iop.c_CDVD_Thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buffer = common dso_local global i32* null, align 8
@qd = common dso_local global i32 0, align 4
@sd0 = common dso_local global i32 0, align 4
@CDVD_IRX = common dso_local global i32 0, align 4
@CDVD_rpc_server = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CDVD_Thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i32 @sceSifInitRpc(i32 0)
  %4 = call i32* @AllocSysMemory(i32 0, i32 19456, i32* null)
  store i32* %4, i32** @buffer, align 8
  %5 = load i32*, i32** @buffer, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 (...) @SleepThread()
  br label %9

9:                                                ; preds = %7, %1
  %10 = call i32 (...) @GetThreadId()
  %11 = call i32 @sceSifSetRpcQueue(i32* @qd, i32 %10)
  %12 = load i32, i32* @CDVD_IRX, align 4
  %13 = load i32, i32* @CDVD_rpc_server, align 4
  %14 = load i32*, i32** @buffer, align 8
  %15 = bitcast i32* %14 to i8*
  %16 = call i32 @sceSifRegisterRpc(i32* @sd0, i32 %12, i32 %13, i8* %15, i32 0, i32 0, i32* @qd)
  %17 = call i32 @sceSifRpcLoop(i32* @qd)
  ret void
}

declare dso_local i32 @sceSifInitRpc(i32) #1

declare dso_local i32* @AllocSysMemory(i32, i32, i32*) #1

declare dso_local i32 @SleepThread(...) #1

declare dso_local i32 @sceSifSetRpcQueue(i32*, i32) #1

declare dso_local i32 @GetThreadId(...) #1

declare dso_local i32 @sceSifRegisterRpc(i32*, i32, i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @sceSifRpcLoop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
