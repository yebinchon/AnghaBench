; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_subr_log.c_oslog_setsize.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_subr_log.c_oslog_setsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OSLOG_STREAM_BUF_SIZE = common dso_local global i32 0, align 4
@oslog_stream_buf_size = common dso_local global i32 0, align 4
@OSLOG_NUM_STREAM_ENTRIES = common dso_local global i32 0, align 4
@oslog_stream_num_entries = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"oslog_setsize: new buffer size = %d, new num entries= %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @oslog_setsize(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @OSLOG_STREAM_BUF_SIZE, align 4
  %6 = icmp sle i32 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %19

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @OSLOG_STREAM_BUF_SIZE, align 4
  %11 = sdiv i32 %9, %10
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %2, align 4
  store i32 %12, i32* @oslog_stream_buf_size, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @OSLOG_NUM_STREAM_ENTRIES, align 4
  %15 = mul nsw i32 %13, %14
  store i32 %15, i32* @oslog_stream_num_entries, align 4
  %16 = load i32, i32* @oslog_stream_buf_size, align 4
  %17 = load i32, i32* @oslog_stream_num_entries, align 4
  %18 = call i32 @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @printf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
