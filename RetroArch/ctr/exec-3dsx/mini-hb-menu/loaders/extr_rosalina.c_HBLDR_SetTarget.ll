; ModuleID = '/home/carl/AnghaBench/RetroArch/ctr/exec-3dsx/mini-hb-menu/loaders/extr_rosalina.c_HBLDR_SetTarget.c'
source_filename = "/home/carl/AnghaBench/RetroArch/ctr/exec-3dsx/mini-hb-menu/loaders/extr_rosalina.c_HBLDR_SetTarget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hbldrHandle = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @HBLDR_SetTarget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @HBLDR_SetTarget(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i64 @strlen(i8* %6)
  %8 = add nsw i64 %7, 1
  store i64 %8, i64* %3, align 8
  %9 = call i64* (...) @getThreadCommandBuffer()
  store i64* %9, i64** %4, align 8
  %10 = call i64 @IPC_MakeHeader(i32 2, i32 0, i32 2)
  %11 = load i64*, i64** %4, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  store i64 %10, i64* %12, align 8
  %13 = load i64, i64* %3, align 8
  %14 = call i64 @IPC_Desc_StaticBuffer(i64 %13, i32 0)
  %15 = load i64*, i64** %4, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 1
  store i64 %14, i64* %16, align 8
  %17 = load i8*, i8** %2, align 8
  %18 = ptrtoint i8* %17 to i64
  %19 = load i64*, i64** %4, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 2
  store i64 %18, i64* %20, align 8
  %21 = load i32, i32* @hbldrHandle, align 4
  %22 = call i64 @svcSendSyncRequest(i32 %21)
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @R_SUCCEEDED(i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load i64*, i64** %4, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 1
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %5, align 8
  br label %30

30:                                               ; preds = %26, %1
  %31 = load i64, i64* %5, align 8
  ret i64 %31
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64* @getThreadCommandBuffer(...) #1

declare dso_local i64 @IPC_MakeHeader(i32, i32, i32) #1

declare dso_local i64 @IPC_Desc_StaticBuffer(i64, i32) #1

declare dso_local i64 @svcSendSyncRequest(i32) #1

declare dso_local i64 @R_SUCCEEDED(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
