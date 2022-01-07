; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlpenc.c_compare_matrix_params.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlpenc.c_compare_matrix_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i64*, i64*, i64** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_8__*)* @compare_matrix_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_matrix_params(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %8, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %124

22:                                               ; preds = %3
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %124

28:                                               ; preds = %22
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %56, %28
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ule i32 %33, %36
  br i1 %37, label %38, label %59

38:                                               ; preds = %32
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %45, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %38
  store i32 1, i32* %4, align 4
  br label %124

55:                                               ; preds = %38
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %9, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %32

59:                                               ; preds = %32
  store i32 0, i32* %10, align 4
  br label %60

60:                                               ; preds = %120, %59
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ult i32 %61, %64
  br i1 %65, label %66, label %123

66:                                               ; preds = %60
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 2
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %73, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %66
  store i32 1, i32* %4, align 4
  br label %124

83:                                               ; preds = %66
  store i32 0, i32* %9, align 4
  br label %84

84:                                               ; preds = %116, %83
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ult i32 %85, %88
  br i1 %89, label %90, label %119

90:                                               ; preds = %84
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 3
  %93 = load i64**, i64*** %92, align 8
  %94 = load i32, i32* %10, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i64*, i64** %93, i64 %95
  %97 = load i64*, i64** %96, align 8
  %98 = load i32, i32* %9, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 3
  %104 = load i64**, i64*** %103, align 8
  %105 = load i32, i32* %10, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i64*, i64** %104, i64 %106
  %108 = load i64*, i64** %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %101, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %90
  store i32 1, i32* %4, align 4
  br label %124

115:                                              ; preds = %90
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %9, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %9, align 4
  br label %84

119:                                              ; preds = %84
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %10, align 4
  %122 = add i32 %121, 1
  store i32 %122, i32* %10, align 4
  br label %60

123:                                              ; preds = %60
  store i32 0, i32* %4, align 4
  br label %124

124:                                              ; preds = %123, %114, %82, %54, %27, %21
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
