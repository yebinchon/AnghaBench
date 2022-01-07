; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpeg.c_check_pes.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpeg.c_check_pes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @check_pes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_pes(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 3
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, 192
  %11 = icmp eq i32 %10, 128
  br i1 %11, label %12, label %37

12:                                               ; preds = %2
  %13 = load i32*, i32** %3, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 4
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 192
  %17 = icmp ne i32 %16, 64
  br i1 %17, label %18, label %37

18:                                               ; preds = %12
  %19 = load i32*, i32** %3, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 4
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 192
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %18
  %25 = load i32*, i32** %3, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 4
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 192
  %29 = ashr i32 %28, 2
  %30 = load i32*, i32** %3, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 6
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 240
  %34 = icmp eq i32 %29, %33
  br label %35

35:                                               ; preds = %24, %18
  %36 = phi i1 [ true, %18 ], [ %34, %24 ]
  br label %37

37:                                               ; preds = %35, %12, %2
  %38 = phi i1 [ false, %12 ], [ false, %2 ], [ %36, %35 ]
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %6, align 4
  %40 = load i32*, i32** %3, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  store i32* %41, i32** %3, align 8
  br label %42

42:                                               ; preds = %53, %37
  %43 = load i32*, i32** %3, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = icmp ult i32* %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32*, i32** %3, align 8
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 255
  br label %50

50:                                               ; preds = %46, %42
  %51 = phi i1 [ false, %42 ], [ %49, %46 ]
  br i1 %51, label %52, label %56

52:                                               ; preds = %50
  br label %53

53:                                               ; preds = %52
  %54 = load i32*, i32** %3, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %3, align 8
  br label %42

56:                                               ; preds = %50
  %57 = load i32*, i32** %3, align 8
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 192
  %60 = icmp eq i32 %59, 64
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32*, i32** %3, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  store i32* %63, i32** %3, align 8
  br label %64

64:                                               ; preds = %61, %56
  %65 = load i32*, i32** %3, align 8
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 240
  %68 = icmp eq i32 %67, 32
  br i1 %68, label %69, label %82

69:                                               ; preds = %64
  %70 = load i32*, i32** %3, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %3, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %72, %75
  %77 = load i32*, i32** %3, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 4
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %76, %79
  %81 = and i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %118

82:                                               ; preds = %64
  %83 = load i32*, i32** %3, align 8
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, 240
  %86 = icmp eq i32 %85, 48
  br i1 %86, label %87, label %112

87:                                               ; preds = %82
  %88 = load i32*, i32** %3, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %3, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 2
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %90, %93
  %95 = load i32*, i32** %3, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 4
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %94, %97
  %99 = load i32*, i32** %3, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 5
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %98, %101
  %103 = load i32*, i32** %3, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 7
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %102, %105
  %107 = load i32*, i32** %3, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 9
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %106, %109
  %111 = and i32 %110, 1
  store i32 %111, i32* %5, align 4
  br label %117

112:                                              ; preds = %82
  %113 = load i32*, i32** %3, align 8
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, 15
  %116 = zext i1 %115 to i32
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %112, %87
  br label %118

118:                                              ; preds = %117, %69
  %119 = load i32, i32* %5, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %118
  %122 = load i32, i32* %6, align 4
  %123 = icmp ne i32 %122, 0
  br label %124

124:                                              ; preds = %121, %118
  %125 = phi i1 [ true, %118 ], [ %123, %121 ]
  %126 = zext i1 %125 to i32
  ret i32 %126
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
