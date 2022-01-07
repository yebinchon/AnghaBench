; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/tests/extr_swscale.c_selfTest.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/tests/extr_swscale.c_selfTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@SWS_FAST_BILINEAR = common dso_local global i32 0, align 4
@SWS_BILINEAR = common dso_local global i32 0, align 4
@SWS_BICUBIC = common dso_local global i32 0, align 4
@SWS_X = common dso_local global i32 0, align 4
@SWS_POINT = common dso_local global i32 0, align 4
@SWS_AREA = common dso_local global i32 0, align 4
@AV_PIX_FMT_NONE = common dso_local global i32 0, align 4
@AV_PIX_FMT_NB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s -> %s\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i32*, i32, i32, i32, i32)* @selfTest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @selfTest(i32** %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [7 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [4 x i32], align 16
  %17 = alloca [4 x i32], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_3__*, align 8
  %21 = alloca %struct.TYPE_3__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32** %0, i32*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %26 = getelementptr inbounds [7 x i32], [7 x i32]* %13, i64 0, i64 0
  %27 = load i32, i32* @SWS_FAST_BILINEAR, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds i32, i32* %26, i64 1
  %29 = load i32, i32* @SWS_BILINEAR, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds i32, i32* %28, i64 1
  %31 = load i32, i32* @SWS_BICUBIC, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds i32, i32* %30, i64 1
  %33 = load i32, i32* @SWS_X, align 4
  store i32 %33, i32* %32, align 4
  %34 = getelementptr inbounds i32, i32* %32, i64 1
  %35 = load i32, i32* @SWS_POINT, align 4
  store i32 %35, i32* %34, align 4
  %36 = getelementptr inbounds i32, i32* %34, i64 1
  %37 = load i32, i32* @SWS_AREA, align 4
  store i32 %37, i32* %36, align 4
  %38 = getelementptr inbounds i32, i32* %36, i64 1
  store i32 0, i32* %38, align 4
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %15, align 4
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = sdiv i32 %43, 3
  %45 = sub nsw i32 %42, %44
  store i32 %45, i32* %41, align 4
  %46 = getelementptr inbounds i32, i32* %41, i64 1
  %47 = load i32, i32* %14, align 4
  store i32 %47, i32* %46, align 4
  %48 = getelementptr inbounds i32, i32* %46, i64 1
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = sdiv i32 %50, 3
  %52 = add nsw i32 %49, %51
  store i32 %52, i32* %48, align 4
  %53 = getelementptr inbounds i32, i32* %48, i64 1
  store i32 0, i32* %53, align 4
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %15, align 4
  %57 = sdiv i32 %56, 3
  %58 = sub nsw i32 %55, %57
  store i32 %58, i32* %54, align 4
  %59 = getelementptr inbounds i32, i32* %54, i64 1
  %60 = load i32, i32* %15, align 4
  store i32 %60, i32* %59, align 4
  %61 = getelementptr inbounds i32, i32* %59, i64 1
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %15, align 4
  %64 = sdiv i32 %63, 3
  %65 = add nsw i32 %62, %64
  store i32 %65, i32* %61, align 4
  %66 = getelementptr inbounds i32, i32* %61, i64 1
  store i32 0, i32* %66, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %6
  %71 = load i32, i32* %11, align 4
  br label %73

72:                                               ; preds = %6
  br label %73

73:                                               ; preds = %72, %70
  %74 = phi i32 [ %71, %70 ], [ 0, %72 ]
  store i32 %74, i32* %18, align 4
  br label %75

75:                                               ; preds = %210, %73
  %76 = load i32, i32* %18, align 4
  %77 = load i32, i32* @AV_PIX_FMT_NB, align 4
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %79, label %213

79:                                               ; preds = %75
  %80 = load i32, i32* %18, align 4
  %81 = call i32 @sws_isSupportedInput(i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load i32, i32* %18, align 4
  %85 = call i32 @sws_isSupportedOutput(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %83, %79
  br label %210

88:                                               ; preds = %83
  %89 = load i32, i32* %18, align 4
  %90 = call %struct.TYPE_3__* @av_pix_fmt_desc_get(i32 %89)
  store %struct.TYPE_3__* %90, %struct.TYPE_3__** %20, align 8
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = load i32, i32* %12, align 4
  br label %97

96:                                               ; preds = %88
  br label %97

97:                                               ; preds = %96, %94
  %98 = phi i32 [ %95, %94 ], [ 0, %96 ]
  store i32 %98, i32* %19, align 4
  br label %99

99:                                               ; preds = %201, %97
  %100 = load i32, i32* %19, align 4
  %101 = load i32, i32* @AV_PIX_FMT_NB, align 4
  %102 = icmp ult i32 %100, %101
  br i1 %102, label %103, label %204

103:                                              ; preds = %99
  store i32 0, i32* %25, align 4
  %104 = load i32, i32* %19, align 4
  %105 = call i32 @sws_isSupportedInput(i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load i32, i32* %19, align 4
  %109 = call i32 @sws_isSupportedOutput(i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %107, %103
  br label %201

112:                                              ; preds = %107
  %113 = load i32, i32* %19, align 4
  %114 = call %struct.TYPE_3__* @av_pix_fmt_desc_get(i32 %113)
  store %struct.TYPE_3__* %114, %struct.TYPE_3__** %21, align 8
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %117, i8* %120)
  %122 = load i32, i32* @stdout, align 4
  %123 = call i32 @fflush(i32 %122)
  store i32 0, i32* %24, align 4
  br label %124

124:                                              ; preds = %192, %112
  %125 = load i32, i32* %24, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [7 x i32], [7 x i32]* %13, i64 0, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %124
  %131 = load i32, i32* %25, align 4
  %132 = icmp ne i32 %131, 0
  %133 = xor i1 %132, true
  br label %134

134:                                              ; preds = %130, %124
  %135 = phi i1 [ false, %124 ], [ %133, %130 ]
  br i1 %135, label %136, label %195

136:                                              ; preds = %134
  store i32 0, i32* %22, align 4
  br label %137

137:                                              ; preds = %188, %136
  %138 = load i32, i32* %22, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %137
  %144 = load i32, i32* %25, align 4
  %145 = icmp ne i32 %144, 0
  %146 = xor i1 %145, true
  br label %147

147:                                              ; preds = %143, %137
  %148 = phi i1 [ false, %137 ], [ %146, %143 ]
  br i1 %148, label %149, label %191

149:                                              ; preds = %147
  store i32 0, i32* %23, align 4
  br label %150

150:                                              ; preds = %184, %149
  %151 = load i32, i32* %23, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %150
  %157 = load i32, i32* %25, align 4
  %158 = icmp ne i32 %157, 0
  %159 = xor i1 %158, true
  br label %160

160:                                              ; preds = %156, %150
  %161 = phi i1 [ false, %150 ], [ %159, %156 ]
  br i1 %161, label %162, label %187

162:                                              ; preds = %160
  %163 = load i32**, i32*** %7, align 8
  %164 = load i32*, i32** %8, align 8
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* %10, align 4
  %167 = load i32, i32* %18, align 4
  %168 = load i32, i32* %19, align 4
  %169 = load i32, i32* %14, align 4
  %170 = load i32, i32* %15, align 4
  %171 = load i32, i32* %22, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %23, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %24, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [7 x i32], [7 x i32]* %13, i64 0, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @doTest(i32** %163, i32* %164, i32 %165, i32 %166, i32 %167, i32 %168, i32 %169, i32 %170, i32 %174, i32 %178, i32 %182, i32* null)
  store i32 %183, i32* %25, align 4
  br label %184

184:                                              ; preds = %162
  %185 = load i32, i32* %23, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %23, align 4
  br label %150

187:                                              ; preds = %160
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %22, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %22, align 4
  br label %137

191:                                              ; preds = %147
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %24, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %24, align 4
  br label %124

195:                                              ; preds = %134
  %196 = load i32, i32* %12, align 4
  %197 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  %198 = icmp ne i32 %196, %197
  br i1 %198, label %199, label %200

199:                                              ; preds = %195
  br label %204

200:                                              ; preds = %195
  br label %201

201:                                              ; preds = %200, %111
  %202 = load i32, i32* %19, align 4
  %203 = add i32 %202, 1
  store i32 %203, i32* %19, align 4
  br label %99

204:                                              ; preds = %199, %99
  %205 = load i32, i32* %11, align 4
  %206 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  %207 = icmp ne i32 %205, %206
  br i1 %207, label %208, label %209

208:                                              ; preds = %204
  br label %213

209:                                              ; preds = %204
  br label %210

210:                                              ; preds = %209, %87
  %211 = load i32, i32* %18, align 4
  %212 = add i32 %211, 1
  store i32 %212, i32* %18, align 4
  br label %75

213:                                              ; preds = %208, %75
  ret void
}

declare dso_local i32 @sws_isSupportedInput(i32) #1

declare dso_local i32 @sws_isSupportedOutput(i32) #1

declare dso_local %struct.TYPE_3__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @doTest(i32**, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
