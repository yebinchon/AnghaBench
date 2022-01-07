; ModuleID = '/home/carl/AnghaBench/disque/src/extr_job.c_AOFLoadJob.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_job.c_AOFLoadJob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32* }

@server = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@AOF_OFF = common dso_local global i64 0, align 8
@SER_STORAGE = common dso_local global i32 0, align 4
@OBJ_STRING = common dso_local global i32 0, align 4
@shared = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AOFLoadJob(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca [2 x i32*], align 16
  store i32* %0, i32** %2, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 0), align 8
  %7 = load i64, i64* @AOF_OFF, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %26

10:                                               ; preds = %1
  %11 = call i32 (...) @sdsempty()
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* @SER_STORAGE, align 4
  %14 = call i32 @serializeJob(i32 %11, i32* %12, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @OBJ_STRING, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32* @createObject(i32 %15, i32 %16)
  store i32* %17, i32** %4, align 8
  %18 = getelementptr inbounds [2 x i32*], [2 x i32*]* %5, i64 0, i64 0
  %19 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 0), align 8
  store i32* %19, i32** %18, align 8
  %20 = getelementptr inbounds i32*, i32** %18, i64 1
  %21 = load i32*, i32** %4, align 8
  store i32* %21, i32** %20, align 8
  %22 = getelementptr inbounds [2 x i32*], [2 x i32*]* %5, i64 0, i64 0
  %23 = call i32 @feedAppendOnlyFile(i32** %22, i32 2)
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @decrRefCount(i32* %24)
  br label %26

26:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @serializeJob(i32, i32*, i32) #1

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32* @createObject(i32, i32) #1

declare dso_local i32 @feedAppendOnlyFile(i32**, i32) #1

declare dso_local i32 @decrRefCount(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
