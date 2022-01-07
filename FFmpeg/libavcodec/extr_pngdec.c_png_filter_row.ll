; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pngdec.c_png_filter_row.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pngdec.c_png_filter_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32*, i32*, i32*, i32, i32)*, i32 (i32*, i32*, i32*, i32)* }

@OP_SUB = common dso_local global i32 0, align 4
@OP_AVG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i32, i32*, i32*, i32, i32)* @png_filter_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @png_filter_row(%struct.TYPE_3__* %0, i32* %1, i32 %2, i32* %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %23 = load i32, i32* %10, align 4
  switch i32 %23, label %211 [
    i32 131, label %24
    i32 129, label %29
    i32 128, label %87
    i32 132, label %96
    i32 130, label %125
  ]

24:                                               ; preds = %7
  %25 = load i32*, i32** %9, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = load i32, i32* %13, align 4
  %28 = call i32 @memcpy(i32* %25, i32* %26, i32 %27)
  br label %211

29:                                               ; preds = %7
  store i32 0, i32* %15, align 4
  br label %30

30:                                               ; preds = %44, %29
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %30
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* %15, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %15, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 %39, i32* %43, align 4
  br label %44

44:                                               ; preds = %34
  %45 = load i32, i32* %15, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %15, align 4
  br label %30

47:                                               ; preds = %30
  %48 = load i32, i32* %14, align 4
  %49 = icmp eq i32 %48, 4
  br i1 %49, label %50, label %83

50:                                               ; preds = %47
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %16, align 4
  br label %53

53:                                               ; preds = %78, %50
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %82

57:                                               ; preds = %53
  %58 = load i32*, i32** %11, align 8
  %59 = load i32, i32* %15, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %21, align 4
  %63 = load i32, i32* %21, align 4
  %64 = and i32 %63, 2139062143
  %65 = load i32, i32* %16, align 4
  %66 = and i32 %65, 2139062143
  %67 = add i32 %64, %66
  %68 = load i32, i32* %21, align 4
  %69 = load i32, i32* %16, align 4
  %70 = xor i32 %68, %69
  %71 = and i32 %70, -2139062144
  %72 = xor i32 %67, %71
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %16, align 4
  %74 = load i32*, i32** %9, align 8
  %75 = load i32, i32* %15, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %73, i32* %77, align 4
  br label %78

78:                                               ; preds = %57
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %15, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %15, align 4
  br label %53

82:                                               ; preds = %53
  br label %86

83:                                               ; preds = %47
  %84 = load i32, i32* @OP_SUB, align 4
  %85 = call i32 @UNROLL_FILTER(i32 %84)
  br label %86

86:                                               ; preds = %83, %82
  br label %211

87:                                               ; preds = %7
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i32 (i32*, i32*, i32*, i32)*, i32 (i32*, i32*, i32*, i32)** %89, align 8
  %91 = load i32*, i32** %9, align 8
  %92 = load i32*, i32** %11, align 8
  %93 = load i32*, i32** %12, align 8
  %94 = load i32, i32* %13, align 4
  %95 = call i32 %90(i32* %91, i32* %92, i32* %93, i32 %94)
  br label %211

96:                                               ; preds = %7
  store i32 0, i32* %15, align 4
  br label %97

97:                                               ; preds = %119, %96
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* %14, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %122

101:                                              ; preds = %97
  %102 = load i32*, i32** %12, align 8
  %103 = load i32, i32* %15, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = ashr i32 %106, 1
  store i32 %107, i32* %16, align 4
  %108 = load i32, i32* %16, align 4
  %109 = load i32*, i32** %11, align 8
  %110 = load i32, i32* %15, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %108, %113
  %115 = load i32*, i32** %9, align 8
  %116 = load i32, i32* %15, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 %114, i32* %118, align 4
  br label %119

119:                                              ; preds = %101
  %120 = load i32, i32* %15, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %15, align 4
  br label %97

122:                                              ; preds = %97
  %123 = load i32, i32* @OP_AVG, align 4
  %124 = call i32 @UNROLL_FILTER(i32 %123)
  br label %211

125:                                              ; preds = %7
  store i32 0, i32* %15, align 4
  br label %126

126:                                              ; preds = %147, %125
  %127 = load i32, i32* %15, align 4
  %128 = load i32, i32* %14, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %150

130:                                              ; preds = %126
  %131 = load i32*, i32** %12, align 8
  %132 = load i32, i32* %15, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %16, align 4
  %136 = load i32, i32* %16, align 4
  %137 = load i32*, i32** %11, align 8
  %138 = load i32, i32* %15, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %136, %141
  %143 = load i32*, i32** %9, align 8
  %144 = load i32, i32* %15, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  store i32 %142, i32* %146, align 4
  br label %147

147:                                              ; preds = %130
  %148 = load i32, i32* %15, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %15, align 4
  br label %126

150:                                              ; preds = %126
  %151 = load i32, i32* %14, align 4
  %152 = icmp sgt i32 %151, 2
  br i1 %152, label %153, label %193

153:                                              ; preds = %150
  %154 = load i32, i32* %13, align 4
  %155 = icmp sgt i32 %154, 4
  br i1 %155, label %156, label %193

156:                                              ; preds = %153
  %157 = load i32, i32* %14, align 4
  %158 = and i32 %157, 3
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %156
  %161 = load i32, i32* %13, align 4
  %162 = sub nsw i32 %161, 3
  br label %165

163:                                              ; preds = %156
  %164 = load i32, i32* %13, align 4
  br label %165

165:                                              ; preds = %163, %160
  %166 = phi i32 [ %162, %160 ], [ %164, %163 ]
  store i32 %166, i32* %22, align 4
  %167 = load i32, i32* %22, align 4
  %168 = load i32, i32* %15, align 4
  %169 = icmp sgt i32 %167, %168
  br i1 %169, label %170, label %192

170:                                              ; preds = %165
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 0
  %173 = load i32 (i32*, i32*, i32*, i32, i32)*, i32 (i32*, i32*, i32*, i32, i32)** %172, align 8
  %174 = load i32*, i32** %9, align 8
  %175 = load i32, i32* %15, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32*, i32** %11, align 8
  %179 = load i32, i32* %15, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32*, i32** %12, align 8
  %183 = load i32, i32* %15, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load i32, i32* %13, align 4
  %187 = load i32, i32* %15, align 4
  %188 = sub nsw i32 %186, %187
  %189 = load i32, i32* %14, align 4
  %190 = call i32 %173(i32* %177, i32* %181, i32* %185, i32 %188, i32 %189)
  %191 = load i32, i32* %22, align 4
  store i32 %191, i32* %15, align 4
  br label %192

192:                                              ; preds = %170, %165
  br label %193

193:                                              ; preds = %192, %153, %150
  %194 = load i32*, i32** %9, align 8
  %195 = load i32, i32* %15, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  %198 = load i32*, i32** %11, align 8
  %199 = load i32, i32* %15, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32*, i32** %12, align 8
  %203 = load i32, i32* %15, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %13, align 4
  %207 = load i32, i32* %15, align 4
  %208 = sub nsw i32 %206, %207
  %209 = load i32, i32* %14, align 4
  %210 = call i32 @ff_add_png_paeth_prediction(i32* %197, i32* %201, i32* %205, i32 %208, i32 %209)
  br label %211

211:                                              ; preds = %7, %193, %122, %87, %86, %24
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @UNROLL_FILTER(i32) #1

declare dso_local i32 @ff_add_png_paeth_prediction(i32*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
