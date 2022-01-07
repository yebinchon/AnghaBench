; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_lut3d.c_parse_cube.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_lut3d.c_parse_cube.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.rgbvec* }
%struct.TYPE_7__ = type { i8*, i8*, i8* }
%struct.rgbvec = type { float, float, float }

@MAX_LINE_SIZE = common dso_local global i32 0, align 4
@__const.parse_cube.max = private unnamed_addr constant [3 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], align 4
@.str = private unnamed_addr constant [12 x i8] c"LUT_3D_SIZE\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"DOMAIN_\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"MIN \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"MAX \00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"%f %f %f\00", align 1
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"min: %f %f %f | max: %f %f %f\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"TITLE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*)* @parse_cube to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_cube(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.rgbvec*, align 8
  %19 = alloca float*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %6, align 8
  %23 = load i32, i32* @MAX_LINE_SIZE, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %7, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %8, align 8
  %27 = bitcast [3 x float]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %27, i8 0, i64 12, i1 false)
  %28 = bitcast [3 x float]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 bitcast ([3 x float]* @__const.parse_cube.max to i8*), i64 12, i1 false)
  br label %29

29:                                               ; preds = %159, %2
  %30 = trunc i64 %24 to i32
  %31 = load i32*, i32** %5, align 8
  %32 = call i64 @fgets(i8* %26, i32 %30, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %160

34:                                               ; preds = %29
  %35 = call i32 @strncmp(i8* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 11)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %159, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds i8, i8* %26, i64 12
  %39 = call i32 @strtol(i8* %38, i32* null, i32 0)
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = mul nsw i32 %40, %41
  store i32 %42, i32* %16, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %44 = load i32, i32* %15, align 4
  %45 = call i32 @allocate_3dlut(%struct.TYPE_9__* %43, i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %197

50:                                               ; preds = %37
  store i32 0, i32* %14, align 4
  br label %51

51:                                               ; preds = %155, %50
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %15, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %158

55:                                               ; preds = %51
  store i32 0, i32* %13, align 4
  br label %56

56:                                               ; preds = %151, %55
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %154

60:                                               ; preds = %56
  store i32 0, i32* %12, align 4
  br label %61

61:                                               ; preds = %147, %60
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %15, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %150

65:                                               ; preds = %61
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load %struct.rgbvec*, %struct.rgbvec** %67, align 8
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %16, align 4
  %71 = mul nsw i32 %69, %70
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %15, align 4
  %74 = mul nsw i32 %72, %73
  %75 = add nsw i32 %71, %74
  %76 = load i32, i32* %14, align 4
  %77 = add nsw i32 %75, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %68, i64 %78
  store %struct.rgbvec* %79, %struct.rgbvec** %18, align 8
  br label %80

80:                                               ; preds = %132, %65
  br label %81

81:                                               ; preds = %129, %103, %80
  %82 = call i32 @NEXT_LINE(i32 0)
  %83 = call i32 @strncmp(i8* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %126, label %85

85:                                               ; preds = %81
  store float* null, float** %19, align 8
  %86 = getelementptr inbounds i8, i8* %26, i64 7
  %87 = call i32 @strncmp(i8* %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds [3 x float], [3 x float]* %9, i64 0, i64 0
  store float* %90, float** %19, align 8
  br label %98

91:                                               ; preds = %85
  %92 = getelementptr inbounds i8, i8* %26, i64 7
  %93 = call i32 @strncmp(i8* %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds [3 x float], [3 x float]* %10, i64 0, i64 0
  store float* %96, float** %19, align 8
  br label %97

97:                                               ; preds = %95, %91
  br label %98

98:                                               ; preds = %97, %89
  %99 = load float*, float** %19, align 8
  %100 = icmp ne float* %99, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %102, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %197

103:                                              ; preds = %98
  %104 = getelementptr inbounds i8, i8* %26, i64 11
  %105 = load float*, float** %19, align 8
  %106 = load float*, float** %19, align 8
  %107 = getelementptr inbounds float, float* %106, i64 1
  %108 = load float*, float** %19, align 8
  %109 = getelementptr inbounds float, float* %108, i64 2
  %110 = call i32 @av_sscanf(i8* %104, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), float* %105, float* %107, float* %109)
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %112 = load i32, i32* @AV_LOG_DEBUG, align 4
  %113 = getelementptr inbounds [3 x float], [3 x float]* %9, i64 0, i64 0
  %114 = load float, float* %113, align 4
  %115 = getelementptr inbounds [3 x float], [3 x float]* %9, i64 0, i64 1
  %116 = load float, float* %115, align 4
  %117 = getelementptr inbounds [3 x float], [3 x float]* %9, i64 0, i64 2
  %118 = load float, float* %117, align 4
  %119 = getelementptr inbounds [3 x float], [3 x float]* %10, i64 0, i64 0
  %120 = load float, float* %119, align 4
  %121 = getelementptr inbounds [3 x float], [3 x float]* %10, i64 0, i64 1
  %122 = load float, float* %121, align 4
  %123 = getelementptr inbounds [3 x float], [3 x float]* %10, i64 0, i64 2
  %124 = load float, float* %123, align 4
  %125 = call i32 @av_log(%struct.TYPE_9__* %111, i32 %112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), float %114, float %116, float %118, float %120, float %122, float %124)
  br label %81

126:                                              ; preds = %81
  %127 = call i32 @strncmp(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 5)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %126
  br label %81

130:                                              ; preds = %126
  br label %131

131:                                              ; preds = %130
  br label %132

132:                                              ; preds = %131
  %133 = call i64 @skip_line(i8* %26)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %80, label %135

135:                                              ; preds = %132
  %136 = load %struct.rgbvec*, %struct.rgbvec** %18, align 8
  %137 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %136, i32 0, i32 0
  %138 = load %struct.rgbvec*, %struct.rgbvec** %18, align 8
  %139 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %138, i32 0, i32 1
  %140 = load %struct.rgbvec*, %struct.rgbvec** %18, align 8
  %141 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %140, i32 0, i32 2
  %142 = call i32 @av_sscanf(i8* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), float* %137, float* %139, float* %141)
  %143 = icmp ne i32 %142, 3
  br i1 %143, label %144, label %146

144:                                              ; preds = %135
  %145 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %145, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %197

146:                                              ; preds = %135
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %12, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %12, align 4
  br label %61

150:                                              ; preds = %61
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %13, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %13, align 4
  br label %56

154:                                              ; preds = %56
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %14, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %14, align 4
  br label %51

158:                                              ; preds = %51
  br label %160

159:                                              ; preds = %34
  br label %29

160:                                              ; preds = %158, %29
  %161 = getelementptr inbounds [3 x float], [3 x float]* %10, i64 0, i64 0
  %162 = load float, float* %161, align 4
  %163 = getelementptr inbounds [3 x float], [3 x float]* %9, i64 0, i64 0
  %164 = load float, float* %163, align 4
  %165 = fsub float %162, %164
  %166 = fpext float %165 to double
  %167 = fdiv double 1.000000e+00, %166
  %168 = fptosi double %167 to i32
  %169 = call i8* @av_clipf(i32 %168, float 0.000000e+00, float 1.000000e+00)
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 2
  store i8* %169, i8** %172, align 8
  %173 = getelementptr inbounds [3 x float], [3 x float]* %10, i64 0, i64 1
  %174 = load float, float* %173, align 4
  %175 = getelementptr inbounds [3 x float], [3 x float]* %9, i64 0, i64 1
  %176 = load float, float* %175, align 4
  %177 = fsub float %174, %176
  %178 = fpext float %177 to double
  %179 = fdiv double 1.000000e+00, %178
  %180 = fptosi double %179 to i32
  %181 = call i8* @av_clipf(i32 %180, float 0.000000e+00, float 1.000000e+00)
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 1
  store i8* %181, i8** %184, align 8
  %185 = getelementptr inbounds [3 x float], [3 x float]* %10, i64 0, i64 2
  %186 = load float, float* %185, align 4
  %187 = getelementptr inbounds [3 x float], [3 x float]* %9, i64 0, i64 2
  %188 = load float, float* %187, align 4
  %189 = fsub float %186, %188
  %190 = fpext float %189 to double
  %191 = fdiv double 1.000000e+00, %190
  %192 = fptosi double %191 to i32
  %193 = call i8* @av_clipf(i32 %192, float 0.000000e+00, float 1.000000e+00)
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 0
  store i8* %193, i8** %196, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %197

197:                                              ; preds = %160, %144, %101, %48
  %198 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %198)
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @fgets(i8*, i32, i32*) #3

declare dso_local i32 @strncmp(i8*, i8*, i32) #3

declare dso_local i32 @strtol(i8*, i32*, i32) #3

declare dso_local i32 @allocate_3dlut(%struct.TYPE_9__*, i32) #3

declare dso_local i32 @NEXT_LINE(i32) #3

declare dso_local i32 @av_sscanf(i8*, i8*, float*, float*, float*) #3

declare dso_local i32 @av_log(%struct.TYPE_9__*, i32, i8*, float, float, float, float, float, float) #3

declare dso_local i64 @skip_line(i8*) #3

declare dso_local i8* @av_clipf(i32, float, float) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
