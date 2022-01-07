; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_svq3.c_svq3_decode_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_svq3.c_svq3_decode_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@svq3_decode_block.scan_patterns = internal constant [4 x i64*] [i64* inttoptr (i64 129 to i64*), i64* inttoptr (i64 130 to i64*), i64* inttoptr (i64 128 to i64*), i64* inttoptr (i64 131 to i64*)], align 16
@svq3_dct_tables = common dso_local global %struct.TYPE_2__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32)* @svq3_decode_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svq3_decode_block(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = mul nsw i32 3, %17
  %19 = ashr i32 %18, 2
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4 x i64*], [4 x i64*]* @svq3_decode_block.scan_patterns, i64 0, i64 %21
  %23 = load i64*, i64** %22, align 8
  store i64* %23, i64** %16, align 8
  %24 = load i32, i32* %15, align 4
  %25 = ashr i32 16, %24
  store i32 %25, i32* %13, align 4
  br label %26

26:                                               ; preds = %170, %4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 16
  br i1 %28, label %29, label %174

29:                                               ; preds = %26
  br label %30

30:                                               ; preds = %162, %29
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @get_interleaved_ue_golomb(i32* %31)
  store i32 %32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %165

34:                                               ; preds = %30
  %35 = load i32, i32* %14, align 4
  %36 = zext i32 %35 to i64
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 -1, i32* %5, align 4
  br label %175

39:                                               ; preds = %34
  %40 = load i32, i32* %14, align 4
  %41 = and i32 %40, 1
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 0, i32 -1
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %14, align 4
  %46 = add i32 %45, 1
  %47 = lshr i32 %46, 1
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp eq i32 %48, 3
  br i1 %49, label %50, label %69

50:                                               ; preds = %39
  %51 = load i32, i32* %14, align 4
  %52 = icmp ult i32 %51, 3
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  store i32 0, i32* %10, align 4
  %54 = load i32, i32* %14, align 4
  store i32 %54, i32* %11, align 4
  br label %68

55:                                               ; preds = %50
  %56 = load i32, i32* %14, align 4
  %57 = icmp ult i32 %56, 4
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 1, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %67

59:                                               ; preds = %55
  %60 = load i32, i32* %14, align 4
  %61 = and i32 %60, 3
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %14, align 4
  %63 = add i32 %62, 9
  %64 = lshr i32 %63, 2
  %65 = load i32, i32* %10, align 4
  %66 = sub i32 %64, %65
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %59, %58
  br label %68

68:                                               ; preds = %67, %53
  br label %142

69:                                               ; preds = %39
  %70 = load i32, i32* %14, align 4
  %71 = icmp ult i32 %70, 16
  br i1 %71, label %72, label %93

72:                                               ; preds = %69
  %73 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @svq3_dct_tables, align 8
  %74 = load i32, i32* %15, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %73, i64 %75
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %14, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %10, align 4
  %83 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @svq3_dct_tables, align 8
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %83, i64 %85
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = load i32, i32* %14, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %11, align 4
  br label %141

93:                                               ; preds = %69
  %94 = load i32, i32* %15, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %118

96:                                               ; preds = %93
  %97 = load i32, i32* %14, align 4
  %98 = and i32 %97, 7
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %14, align 4
  %100 = lshr i32 %99, 3
  %101 = load i32, i32* %10, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  br label %115

104:                                              ; preds = %96
  %105 = load i32, i32* %10, align 4
  %106 = icmp slt i32 %105, 2
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  br label %113

108:                                              ; preds = %104
  %109 = load i32, i32* %10, align 4
  %110 = icmp slt i32 %109, 5
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i32 0, i32 -1
  br label %113

113:                                              ; preds = %108, %107
  %114 = phi i32 [ 2, %107 ], [ %112, %108 ]
  br label %115

115:                                              ; preds = %113, %103
  %116 = phi i32 [ 8, %103 ], [ %114, %113 ]
  %117 = add i32 %100, %116
  store i32 %117, i32* %11, align 4
  br label %140

118:                                              ; preds = %93
  %119 = load i32, i32* %14, align 4
  %120 = and i32 %119, 15
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* %14, align 4
  %122 = lshr i32 %121, 4
  %123 = load i32, i32* %10, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %118
  br label %137

126:                                              ; preds = %118
  %127 = load i32, i32* %10, align 4
  %128 = icmp slt i32 %127, 3
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  br label %135

130:                                              ; preds = %126
  %131 = load i32, i32* %10, align 4
  %132 = icmp slt i32 %131, 10
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i32 1, i32 0
  br label %135

135:                                              ; preds = %130, %129
  %136 = phi i32 [ 2, %129 ], [ %134, %130 ]
  br label %137

137:                                              ; preds = %135, %125
  %138 = phi i32 [ 4, %125 ], [ %136, %135 ]
  %139 = add i32 %122, %138
  store i32 %139, i32* %11, align 4
  br label %140

140:                                              ; preds = %137, %115
  br label %141

141:                                              ; preds = %140, %72
  br label %142

142:                                              ; preds = %141, %68
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %8, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %8, align 4
  %146 = load i32, i32* %13, align 4
  %147 = icmp sge i32 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %142
  store i32 -1, i32* %5, align 4
  br label %175

149:                                              ; preds = %142
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* %12, align 4
  %152 = xor i32 %150, %151
  %153 = load i32, i32* %12, align 4
  %154 = sub nsw i32 %152, %153
  %155 = load i32*, i32** %7, align 8
  %156 = load i64*, i64** %16, align 8
  %157 = load i32, i32* %8, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i64, i64* %156, i64 %158
  %160 = load i64, i64* %159, align 8
  %161 = getelementptr inbounds i32, i32* %155, i64 %160
  store i32 %154, i32* %161, align 4
  br label %162

162:                                              ; preds = %149
  %163 = load i32, i32* %8, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %8, align 4
  br label %30

165:                                              ; preds = %30
  %166 = load i32, i32* %9, align 4
  %167 = icmp ne i32 %166, 2
  br i1 %167, label %168, label %169

168:                                              ; preds = %165
  br label %174

169:                                              ; preds = %165
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %13, align 4
  store i32 %171, i32* %8, align 4
  %172 = load i32, i32* %13, align 4
  %173 = add nsw i32 %172, 8
  store i32 %173, i32* %13, align 4
  br label %26

174:                                              ; preds = %168, %26
  store i32 0, i32* %5, align 4
  br label %175

175:                                              ; preds = %174, %148, %38
  %176 = load i32, i32* %5, align 4
  ret i32 %176
}

declare dso_local i32 @get_interleaved_ue_golomb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
