; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_OpenVPN.c_OvsGetAckReplyList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_OpenVPN.c_OvsGetAckReplyList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@OPENVPN_MAX_NUMACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @OvsGetAckReplyList(%struct.TYPE_3__* %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32* null, i32** %7, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = icmp eq %struct.TYPE_3__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i64*, i64** %5, align 8
  %15 = icmp eq i64* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %2
  store i64 0, i64* %3, align 8
  br label %74

17:                                               ; preds = %13
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i64 @LIST_NUM(i32* %20)
  %22 = load i32, i32* @OPENVPN_MAX_NUMACK, align 4
  %23 = call i64 @MIN(i64 %21, i32 %22)
  store i64 %23, i64* %8, align 8
  store i64 0, i64* %6, align 8
  br label %24

24:                                               ; preds = %47, %17
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %50

28:                                               ; preds = %24
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i64* @LIST_DATA(i32* %31, i64 %32)
  store i64* %33, i64** %9, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = call i32* @NewListFast(i32* null)
  store i32* %37, i32** %7, align 8
  br label %38

38:                                               ; preds = %36, %28
  %39 = load i32*, i32** %7, align 8
  %40 = load i64*, i64** %9, align 8
  %41 = call i32 @Add(i32* %39, i64* %40)
  %42 = load i64*, i64** %9, align 8
  %43 = load i64, i64* %42, align 8
  %44 = load i64*, i64** %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  store i64 %43, i64* %46, align 8
  br label %47

47:                                               ; preds = %38
  %48 = load i64, i64* %6, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %6, align 8
  br label %24

50:                                               ; preds = %24
  store i64 0, i64* %6, align 8
  br label %51

51:                                               ; preds = %67, %50
  %52 = load i64, i64* %6, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = call i64 @LIST_NUM(i32* %53)
  %55 = icmp slt i64 %52, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %51
  %57 = load i32*, i32** %7, align 8
  %58 = load i64, i64* %6, align 8
  %59 = call i64* @LIST_DATA(i32* %57, i64 %58)
  store i64* %59, i64** %10, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i64*, i64** %10, align 8
  %64 = call i32 @Delete(i32* %62, i64* %63)
  %65 = load i64*, i64** %10, align 8
  %66 = call i32 @Free(i64* %65)
  br label %67

67:                                               ; preds = %56
  %68 = load i64, i64* %6, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %6, align 8
  br label %51

70:                                               ; preds = %51
  %71 = load i32*, i32** %7, align 8
  %72 = call i32 @ReleaseList(i32* %71)
  %73 = load i64, i64* %8, align 8
  store i64 %73, i64* %3, align 8
  br label %74

74:                                               ; preds = %70, %16
  %75 = load i64, i64* %3, align 8
  ret i64 %75
}

declare dso_local i64 @MIN(i64, i32) #1

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local i64* @LIST_DATA(i32*, i64) #1

declare dso_local i32* @NewListFast(i32*) #1

declare dso_local i32 @Add(i32*, i64*) #1

declare dso_local i32 @Delete(i32*, i64*) #1

declare dso_local i32 @Free(i64*) #1

declare dso_local i32 @ReleaseList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
