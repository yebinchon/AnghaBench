; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_direct.c_fill_colmap.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_direct.c_fill_colmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { i32*, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32**, i32***, i32, i64 }

@PICT_FRAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_8__*, [48 x i32]*, i32, i32, i32, i32)* @fill_colmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_colmap(%struct.TYPE_10__* %0, %struct.TYPE_8__* %1, [48 x i32]* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca [48 x i32]*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %9, align 8
  store [48 x i32]* %2, [48 x i32]** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %26, i64 1
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  store %struct.TYPE_9__* %31, %struct.TYPE_9__** %15, align 8
  %32 = load i32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 16, i32 0
  store i32 %35, i32* %19, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %7
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 2, %43
  %45 = add nsw i32 16, %44
  br label %52

46:                                               ; preds = %7
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  br label %52

52:                                               ; preds = %46, %38
  %53 = phi i32 [ %45, %38 ], [ %51, %46 ]
  store i32 %53, i32* %20, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %52
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @PICT_FRAME, align 8
  %61 = icmp ne i64 %59, %60
  br label %62

62:                                               ; preds = %56, %52
  %63 = phi i1 [ true, %52 ], [ %61, %56 ]
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %21, align 4
  %65 = load [48 x i32]*, [48 x i32]** %10, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [48 x i32], [48 x i32]* %65, i64 %67
  %69 = getelementptr inbounds [48 x i32], [48 x i32]* %68, i64 0, i64 0
  %70 = call i32 @memset(i32* %69, i32 0, i32 192)
  store i32 0, i32* %18, align 4
  br label %71

71:                                               ; preds = %215, %62
  %72 = load i32, i32* %18, align 4
  %73 = icmp slt i32 %72, 2
  br i1 %73, label %74, label %218

74:                                               ; preds = %71
  store i32 0, i32* %17, align 4
  br label %75

75:                                               ; preds = %211, %74
  %76 = load i32, i32* %17, align 4
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32**, i32*** %78, align 8
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32*, i32** %79, i64 %81
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = icmp slt i32 %76, %87
  br i1 %88, label %89, label %214

89:                                               ; preds = %75
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load i32***, i32**** %91, align 8
  %93 = load i32, i32* %13, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32**, i32*** %92, i64 %94
  %96 = load i32**, i32*** %95, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32*, i32** %96, i64 %98
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %17, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %22, align 4
  %105 = load i32, i32* %21, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %89
  %108 = load i32, i32* %22, align 4
  %109 = or i32 %108, 3
  store i32 %109, i32* %22, align 4
  br label %124

110:                                              ; preds = %89
  %111 = load i32, i32* %21, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %110
  %114 = load i32, i32* %22, align 4
  %115 = and i32 %114, 3
  %116 = icmp eq i32 %115, 3
  br i1 %116, label %117, label %123

117:                                              ; preds = %113
  %118 = load i32, i32* %22, align 4
  %119 = and i32 %118, -4
  %120 = load i32, i32* %18, align 4
  %121 = add nsw i32 %119, %120
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %22, align 4
  br label %123

123:                                              ; preds = %117, %113, %110
  br label %124

124:                                              ; preds = %123, %107
  %125 = load i32, i32* %19, align 4
  store i32 %125, i32* %16, align 4
  br label %126

126:                                              ; preds = %207, %124
  %127 = load i32, i32* %16, align 4
  %128 = load i32, i32* %20, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %210

130:                                              ; preds = %126
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %133, i64 0
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %134, align 8
  %136 = load i32, i32* %16, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = mul nsw i32 4, %142
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %146, i64 0
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %147, align 8
  %149 = load i32, i32* %16, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = and i32 %153, 3
  %155 = add nsw i32 %143, %154
  %156 = load i32, i32* %22, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %206

158:                                              ; preds = %130
  %159 = load i32, i32* %14, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %158
  %162 = load i32, i32* %16, align 4
  %163 = sub nsw i32 %162, 16
  %164 = load i32, i32* %12, align 4
  %165 = xor i32 %163, %164
  br label %168

166:                                              ; preds = %158
  %167 = load i32, i32* %16, align 4
  br label %168

168:                                              ; preds = %166, %161
  %169 = phi i32 [ %165, %161 ], [ %167, %166 ]
  store i32 %169, i32* %23, align 4
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %189

174:                                              ; preds = %168
  %175 = load i32, i32* %23, align 4
  %176 = load [48 x i32]*, [48 x i32]** %10, align 8
  %177 = load i32, i32* %11, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [48 x i32], [48 x i32]* %176, i64 %178
  %180 = load i32, i32* %17, align 4
  %181 = mul nsw i32 2, %180
  %182 = load i32, i32* %18, align 4
  %183 = load i32, i32* %12, align 4
  %184 = xor i32 %182, %183
  %185 = add nsw i32 %181, %184
  %186 = add nsw i32 %185, 16
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [48 x i32], [48 x i32]* %179, i64 0, i64 %187
  store i32 %175, i32* %188, align 4
  br label %189

189:                                              ; preds = %174, %168
  %190 = load i32, i32* %18, align 4
  %191 = load i32, i32* %12, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %196, label %193

193:                                              ; preds = %189
  %194 = load i32, i32* %21, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %205, label %196

196:                                              ; preds = %193, %189
  %197 = load i32, i32* %23, align 4
  %198 = load [48 x i32]*, [48 x i32]** %10, align 8
  %199 = load i32, i32* %11, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [48 x i32], [48 x i32]* %198, i64 %200
  %202 = load i32, i32* %17, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [48 x i32], [48 x i32]* %201, i64 0, i64 %203
  store i32 %197, i32* %204, align 4
  br label %205

205:                                              ; preds = %196, %193
  br label %210

206:                                              ; preds = %130
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %16, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %16, align 4
  br label %126

210:                                              ; preds = %205, %126
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %17, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %17, align 4
  br label %75

214:                                              ; preds = %75
  br label %215

215:                                              ; preds = %214
  %216 = load i32, i32* %18, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %18, align 4
  br label %71

218:                                              ; preds = %71
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
