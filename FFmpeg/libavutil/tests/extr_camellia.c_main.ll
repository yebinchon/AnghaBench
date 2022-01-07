; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_camellia.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_camellia.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AVCAMELLIA = type { i32 }

@__const.main.Key = private unnamed_addr constant <{ <{ [16 x i32], [16 x i32] }>, <{ [24 x i32], [8 x i32] }>, [32 x i32] }> <{ <{ [16 x i32], [16 x i32] }> <{ [16 x i32] [i32 1, i32 35, i32 69, i32 103, i32 137, i32 171, i32 205, i32 239, i32 254, i32 220, i32 186, i32 152, i32 118, i32 84, i32 50, i32 16], [16 x i32] zeroinitializer }>, <{ [24 x i32], [8 x i32] }> <{ [24 x i32] [i32 1, i32 35, i32 69, i32 103, i32 137, i32 171, i32 205, i32 239, i32 254, i32 220, i32 186, i32 152, i32 118, i32 84, i32 50, i32 16, i32 0, i32 17, i32 34, i32 51, i32 68, i32 85, i32 102, i32 119], [8 x i32] zeroinitializer }>, [32 x i32] [i32 1, i32 35, i32 69, i32 103, i32 137, i32 171, i32 205, i32 239, i32 254, i32 220, i32 186, i32 152, i32 118, i32 84, i32 50, i32 16, i32 0, i32 17, i32 34, i32 51, i32 68, i32 85, i32 102, i32 119, i32 136, i32 153, i32 170, i32 187, i32 204, i32 221, i32 238, i32 255] }>, align 16
@__const.main.rct = private unnamed_addr constant [3 x [16 x i32]] [[16 x i32] [i32 103, i32 103, i32 49, i32 56, i32 84, i32 150, i32 105, i32 115, i32 8, i32 87, i32 6, i32 86, i32 72, i32 234, i32 190, i32 67], [16 x i32] [i32 180, i32 153, i32 52, i32 1, i32 179, i32 233, i32 150, i32 248, i32 78, i32 229, i32 206, i32 231, i32 215, i32 155, i32 9, i32 185], [16 x i32] [i32 154, i32 204, i32 35, i32 125, i32 255, i32 22, i32 215, i32 108, i32 32, i32 239, i32 124, i32 145, i32 158, i32 58, i32 117, i32 9]], align 16
@__const.main.rpt = private unnamed_addr constant [32 x i32] [i32 1, i32 35, i32 69, i32 103, i32 137, i32 171, i32 205, i32 239, i32 254, i32 220, i32 186, i32 152, i32 118, i32 84, i32 50, i32 16, i32 1, i32 35, i32 69, i32 103, i32 137, i32 171, i32 205, i32 239, i32 254, i32 220, i32 186, i32 152, i32 118, i32 84, i32 50, i32 16], align 16
@__const.main.kbits = private unnamed_addr constant [3 x i32] [i32 128, i32 192, i32 256], align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%d %02x %02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"HALLO123HALLO123\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [3 x [32 x i32]], align 16
  %7 = alloca [3 x [16 x i32]], align 16
  %8 = alloca [32 x i32], align 16
  %9 = alloca [3 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [32 x i32], align 16
  %14 = alloca [16 x i32], align 16
  %15 = alloca %struct.AVCAMELLIA*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %16 = bitcast [3 x [32 x i32]]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 bitcast (<{ <{ [16 x i32], [16 x i32] }>, <{ [24 x i32], [8 x i32] }>, [32 x i32] }>* @__const.main.Key to i8*), i64 384, i1 false)
  %17 = bitcast [3 x [16 x i32]]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %17, i8* align 16 bitcast ([3 x [16 x i32]]* @__const.main.rct to i8*), i64 192, i1 false)
  %18 = bitcast [32 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %18, i8* align 16 bitcast ([32 x i32]* @__const.main.rpt to i8*), i64 128, i1 false)
  %19 = bitcast [3 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 bitcast ([3 x i32]* @__const.main.kbits to i8*), i64 12, i1 false)
  store i32 0, i32* %12, align 4
  %20 = call %struct.AVCAMELLIA* (...) @av_camellia_alloc()
  store %struct.AVCAMELLIA* %20, %struct.AVCAMELLIA** %15, align 8
  %21 = load %struct.AVCAMELLIA*, %struct.AVCAMELLIA** %15, align 8
  %22 = icmp ne %struct.AVCAMELLIA* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %171

24:                                               ; preds = %2
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %116, %24
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 3
  br i1 %27, label %28, label %119

28:                                               ; preds = %25
  %29 = load %struct.AVCAMELLIA*, %struct.AVCAMELLIA** %15, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [3 x [32 x i32]], [3 x [32 x i32]]* %6, i64 0, i64 %31
  %33 = getelementptr inbounds [32 x i32], [32 x i32]* %32, i64 0, i64 0
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @av_camellia_init(%struct.AVCAMELLIA* %29, i32* %33, i32 %37)
  %39 = load %struct.AVCAMELLIA*, %struct.AVCAMELLIA** %15, align 8
  %40 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 0
  %41 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 0
  %42 = call i32 @av_camellia_crypt(%struct.AVCAMELLIA* %39, i32* %40, i32* %41, i32 1, i32* null, i32 0)
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %75, %28
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 16
  br i1 %45, label %46, label %78

46:                                               ; preds = %43
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [3 x [16 x i32]], [3 x [16 x i32]]* %7, i64 0, i64 %48
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [16 x i32], [16 x i32]* %49, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %53, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %46
  %60 = load i32, i32* @AV_LOG_ERROR, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [3 x [16 x i32]], [3 x [16 x i32]]* %7, i64 0, i64 %63
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [16 x i32], [16 x i32]* %64, i64 0, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @av_log(i32* null, i32 %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %68, i32 %72)
  store i32 1, i32* %12, align 4
  br label %74

74:                                               ; preds = %59, %46
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %43

78:                                               ; preds = %43
  %79 = load %struct.AVCAMELLIA*, %struct.AVCAMELLIA** %15, align 8
  %80 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 0
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [3 x [16 x i32]], [3 x [16 x i32]]* %7, i64 0, i64 %82
  %84 = getelementptr inbounds [16 x i32], [16 x i32]* %83, i64 0, i64 0
  %85 = call i32 @av_camellia_crypt(%struct.AVCAMELLIA* %79, i32* %80, i32* %84, i32 1, i32* null, i32 1)
  store i32 0, i32* %10, align 4
  br label %86

86:                                               ; preds = %112, %78
  %87 = load i32, i32* %10, align 4
  %88 = icmp slt i32 %87, 16
  br i1 %88, label %89, label %115

89:                                               ; preds = %86
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %93, %97
  br i1 %98, label %99, label %111

99:                                               ; preds = %89
  %100 = load i32, i32* @AV_LOG_ERROR, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @av_log(i32* null, i32 %100, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %101, i32 %105, i32 %109)
  store i32 1, i32* %12, align 4
  br label %111

111:                                              ; preds = %99, %89
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %10, align 4
  br label %86

115:                                              ; preds = %86
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %11, align 4
  br label %25

119:                                              ; preds = %25
  %120 = load %struct.AVCAMELLIA*, %struct.AVCAMELLIA** %15, align 8
  %121 = getelementptr inbounds [3 x [32 x i32]], [3 x [32 x i32]]* %6, i64 0, i64 0
  %122 = getelementptr inbounds [32 x i32], [32 x i32]* %121, i64 0, i64 0
  %123 = call i32 @av_camellia_init(%struct.AVCAMELLIA* %120, i32* %122, i32 128)
  %124 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %125 = call i32 @memcpy(i32* %124, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 16)
  %126 = load %struct.AVCAMELLIA*, %struct.AVCAMELLIA** %15, align 8
  %127 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 0
  %128 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 0
  %129 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %130 = call i32 @av_camellia_crypt(%struct.AVCAMELLIA* %126, i32* %127, i32* %128, i32 2, i32* %129, i32 0)
  %131 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %132 = call i32 @memcpy(i32* %131, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 16)
  %133 = load %struct.AVCAMELLIA*, %struct.AVCAMELLIA** %15, align 8
  %134 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 0
  %135 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 0
  %136 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %137 = call i32 @av_camellia_crypt(%struct.AVCAMELLIA* %133, i32* %134, i32* %135, i32 2, i32* %136, i32 1)
  store i32 0, i32* %10, align 4
  br label %138

138:                                              ; preds = %164, %119
  %139 = load i32, i32* %10, align 4
  %140 = icmp slt i32 %139, 32
  br i1 %140, label %141, label %167

141:                                              ; preds = %138
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %10, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %145, %149
  br i1 %150, label %151, label %163

151:                                              ; preds = %141
  %152 = load i32, i32* @AV_LOG_ERROR, align 4
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* %10, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %10, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @av_log(i32* null, i32 %152, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %153, i32 %157, i32 %161)
  store i32 1, i32* %12, align 4
  br label %163

163:                                              ; preds = %151, %141
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %10, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %10, align 4
  br label %138

167:                                              ; preds = %138
  %168 = load %struct.AVCAMELLIA*, %struct.AVCAMELLIA** %15, align 8
  %169 = call i32 @av_free(%struct.AVCAMELLIA* %168)
  %170 = load i32, i32* %12, align 4
  store i32 %170, i32* %3, align 4
  br label %171

171:                                              ; preds = %167, %23
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.AVCAMELLIA* @av_camellia_alloc(...) #2

declare dso_local i32 @av_camellia_init(%struct.AVCAMELLIA*, i32*, i32) #2

declare dso_local i32 @av_camellia_crypt(%struct.AVCAMELLIA*, i32*, i32*, i32, i32*, i32) #2

declare dso_local i32 @av_log(i32*, i32, i8*, i32, i32, i32) #2

declare dso_local i32 @memcpy(i32*, i8*, i32) #2

declare dso_local i32 @av_free(%struct.AVCAMELLIA*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
