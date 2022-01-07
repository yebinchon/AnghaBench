; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_scpr.c_decompress_i.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_scpr.c_decompress_i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32*, i32*, i32, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*, i32)* @decompress_i to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decompress_i(%struct.TYPE_9__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
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
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %8, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 3
  store i32* %30, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %18, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %31, %34
  store i32 %35, i32* %22, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %37 = call i32 @reinit_tables(%struct.TYPE_8__* %36)
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @bytestream2_skip(i32* %38, i32 2)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @init_rangecoder(i32* %41, i32* %42)
  br label %44

44:                                               ; preds = %121, %3
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  %50 = icmp slt i32 %45, %49
  br i1 %50, label %51, label %122

51:                                               ; preds = %44
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %53 = call i32 @decode_units(%struct.TYPE_8__* %52, i32* %19, i32* %20, i32* %21, i32* %10, i32* %11)
  store i32 %53, i32* %17, align 4
  %54 = load i32, i32* %17, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* %17, align 4
  store i32 %57, i32* %4, align 4
  br label %212

58:                                               ; preds = %51
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @decode_value(%struct.TYPE_8__* %59, i32 %64, i32 256, i32 400, i32* %13)
  store i32 %65, i32* %17, align 4
  %66 = load i32, i32* %17, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %58
  %69 = load i32, i32* %17, align 4
  store i32 %69, i32* %4, align 4
  br label %212

70:                                               ; preds = %58
  %71 = load i32, i32* %13, align 4
  %72 = icmp sle i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %74, i32* %4, align 4
  br label %212

75:                                               ; preds = %70
  %76 = load i32, i32* %21, align 4
  %77 = shl i32 %76, 16
  %78 = load i32, i32* %20, align 4
  %79 = shl i32 %78, 8
  %80 = add nsw i32 %77, %79
  %81 = load i32, i32* %19, align 4
  %82 = add nsw i32 %80, %81
  store i32 %82, i32* %18, align 4
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %12, align 4
  br label %86

86:                                               ; preds = %120, %75
  %87 = load i32, i32* %13, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %13, align 4
  %89 = icmp sgt i32 %87, 0
  br i1 %89, label %90, label %121

90:                                               ; preds = %86
  %91 = load i32, i32* %15, align 4
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp sge i32 %91, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %97, i32* %4, align 4
  br label %212

98:                                               ; preds = %90
  %99 = load i32, i32* %18, align 4
  %100 = load i32*, i32** %6, align 8
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* %7, align 4
  %103 = mul nsw i32 %101, %102
  %104 = load i32, i32* %16, align 4
  %105 = add nsw i32 %103, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %100, i64 %106
  store i32 %99, i32* %107, align 4
  %108 = load i32, i32* %16, align 4
  store i32 %108, i32* %23, align 4
  %109 = load i32, i32* %15, align 4
  store i32 %109, i32* %24, align 4
  %110 = load i32, i32* %16, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %16, align 4
  %112 = load i32, i32* %16, align 4
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp sge i32 %112, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %98
  store i32 0, i32* %16, align 4
  %118 = load i32, i32* %15, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %15, align 4
  br label %120

120:                                              ; preds = %117, %98
  br label %86

121:                                              ; preds = %86
  br label %44

122:                                              ; preds = %44
  %123 = load i32, i32* %7, align 4
  %124 = sub nsw i32 0, %123
  %125 = sub nsw i32 %124, 1
  store i32 %125, i32* %14, align 4
  store i32 0, i32* %25, align 4
  br label %126

126:                                              ; preds = %210, %122
  %127 = load i32, i32* %16, align 4
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp slt i32 %127, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %126
  %133 = load i32, i32* %15, align 4
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp slt i32 %133, %136
  br label %138

138:                                              ; preds = %132, %126
  %139 = phi i1 [ false, %126 ], [ %137, %132 ]
  br i1 %139, label %140, label %211

140:                                              ; preds = %138
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %25, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @decode_value(%struct.TYPE_8__* %141, i32 %148, i32 6, i32 1000, i32* %25)
  store i32 %149, i32* %17, align 4
  %150 = load i32, i32* %17, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %140
  %153 = load i32, i32* %17, align 4
  store i32 %153, i32* %4, align 4
  br label %212

154:                                              ; preds = %140
  %155 = load i32, i32* %25, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %172

157:                                              ; preds = %154
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %159 = call i32 @decode_units(%struct.TYPE_8__* %158, i32* %19, i32* %20, i32* %21, i32* %10, i32* %11)
  store i32 %159, i32* %17, align 4
  %160 = load i32, i32* %17, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %157
  %163 = load i32, i32* %17, align 4
  store i32 %163, i32* %4, align 4
  br label %212

164:                                              ; preds = %157
  %165 = load i32, i32* %21, align 4
  %166 = shl i32 %165, 16
  %167 = load i32, i32* %20, align 4
  %168 = shl i32 %167, 8
  %169 = add nsw i32 %166, %168
  %170 = load i32, i32* %19, align 4
  %171 = add nsw i32 %169, %170
  store i32 %171, i32* %18, align 4
  br label %172

172:                                              ; preds = %164, %154
  %173 = load i32, i32* %25, align 4
  %174 = icmp sgt i32 %173, 5
  br i1 %174, label %175, label %177

175:                                              ; preds = %172
  %176 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %176, i32* %4, align 4
  br label %212

177:                                              ; preds = %172
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %25, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @decode_value(%struct.TYPE_8__* %178, i32 %185, i32 256, i32 400, i32* %13)
  store i32 %186, i32* %17, align 4
  %187 = load i32, i32* %17, align 4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %177
  %190 = load i32, i32* %17, align 4
  store i32 %190, i32* %4, align 4
  br label %212

191:                                              ; preds = %177
  %192 = load i32, i32* %13, align 4
  %193 = icmp sle i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %191
  %195 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %195, i32* %4, align 4
  br label %212

196:                                              ; preds = %191
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %198 = load i32, i32* %25, align 4
  %199 = load i32, i32* %13, align 4
  %200 = load i32, i32* %18, align 4
  %201 = load i32*, i32** %6, align 8
  %202 = load i32, i32* %7, align 4
  %203 = load i32, i32* %22, align 4
  %204 = load i32, i32* %14, align 4
  %205 = call i32 @decode_run_i(%struct.TYPE_9__* %197, i32 %198, i32 %199, i32* %16, i32* %15, i32 %200, i32* %201, i32 %202, i32* %23, i32* %24, i32 %203, i32 %204, i32* %10, i32* %11)
  store i32 %205, i32* %17, align 4
  %206 = load i32, i32* %17, align 4
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %196
  %209 = load i32, i32* %17, align 4
  store i32 %209, i32* %4, align 4
  br label %212

210:                                              ; preds = %196
  br label %126

211:                                              ; preds = %138
  store i32 0, i32* %4, align 4
  br label %212

212:                                              ; preds = %211, %208, %194, %189, %175, %162, %152, %96, %73, %68, %56
  %213 = load i32, i32* %4, align 4
  ret i32 %213
}

declare dso_local i32 @reinit_tables(%struct.TYPE_8__*) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

declare dso_local i32 @init_rangecoder(i32*, i32*) #1

declare dso_local i32 @decode_units(%struct.TYPE_8__*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @decode_value(%struct.TYPE_8__*, i32, i32, i32, i32*) #1

declare dso_local i32 @decode_run_i(%struct.TYPE_9__*, i32, i32, i32*, i32*, i32, i32*, i32, i32*, i32*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
