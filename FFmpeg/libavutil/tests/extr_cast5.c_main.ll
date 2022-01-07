; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_cast5.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_cast5.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AVCAST5 = type { i32 }

@main.Key = internal constant <{ [16 x i32], [16 x i32], <{ i32, i32, i32, i32, i32, [11 x i32] }> }> <{ [16 x i32] [i32 1, i32 35, i32 69, i32 103, i32 18, i32 52, i32 86, i32 120, i32 35, i32 69, i32 103, i32 137, i32 52, i32 86, i32 120, i32 154], [16 x i32] [i32 1, i32 35, i32 69, i32 103, i32 18, i32 52, i32 86, i32 120, i32 35, i32 69, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], <{ i32, i32, i32, i32, i32, [11 x i32] }> <{ i32 1, i32 35, i32 69, i32 103, i32 18, [11 x i32] zeroinitializer }> }>, align 16
@main.rpt = internal constant [8 x i32] [i32 1, i32 35, i32 69, i32 103, i32 137, i32 171, i32 205, i32 239], align 16
@main.rct = internal constant [3 x [8 x i32]] [[8 x i32] [i32 35, i32 139, i32 79, i32 229, i32 132, i32 126, i32 68, i32 178], [8 x i32] [i32 235, i32 106, i32 113, i32 26, i32 44, i32 2, i32 39, i32 27], [8 x i32] [i32 122, i32 200, i32 22, i32 209, i32 110, i32 155, i32 48, i32 46]], align 16
@main.rct2 = internal constant [2 x [16 x i32]] [[16 x i32] [i32 238, i32 169, i32 208, i32 162, i32 73, i32 253, i32 59, i32 166, i32 179, i32 67, i32 111, i32 184, i32 157, i32 109, i32 202, i32 146], [16 x i32] [i32 178, i32 201, i32 94, i32 176, i32 12, i32 49, i32 173, i32 113, i32 128, i32 172, i32 5, i32 184, i32 232, i32 61, i32 105, i32 110]], align 16
@main.iv = internal constant [8 x i32] [i32 238, i32 169, i32 208, i32 162, i32 73, i32 253, i32 59, i32 166], align 16
@main.rpt2 = internal global [2 x [16 x i32]] zeroinitializer, align 16
@main.key_bits = internal constant [3 x i32] [i32 128, i32 80, i32 40], align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%d %02x %02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [8 x i32], align 16
  %10 = alloca %struct.AVCAST5*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  %11 = call %struct.AVCAST5* (...) @av_cast5_alloc()
  store %struct.AVCAST5* %11, %struct.AVCAST5** %10, align 8
  %12 = load %struct.AVCAST5*, %struct.AVCAST5** %10, align 8
  %13 = icmp ne %struct.AVCAST5* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %239

15:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %106, %15
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 3
  br i1 %18, label %19, label %109

19:                                               ; preds = %16
  %20 = load %struct.AVCAST5*, %struct.AVCAST5** %10, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [3 x [16 x i32]], [3 x [16 x i32]]* bitcast (<{ [16 x i32], [16 x i32], <{ i32, i32, i32, i32, i32, [11 x i32] }> }>* @main.Key to [3 x [16 x i32]]*), i64 0, i64 %22
  %24 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 0
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* @main.key_bits, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @av_cast5_init(%struct.AVCAST5* %20, i32* %24, i32 %28)
  %30 = load %struct.AVCAST5*, %struct.AVCAST5** %10, align 8
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %32 = call i32 @av_cast5_crypt(%struct.AVCAST5* %30, i32* %31, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @main.rpt, i64 0, i64 0), i32 1, i32 0)
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %65, %19
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 8
  br i1 %35, label %36, label %68

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [3 x [8 x i32]], [3 x [8 x i32]]* @main.rct, i64 0, i64 %38
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %39, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %43, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %36
  %50 = load i32, i32* @AV_LOG_ERROR, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [3 x [8 x i32]], [3 x [8 x i32]]* @main.rct, i64 0, i64 %53
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [8 x i32], [8 x i32]* %54, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @av_log(i32* null, i32 %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %58, i32 %62)
  store i32 1, i32* %8, align 4
  br label %64

64:                                               ; preds = %49, %36
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %33

68:                                               ; preds = %33
  %69 = load %struct.AVCAST5*, %struct.AVCAST5** %10, align 8
  %70 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [3 x [8 x i32]], [3 x [8 x i32]]* @main.rct, i64 0, i64 %72
  %74 = getelementptr inbounds [8 x i32], [8 x i32]* %73, i64 0, i64 0
  %75 = call i32 @av_cast5_crypt(%struct.AVCAST5* %69, i32* %70, i32* %74, i32 1, i32 1)
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %102, %68
  %77 = load i32, i32* %6, align 4
  %78 = icmp slt i32 %77, 8
  br i1 %78, label %79, label %105

79:                                               ; preds = %76
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [8 x i32], [8 x i32]* @main.rpt, i64 0, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %83, %87
  br i1 %88, label %89, label %101

89:                                               ; preds = %79
  %90 = load i32, i32* @AV_LOG_ERROR, align 4
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [8 x i32], [8 x i32]* @main.rpt, i64 0, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @av_log(i32* null, i32 %90, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %91, i32 %95, i32 %99)
  store i32 1, i32* %8, align 4
  br label %101

101:                                              ; preds = %89, %79
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %6, align 4
  br label %76

105:                                              ; preds = %76
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %7, align 4
  br label %16

109:                                              ; preds = %16
  %110 = call i32 @memcpy(i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @main.rpt2, i64 0, i64 0, i64 0), i32* getelementptr inbounds ([3 x [16 x i32]], [3 x [16 x i32]]* bitcast (<{ [16 x i32], [16 x i32], <{ i32, i32, i32, i32, i32, [11 x i32] }> }>* @main.Key to [3 x [16 x i32]]*), i64 0, i64 0, i64 0), i32 16)
  %111 = call i32 @memcpy(i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @main.rpt2, i64 0, i64 1, i64 0), i32* getelementptr inbounds ([3 x [16 x i32]], [3 x [16 x i32]]* bitcast (<{ [16 x i32], [16 x i32], <{ i32, i32, i32, i32, i32, [11 x i32] }> }>* @main.Key to [3 x [16 x i32]]*), i64 0, i64 0, i64 0), i32 16)
  store i32 0, i32* %6, align 4
  br label %112

112:                                              ; preds = %124, %109
  %113 = load i32, i32* %6, align 4
  %114 = icmp slt i32 %113, 1000000
  br i1 %114, label %115, label %127

115:                                              ; preds = %112
  %116 = load %struct.AVCAST5*, %struct.AVCAST5** %10, align 8
  %117 = call i32 @av_cast5_init(%struct.AVCAST5* %116, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @main.rpt2, i64 0, i64 1, i64 0), i32 128)
  %118 = load %struct.AVCAST5*, %struct.AVCAST5** %10, align 8
  %119 = call i32 @av_cast5_crypt(%struct.AVCAST5* %118, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @main.rpt2, i64 0, i64 0, i64 0), i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @main.rpt2, i64 0, i64 0, i64 0), i32 2, i32 0)
  %120 = load %struct.AVCAST5*, %struct.AVCAST5** %10, align 8
  %121 = call i32 @av_cast5_init(%struct.AVCAST5* %120, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @main.rpt2, i64 0, i64 0, i64 0), i32 128)
  %122 = load %struct.AVCAST5*, %struct.AVCAST5** %10, align 8
  %123 = call i32 @av_cast5_crypt(%struct.AVCAST5* %122, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @main.rpt2, i64 0, i64 1, i64 0), i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @main.rpt2, i64 0, i64 1, i64 0), i32 2, i32 0)
  br label %124

124:                                              ; preds = %115
  %125 = load i32, i32* %6, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %6, align 4
  br label %112

127:                                              ; preds = %112
  store i32 0, i32* %7, align 4
  br label %128

128:                                              ; preds = %174, %127
  %129 = load i32, i32* %7, align 4
  %130 = icmp slt i32 %129, 2
  br i1 %130, label %131, label %177

131:                                              ; preds = %128
  store i32 0, i32* %6, align 4
  br label %132

132:                                              ; preds = %170, %131
  %133 = load i32, i32* %6, align 4
  %134 = icmp slt i32 %133, 16
  br i1 %134, label %135, label %173

135:                                              ; preds = %132
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [2 x [16 x i32]], [2 x [16 x i32]]* @main.rct2, i64 0, i64 %137
  %139 = load i32, i32* %6, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [16 x i32], [16 x i32]* %138, i64 0, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %7, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [2 x [16 x i32]], [2 x [16 x i32]]* @main.rpt2, i64 0, i64 %144
  %146 = load i32, i32* %6, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [16 x i32], [16 x i32]* %145, i64 0, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %142, %149
  br i1 %150, label %151, label %169

151:                                              ; preds = %135
  %152 = load i32, i32* @AV_LOG_ERROR, align 4
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* %7, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [2 x [16 x i32]], [2 x [16 x i32]]* @main.rct2, i64 0, i64 %155
  %157 = load i32, i32* %6, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [16 x i32], [16 x i32]* %156, i64 0, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %7, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [2 x [16 x i32]], [2 x [16 x i32]]* @main.rpt2, i64 0, i64 %162
  %164 = load i32, i32* %6, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [16 x i32], [16 x i32]* %163, i64 0, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @av_log(i32* null, i32 %152, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %153, i32 %160, i32 %167)
  store i32 1, i32* %8, align 4
  br label %169

169:                                              ; preds = %151, %135
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %6, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %6, align 4
  br label %132

173:                                              ; preds = %132
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %7, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %7, align 4
  br label %128

177:                                              ; preds = %128
  store i32 0, i32* %7, align 4
  br label %178

178:                                              ; preds = %232, %177
  %179 = load i32, i32* %7, align 4
  %180 = icmp slt i32 %179, 3
  br i1 %180, label %181, label %235

181:                                              ; preds = %178
  %182 = load %struct.AVCAST5*, %struct.AVCAST5** %10, align 8
  %183 = load i32, i32* %7, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [3 x [16 x i32]], [3 x [16 x i32]]* bitcast (<{ [16 x i32], [16 x i32], <{ i32, i32, i32, i32, i32, [11 x i32] }> }>* @main.Key to [3 x [16 x i32]]*), i64 0, i64 %184
  %186 = getelementptr inbounds [16 x i32], [16 x i32]* %185, i64 0, i64 0
  %187 = load i32, i32* %7, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [3 x i32], [3 x i32]* @main.key_bits, i64 0, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @av_cast5_init(%struct.AVCAST5* %182, i32* %186, i32 %190)
  %192 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %193 = call i32 @memcpy(i32* %192, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @main.iv, i64 0, i64 0), i32 8)
  %194 = load %struct.AVCAST5*, %struct.AVCAST5** %10, align 8
  %195 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %196 = call i32 @av_cast5_crypt2(%struct.AVCAST5* %194, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @main.rpt2, i64 0, i64 0, i64 0), i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @main.rct2, i64 0, i64 0, i64 0), i32 2, i32* %195, i32 0)
  %197 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %198 = call i32 @memcpy(i32* %197, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @main.iv, i64 0, i64 0), i32 8)
  %199 = load %struct.AVCAST5*, %struct.AVCAST5** %10, align 8
  %200 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %201 = call i32 @av_cast5_crypt2(%struct.AVCAST5* %199, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @main.rpt2, i64 0, i64 0, i64 0), i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @main.rpt2, i64 0, i64 0, i64 0), i32 2, i32* %200, i32 1)
  store i32 0, i32* %6, align 4
  br label %202

202:                                              ; preds = %228, %181
  %203 = load i32, i32* %6, align 4
  %204 = icmp slt i32 %203, 16
  br i1 %204, label %205, label %231

205:                                              ; preds = %202
  %206 = load i32, i32* %6, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [16 x i32], [16 x i32]* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @main.rct2, i64 0, i64 0), i64 0, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* %6, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [16 x i32], [16 x i32]* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @main.rpt2, i64 0, i64 0), i64 0, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = icmp ne i32 %209, %213
  br i1 %214, label %215, label %227

215:                                              ; preds = %205
  %216 = load i32, i32* @AV_LOG_ERROR, align 4
  %217 = load i32, i32* %6, align 4
  %218 = load i32, i32* %6, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [16 x i32], [16 x i32]* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @main.rct2, i64 0, i64 0), i64 0, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* %6, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [16 x i32], [16 x i32]* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @main.rpt2, i64 0, i64 0), i64 0, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @av_log(i32* null, i32 %216, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %217, i32 %221, i32 %225)
  store i32 1, i32* %8, align 4
  br label %227

227:                                              ; preds = %215, %205
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %6, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %6, align 4
  br label %202

231:                                              ; preds = %202
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %7, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %7, align 4
  br label %178

235:                                              ; preds = %178
  %236 = load %struct.AVCAST5*, %struct.AVCAST5** %10, align 8
  %237 = call i32 @av_free(%struct.AVCAST5* %236)
  %238 = load i32, i32* %8, align 4
  store i32 %238, i32* %3, align 4
  br label %239

239:                                              ; preds = %235, %14
  %240 = load i32, i32* %3, align 4
  ret i32 %240
}

declare dso_local %struct.AVCAST5* @av_cast5_alloc(...) #1

declare dso_local i32 @av_cast5_init(%struct.AVCAST5*, i32*, i32) #1

declare dso_local i32 @av_cast5_crypt(%struct.AVCAST5*, i32*, i32*, i32, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @av_cast5_crypt2(%struct.AVCAST5*, i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @av_free(%struct.AVCAST5*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
