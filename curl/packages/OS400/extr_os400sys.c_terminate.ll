; ModuleID = '/home/carl/AnghaBench/curl/packages/OS400/extr_os400sys.c_terminate.c'
source_filename = "/home/carl/AnghaBench/curl/packages/OS400/extr_os400sys.c_terminate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Curl_thread_buffer = common dso_local global i64 0, align 8
@buffer_threaded = common dso_local global i64 0, align 8
@thdkey = common dso_local global i32 0, align 4
@locbufs = common dso_local global i32* null, align 8
@buffer_undef = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @terminate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @terminate() #0 {
  %1 = load i64, i64* @Curl_thread_buffer, align 8
  %2 = load i64, i64* @buffer_threaded, align 8
  %3 = icmp eq i64 %1, %2
  br i1 %3, label %4, label %11

4:                                                ; preds = %0
  %5 = load i32, i32* @thdkey, align 4
  %6 = call i32* @pthread_getspecific(i32 %5)
  store i32* %6, i32** @locbufs, align 8
  %7 = load i32, i32* @thdkey, align 4
  %8 = call i32 @pthread_setspecific(i32 %7, i8* null)
  %9 = load i32, i32* @thdkey, align 4
  %10 = call i32 @pthread_key_delete(i32 %9)
  br label %11

11:                                               ; preds = %4, %0
  %12 = load i64, i64* @Curl_thread_buffer, align 8
  %13 = load i64, i64* @buffer_undef, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i32*, i32** @locbufs, align 8
  %17 = bitcast i32* %16 to i8*
  %18 = call i32 @thdbufdestroy(i8* %17)
  store i32* null, i32** @locbufs, align 8
  br label %19

19:                                               ; preds = %15, %11
  %20 = load i64, i64* @buffer_undef, align 8
  store i64 %20, i64* @Curl_thread_buffer, align 8
  ret void
}

declare dso_local i32* @pthread_getspecific(i32) #1

declare dso_local i32 @pthread_setspecific(i32, i8*) #1

declare dso_local i32 @pthread_key_delete(i32) #1

declare dso_local i32 @thdbufdestroy(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
