; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_pcsamples.c_add_pcbuffer.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_pcsamples.c_add_pcbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pcsample_enable = common dso_local global i64 0, align 8
@pc_trace_cnt = common dso_local global i32 0, align 4
@pc_trace_buf = common dso_local global i32* null, align 8
@pcsample_beg = common dso_local global i32 0, align 4
@pcsample_end = common dso_local global i32 0, align 4
@pc_bufptr = common dso_local global i32* null, align 8
@pc_buffer = common dso_local global i32* null, align 8
@pc_buflast = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_pcbuffer() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @pcsample_enable, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %56

6:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %7

7:                                                ; preds = %42, %6
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* @pc_trace_cnt, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %45

11:                                               ; preds = %7
  %12 = load i32*, i32** @pc_trace_buf, align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* @pcsample_beg, align 4
  %18 = load i32, i32* %2, align 4
  %19 = icmp ule i32 %17, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %11
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @pcsample_end, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %20
  %25 = load i32*, i32** @pc_bufptr, align 8
  %26 = load i32*, i32** @pc_buffer, align 8
  %27 = icmp ugt i32* %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load i32*, i32** @pc_bufptr, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 -1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %2, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %42

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35, %24
  %37 = load i32, i32* %2, align 4
  %38 = load i32*, i32** @pc_bufptr, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32*, i32** @pc_bufptr, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** @pc_bufptr, align 8
  br label %41

41:                                               ; preds = %36, %20, %11
  br label %42

42:                                               ; preds = %41, %34
  %43 = load i32, i32* %1, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %1, align 4
  br label %7

45:                                               ; preds = %7
  %46 = load i32*, i32** @pc_bufptr, align 8
  %47 = load i32, i32* @pc_trace_cnt, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32*, i32** @pc_buflast, align 8
  %51 = icmp uge i32* %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  store i64 0, i64* @pcsample_enable, align 8
  %53 = call i32 (...) @disable_branch_tracing()
  %54 = call i32 @wakeup(i64* @pcsample_enable)
  br label %55

55:                                               ; preds = %52, %45
  br label %56

56:                                               ; preds = %55, %5
  ret void
}

declare dso_local i32 @disable_branch_tracing(...) #1

declare dso_local i32 @wakeup(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
