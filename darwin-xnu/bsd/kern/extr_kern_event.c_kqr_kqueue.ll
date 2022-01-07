; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqr_kqueue.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqr_kqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kqworkq = type { %struct.kqrequest* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.kqrequest = type { i32 }
%struct.TYPE_8__ = type { %struct.kqworkq*, i32 }

@KQR_WORKLOOP = common dso_local global i32 0, align 4
@KQWQ_NBUCKETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ %struct.kqworkq*, i32 } (%struct.TYPE_7__*, %struct.kqrequest*)* @kqr_kqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { %struct.kqworkq*, i32 } @kqr_kqueue(%struct.TYPE_7__* %0, %struct.kqrequest* %1) #0 {
  %3 = alloca %struct.TYPE_8__, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.kqrequest*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.kqrequest* %1, %struct.kqrequest** %5, align 8
  %6 = load %struct.kqrequest*, %struct.kqrequest** %5, align 8
  %7 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @KQR_WORKLOOP, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.kqrequest*, %struct.kqrequest** %5, align 8
  %14 = call i32 @kqr_kqworkloop(%struct.kqrequest* %13)
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  store i32 %14, i32* %15, align 8
  br label %44

16:                                               ; preds = %2
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.kqworkq*
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  store %struct.kqworkq* %22, %struct.kqworkq** %23, align 8
  %24 = load %struct.kqrequest*, %struct.kqrequest** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %26 = load %struct.kqworkq*, %struct.kqworkq** %25, align 8
  %27 = getelementptr inbounds %struct.kqworkq, %struct.kqworkq* %26, i32 0, i32 0
  %28 = load %struct.kqrequest*, %struct.kqrequest** %27, align 8
  %29 = icmp uge %struct.kqrequest* %24, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %16
  %31 = load %struct.kqrequest*, %struct.kqrequest** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %33 = load %struct.kqworkq*, %struct.kqworkq** %32, align 8
  %34 = getelementptr inbounds %struct.kqworkq, %struct.kqworkq* %33, i32 0, i32 0
  %35 = load %struct.kqrequest*, %struct.kqrequest** %34, align 8
  %36 = load i32, i32* @KQWQ_NBUCKETS, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %35, i64 %37
  %39 = icmp ult %struct.kqrequest* %31, %38
  br label %40

40:                                               ; preds = %30, %16
  %41 = phi i1 [ false, %16 ], [ %39, %30 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  br label %44

44:                                               ; preds = %40, %12
  %45 = bitcast %struct.TYPE_8__* %3 to { %struct.kqworkq*, i32 }*
  %46 = load { %struct.kqworkq*, i32 }, { %struct.kqworkq*, i32 }* %45, align 8
  ret { %struct.kqworkq*, i32 } %46
}

declare dso_local i32 @kqr_kqworkloop(%struct.kqrequest*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
