; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Neo6/extr_NDIS6.c_NeoNdisSet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Neo6/extr_NDIS6.c_NeoNdisSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ctx = common dso_local global %struct.TYPE_2__* null, align 8
@STATUS_UNSUCCESSFUL = common dso_local global i32 0, align 4
@NDIS_STATUS_INVALID_LENGTH = common dso_local global i32 0, align 4
@NDIS_STATUS_SUCCESS = common dso_local global i32 0, align 4
@NDIS_STATUS_INVALID_OID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NeoNdisSet(i32 %0, i32 %1, i8* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %15 = icmp eq %struct.TYPE_2__* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %6
  %17 = load i32, i32* @STATUS_UNSUCCESSFUL, align 4
  store i32 %17, i32* %7, align 4
  br label %59

18:                                               ; preds = %6
  %19 = load i32*, i32** %12, align 8
  store i32 0, i32* %19, align 4
  %20 = load i32*, i32** %13, align 8
  store i32 0, i32* %20, align 4
  %21 = load i32, i32* %9, align 4
  switch i32 %21, label %57 [
    i32 131, label %22
    i32 132, label %36
    i32 130, label %45
    i32 133, label %49
    i32 128, label %53
    i32 129, label %53
  ]

22:                                               ; preds = %18
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 4
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32*, i32** %13, align 8
  store i32 4, i32* %26, align 4
  %27 = load i32, i32* @NDIS_STATUS_INVALID_LENGTH, align 4
  store i32 %27, i32* %7, align 4
  br label %59

28:                                               ; preds = %22
  %29 = load i32*, i32** %12, align 8
  store i32 4, i32* %29, align 4
  %30 = load i8*, i8** %10, align 8
  %31 = bitcast i8* %30 to i32*
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @NDIS_STATUS_SUCCESS, align 4
  store i32 %35, i32* %7, align 4
  br label %59

36:                                               ; preds = %18
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 4
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32*, i32** %13, align 8
  store i32 4, i32* %40, align 4
  %41 = load i32, i32* @NDIS_STATUS_INVALID_LENGTH, align 4
  store i32 %41, i32* %7, align 4
  br label %59

42:                                               ; preds = %36
  %43 = load i32*, i32** %12, align 8
  store i32 4, i32* %43, align 4
  %44 = load i32, i32* @NDIS_STATUS_SUCCESS, align 4
  store i32 %44, i32* %7, align 4
  br label %59

45:                                               ; preds = %18
  %46 = load i32, i32* %11, align 4
  %47 = load i32*, i32** %12, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* @NDIS_STATUS_SUCCESS, align 4
  store i32 %48, i32* %7, align 4
  br label %59

49:                                               ; preds = %18
  %50 = load i32, i32* %11, align 4
  %51 = load i32*, i32** %12, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* @NDIS_STATUS_SUCCESS, align 4
  store i32 %52, i32* %7, align 4
  br label %59

53:                                               ; preds = %18, %18
  %54 = load i32, i32* %11, align 4
  %55 = load i32*, i32** %12, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* @NDIS_STATUS_SUCCESS, align 4
  store i32 %56, i32* %7, align 4
  br label %59

57:                                               ; preds = %18
  %58 = load i32, i32* @NDIS_STATUS_INVALID_OID, align 4
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %57, %53, %49, %45, %42, %39, %28, %25, %16
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
