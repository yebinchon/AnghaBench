; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_OpenVPN.c_OvsNewServerSessionId.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_OpenVPN.c_OvsNewServerSessionId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @OvsNewServerSessionId(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = icmp eq %struct.TYPE_6__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %50

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %11, %19, %49
  %13 = call i64 (...) @Rand64()
  store i64 %13, i64* %4, align 8
  store i32 0, i32* %6, align 4
  %14 = load i64, i64* %4, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = load i64, i64* %4, align 8
  %18 = icmp eq i64 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %12
  br label %12

20:                                               ; preds = %16
  store i64 0, i64* %5, align 8
  br label %21

21:                                               ; preds = %41, %20
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @LIST_NUM(i32 %25)
  %27 = icmp slt i64 %22, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %21
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %5, align 8
  %33 = call %struct.TYPE_5__* @LIST_DATA(i32 %31, i64 %32)
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %7, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %4, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  store i32 1, i32* %6, align 4
  br label %40

40:                                               ; preds = %39, %28
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %5, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %5, align 8
  br label %21

44:                                               ; preds = %21
  %45 = load i32, i32* %6, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i64, i64* %4, align 8
  store i64 %48, i64* %2, align 8
  br label %50

49:                                               ; preds = %44
  br label %12

50:                                               ; preds = %47, %10
  %51 = load i64, i64* %2, align 8
  ret i64 %51
}

declare dso_local i64 @Rand64(...) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local %struct.TYPE_5__* @LIST_DATA(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
