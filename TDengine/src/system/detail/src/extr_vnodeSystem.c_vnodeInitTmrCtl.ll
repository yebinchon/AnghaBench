; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeSystem.c_vnodeInitTmrCtl.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeSystem.c_vnodeInitTmrCtl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TSDB_MAX_VNODES = common dso_local global i32 0, align 4
@tsVnodePeers = common dso_local global i32 0, align 4
@tsSessionsPerVnode = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"DND-vnode\00", align 1
@vnodeTmrCtrl = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to init timer, exit\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnodeInitTmrCtl() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @TSDB_MAX_VNODES, align 4
  %3 = load i32, i32* @tsVnodePeers, align 4
  %4 = add nsw i32 %3, 10
  %5 = mul nsw i32 %2, %4
  %6 = sext i32 %5 to i64
  %7 = load i64, i64* @tsSessionsPerVnode, align 8
  %8 = add nsw i64 %6, %7
  %9 = add nsw i64 %8, 1000
  %10 = call i32* @taosTmrInit(i64 %9, i32 200, i32 60000, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32* %10, i32** @vnodeTmrCtrl, align 8
  %11 = load i32*, i32** @vnodeTmrCtrl, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = call i32 @dError(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %16

15:                                               ; preds = %0
  store i32 1, i32* %1, align 4
  br label %16

16:                                               ; preds = %15, %13
  %17 = load i32, i32* %1, align 4
  ret i32 %17
}

declare dso_local i32* @taosTmrInit(i64, i32, i32, i8*) #1

declare dso_local i32 @dError(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
