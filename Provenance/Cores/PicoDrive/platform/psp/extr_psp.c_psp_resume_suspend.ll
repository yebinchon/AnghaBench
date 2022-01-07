; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_psp.c_psp_resume_suspend.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_psp.c_psp_resume_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"EBOOT.PBP\00", align 1
@PSP_O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"io resumed after %i tries\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"io resume failed with %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @psp_resume_suspend() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %14, %0
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 30
  br i1 %5, label %6, label %17

6:                                                ; preds = %3
  %7 = load i32, i32* @PSP_O_RDONLY, align 4
  %8 = call i64 @sceIoOpen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %7, i32 511)
  store i64 %8, i64* %1, align 8
  %9 = load i64, i64* %1, align 8
  %10 = icmp sge i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  br label %17

12:                                               ; preds = %6
  %13 = call i32 @sceKernelDelayThread(i32 102400)
  br label %14

14:                                               ; preds = %12
  %15 = load i32, i32* %2, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %2, align 4
  br label %3

17:                                               ; preds = %11, %3
  %18 = load i64, i64* %1, align 8
  %19 = icmp sge i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i64, i64* %1, align 8
  %22 = call i32 @sceIoClose(i64 %21)
  br label %23

23:                                               ; preds = %20, %17
  %24 = call i32 (...) @sceDisplayWaitVblankStart()
  %25 = load i32, i32* %2, align 4
  %26 = icmp slt i32 %25, 30
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = call i32 @lprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  br label %35

31:                                               ; preds = %23
  %32 = load i64, i64* %1, align 8
  %33 = call i32 @lprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %32)
  %34 = call i32 @sceKernelDelayThread(i32 512000)
  br label %35

35:                                               ; preds = %31, %27
  ret void
}

declare dso_local i64 @sceIoOpen(i8*, i32, i32) #1

declare dso_local i32 @sceKernelDelayThread(i32) #1

declare dso_local i32 @sceIoClose(i64) #1

declare dso_local i32 @sceDisplayWaitVblankStart(...) #1

declare dso_local i32 @lprintf(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
