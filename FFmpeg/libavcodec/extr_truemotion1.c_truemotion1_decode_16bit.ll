; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_truemotion1.c_truemotion1_decode_16bit.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_truemotion1.c_truemotion1_decode_16bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i8*, i32*, i32, %struct.TYPE_6__*, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i8**, i32* }
%struct.TYPE_5__ = type { i32, i32 }

@FLAG_KEYFRAME = common dso_local global i32 0, align 4
@BLOCK_2x2 = common dso_local global i32 0, align 4
@BLOCK_4x2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @truemotion1_decode_16bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @truemotion1_decode_16bit(%struct.TYPE_7__* %0) #0 {
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

45:                                               ; preds = %207, %1
  %46 = load i32, i32* %3, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 7
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %46, %51
  br i1 %52, label %53, label %210

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
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %53
  %62 = load i8*, i8** %11, align 8
  %63 = load i32, i32* %14, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %14, align 4
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  %67 = load i8, i8* %66, align 1
  store i8 %67, i8* %12, align 1
  br label %68

68:                                               ; preds = %61, %53
  store i8 1, i8* %13, align 1
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 7
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %181, %68
  %75 = load i32, i32* %4, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %184

77:                                               ; preds = %74
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %77
  %81 = load i8, i8* %12, align 1
  %82 = zext i8 %81 to i32
  %83 = load i8, i8* %13, align 1
  %84 = zext i8 %83 to i32
  %85 = and i32 %82, %84
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %147

87:                                               ; preds = %80, %77
  %88 = load i32, i32* %3, align 4
  %89 = and i32 %88, 3
  switch i32 %89, label %146 [
    i32 0, label %90
    i32 1, label %109
    i32 3, label %109
    i32 2, label %114
  ]

90:                                               ; preds = %87
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %93, 2
  br i1 %94, label %95, label %102

95:                                               ; preds = %90
  %96 = call i32 (...) @APPLY_C_PREDICTOR()
  %97 = call i32 (...) @APPLY_Y_PREDICTOR()
  %98 = call i32 (...) @OUTPUT_PIXEL_PAIR()
  %99 = call i32 (...) @APPLY_C_PREDICTOR()
  %100 = call i32 (...) @APPLY_Y_PREDICTOR()
  %101 = call i32 (...) @OUTPUT_PIXEL_PAIR()
  br label %108

102:                                              ; preds = %90
  %103 = call i32 (...) @APPLY_C_PREDICTOR()
  %104 = call i32 (...) @APPLY_Y_PREDICTOR()
  %105 = call i32 (...) @OUTPUT_PIXEL_PAIR()
  %106 = call i32 (...) @APPLY_Y_PREDICTOR()
  %107 = call i32 (...) @OUTPUT_PIXEL_PAIR()
  br label %108

108:                                              ; preds = %102, %95
  br label %146

109:                                              ; preds = %87, %87
  %110 = call i32 (...) @APPLY_Y_PREDICTOR()
  %111 = call i32 (...) @OUTPUT_PIXEL_PAIR()
  %112 = call i32 (...) @APPLY_Y_PREDICTOR()
  %113 = call i32 (...) @OUTPUT_PIXEL_PAIR()
  br label %146

114:                                              ; preds = %87
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @BLOCK_2x2, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %114
  %121 = call i32 (...) @APPLY_C_PREDICTOR()
  %122 = call i32 (...) @APPLY_Y_PREDICTOR()
  %123 = call i32 (...) @OUTPUT_PIXEL_PAIR()
  %124 = call i32 (...) @APPLY_C_PREDICTOR()
  %125 = call i32 (...) @APPLY_Y_PREDICTOR()
  %126 = call i32 (...) @OUTPUT_PIXEL_PAIR()
  br label %145

127:                                              ; preds = %114
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @BLOCK_4x2, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %127
  %134 = call i32 (...) @APPLY_C_PREDICTOR()
  %135 = call i32 (...) @APPLY_Y_PREDICTOR()
  %136 = call i32 (...) @OUTPUT_PIXEL_PAIR()
  %137 = call i32 (...) @APPLY_Y_PREDICTOR()
  %138 = call i32 (...) @OUTPUT_PIXEL_PAIR()
  br label %144

139:                                              ; preds = %127
  %140 = call i32 (...) @APPLY_Y_PREDICTOR()
  %141 = call i32 (...) @OUTPUT_PIXEL_PAIR()
  %142 = call i32 (...) @APPLY_Y_PREDICTOR()
  %143 = call i32 (...) @OUTPUT_PIXEL_PAIR()
  br label %144

144:                                              ; preds = %139, %133
  br label %145

145:                                              ; preds = %144, %120
  br label %146

146:                                              ; preds = %87, %145, %109, %108
  br label %163

147:                                              ; preds = %80
  %148 = load i32*, i32** %8, align 8
  %149 = getelementptr inbounds i32, i32* %148, i32 1
  store i32* %149, i32** %8, align 8
  %150 = load i32, i32* %148, align 4
  %151 = load i32*, i32** %7, align 8
  %152 = getelementptr inbounds i32, i32* %151, i32 1
  store i32* %152, i32** %7, align 8
  store i32 %150, i32* %151, align 4
  %153 = load i32*, i32** %8, align 8
  %154 = load i32, i32* %153, align 4
  %155 = load i32*, i32** %7, align 8
  %156 = load i32, i32* %155, align 4
  %157 = sub i32 %154, %156
  store i32 %157, i32* %6, align 4
  %158 = load i32*, i32** %8, align 8
  %159 = getelementptr inbounds i32, i32* %158, i32 1
  store i32* %159, i32** %8, align 8
  %160 = load i32, i32* %158, align 4
  %161 = load i32*, i32** %7, align 8
  %162 = getelementptr inbounds i32, i32* %161, i32 1
  store i32* %162, i32** %7, align 8
  store i32 %160, i32* %161, align 4
  br label %163

163:                                              ; preds = %147, %146
  %164 = load i32, i32* %10, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %181, label %166

166:                                              ; preds = %163
  %167 = load i8, i8* %13, align 1
  %168 = zext i8 %167 to i32
  %169 = shl i32 %168, 1
  %170 = trunc i32 %169 to i8
  store i8 %170, i8* %13, align 1
  %171 = load i8, i8* %13, align 1
  %172 = icmp ne i8 %171, 0
  br i1 %172, label %180, label %173

173:                                              ; preds = %166
  %174 = load i8*, i8** %11, align 8
  %175 = load i32, i32* %14, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %14, align 4
  %177 = sext i32 %175 to i64
  %178 = getelementptr inbounds i8, i8* %174, i64 %177
  %179 = load i8, i8* %178, align 1
  store i8 %179, i8* %12, align 1
  store i8 1, i8* %13, align 1
  br label %180

180:                                              ; preds = %173, %166
  br label %181

181:                                              ; preds = %180, %163
  %182 = load i32, i32* %4, align 4
  %183 = sub nsw i32 %182, 4
  store i32 %183, i32* %4, align 4
  br label %74

184:                                              ; preds = %74
  %185 = load i32, i32* %3, align 4
  %186 = add nsw i32 %185, 1
  %187 = and i32 %186, 3
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %184
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 5
  %192 = load i32, i32* %191, align 8
  %193 = load i8*, i8** %11, align 8
  %194 = sext i32 %192 to i64
  %195 = getelementptr inbounds i8, i8* %193, i64 %194
  store i8* %195, i8** %11, align 8
  br label %196

196:                                              ; preds = %189, %184
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 4
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 1
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 0
  %203 = load i32, i32* %202, align 4
  %204 = load i8*, i8** %9, align 8
  %205 = sext i32 %203 to i64
  %206 = getelementptr inbounds i8, i8* %204, i64 %205
  store i8* %206, i8** %9, align 8
  br label %207

207:                                              ; preds = %196
  %208 = load i32, i32* %3, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %3, align 4
  br label %45

210:                                              ; preds = %45
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @GET_NEXT_INDEX(...) #1

declare dso_local i32 @APPLY_C_PREDICTOR(...) #1

declare dso_local i32 @APPLY_Y_PREDICTOR(...) #1

declare dso_local i32 @OUTPUT_PIXEL_PAIR(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
