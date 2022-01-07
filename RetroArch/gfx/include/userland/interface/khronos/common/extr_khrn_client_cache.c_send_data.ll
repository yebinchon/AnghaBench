; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/common/extr_khrn_client_cache.c_send_data.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/common/extr_khrn_client_cache.c_send_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MERGE_BUFFER_SIZE = common dso_local global i32 0, align 4
@CLIENT_MAKE_CURRENT_SIZE = common dso_local global i32 0, align 4
@glintCacheData_impl = common dso_local global i32 0, align 4
@GLINTCACHEDATA_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*, i32)* @send_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_data(i32* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %14, %4
  %12 = load i32, i32* %8, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %43

14:                                               ; preds = %11
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @MERGE_BUFFER_SIZE, align 4
  %17 = load i32, i32* @CLIENT_MAKE_CURRENT_SIZE, align 4
  %18 = sub nsw i32 %16, %17
  %19 = sub nsw i32 %18, 12
  %20 = sub nsw i32 %19, 8
  %21 = call i32 @_min(i32 %15, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* @glintCacheData_impl, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* @GLINTCACHEDATA_ID, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %25, %26
  %28 = call i32 @RPC_UINT(i32 %27)
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @RPC_SIZEI(i32 %29)
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @RPC_CALL3_IN_CTRL(i32 %22, i32* %23, i32 %24, i32 %28, i32 %30, i8* %34, i32 %35)
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %8, align 4
  %42 = sub nsw i32 %41, %40
  store i32 %42, i32* %8, align 4
  br label %11

43:                                               ; preds = %11
  ret void
}

declare dso_local i32 @_min(i32, i32) #1

declare dso_local i32 @RPC_CALL3_IN_CTRL(i32, i32*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @RPC_UINT(i32) #1

declare dso_local i32 @RPC_SIZEI(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
