; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/vpnweb/extr_vpnwebdlg_inner.h_LoadMessageW.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/vpnweb/extr_vpnwebdlg_inner.h_LoadMessageW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hDllInstance = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @LoadMessageW(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i64 @calloc(i32 4, i32 1024)
  %5 = inttoptr i64 %4 to i32*
  store i32* %5, i32** %3, align 8
  %6 = load i32, i32* @hDllInstance, align 4
  %7 = call i32 (...) @GetLocalizedMessageOffset()
  %8 = load i32, i32* %2, align 4
  %9 = add i32 %7, %8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @LoadStringW(i32 %6, i32 %9, i32* %10, i32 1024)
  %12 = load i32*, i32** %3, align 8
  ret i32* %12
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @LoadStringW(i32, i32, i32*, i32) #1

declare dso_local i32 @GetLocalizedMessageOffset(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
