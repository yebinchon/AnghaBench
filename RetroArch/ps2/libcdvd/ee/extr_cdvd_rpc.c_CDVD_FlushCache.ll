; ModuleID = '/home/carl/AnghaBench/RetroArch/ps2/libcdvd/ee/extr_cdvd_rpc.c_CDVD_FlushCache.c'
source_filename = "/home/carl/AnghaBench/RetroArch/ps2/libcdvd/ee/extr_cdvd_rpc.c_CDVD_FlushCache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cdvd_inited = common dso_local global i32 0, align 4
@cd0 = common dso_local global i32 0, align 4
@CDVD_FLUSHCACHE = common dso_local global i32 0, align 4
@sbuff = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CDVD_FlushCache() #0 {
  %1 = load i32, i32* @cdvd_inited, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  br label %13

4:                                                ; preds = %0
  %5 = load i32, i32* @CDVD_FLUSHCACHE, align 4
  %6 = load i32*, i32** @sbuff, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = bitcast i32* %7 to i8*
  %9 = load i32*, i32** @sbuff, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = bitcast i32* %10 to i8*
  %12 = call i32 @SifCallRpc(i32* @cd0, i32 %5, i32 0, i8* %8, i32 0, i8* %11, i32 0, i32 0, i32 0)
  br label %13

13:                                               ; preds = %4, %3
  ret void
}

declare dso_local i32 @SifCallRpc(i32*, i32, i32, i8*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
