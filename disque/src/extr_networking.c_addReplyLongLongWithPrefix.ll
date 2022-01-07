; ModuleID = '/home/carl/AnghaBench/disque/src/extr_networking.c_addReplyLongLongWithPrefix.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_networking.c_addReplyLongLongWithPrefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32* }

@OBJ_SHARED_BULKHDR_LEN = common dso_local global i64 0, align 8
@shared = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @addReplyLongLongWithPrefix(i32* %0, i64 %1, i8 signext %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca [128 x i8], align 16
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8 %2, i8* %6, align 1
  %9 = load i8, i8* %6, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 42
  br i1 %11, label %12, label %23

12:                                               ; preds = %3
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @OBJ_SHARED_BULKHDR_LEN, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = load i32*, i32** %4, align 8
  %18 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @shared, i32 0, i32 1), align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @addReply(i32* %17, i32 %21)
  br label %59

23:                                               ; preds = %12, %3
  %24 = load i8, i8* %6, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 36
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @OBJ_SHARED_BULKHDR_LEN, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load i32*, i32** %4, align 8
  %33 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @shared, i32 0, i32 0), align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @addReply(i32* %32, i32 %36)
  br label %59

38:                                               ; preds = %27, %23
  br label %39

39:                                               ; preds = %38
  %40 = load i8, i8* %6, align 1
  %41 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  store i8 %40, i8* %41, align 16
  %42 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @ll2string(i8* %43, i32 127, i64 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 %48
  store i8 13, i8* %49, align 1
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 2
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 %52
  store i8 10, i8* %53, align 1
  %54 = load i32*, i32** %4, align 8
  %55 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 3
  %58 = call i32 @addReplyString(i32* %54, i8* %55, i32 %57)
  br label %59

59:                                               ; preds = %39, %31, %16
  ret void
}

declare dso_local i32 @addReply(i32*, i32) #1

declare dso_local i32 @ll2string(i8*, i32, i64) #1

declare dso_local i32 @addReplyString(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
