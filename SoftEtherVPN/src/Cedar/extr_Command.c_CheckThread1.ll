; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_CheckThread1.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_CheckThread1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32 }

@CHECK_THREAD_INCREMENT_COUNT = common dso_local global i64 0, align 8
@INFINITE = common dso_local global i32 0, align 4
@check_thread_global_1 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CheckThread1(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %9, %struct.TYPE_2__** %5, align 8
  %10 = load i64, i64* @CHECK_THREAD_INCREMENT_COUNT, align 8
  store i64 %10, i64* %7, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @INFINITE, align 4
  %15 = call i32 @WaitThread(i32 %13, i32 %14)
  store i64 0, i64* %6, align 8
  br label %16

16:                                               ; preds = %42, %2
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %45

20:                                               ; preds = %16
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @Lock(i32 %23)
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* @check_thread_global_1, align 8
  %28 = load i64, i64* @check_thread_global_1, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 @InputToNull(i8* %29)
  %31 = load i64, i64* @check_thread_global_1, align 8
  %32 = add nsw i64 %31, 1
  %33 = call i64 (...) @RetZero()
  %34 = add nsw i64 %32, %33
  store i64 %34, i64* @check_thread_global_1, align 8
  %35 = load i64, i64* @check_thread_global_1, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @Unlock(i32 %40)
  br label %42

42:                                               ; preds = %20
  %43 = load i64, i64* %6, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %6, align 8
  br label %16

45:                                               ; preds = %16
  ret void
}

declare dso_local i32 @WaitThread(i32, i32) #1

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @InputToNull(i8*) #1

declare dso_local i64 @RetZero(...) #1

declare dso_local i32 @Unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
