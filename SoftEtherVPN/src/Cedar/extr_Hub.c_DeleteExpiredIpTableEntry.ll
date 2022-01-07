; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Hub.c_DeleteExpiredIpTableEntry.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Hub.c_DeleteExpiredIpTableEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }

@IP_TABLE_EXPIRE_TIME_DHCP = common dso_local global i64 0, align 8
@IP_TABLE_EXPIRE_TIME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DeleteExpiredIpTableEntry(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %66

10:                                               ; preds = %1
  %11 = call i32* @NewListFast(i32* null)
  store i32* %11, i32** %3, align 8
  store i64 0, i64* %4, align 8
  br label %12

12:                                               ; preds = %42, %10
  %13 = load i64, i64* %4, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = call i64 @LIST_NUM(i32* %14)
  %16 = icmp slt i64 %13, %15
  br i1 %16, label %17, label %45

17:                                               ; preds = %12
  %18 = load i32*, i32** %2, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call %struct.TYPE_6__* @LIST_DATA(i32* %18, i64 %19)
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %5, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = load i64, i64* @IP_TABLE_EXPIRE_TIME_DHCP, align 8
  br label %32

30:                                               ; preds = %17
  %31 = load i64, i64* @IP_TABLE_EXPIRE_TIME, align 8
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i64 [ %29, %28 ], [ %31, %30 ]
  %34 = add nsw i64 %23, %33
  %35 = call i64 (...) @Tick64()
  %36 = icmp sle i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32*, i32** %3, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = call i32 @Add(i32* %38, %struct.TYPE_6__* %39)
  br label %41

41:                                               ; preds = %37, %32
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %4, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %4, align 8
  br label %12

45:                                               ; preds = %12
  store i64 0, i64* %4, align 8
  br label %46

46:                                               ; preds = %60, %45
  %47 = load i64, i64* %4, align 8
  %48 = load i32*, i32** %3, align 8
  %49 = call i64 @LIST_NUM(i32* %48)
  %50 = icmp slt i64 %47, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %46
  %52 = load i32*, i32** %3, align 8
  %53 = load i64, i64* %4, align 8
  %54 = call %struct.TYPE_6__* @LIST_DATA(i32* %52, i64 %53)
  store %struct.TYPE_6__* %54, %struct.TYPE_6__** %6, align 8
  %55 = load i32*, i32** %2, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %57 = call i32 @Delete(i32* %55, %struct.TYPE_6__* %56)
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %59 = call i32 @Free(%struct.TYPE_6__* %58)
  br label %60

60:                                               ; preds = %51
  %61 = load i64, i64* %4, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %4, align 8
  br label %46

63:                                               ; preds = %46
  %64 = load i32*, i32** %3, align 8
  %65 = call i32 @ReleaseList(i32* %64)
  br label %66

66:                                               ; preds = %63, %9
  ret void
}

declare dso_local i32* @NewListFast(i32*) #1

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local %struct.TYPE_6__* @LIST_DATA(i32*, i64) #1

declare dso_local i64 @Tick64(...) #1

declare dso_local i32 @Add(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @Delete(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @Free(%struct.TYPE_6__*) #1

declare dso_local i32 @ReleaseList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
