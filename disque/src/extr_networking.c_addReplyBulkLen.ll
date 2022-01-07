; ModuleID = '/home/carl/AnghaBench/disque/src/extr_networking.c_addReplyBulkLen.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_networking.c_addReplyBulkLen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i64 }

@OBJ_SHARED_BULKHDR_LEN = common dso_local global i64 0, align 8
@shared = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @addReplyBulkLen(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = call i64 @sdsEncodedObject(%struct.TYPE_5__* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i64 @sdslen(i64 %13)
  store i64 %14, i64* %5, align 8
  br label %35

15:                                               ; preds = %2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %6, align 8
  store i64 1, i64* %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load i64, i64* %5, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = sub nsw i64 0, %24
  store i64 %25, i64* %6, align 8
  br label %26

26:                                               ; preds = %21, %15
  br label %27

27:                                               ; preds = %31, %26
  %28 = load i64, i64* %6, align 8
  %29 = sdiv i64 %28, 10
  store i64 %29, i64* %6, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i64, i64* %5, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %5, align 8
  br label %27

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %10
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @OBJ_SHARED_BULKHDR_LEN, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = load i32*, i32** %3, align 8
  %41 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @shared, i32 0, i32 0), align 8
  %42 = load i64, i64* %5, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @addReply(i32* %40, i32 %44)
  br label %50

46:                                               ; preds = %35
  %47 = load i32*, i32** %3, align 8
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @addReplyLongLongWithPrefix(i32* %47, i64 %48, i8 signext 36)
  br label %50

50:                                               ; preds = %46, %39
  ret void
}

declare dso_local i64 @sdsEncodedObject(%struct.TYPE_5__*) #1

declare dso_local i64 @sdslen(i64) #1

declare dso_local i32 @addReply(i32*, i32) #1

declare dso_local i32 @addReplyLongLongWithPrefix(i32*, i64, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
