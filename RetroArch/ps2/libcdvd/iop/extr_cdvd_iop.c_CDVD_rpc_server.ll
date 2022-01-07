; ModuleID = '/home/carl/AnghaBench/RetroArch/ps2/libcdvd/iop/extr_cdvd_iop.c_CDVD_rpc_server.c'
source_filename = "/home/carl/AnghaBench/RetroArch/ps2/libcdvd/iop/extr_cdvd_iop.c_CDVD_rpc_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @CDVD_rpc_server(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %29 [
    i32 132, label %9
    i32 130, label %13
    i32 129, label %17
    i32 128, label %19
    i32 133, label %23
    i32 131, label %27
  ]

9:                                                ; preds = %3
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to i32*
  %12 = call i8* @CDVDRpc_FindFile(i32* %11)
  store i8* %12, i8** %4, align 8
  br label %30

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to i32*
  %16 = call i8* @CDVDRpc_Getdir(i32* %15)
  store i8* %16, i8** %4, align 8
  br label %30

17:                                               ; preds = %3
  %18 = call i8* (...) @CDVDRpc_Stop()
  store i8* %18, i8** %4, align 8
  br label %30

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to i32*
  %22 = call i8* @CDVDRpc_TrayReq(i32* %21)
  store i8* %22, i8** %4, align 8
  br label %30

23:                                               ; preds = %3
  %24 = load i8*, i8** %6, align 8
  %25 = bitcast i8* %24 to i32*
  %26 = call i8* @CDVDRpc_DiskReady(i32* %25)
  store i8* %26, i8** %4, align 8
  br label %30

27:                                               ; preds = %3
  %28 = call i8* (...) @CDVDRpc_FlushCache()
  store i8* %28, i8** %4, align 8
  br label %30

29:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %30

30:                                               ; preds = %29, %27, %23, %19, %17, %13, %9
  %31 = load i8*, i8** %4, align 8
  ret i8* %31
}

declare dso_local i8* @CDVDRpc_FindFile(i32*) #1

declare dso_local i8* @CDVDRpc_Getdir(i32*) #1

declare dso_local i8* @CDVDRpc_Stop(...) #1

declare dso_local i8* @CDVDRpc_TrayReq(i32*) #1

declare dso_local i8* @CDVDRpc_DiskReady(i32*) #1

declare dso_local i8* @CDVDRpc_FlushCache(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
