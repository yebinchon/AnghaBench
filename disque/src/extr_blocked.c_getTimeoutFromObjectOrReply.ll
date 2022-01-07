; ModuleID = '/home/carl/AnghaBench/disque/src/extr_blocked.c_getTimeoutFromObjectOrReply.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_blocked.c_getTimeoutFromObjectOrReply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [42 x i8] c"timeout is not an integer or out of range\00", align 1
@C_OK = common dso_local global i64 0, align 8
@C_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"timeout is negative\00", align 1
@UNIT_SECONDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getTimeoutFromObjectOrReply(i32* %0, i32* %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = call i64 @getLongLongFromObjectOrReply(i32* %11, i32* %12, i64* %10, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %14 = load i64, i64* @C_OK, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @C_ERR, align 4
  store i32 %17, i32* %5, align 4
  br label %44

18:                                               ; preds = %4
  %19 = load i64, i64* %10, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @addReplyError(i32* %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @C_ERR, align 4
  store i32 %24, i32* %5, align 4
  br label %44

25:                                               ; preds = %18
  %26 = load i64, i64* %10, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @UNIT_SECONDS, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i64, i64* %10, align 8
  %34 = mul nsw i64 %33, 1000
  store i64 %34, i64* %10, align 8
  br label %35

35:                                               ; preds = %32, %28
  %36 = call i64 (...) @mstime()
  %37 = load i64, i64* %10, align 8
  %38 = add nsw i64 %37, %36
  store i64 %38, i64* %10, align 8
  br label %39

39:                                               ; preds = %35, %25
  %40 = load i64, i64* %10, align 8
  %41 = load i64*, i64** %8, align 8
  store i64 %40, i64* %41, align 8
  %42 = load i64, i64* @C_OK, align 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %39, %21, %16
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i64 @getLongLongFromObjectOrReply(i32*, i32*, i64*, i8*) #1

declare dso_local i32 @addReplyError(i32*, i8*) #1

declare dso_local i64 @mstime(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
