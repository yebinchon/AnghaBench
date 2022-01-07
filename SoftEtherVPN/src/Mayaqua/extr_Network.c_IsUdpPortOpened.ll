; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_IsUdpPortOpened.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_IsUdpPortOpened.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IsUdpPortOpened(%struct.TYPE_6__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = icmp eq %struct.TYPE_6__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i64, i64* %7, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %3
  store i32 0, i32* %4, align 4
  br label %105

17:                                               ; preds = %13
  %18 = load i32*, i32** %6, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %63

20:                                               ; preds = %17
  store i64 0, i64* %8, align 8
  br label %21

21:                                               ; preds = %59, %20
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @LIST_NUM(i32 %25)
  %27 = icmp slt i64 %22, %26
  br i1 %27, label %28, label %62

28:                                               ; preds = %21
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %8, align 8
  %33 = call %struct.TYPE_5__* @LIST_DATA(i32 %31, i64 %32)
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %9, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %58

38:                                               ; preds = %28
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %38
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %7, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %43
  %50 = load i32*, i32** %6, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = call i64 @CmpIpAddr(i32* %50, i32* %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i32 1, i32* %4, align 4
  br label %105

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %56, %43
  br label %58

58:                                               ; preds = %57, %38, %28
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %8, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %8, align 8
  br label %21

62:                                               ; preds = %21
  br label %63

63:                                               ; preds = %62, %17
  store i64 0, i64* %8, align 8
  br label %64

64:                                               ; preds = %101, %63
  %65 = load i64, i64* %8, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @LIST_NUM(i32 %68)
  %70 = icmp slt i64 %65, %69
  br i1 %70, label %71, label %104

71:                                               ; preds = %64
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i64, i64* %8, align 8
  %76 = call %struct.TYPE_5__* @LIST_DATA(i32 %74, i64 %75)
  store %struct.TYPE_5__* %76, %struct.TYPE_5__** %10, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 3
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %100

81:                                               ; preds = %71
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %100

86:                                               ; preds = %81
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %7, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %86
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 2
  %95 = call i64 @IsZeroIP(i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  store i32 1, i32* %4, align 4
  br label %105

98:                                               ; preds = %92
  br label %99

99:                                               ; preds = %98, %86
  br label %100

100:                                              ; preds = %99, %81, %71
  br label %101

101:                                              ; preds = %100
  %102 = load i64, i64* %8, align 8
  %103 = add nsw i64 %102, 1
  store i64 %103, i64* %8, align 8
  br label %64

104:                                              ; preds = %64
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %104, %97, %55, %16
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local %struct.TYPE_5__* @LIST_DATA(i32, i64) #1

declare dso_local i64 @CmpIpAddr(i32*, i32*) #1

declare dso_local i64 @IsZeroIP(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
