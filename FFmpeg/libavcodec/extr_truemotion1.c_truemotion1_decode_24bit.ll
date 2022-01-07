; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_truemotion1.c_truemotion1_decode_24bit.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_truemotion1.c_truemotion1_decode_24bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i8*, i32*, i32, %struct.TYPE_6__*, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i8**, i32* }
%struct.TYPE_5__ = type { i32, i32 }

@FLAG_KEYFRAME = common dso_local global i32 0, align 4
@BLOCK_2x2 = common dso_local global i32 0, align 4
@BLOCK_4x2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @truemotion1_decode_24bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @truemotion1_decode_24bit(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i8**, i8*** %20, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %9, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @FLAG_KEYFRAME, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %10, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %11, align 8
  store i32 0, i32* %15, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 7
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = call i32 @memset(i32* %34, i32 0, i32 %42)
  %44 = call i32 (...) @GET_NEXT_INDEX()
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %203, %1
  %46 = load i32, i32* %3, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 7
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %46, %51
  br i1 %52, label %53, label %206

53:                                               ; preds = %45
  store i32 0, i32* %6, align 4
  %54 = load i8*, i8** %9, align 8
  %55 = bitcast i8* %54 to i32*
  store i32* %55, i32** %8, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  store i32* %58, i32** %7, align 8
  store i32 0, i32* %14, align 4
  %59 = load i8*, i8** %11, align 8
  %60 = load i32, i32* %14, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %14, align 4
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i8, i8* %59, i64 %62
  %64 = load i8, i8* %63, align 1
  store i8 %64, i8* %12, align 1
  store i8 1, i8* %13, align 1
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 7
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %177, %53
  %71 = load i32, i32* %4, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %180

73:                                               ; preds = %70
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %73
  %77 = load i8, i8* %12, align 1
  %78 = zext i8 %77 to i32
  %79 = load i8, i8* %13, align 1
  %80 = zext i8 %79 to i32
  %81 = and i32 %78, %80
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %143

83:                                               ; preds = %76, %73
  %84 = load i32, i32* %3, align 4
  %85 = and i32 %84, 3
  switch i32 %85, label %142 [
    i32 0, label %86
    i32 1, label %105
    i32 3, label %105
    i32 2, label %110
  ]

86:                                               ; preds = %83
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = icmp eq i32 %89, 2
  br i1 %90, label %91, label %98

91:                                               ; preds = %86
  %92 = call i32 (...) @APPLY_C_PREDICTOR_24()
  %93 = call i32 (...) @APPLY_Y_PREDICTOR_24()
  %94 = call i32 (...) @OUTPUT_PIXEL_PAIR()
  %95 = call i32 (...) @APPLY_C_PREDICTOR_24()
  %96 = call i32 (...) @APPLY_Y_PREDICTOR_24()
  %97 = call i32 (...) @OUTPUT_PIXEL_PAIR()
  br label %104

98:                                               ; preds = %86
  %99 = call i32 (...) @APPLY_C_PREDICTOR_24()
  %100 = call i32 (...) @APPLY_Y_PREDICTOR_24()
  %101 = call i32 (...) @OUTPUT_PIXEL_PAIR()
  %102 = call i32 (...) @APPLY_Y_PREDICTOR_24()
  %103 = call i32 (...) @OUTPUT_PIXEL_PAIR()
  br label %104

104:                                              ; preds = %98, %91
  br label %142

105:                                              ; preds = %83, %83
  %106 = call i32 (...) @APPLY_Y_PREDICTOR_24()
  %107 = call i32 (...) @OUTPUT_PIXEL_PAIR()
  %108 = call i32 (...) @APPLY_Y_PREDICTOR_24()
  %109 = call i32 (...) @OUTPUT_PIXEL_PAIR()
  br label %142

110:                                              ; preds = %83
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @BLOCK_2x2, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %110
  %117 = call i32 (...) @APPLY_C_PREDICTOR_24()
  %118 = call i32 (...) @APPLY_Y_PREDICTOR_24()
  %119 = call i32 (...) @OUTPUT_PIXEL_PAIR()
  %120 = call i32 (...) @APPLY_C_PREDICTOR_24()
  %121 = call i32 (...) @APPLY_Y_PREDICTOR_24()
  %122 = call i32 (...) @OUTPUT_PIXEL_PAIR()
  br label %141

123:                                              ; preds = %110
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @BLOCK_4x2, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %123
  %130 = call i32 (...) @APPLY_C_PREDICTOR_24()
  %131 = call i32 (...) @APPLY_Y_PREDICTOR_24()
  %132 = call i32 (...) @OUTPUT_PIXEL_PAIR()
  %133 = call i32 (...) @APPLY_Y_PREDICTOR_24()
  %134 = call i32 (...) @OUTPUT_PIXEL_PAIR()
  br label %140

135:                                              ; preds = %123
  %136 = call i32 (...) @APPLY_Y_PREDICTOR_24()
  %137 = call i32 (...) @OUTPUT_PIXEL_PAIR()
  %138 = call i32 (...) @APPLY_Y_PREDICTOR_24()
  %139 = call i32 (...) @OUTPUT_PIXEL_PAIR()
  br label %140

140:                                              ; preds = %135, %129
  br label %141

141:                                              ; preds = %140, %116
  br label %142

142:                                              ; preds = %83, %141, %105, %104
  br label %159

143:                                              ; preds = %76
  %144 = load i32*, i32** %8, align 8
  %145 = getelementptr inbounds i32, i32* %144, i32 1
  store i32* %145, i32** %8, align 8
  %146 = load i32, i32* %144, align 4
  %147 = load i32*, i32** %7, align 8
  %148 = getelementptr inbounds i32, i32* %147, i32 1
  store i32* %148, i32** %7, align 8
  store i32 %146, i32* %147, align 4
  %149 = load i32*, i32** %8, align 8
  %150 = load i32, i32* %149, align 4
  %151 = load i32*, i32** %7, align 8
  %152 = load i32, i32* %151, align 4
  %153 = sub i32 %150, %152
  store i32 %153, i32* %6, align 4
  %154 = load i32*, i32** %8, align 8
  %155 = getelementptr inbounds i32, i32* %154, i32 1
  store i32* %155, i32** %8, align 8
  %156 = load i32, i32* %154, align 4
  %157 = load i32*, i32** %7, align 8
  %158 = getelementptr inbounds i32, i32* %157, i32 1
  store i32* %158, i32** %7, align 8
  store i32 %156, i32* %157, align 4
  br label %159

159:                                              ; preds = %143, %142
  %160 = load i32, i32* %10, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %177, label %162

162:                                              ; preds = %159
  %163 = load i8, i8* %13, align 1
  %164 = zext i8 %163 to i32
  %165 = shl i32 %164, 1
  %166 = trunc i32 %165 to i8
  store i8 %166, i8* %13, align 1
  %167 = load i8, i8* %13, align 1
  %168 = icmp ne i8 %167, 0
  br i1 %168, label %176, label %169

169:                                              ; preds = %162
  %170 = load i8*, i8** %11, align 8
  %171 = load i32, i32* %14, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %14, align 4
  %173 = sext i32 %171 to i64
  %174 = getelementptr inbounds i8, i8* %170, i64 %173
  %175 = load i8, i8* %174, align 1
  store i8 %175, i8* %12, align 1
  store i8 1, i8* %13, align 1
  br label %176

176:                                              ; preds = %169, %162
  br label %177

177:                                              ; preds = %176, %159
  %178 = load i32, i32* %4, align 4
  %179 = sub nsw i32 %178, 2
  store i32 %179, i32* %4, align 4
  br label %70

180:                                              ; preds = %70
  %181 = load i32, i32* %3, align 4
  %182 = add nsw i32 %181, 1
  %183 = and i32 %182, 3
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %192

185:                                              ; preds = %180
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 5
  %188 = load i32, i32* %187, align 8
  %189 = load i8*, i8** %11, align 8
  %190 = sext i32 %188 to i64
  %191 = getelementptr inbounds i8, i8* %189, i64 %190
  store i8* %191, i8** %11, align 8
  br label %192

192:                                              ; preds = %185, %180
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 4
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 1
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 0
  %199 = load i32, i32* %198, align 4
  %200 = load i8*, i8** %9, align 8
  %201 = sext i32 %199 to i64
  %202 = getelementptr inbounds i8, i8* %200, i64 %201
  store i8* %202, i8** %9, align 8
  br label %203

203:                                              ; preds = %192
  %204 = load i32, i32* %3, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %3, align 4
  br label %45

206:                                              ; preds = %45
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @GET_NEXT_INDEX(...) #1

declare dso_local i32 @APPLY_C_PREDICTOR_24(...) #1

declare dso_local i32 @APPLY_Y_PREDICTOR_24(...) #1

declare dso_local i32 @OUTPUT_PIXEL_PAIR(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
