; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_zmbvenc.c_zmbv_me.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_zmbvenc.c_zmbv_me.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }

@ZMBV_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32, i32*, i32, i32, i32, i32*, i32*, i32*)* @zmbv_me to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zmbv_me(%struct.TYPE_6__* %0, i32* %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32* %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %12, align 8
  store i32* %1, i32** %13, align 8
  store i32 %2, i32* %14, align 4
  store i32* %3, i32** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32* %7, i32** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  %31 = load i32*, i32** %19, align 8
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %29, align 4
  %33 = load i32*, i32** %20, align 8
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %30, align 4
  %35 = load i32, i32* @ZMBV_BLOCK, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %17, align 4
  %42 = sext i32 %41 to i64
  %43 = sub nsw i64 %40, %42
  %44 = call i32 @FFMIN(i32 %35, i64 %43)
  store i32 %44, i32* %27, align 4
  %45 = load i32, i32* @ZMBV_BLOCK, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %18, align 4
  %52 = sext i32 %51 to i64
  %53 = sub nsw i64 %50, %52
  %54 = call i32 @FFMIN(i32 %45, i64 %53)
  store i32 %54, i32* %28, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %56 = load i32*, i32** %13, align 8
  %57 = load i32, i32* %14, align 4
  %58 = load i32*, i32** %15, align 8
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* %27, align 4
  %61 = load i32, i32* %28, align 4
  %62 = load i32*, i32** %21, align 8
  %63 = call i32 @block_cmp(%struct.TYPE_6__* %55, i32* %56, i32 %57, i32* %58, i32 %59, i32 %60, i32 %61, i32* %62)
  store i32 %63, i32* %26, align 4
  %64 = load i32*, i32** %20, align 8
  store i32 0, i32* %64, align 4
  %65 = load i32*, i32** %19, align 8
  store i32 0, i32* %65, align 4
  %66 = load i32, i32* %26, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %10
  store i32 0, i32* %11, align 4
  br label %196

69:                                               ; preds = %10
  %70 = load i32, i32* %29, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %30, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %112

75:                                               ; preds = %72, %69
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %77 = load i32*, i32** %13, align 8
  %78 = load i32, i32* %14, align 4
  %79 = load i32*, i32** %15, align 8
  %80 = load i32, i32* %29, align 4
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = mul nsw i32 %80, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %79, i64 %85
  %87 = load i32, i32* %30, align 4
  %88 = load i32, i32* %16, align 4
  %89 = mul nsw i32 %87, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %86, i64 %90
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* %27, align 4
  %94 = load i32, i32* %28, align 4
  %95 = call i32 @block_cmp(%struct.TYPE_6__* %76, i32* %77, i32 %78, i32* %91, i32 %92, i32 %93, i32 %94, i32* %24)
  store i32 %95, i32* %25, align 4
  %96 = load i32, i32* %25, align 4
  %97 = load i32, i32* %26, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %111

99:                                               ; preds = %75
  %100 = load i32, i32* %25, align 4
  store i32 %100, i32* %26, align 4
  %101 = load i32, i32* %29, align 4
  %102 = load i32*, i32** %19, align 8
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* %30, align 4
  %104 = load i32*, i32** %20, align 8
  store i32 %103, i32* %104, align 4
  %105 = load i32, i32* %24, align 4
  %106 = load i32*, i32** %21, align 8
  store i32 %105, i32* %106, align 4
  %107 = load i32, i32* %26, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %99
  store i32 0, i32* %11, align 4
  br label %196

110:                                              ; preds = %99
  br label %111

111:                                              ; preds = %110, %75
  br label %112

112:                                              ; preds = %111, %72
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %23, align 4
  br label %117

117:                                              ; preds = %191, %112
  %118 = load i32, i32* %23, align 4
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = icmp sle i32 %118, %121
  br i1 %122, label %123, label %194

123:                                              ; preds = %117
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %22, align 4
  br label %128

128:                                              ; preds = %187, %123
  %129 = load i32, i32* %22, align 4
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = icmp sle i32 %129, %132
  br i1 %133, label %134, label %190

134:                                              ; preds = %128
  %135 = load i32, i32* %22, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %134
  %138 = load i32, i32* %23, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %137
  br label %187

141:                                              ; preds = %137, %134
  %142 = load i32, i32* %22, align 4
  %143 = load i32, i32* %29, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %150

145:                                              ; preds = %141
  %146 = load i32, i32* %23, align 4
  %147 = load i32, i32* %30, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  br label %187

150:                                              ; preds = %145, %141
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %152 = load i32*, i32** %13, align 8
  %153 = load i32, i32* %14, align 4
  %154 = load i32*, i32** %15, align 8
  %155 = load i32, i32* %22, align 4
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = mul nsw i32 %155, %158
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %154, i64 %160
  %162 = load i32, i32* %23, align 4
  %163 = load i32, i32* %16, align 4
  %164 = mul nsw i32 %162, %163
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %161, i64 %165
  %167 = load i32, i32* %16, align 4
  %168 = load i32, i32* %27, align 4
  %169 = load i32, i32* %28, align 4
  %170 = call i32 @block_cmp(%struct.TYPE_6__* %151, i32* %152, i32 %153, i32* %166, i32 %167, i32 %168, i32 %169, i32* %24)
  store i32 %170, i32* %25, align 4
  %171 = load i32, i32* %25, align 4
  %172 = load i32, i32* %26, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %186

174:                                              ; preds = %150
  %175 = load i32, i32* %25, align 4
  store i32 %175, i32* %26, align 4
  %176 = load i32, i32* %22, align 4
  %177 = load i32*, i32** %19, align 8
  store i32 %176, i32* %177, align 4
  %178 = load i32, i32* %23, align 4
  %179 = load i32*, i32** %20, align 8
  store i32 %178, i32* %179, align 4
  %180 = load i32, i32* %24, align 4
  %181 = load i32*, i32** %21, align 8
  store i32 %180, i32* %181, align 4
  %182 = load i32, i32* %26, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %174
  store i32 0, i32* %11, align 4
  br label %196

185:                                              ; preds = %174
  br label %186

186:                                              ; preds = %185, %150
  br label %187

187:                                              ; preds = %186, %149, %140
  %188 = load i32, i32* %22, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %22, align 4
  br label %128

190:                                              ; preds = %128
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %23, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %23, align 4
  br label %117

194:                                              ; preds = %117
  %195 = load i32, i32* %26, align 4
  store i32 %195, i32* %11, align 4
  br label %196

196:                                              ; preds = %194, %184, %109, %68
  %197 = load i32, i32* %11, align 4
  ret i32 %197
}

declare dso_local i32 @FFMIN(i32, i64) #1

declare dso_local i32 @block_cmp(%struct.TYPE_6__*, i32*, i32, i32*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
