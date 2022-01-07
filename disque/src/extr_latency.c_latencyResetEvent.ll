; ModuleID = '/home/carl/AnghaBench/disque/src/extr_latency.c_latencyResetEvent.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_latency.c_latencyResetEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @latencyResetEvent(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 4
  %8 = call i32* @dictGetSafeIterator(i32 %7)
  store i32* %8, i32** %3, align 8
  br label %9

9:                                                ; preds = %29, %1
  %10 = load i32*, i32** %3, align 8
  %11 = call i32* @dictNext(i32* %10)
  store i32* %11, i32** %4, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %30

13:                                               ; preds = %9
  %14 = load i32*, i32** %4, align 8
  %15 = call i8* @dictGetKey(i32* %14)
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %2, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load i8*, i8** %6, align 8
  %20 = load i8*, i8** %2, align 8
  %21 = call i64 @strcasecmp(i8* %19, i8* %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18, %13
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 4
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @dictDelete(i32 %24, i8* %25)
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %23, %18
  br label %9

30:                                               ; preds = %9
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @dictReleaseIterator(i32* %31)
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32* @dictGetSafeIterator(i32) #1

declare dso_local i32* @dictNext(i32*) #1

declare dso_local i8* @dictGetKey(i32*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @dictDelete(i32, i8*) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
