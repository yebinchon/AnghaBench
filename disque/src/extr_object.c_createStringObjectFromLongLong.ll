; ModuleID = '/home/carl/AnghaBench/disque/src/extr_object.c_createStringObjectFromLongLong.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_object.c_createStringObjectFromLongLong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i8*, i32 }

@OBJ_SHARED_INTEGERS = common dso_local global i64 0, align 8
@shared = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@LONG_MIN = common dso_local global i64 0, align 8
@LONG_MAX = common dso_local global i64 0, align 8
@OBJ_STRING = common dso_local global i32 0, align 4
@OBJ_ENCODING_INT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @createStringObjectFromLongLong(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = icmp sge i64 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %1
  %7 = load i64, i64* %2, align 8
  %8 = load i64, i64* @OBJ_SHARED_INTEGERS, align 8
  %9 = icmp slt i64 %7, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %6
  %11 = load %struct.TYPE_6__**, %struct.TYPE_6__*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @shared, i32 0, i32 0), align 8
  %12 = load i64, i64* %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %11, i64 %12
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = call i32 @incrRefCount(%struct.TYPE_6__* %14)
  %16 = load %struct.TYPE_6__**, %struct.TYPE_6__*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @shared, i32 0, i32 0), align 8
  %17 = load i64, i64* %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %16, i64 %17
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %3, align 8
  br label %44

20:                                               ; preds = %6, %1
  %21 = load i64, i64* %2, align 8
  %22 = load i64, i64* @LONG_MIN, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %20
  %25 = load i64, i64* %2, align 8
  %26 = load i64, i64* @LONG_MAX, align 8
  %27 = icmp sle i64 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %24
  %29 = load i32, i32* @OBJ_STRING, align 4
  %30 = call %struct.TYPE_6__* @createObject(i32 %29, i32* null)
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %3, align 8
  %31 = load i32, i32* @OBJ_ENCODING_INT, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load i64, i64* %2, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  br label %43

38:                                               ; preds = %24, %20
  %39 = load i32, i32* @OBJ_STRING, align 4
  %40 = load i64, i64* %2, align 8
  %41 = call i32* @sdsfromlonglong(i64 %40)
  %42 = call %struct.TYPE_6__* @createObject(i32 %39, i32* %41)
  store %struct.TYPE_6__* %42, %struct.TYPE_6__** %3, align 8
  br label %43

43:                                               ; preds = %38, %28
  br label %44

44:                                               ; preds = %43, %10
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %45
}

declare dso_local i32 @incrRefCount(%struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_6__* @createObject(i32, i32*) #1

declare dso_local i32* @sdsfromlonglong(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
