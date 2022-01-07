; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_tiertexseqv.c_seq_decode_op1.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_tiertexseqv.c_seq_decode_op1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@ff_log2_tab = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_5__*, i8*, i8*, i8*)* @seq_decode_op1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @seq_decode_op1(%struct.TYPE_5__* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [64 x i8], align 16
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = ptrtoint i8* %17 to i64
  %20 = ptrtoint i8* %18 to i64
  %21 = sub i64 %19, %20
  %22 = icmp slt i64 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %184

24:                                               ; preds = %4
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %7, align 8
  %27 = load i8, i8* %25, align 1
  %28 = zext i8 %27 to i32
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = and i32 %29, 128
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %107

32:                                               ; preds = %24
  %33 = load i32, i32* %13, align 4
  %34 = and i32 %33, 3
  switch i32 %34, label %106 [
    i32 1, label %35
    i32 2, label %64
  ]

35:                                               ; preds = %32
  %36 = load i8*, i8** %7, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %39 = call i8* @seq_unpack_rle_block(i8* %36, i8* %37, i8* %38, i32 64)
  store i8* %39, i8** %7, align 8
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %60, %35
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %41, 8
  br i1 %42, label %43, label %63

43:                                               ; preds = %40
  %44 = load i8*, i8** %9, align 8
  %45 = load i32, i32* %11, align 4
  %46 = mul nsw i32 %45, 8
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 %47
  %49 = call i32 @memcpy(i8* %44, i8* %48, i32 8)
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %9, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8* %59, i8** %9, align 8
  br label %60

60:                                               ; preds = %43
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  br label %40

63:                                               ; preds = %40
  br label %106

64:                                               ; preds = %32
  %65 = load i8*, i8** %7, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %68 = call i8* @seq_unpack_rle_block(i8* %65, i8* %66, i8* %67, i32 64)
  store i8* %68, i8** %7, align 8
  store i32 0, i32* %12, align 4
  br label %69

69:                                               ; preds = %102, %64
  %70 = load i32, i32* %12, align 4
  %71 = icmp slt i32 %70, 8
  br i1 %71, label %72, label %105

72:                                               ; preds = %69
  store i32 0, i32* %11, align 4
  br label %73

73:                                               ; preds = %96, %72
  %74 = load i32, i32* %11, align 4
  %75 = icmp slt i32 %74, 8
  br i1 %75, label %76, label %99

76:                                               ; preds = %73
  %77 = load i32, i32* %12, align 4
  %78 = mul nsw i32 %77, 8
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %78, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = load i8*, i8** %9, align 8
  %85 = load i32, i32* %11, align 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 %85, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %84, i64 %94
  store i8 %83, i8* %95, align 1
  br label %96

96:                                               ; preds = %76
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %11, align 4
  br label %73

99:                                               ; preds = %73
  %100 = load i8*, i8** %9, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %9, align 8
  br label %102

102:                                              ; preds = %99
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %12, align 4
  br label %69

105:                                              ; preds = %69
  br label %106

106:                                              ; preds = %32, %105, %63
  br label %182

107:                                              ; preds = %24
  %108 = load i32, i32* %13, align 4
  %109 = icmp sle i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  store i8* null, i8** %5, align 8
  br label %184

111:                                              ; preds = %107
  %112 = load i32*, i32** @ff_log2_tab, align 8
  %113 = load i32, i32* %13, align 4
  %114 = sub nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %14, align 4
  %119 = load i8*, i8** %8, align 8
  %120 = load i8*, i8** %7, align 8
  %121 = ptrtoint i8* %119 to i64
  %122 = ptrtoint i8* %120 to i64
  %123 = sub i64 %121, %122
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* %14, align 4
  %126 = mul nsw i32 8, %125
  %127 = add nsw i32 %124, %126
  %128 = sext i32 %127 to i64
  %129 = icmp slt i64 %123, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %111
  store i8* null, i8** %5, align 8
  br label %184

131:                                              ; preds = %111
  %132 = load i8*, i8** %7, align 8
  store i8* %132, i8** %10, align 8
  %133 = load i32, i32* %13, align 4
  %134 = load i8*, i8** %7, align 8
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i8, i8* %134, i64 %135
  store i8* %136, i8** %7, align 8
  %137 = load i8*, i8** %7, align 8
  %138 = load i32, i32* %14, align 4
  %139 = mul nsw i32 %138, 8
  %140 = mul nsw i32 %139, 8
  %141 = call i32 @init_get_bits(i32* %15, i8* %137, i32 %140)
  %142 = load i32, i32* %14, align 4
  %143 = mul nsw i32 %142, 8
  %144 = load i8*, i8** %7, align 8
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds i8, i8* %144, i64 %145
  store i8* %146, i8** %7, align 8
  store i32 0, i32* %11, align 4
  br label %147

147:                                              ; preds = %178, %131
  %148 = load i32, i32* %11, align 4
  %149 = icmp slt i32 %148, 8
  br i1 %149, label %150, label %181

150:                                              ; preds = %147
  store i32 0, i32* %12, align 4
  br label %151

151:                                              ; preds = %164, %150
  %152 = load i32, i32* %12, align 4
  %153 = icmp slt i32 %152, 8
  br i1 %153, label %154, label %167

154:                                              ; preds = %151
  %155 = load i8*, i8** %10, align 8
  %156 = load i32, i32* %14, align 4
  %157 = call i64 @get_bits(i32* %15, i32 %156)
  %158 = getelementptr inbounds i8, i8* %155, i64 %157
  %159 = load i8, i8* %158, align 1
  %160 = load i8*, i8** %9, align 8
  %161 = load i32, i32* %12, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %160, i64 %162
  store i8 %159, i8* %163, align 1
  br label %164

164:                                              ; preds = %154
  %165 = load i32, i32* %12, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %12, align 4
  br label %151

167:                                              ; preds = %151
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 0
  %174 = load i32, i32* %173, align 4
  %175 = load i8*, i8** %9, align 8
  %176 = sext i32 %174 to i64
  %177 = getelementptr inbounds i8, i8* %175, i64 %176
  store i8* %177, i8** %9, align 8
  br label %178

178:                                              ; preds = %167
  %179 = load i32, i32* %11, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %11, align 4
  br label %147

181:                                              ; preds = %147
  br label %182

182:                                              ; preds = %181, %106
  %183 = load i8*, i8** %7, align 8
  store i8* %183, i8** %5, align 8
  br label %184

184:                                              ; preds = %182, %130, %110, %23
  %185 = load i8*, i8** %5, align 8
  ret i8* %185
}

declare dso_local i8* @seq_unpack_rle_block(i8*, i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @init_get_bits(i32*, i8*, i32) #1

declare dso_local i64 @get_bits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
