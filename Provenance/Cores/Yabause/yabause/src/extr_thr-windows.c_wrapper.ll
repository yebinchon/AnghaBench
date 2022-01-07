; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_thr-windows.c_wrapper.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_thr-windows.c_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thd_s = type { i32, i32, i32 (i32)* }

@hnd_key = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @wrapper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wrapper(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.thd_s*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.thd_s*
  store %struct.thd_s* %5, %struct.thd_s** %3, align 8
  %6 = load %struct.thd_s*, %struct.thd_s** %3, align 8
  %7 = getelementptr inbounds %struct.thd_s, %struct.thd_s* %6, i32 0, i32 0
  %8 = call i32 @EnterCriticalSection(i32* %7)
  %9 = load i32, i32* @hnd_key, align 4
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 @TlsSetValue(i32 %9, i8* %10)
  %12 = load %struct.thd_s*, %struct.thd_s** %3, align 8
  %13 = getelementptr inbounds %struct.thd_s, %struct.thd_s* %12, i32 0, i32 2
  %14 = load i32 (i32)*, i32 (i32)** %13, align 8
  %15 = load %struct.thd_s*, %struct.thd_s** %3, align 8
  %16 = getelementptr inbounds %struct.thd_s, %struct.thd_s* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 %14(i32 %17)
  %19 = load %struct.thd_s*, %struct.thd_s** %3, align 8
  %20 = getelementptr inbounds %struct.thd_s, %struct.thd_s* %19, i32 0, i32 0
  %21 = call i32 @LeaveCriticalSection(i32* %20)
  ret i32 0
}

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @TlsSetValue(i32, i8*) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
