; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_pcsamples.c_pcsamples_bootstrap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_pcsamples.c_pcsamples_bootstrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOTSUP = common dso_local global i32 0, align 4
@npcbufs = common dso_local global i32 0, align 4
@pc_bufsize = common dso_local global i32 0, align 4
@kernel_map = common dso_local global i32 0, align 4
@pc_buftomem = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@pc_buffer = common dso_local global i32* null, align 8
@pc_bufptr = common dso_local global i32* null, align 8
@pc_buflast = common dso_local global i32* null, align 8
@pcsample_enable = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcsamples_bootstrap() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @disable_branch_tracing()
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* @ENOTSUP, align 4
  store i32 %5, i32* %1, align 4
  br label %31

6:                                                ; preds = %0
  %7 = load i32, i32* @npcbufs, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 4
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* @pc_bufsize, align 4
  %11 = load i32, i32* @kernel_map, align 4
  %12 = load i32, i32* @pc_bufsize, align 4
  %13 = call i64 @kmem_alloc(i32 %11, i64* @pc_buftomem, i32 %12)
  %14 = load i64, i64* @KERN_SUCCESS, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %6
  %17 = load i64, i64* @pc_buftomem, align 8
  %18 = inttoptr i64 %17 to i32*
  store i32* %18, i32** @pc_buffer, align 8
  br label %20

19:                                               ; preds = %6
  store i32* null, i32** @pc_buffer, align 8
  br label %20

20:                                               ; preds = %19, %16
  %21 = load i32*, i32** @pc_buffer, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i32*, i32** @pc_buffer, align 8
  store i32* %24, i32** @pc_bufptr, align 8
  %25 = load i32*, i32** @pc_bufptr, align 8
  %26 = load i32, i32* @npcbufs, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32* %28, i32** @pc_buflast, align 8
  store i64 0, i64* @pcsample_enable, align 8
  store i32 0, i32* %1, align 4
  br label %31

29:                                               ; preds = %20
  store i32 0, i32* @pc_bufsize, align 4
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %1, align 4
  br label %31

31:                                               ; preds = %29, %23, %4
  %32 = load i32, i32* %1, align 4
  ret i32 %32
}

declare dso_local i32 @disable_branch_tracing(...) #1

declare dso_local i64 @kmem_alloc(i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
