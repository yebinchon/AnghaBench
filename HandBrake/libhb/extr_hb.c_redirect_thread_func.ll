; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_hb.c_redirect_thread_func.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_hb.c_redirect_thread_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@stderr = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @redirect_thread_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @redirect_thread_func(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [2 x i32], align 4
  %4 = alloca i32*, align 8
  %5 = alloca [500 x i8], align 16
  store i8* %0, i8** %2, align 8
  %6 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %7 = call i64 @pipe(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %25

10:                                               ; preds = %1
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dup2(i32 %12, i32 2)
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32* @fdopen(i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %16, i32** %4, align 8
  br label %17

17:                                               ; preds = %22, %10
  %18 = getelementptr inbounds [500 x i8], [500 x i8]* %5, i64 0, i64 0
  %19 = load i32*, i32** %4, align 8
  %20 = call i32* @fgets(i8* %18, i32 500, i32* %19)
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = getelementptr inbounds [500 x i8], [500 x i8]* %5, i64 0, i64 0
  %24 = call i32 @hb_log_callback(i8* %23)
  br label %17

25:                                               ; preds = %9, %17
  ret void
}

declare dso_local i64 @pipe(i32*) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @hb_log_callback(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
