; ModuleID = '/home/carl/AnghaBench/RetroArch/ps2/libcdvd/ee/extr_cdvd_rpc.c_CDVD_DiskReady.c'
source_filename = "/home/carl/AnghaBench/RetroArch/ps2/libcdvd/ee/extr_cdvd_rpc.c_CDVD_DiskReady.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cdvd_inited = common dso_local global i32 0, align 4
@sbuff = common dso_local global i32* null, align 8
@cd0 = common dso_local global i32 0, align 4
@CDVD_DISKREADY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CDVD_DiskReady(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @cdvd_inited, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %22

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32*, i32** @sbuff, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @CDVD_DISKREADY, align 4
  %12 = load i32*, i32** @sbuff, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = bitcast i32* %13 to i8*
  %15 = load i32*, i32** @sbuff, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = bitcast i32* %16 to i8*
  %18 = call i32 @SifCallRpc(i32* @cd0, i32 %11, i32 0, i8* %14, i32 4, i8* %17, i32 4, i32 0, i32 0)
  %19 = load i32*, i32** @sbuff, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %7, %6
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @SifCallRpc(i32*, i32, i32, i8*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
