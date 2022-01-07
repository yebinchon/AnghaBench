; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpc8.c_mpc8_probe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpc8.c_mpc8_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@TAG_MPCK = common dso_local global i64 0, align 8
@AVPROBE_SCORE_EXTENSION = common dso_local global i32 0, align 4
@AVPROBE_SCORE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @mpc8_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc8_probe(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 4
  store i8* %11, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %12, i64 %16
  store i8* %17, i8** %5, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %20, 16
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %121

23:                                               ; preds = %1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @AV_RL32(i8* %26)
  %28 = load i64, i64* @TAG_MPCK, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %121

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %119, %31
  %33 = load i8*, i8** %4, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 3
  %36 = icmp ult i8* %33, %35
  br i1 %36, label %37, label %120

37:                                               ; preds = %32
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 83
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load i8*, i8** %4, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 72
  br label %49

49:                                               ; preds = %43, %37
  %50 = phi i1 [ false, %37 ], [ %48, %43 ]
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %7, align 4
  %52 = load i8*, i8** %4, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp slt i32 %55, 65
  br i1 %56, label %75, label %57

57:                                               ; preds = %49
  %58 = load i8*, i8** %4, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp sgt i32 %61, 90
  br i1 %62, label %75, label %63

63:                                               ; preds = %57
  %64 = load i8*, i8** %4, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp slt i32 %67, 65
  br i1 %68, label %75, label %69

69:                                               ; preds = %63
  %70 = load i8*, i8** %4, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp sgt i32 %73, 90
  br i1 %74, label %75, label %76

75:                                               ; preds = %69, %63, %57, %49
  store i32 0, i32* %2, align 4
  br label %121

76:                                               ; preds = %69
  %77 = load i8*, i8** %4, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 2
  store i8* %78, i8** %4, align 8
  %79 = call i32 @bs_get_v(i8** %4)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp slt i32 %80, 2
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  store i32 0, i32* %2, align 4
  br label %121

83:                                               ; preds = %76
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = load i8*, i8** %5, align 8
  %87 = load i8*, i8** %4, align 8
  %88 = ptrtoint i8* %86 to i64
  %89 = ptrtoint i8* %87 to i64
  %90 = sub i64 %88, %89
  %91 = add nsw i64 %90, 2
  %92 = icmp sge i64 %85, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %83
  %94 = load i32, i32* @AVPROBE_SCORE_EXTENSION, align 4
  %95 = sub nsw i32 %94, 1
  store i32 %95, i32* %2, align 4
  br label %121

96:                                               ; preds = %83
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %113

99:                                               ; preds = %96
  %100 = load i32, i32* %6, align 4
  %101 = icmp slt i32 %100, 11
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* %6, align 4
  %104 = icmp sgt i32 %103, 28
  br i1 %104, label %105, label %106

105:                                              ; preds = %102, %99
  store i32 0, i32* %2, align 4
  br label %121

106:                                              ; preds = %102
  %107 = load i8*, i8** %4, align 8
  %108 = call i64 @AV_RL32(i8* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %106
  store i32 0, i32* %2, align 4
  br label %121

111:                                              ; preds = %106
  %112 = load i32, i32* @AVPROBE_SCORE_MAX, align 4
  store i32 %112, i32* %2, align 4
  br label %121

113:                                              ; preds = %96
  %114 = load i32, i32* %6, align 4
  %115 = sub nsw i32 %114, 2
  %116 = load i8*, i8** %4, align 8
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i8, i8* %116, i64 %117
  store i8* %118, i8** %4, align 8
  br label %119

119:                                              ; preds = %113
  br label %32

120:                                              ; preds = %32
  store i32 0, i32* %2, align 4
  br label %121

121:                                              ; preds = %120, %111, %110, %105, %93, %82, %75, %30, %22
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i64 @AV_RL32(i8*) #1

declare dso_local i32 @bs_get_v(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
