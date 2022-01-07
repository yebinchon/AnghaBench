; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_devices.c_Devices_H_Close.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_devices.c_Devices_H_Close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@devbug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"HHCLOS\00", align 1
@h_fp = common dso_local global i32** null, align 8
@h_iocb = common dso_local global i64 0, align 8
@h_tmpbuf = common dso_local global i32* null, align 8
@CPU_regY = common dso_local global i32 0, align 4
@CPU_ClrN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Devices_H_Close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Devices_H_Close() #0 {
  %1 = load i64, i64* @devbug, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = call i32 @Log_print(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %5

5:                                                ; preds = %3, %0
  %6 = call i32 (...) @Devices_GetIOCB()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  br label %30

9:                                                ; preds = %5
  %10 = load i32**, i32*** @h_fp, align 8
  %11 = load i64, i64* @h_iocb, align 8
  %12 = getelementptr inbounds i32*, i32** %10, i64 %11
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %9
  %16 = load i32**, i32*** @h_fp, align 8
  %17 = load i64, i64* @h_iocb, align 8
  %18 = getelementptr inbounds i32*, i32** %16, i64 %17
  %19 = load i32*, i32** %18, align 8
  %20 = load i32*, i32** @h_tmpbuf, align 8
  %21 = load i64, i64* @h_iocb, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @Util_fclose(i32* %19, i32 %23)
  %25 = load i32**, i32*** @h_fp, align 8
  %26 = load i64, i64* @h_iocb, align 8
  %27 = getelementptr inbounds i32*, i32** %25, i64 %26
  store i32* null, i32** %27, align 8
  br label %28

28:                                               ; preds = %15, %9
  store i32 1, i32* @CPU_regY, align 4
  %29 = load i32, i32* @CPU_ClrN, align 4
  br label %30

30:                                               ; preds = %28, %8
  ret void
}

declare dso_local i32 @Log_print(i8*) #1

declare dso_local i32 @Devices_GetIOCB(...) #1

declare dso_local i32 @Util_fclose(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
