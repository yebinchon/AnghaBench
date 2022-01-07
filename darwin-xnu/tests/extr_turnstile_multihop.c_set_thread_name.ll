; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_turnstile_multihop.c_set_thread_name.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_turnstile_multihop.c_set_thread_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"%s at pri %2d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @set_thread_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_thread_name(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [50 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = bitcast [50 x i8]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 50, i1 false)
  %7 = call i32 (...) @pthread_self()
  %8 = call i32 @pthread_mach_thread_np(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @get_pri(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  %12 = load i8*, i8** %2, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @snprintf(i8* %11, i32 50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %12, i32 %13)
  %15 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  %16 = call i32 @pthread_setname_np(i8* %15)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @pthread_mach_thread_np(i32) #2

declare dso_local i32 @pthread_self(...) #2

declare dso_local i32 @get_pri(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #2

declare dso_local i32 @pthread_setname_np(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
