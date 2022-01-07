; ModuleID = '/home/carl/AnghaBench/TDengine/src/os/darwin/src/extr_tdarwin.c_taosInitTimer.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/os/darwin/src/extr_tdarwin.c_taosInitTimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.itimerval = type { %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@SIGALRM = common dso_local global i32 0, align 4
@ITIMER_REAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @taosInitTimer(void (i32)* %0, i32 %1) #0 {
  %3 = alloca void (i32)*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.itimerval, align 8
  store void (i32)* %0, void (i32)** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @SIGALRM, align 4
  %7 = load void (i32)*, void (i32)** %3, align 8
  %8 = call i32 @signal(i32 %6, void (i32)* %7)
  %9 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %5, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* %4, align 4
  %12 = mul nsw i32 1000, %11
  %13 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %5, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %5, i32 0, i32 1
  %16 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %5, i32 0, i32 0
  %17 = bitcast %struct.TYPE_2__* %15 to i8*
  %18 = bitcast %struct.TYPE_2__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 16, i1 false)
  %19 = load i32, i32* @ITIMER_REAL, align 4
  %20 = call i32 @setitimer(i32 %19, %struct.itimerval* %5, i32* null)
  ret i32 %20
}

declare dso_local i32 @signal(i32, void (i32)*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @setitimer(i32, %struct.itimerval*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
