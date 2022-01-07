; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_ioperf.c_spin_thread.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_ioperf.c_spin_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"spin thread %2d\00", align 1
@semaphore = common dso_local global i32 0, align 4
@worker_sem = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"semaphore_wait_signal\00", align 1
@SPIN_SECS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @spin_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @spin_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [30 x i8], align 16
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = ptrtoint i8* %5 to i32
  store i32 %6, i32* %3, align 4
  %7 = bitcast [30 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 30, i1 false)
  %8 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @snprintf(i8* %8, i32 30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %12 = call i32 @pthread_setname_np(i8* %11)
  %13 = load i32, i32* @semaphore, align 4
  %14 = load i32, i32* @worker_sem, align 4
  %15 = call i32 @semaphore_wait_signal(i32 %13, i32 %14)
  %16 = call i32 @T_ASSERT_MACH_SUCCESS(i32 %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* @SPIN_SECS, align 4
  %18 = call i32 @spin_for_duration(i32 %17)
  ret i8* null
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @pthread_setname_np(i8*) #2

declare dso_local i32 @T_ASSERT_MACH_SUCCESS(i32, i8*) #2

declare dso_local i32 @semaphore_wait_signal(i32, i32) #2

declare dso_local i32 @spin_for_duration(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
