; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_bbox.c_ff_calculate_bounding_box.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_bbox.c_ff_calculate_bounding_box.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_calculate_bounding_box(%struct.TYPE_3__* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %16, align 4
  br label %21

21:                                               ; preds = %48, %6
  %22 = load i32, i32* %16, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %51

25:                                               ; preds = %21
  store i32 0, i32* %15, align 4
  br label %26

26:                                               ; preds = %44, %25
  %27 = load i32, i32* %15, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %26
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* %10, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load i32, i32* %16, align 4
  %36 = add nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %31, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  br label %52

43:                                               ; preds = %30
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %15, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %15, align 4
  br label %26

47:                                               ; preds = %26
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %16, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %16, align 4
  br label %21

51:                                               ; preds = %21
  br label %52

52:                                               ; preds = %51, %42
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 0, i32* %7, align 4
  br label %179

57:                                               ; preds = %52
  %58 = load i32, i32* %11, align 4
  %59 = sub nsw i32 %58, 1
  store i32 %59, i32* %18, align 4
  br label %60

60:                                               ; preds = %87, %57
  %61 = load i32, i32* %18, align 4
  %62 = load i32, i32* %16, align 4
  %63 = icmp sge i32 %61, %62
  br i1 %63, label %64, label %90

64:                                               ; preds = %60
  store i32 0, i32* %15, align 4
  br label %65

65:                                               ; preds = %83, %64
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %65
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* %10, align 4
  %73 = mul nsw i32 %71, %72
  %74 = load i32, i32* %18, align 4
  %75 = add nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %70, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %69
  br label %91

82:                                               ; preds = %69
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %15, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %15, align 4
  br label %65

86:                                               ; preds = %65
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %18, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %18, align 4
  br label %60

90:                                               ; preds = %60
  br label %91

91:                                               ; preds = %90, %81
  %92 = load i32*, i32** %9, align 8
  store i32* %92, i32** %20, align 8
  store i32 0, i32* %17, align 4
  br label %93

93:                                               ; preds = %120, %91
  %94 = load i32, i32* %17, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %123

97:                                               ; preds = %93
  store i32 0, i32* %14, align 4
  br label %98

98:                                               ; preds = %112, %97
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %115

102:                                              ; preds = %98
  %103 = load i32*, i32** %20, align 8
  %104 = load i32, i32* %14, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %13, align 4
  %109 = icmp sgt i32 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %102
  br label %124

111:                                              ; preds = %102
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %14, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %14, align 4
  br label %98

115:                                              ; preds = %98
  %116 = load i32, i32* %10, align 4
  %117 = load i32*, i32** %20, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  store i32* %119, i32** %20, align 8
  br label %120

120:                                              ; preds = %115
  %121 = load i32, i32* %17, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %17, align 4
  br label %93

123:                                              ; preds = %93
  br label %124

124:                                              ; preds = %123, %110
  %125 = load i32*, i32** %9, align 8
  %126 = load i32, i32* %12, align 4
  %127 = sub nsw i32 %126, 1
  %128 = load i32, i32* %10, align 4
  %129 = mul nsw i32 %127, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %125, i64 %130
  store i32* %131, i32** %20, align 8
  %132 = load i32, i32* %12, align 4
  %133 = sub nsw i32 %132, 1
  store i32 %133, i32* %19, align 4
  br label %134

134:                                              ; preds = %162, %124
  %135 = load i32, i32* %19, align 4
  %136 = load i32, i32* %17, align 4
  %137 = icmp sge i32 %135, %136
  br i1 %137, label %138, label %165

138:                                              ; preds = %134
  store i32 0, i32* %14, align 4
  br label %139

139:                                              ; preds = %153, %138
  %140 = load i32, i32* %14, align 4
  %141 = load i32, i32* %11, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %156

143:                                              ; preds = %139
  %144 = load i32*, i32** %20, align 8
  %145 = load i32, i32* %14, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %13, align 4
  %150 = icmp sgt i32 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %143
  br label %166

152:                                              ; preds = %143
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %14, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %14, align 4
  br label %139

156:                                              ; preds = %139
  %157 = load i32, i32* %10, align 4
  %158 = load i32*, i32** %20, align 8
  %159 = sext i32 %157 to i64
  %160 = sub i64 0, %159
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  store i32* %161, i32** %20, align 8
  br label %162

162:                                              ; preds = %156
  %163 = load i32, i32* %19, align 4
  %164 = add nsw i32 %163, -1
  store i32 %164, i32* %19, align 4
  br label %134

165:                                              ; preds = %134
  br label %166

166:                                              ; preds = %165, %151
  %167 = load i32, i32* %16, align 4
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 4
  %170 = load i32, i32* %17, align 4
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 4
  %173 = load i32, i32* %18, align 4
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 2
  store i32 %173, i32* %175, align 4
  %176 = load i32, i32* %19, align 4
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 3
  store i32 %176, i32* %178, align 4
  store i32 1, i32* %7, align 4
  br label %179

179:                                              ; preds = %166, %56
  %180 = load i32, i32* %7, align 4
  ret i32 %180
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
