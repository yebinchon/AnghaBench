; ModuleID = '/home/carl/AnghaBench/disque/src/extr_object.c_getLongFromObjectOrReply.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_object.c_getLongFromObjectOrReply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@C_OK = common dso_local global i64 0, align 8
@C_ERR = common dso_local global i32 0, align 4
@LONG_MIN = common dso_local global i64 0, align 8
@LONG_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"value is out of range\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getLongFromObjectOrReply(i32* %0, i32* %1, i64* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64* %2, i64** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = call i64 @getLongLongFromObjectOrReply(i32* %11, i32* %12, i64* %10, i8* %13)
  %15 = load i64, i64* @C_OK, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @C_ERR, align 4
  store i32 %18, i32* %5, align 4
  br label %44

19:                                               ; preds = %4
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* @LONG_MIN, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* @LONG_MAX, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %23, %19
  %28 = load i8*, i8** %9, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32*, i32** %6, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = call i32 @addReplyError(i32* %31, i8* %32)
  br label %37

34:                                               ; preds = %27
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @addReplyError(i32* %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %30
  %38 = load i32, i32* @C_ERR, align 4
  store i32 %38, i32* %5, align 4
  br label %44

39:                                               ; preds = %23
  %40 = load i64, i64* %10, align 8
  %41 = load i64*, i64** %8, align 8
  store i64 %40, i64* %41, align 8
  %42 = load i64, i64* @C_OK, align 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %39, %37, %17
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i64 @getLongLongFromObjectOrReply(i32*, i32*, i64*, i8*) #1

declare dso_local i32 @addReplyError(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
