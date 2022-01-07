; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_FindIkeSaByEndPointAndInitiatorCookie.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_FindIkeSaByEndPointAndInitiatorCookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64, i32, i32 }
%struct.TYPE_7__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @FindIkeSaByEndPointAndInitiatorCookie(%struct.TYPE_7__* %0, i32* %1, i64 %2, i32* %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_8__*, align 8
  %18 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32* %3, i32** %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %20 = icmp eq %struct.TYPE_7__* %19, null
  br i1 %20, label %36, label %21

21:                                               ; preds = %7
  %22 = load i32*, i32** %10, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %36, label %24

24:                                               ; preds = %21
  %25 = load i32*, i32** %12, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %24
  %28 = load i64, i64* %11, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = load i64, i64* %13, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i64, i64* %14, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33, %30, %27, %24, %21, %7
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %8, align 8
  br label %96

37:                                               ; preds = %33
  store i64 0, i64* %16, align 8
  br label %38

38:                                               ; preds = %92, %37
  %39 = load i64, i64* %16, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @LIST_NUM(i32 %42)
  %44 = icmp slt i64 %39, %43
  br i1 %44, label %45, label %95

45:                                               ; preds = %38
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* %16, align 8
  %50 = call %struct.TYPE_8__* @LIST_DATA(i32 %48, i64 %49)
  store %struct.TYPE_8__* %50, %struct.TYPE_8__** %17, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  store %struct.TYPE_9__* %53, %struct.TYPE_9__** %18, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 3
  %56 = load i32*, i32** %10, align 8
  %57 = call i64 @CmpIpAddr(i32* %55, i32* %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %91

59:                                               ; preds = %45
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  %62 = load i32*, i32** %12, align 8
  %63 = call i64 @CmpIpAddr(i32* %61, i32* %62)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %91

65:                                               ; preds = %59
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %11, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %91

71:                                               ; preds = %65
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %13, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %91

77:                                               ; preds = %71
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %14, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %77
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %15, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  store %struct.TYPE_8__* %90, %struct.TYPE_8__** %8, align 8
  br label %96

91:                                               ; preds = %83, %77, %71, %65, %59, %45
  br label %92

92:                                               ; preds = %91
  %93 = load i64, i64* %16, align 8
  %94 = add nsw i64 %93, 1
  store i64 %94, i64* %16, align 8
  br label %38

95:                                               ; preds = %38
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %8, align 8
  br label %96

96:                                               ; preds = %95, %89, %36
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  ret %struct.TYPE_8__* %97
}

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local %struct.TYPE_8__* @LIST_DATA(i32, i64) #1

declare dso_local i64 @CmpIpAddr(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
