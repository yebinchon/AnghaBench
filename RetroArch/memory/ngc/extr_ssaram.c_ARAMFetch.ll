; ModuleID = '/home/carl/AnghaBench/RetroArch/memory/ngc/extr_ssaram.c_ARAMFetch.c'
source_filename = "/home/carl/AnghaBench/RetroArch/memory/ngc/extr_ssaram.c_ARAMFetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARAM_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ARAMFetch(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = load i32, i32* %6, align 4
  %9 = call i32 @DCInvalidateRange(i8* %7, i32 %8)
  %10 = load i32, i32* @ARAM_READ, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = ptrtoint i8* %11 to i32
  %13 = load i8*, i8** %5, align 8
  %14 = ptrtoint i8* %13 to i32
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @AR_StartDMA(i32 %10, i32 %12, i32 %14, i32 %15)
  br label %17

17:                                               ; preds = %20, %3
  %18 = call i64 (...) @AR_GetDMAStatus()
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  br label %17

21:                                               ; preds = %17
  ret void
}

declare dso_local i32 @DCInvalidateRange(i8*, i32) #1

declare dso_local i32 @AR_StartDMA(i32, i32, i32, i32) #1

declare dso_local i64 @AR_GetDMAStatus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
