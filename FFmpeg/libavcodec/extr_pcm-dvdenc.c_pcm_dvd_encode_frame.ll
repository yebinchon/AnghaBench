; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pcm-dvdenc.c_pcm_dvd_encode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pcm-dvdenc.c_pcm_dvd_encode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i64 }
%struct.TYPE_13__ = type { i32, i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_12__*, %struct.TYPE_13__*, i32*)* @pcm_dvd_encode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm_dvd_encode_frame(%struct.TYPE_14__* %0, %struct.TYPE_12__* %1, %struct.TYPE_13__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %8, align 8
  store i32* %3, i32** %9, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %10, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = mul nsw i32 %25, %28
  store i32 %29, i32* %11, align 4
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sdiv i32 %32, %35
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %36, %39
  %41 = add nsw i32 %40, 3
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = sub nsw i32 %42, 3
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sdiv i32 %43, %46
  store i32 %47, i32* %13, align 4
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @ff_alloc_packet2(%struct.TYPE_14__* %48, %struct.TYPE_12__* %49, i32 %50, i32 0)
  store i32 %51, i32* %17, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %4
  %54 = load i32, i32* %17, align 4
  store i32 %54, i32* %5, align 4
  br label %214

55:                                               ; preds = %4
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @memcpy(i64 %58, i32 %61, i32 3)
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 2
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 0
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to i32*
  store i32* %68, i32** %14, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 2
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 0
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to i32*
  store i32* %74, i32** %15, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, 3
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sub nsw i32 %81, 3
  %83 = call i32 @bytestream2_init_writer(i32* %16, i64 %78, i32 %82)
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  switch i32 %86, label %197 [
    i32 129, label %87
    i32 128, label %98
  ]

87:                                               ; preds = %55
  br label %88

88:                                               ; preds = %93, %87
  %89 = load i32*, i32** %14, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %14, align 8
  %91 = load i32, i32* %89, align 4
  %92 = call i32 @bytestream2_put_be16(i32* %16, i32 %91)
  br label %93

93:                                               ; preds = %88
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %88, label %97

97:                                               ; preds = %93
  br label %197

98:                                               ; preds = %55
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %103, label %138

103:                                              ; preds = %98
  br label %104

104:                                              ; preds = %133, %103
  store i32 2, i32* %18, align 4
  br label %105

105:                                              ; preds = %129, %104
  %106 = load i32, i32* %18, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %132

108:                                              ; preds = %105
  %109 = load i32*, i32** %15, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = ashr i32 %111, 16
  %113 = call i32 @bytestream2_put_be16(i32* %16, i32 %112)
  %114 = load i32*, i32** %15, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = ashr i32 %116, 16
  %118 = call i32 @bytestream2_put_be16(i32* %16, i32 %117)
  %119 = load i32*, i32** %15, align 8
  %120 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %120, i32** %15, align 8
  %121 = load i32, i32* %119, align 4
  %122 = ashr i32 %121, 24
  %123 = call i32 @bytestream2_put_byte(i32* %16, i32 %122)
  %124 = load i32*, i32** %15, align 8
  %125 = getelementptr inbounds i32, i32* %124, i32 1
  store i32* %125, i32** %15, align 8
  %126 = load i32, i32* %124, align 4
  %127 = ashr i32 %126, 24
  %128 = call i32 @bytestream2_put_byte(i32* %16, i32 %127)
  br label %129

129:                                              ; preds = %108
  %130 = load i32, i32* %18, align 4
  %131 = add nsw i32 %130, -1
  store i32 %131, i32* %18, align 4
  br label %105

132:                                              ; preds = %105
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %13, align 4
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* %13, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %104, label %137

137:                                              ; preds = %133
  br label %196

138:                                              ; preds = %98
  br label %139

139:                                              ; preds = %191, %138
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %19, align 4
  br label %143

143:                                              ; preds = %187, %139
  %144 = load i32, i32* %19, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %190

146:                                              ; preds = %143
  %147 = load i32*, i32** %15, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = load i32, i32* %148, align 4
  %150 = ashr i32 %149, 16
  %151 = call i32 @bytestream2_put_be16(i32* %16, i32 %150)
  %152 = load i32*, i32** %15, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 1
  %154 = load i32, i32* %153, align 4
  %155 = ashr i32 %154, 16
  %156 = call i32 @bytestream2_put_be16(i32* %16, i32 %155)
  %157 = load i32*, i32** %15, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 2
  %159 = load i32, i32* %158, align 4
  %160 = ashr i32 %159, 16
  %161 = call i32 @bytestream2_put_be16(i32* %16, i32 %160)
  %162 = load i32*, i32** %15, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 3
  %164 = load i32, i32* %163, align 4
  %165 = ashr i32 %164, 16
  %166 = call i32 @bytestream2_put_be16(i32* %16, i32 %165)
  %167 = load i32*, i32** %15, align 8
  %168 = getelementptr inbounds i32, i32* %167, i32 1
  store i32* %168, i32** %15, align 8
  %169 = load i32, i32* %167, align 4
  %170 = ashr i32 %169, 24
  %171 = call i32 @bytestream2_put_byte(i32* %16, i32 %170)
  %172 = load i32*, i32** %15, align 8
  %173 = getelementptr inbounds i32, i32* %172, i32 1
  store i32* %173, i32** %15, align 8
  %174 = load i32, i32* %172, align 4
  %175 = ashr i32 %174, 24
  %176 = call i32 @bytestream2_put_byte(i32* %16, i32 %175)
  %177 = load i32*, i32** %15, align 8
  %178 = getelementptr inbounds i32, i32* %177, i32 1
  store i32* %178, i32** %15, align 8
  %179 = load i32, i32* %177, align 4
  %180 = ashr i32 %179, 24
  %181 = call i32 @bytestream2_put_byte(i32* %16, i32 %180)
  %182 = load i32*, i32** %15, align 8
  %183 = getelementptr inbounds i32, i32* %182, i32 1
  store i32* %183, i32** %15, align 8
  %184 = load i32, i32* %182, align 4
  %185 = ashr i32 %184, 24
  %186 = call i32 @bytestream2_put_byte(i32* %16, i32 %185)
  br label %187

187:                                              ; preds = %146
  %188 = load i32, i32* %19, align 4
  %189 = add nsw i32 %188, -1
  store i32 %189, i32* %19, align 4
  br label %143

190:                                              ; preds = %143
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %13, align 4
  %193 = add nsw i32 %192, -1
  store i32 %193, i32* %13, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %139, label %195

195:                                              ; preds = %191
  br label %196

196:                                              ; preds = %195, %137
  br label %197

197:                                              ; preds = %55, %196, %97
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 2
  store i32 %200, i32* %202, align 8
  %203 = load i32, i32* %12, align 4
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 0
  store i32 %203, i32* %205, align 8
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @ff_samples_to_time_base(%struct.TYPE_14__* %206, i32 %209)
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 1
  store i32 %210, i32* %212, align 4
  %213 = load i32*, i32** %9, align 8
  store i32 1, i32* %213, align 4
  store i32 0, i32* %5, align 4
  br label %214

214:                                              ; preds = %197, %53
  %215 = load i32, i32* %5, align 4
  ret i32 %215
}

declare dso_local i32 @ff_alloc_packet2(%struct.TYPE_14__*, %struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

declare dso_local i32 @bytestream2_init_writer(i32*, i64, i32) #1

declare dso_local i32 @bytestream2_put_be16(i32*, i32) #1

declare dso_local i32 @bytestream2_put_byte(i32*, i32) #1

declare dso_local i32 @ff_samples_to_time_base(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
