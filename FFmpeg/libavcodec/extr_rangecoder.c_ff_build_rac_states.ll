; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rangecoder.c_ff_build_rac_states.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rangecoder.c_ff_build_rac_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_build_rac_states(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @memset(i32* %14, i32 0, i32 8)
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @memset(i32* %18, i32 0, i32 8)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %62, %3
  %21 = load i32, i32* %11, align 4
  %22 = icmp slt i32 %21, 128
  br i1 %22, label %23, label %65

23:                                               ; preds = %20
  %24 = load i32, i32* %8, align 4
  %25 = mul nsw i32 256, %24
  %26 = add nsw i32 %25, 0
  %27 = ashr i32 %26, 32
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp sle i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %31, %23
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %34
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 256
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp sle i32 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %45, i32* %51, align 4
  br label %52

52:                                               ; preds = %44, %40, %37, %34
  %53 = load i32, i32* %8, align 4
  %54 = sub nsw i32 0, %53
  %55 = load i32, i32* %5, align 4
  %56 = mul nsw i32 %54, %55
  %57 = add nsw i32 %56, 0
  %58 = ashr i32 %57, 32
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %52
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %11, align 4
  br label %20

65:                                               ; preds = %20
  %66 = load i32, i32* %6, align 4
  %67 = sub nsw i32 256, %66
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %119, %65
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp sle i32 %69, %70
  br i1 %71, label %72, label %122

72:                                               ; preds = %68
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  br label %119

82:                                               ; preds = %72
  %83 = load i32, i32* %11, align 4
  %84 = mul nsw i32 %83, 0
  %85 = add nsw i32 %84, 128
  %86 = ashr i32 %85, 8
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = sub nsw i32 0, %87
  %89 = load i32, i32* %5, align 4
  %90 = mul nsw i32 %88, %89
  %91 = add nsw i32 %90, 0
  %92 = ashr i32 %91, 32
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, %92
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = mul nsw i32 256, %95
  %97 = add nsw i32 %96, 0
  %98 = ashr i32 %97, 32
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp sle i32 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %82
  %103 = load i32, i32* %11, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %10, align 4
  br label %105

105:                                              ; preds = %102, %82
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp sgt i32 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = load i32, i32* %6, align 4
  store i32 %110, i32* %10, align 4
  br label %111

111:                                              ; preds = %109, %105
  %112 = load i32, i32* %10, align 4
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 %112, i32* %118, align 4
  br label %119

119:                                              ; preds = %111, %81
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %11, align 4
  br label %68

122:                                              ; preds = %68
  store i32 1, i32* %11, align 4
  br label %123

123:                                              ; preds = %142, %122
  %124 = load i32, i32* %11, align 4
  %125 = icmp slt i32 %124, 255
  br i1 %125, label %126, label %145

126:                                              ; preds = %123
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %11, align 4
  %131 = sub nsw i32 256, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %129, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = sub nsw i32 256, %134
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  store i32 %135, i32* %141, align 4
  br label %142

142:                                              ; preds = %126
  %143 = load i32, i32* %11, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %11, align 4
  br label %123

145:                                              ; preds = %123
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
