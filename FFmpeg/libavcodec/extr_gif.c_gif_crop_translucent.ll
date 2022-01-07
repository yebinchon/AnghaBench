; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_gif.c_gif_crop_translucent.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_gif.c_gif_crop_translucent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@GF_OFFSETTING = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%dx%d image at pos (%d;%d) [area:%dx%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*, i32, i32*, i32*, i32*, i32*)* @gif_crop_translucent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gif_crop_translucent(%struct.TYPE_6__* %0, i32* %1, i32 %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_5__*, align 8
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
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %15, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %16, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @GF_OFFSETTING, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %232

41:                                               ; preds = %7
  %42 = load i32, i32* %16, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %232

44:                                               ; preds = %41
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %17, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %18, align 4
  %51 = load i32, i32* %17, align 4
  %52 = sub nsw i32 %51, 1
  store i32 %52, i32* %19, align 4
  %53 = load i32, i32* %18, align 4
  %54 = sub nsw i32 %53, 1
  store i32 %54, i32* %20, align 4
  br label %55

55:                                               ; preds = %87, %44
  %56 = load i32*, i32** %14, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %20, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %91

60:                                               ; preds = %55
  store i32 1, i32* %21, align 4
  store i32 0, i32* %22, align 4
  br label %61

61:                                               ; preds = %80, %60
  %62 = load i32, i32* %22, align 4
  %63 = load i32, i32* %17, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %83

65:                                               ; preds = %61
  %66 = load i32*, i32** %9, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i32*, i32** %14, align 8
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %67, %69
  %71 = load i32, i32* %22, align 4
  %72 = add nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %66, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %16, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %65
  store i32 0, i32* %21, align 4
  br label %83

79:                                               ; preds = %65
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %22, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %22, align 4
  br label %61

83:                                               ; preds = %78, %61
  %84 = load i32, i32* %21, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %83
  br label %91

87:                                               ; preds = %83
  %88 = load i32*, i32** %14, align 8
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  br label %55

91:                                               ; preds = %86, %55
  br label %92

92:                                               ; preds = %123, %91
  %93 = load i32, i32* %20, align 4
  %94 = load i32*, i32** %14, align 8
  %95 = load i32, i32* %94, align 4
  %96 = icmp sgt i32 %93, %95
  br i1 %96, label %97, label %126

97:                                               ; preds = %92
  store i32 1, i32* %23, align 4
  store i32 0, i32* %24, align 4
  br label %98

98:                                               ; preds = %116, %97
  %99 = load i32, i32* %24, align 4
  %100 = load i32, i32* %17, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %119

102:                                              ; preds = %98
  %103 = load i32*, i32** %9, align 8
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %20, align 4
  %106 = mul nsw i32 %104, %105
  %107 = load i32, i32* %24, align 4
  %108 = add nsw i32 %106, %107
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %103, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %16, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %102
  store i32 0, i32* %23, align 4
  br label %119

115:                                              ; preds = %102
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %24, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %24, align 4
  br label %98

119:                                              ; preds = %114, %98
  %120 = load i32, i32* %23, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %119
  br label %126

123:                                              ; preds = %119
  %124 = load i32, i32* %20, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %20, align 4
  br label %92

126:                                              ; preds = %122, %92
  br label %127

127:                                              ; preds = %161, %126
  %128 = load i32*, i32** %13, align 8
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %19, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %165

132:                                              ; preds = %127
  store i32 1, i32* %25, align 4
  %133 = load i32*, i32** %14, align 8
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %26, align 4
  br label %135

135:                                              ; preds = %154, %132
  %136 = load i32, i32* %26, align 4
  %137 = load i32, i32* %20, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %157

139:                                              ; preds = %135
  %140 = load i32*, i32** %9, align 8
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %26, align 4
  %143 = mul nsw i32 %141, %142
  %144 = load i32*, i32** %13, align 8
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %143, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %140, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %16, align 4
  %151 = icmp ne i32 %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %139
  store i32 0, i32* %25, align 4
  br label %157

153:                                              ; preds = %139
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %26, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %26, align 4
  br label %135

157:                                              ; preds = %152, %135
  %158 = load i32, i32* %25, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %157
  br label %165

161:                                              ; preds = %157
  %162 = load i32*, i32** %13, align 8
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %162, align 4
  br label %127

165:                                              ; preds = %160, %127
  br label %166

166:                                              ; preds = %199, %165
  %167 = load i32, i32* %19, align 4
  %168 = load i32*, i32** %13, align 8
  %169 = load i32, i32* %168, align 4
  %170 = icmp sgt i32 %167, %169
  br i1 %170, label %171, label %202

171:                                              ; preds = %166
  store i32 1, i32* %27, align 4
  %172 = load i32*, i32** %14, align 8
  %173 = load i32, i32* %172, align 4
  store i32 %173, i32* %28, align 4
  br label %174

174:                                              ; preds = %192, %171
  %175 = load i32, i32* %28, align 4
  %176 = load i32, i32* %20, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %195

178:                                              ; preds = %174
  %179 = load i32*, i32** %9, align 8
  %180 = load i32, i32* %10, align 4
  %181 = load i32, i32* %28, align 4
  %182 = mul nsw i32 %180, %181
  %183 = load i32, i32* %19, align 4
  %184 = add nsw i32 %182, %183
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %179, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %16, align 4
  %189 = icmp ne i32 %187, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %178
  store i32 0, i32* %27, align 4
  br label %195

191:                                              ; preds = %178
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %28, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %28, align 4
  br label %174

195:                                              ; preds = %190, %174
  %196 = load i32, i32* %27, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %199, label %198

198:                                              ; preds = %195
  br label %202

199:                                              ; preds = %195
  %200 = load i32, i32* %19, align 4
  %201 = add nsw i32 %200, -1
  store i32 %201, i32* %19, align 4
  br label %166

202:                                              ; preds = %198, %166
  %203 = load i32, i32* %20, align 4
  %204 = add nsw i32 %203, 1
  %205 = load i32*, i32** %14, align 8
  %206 = load i32, i32* %205, align 4
  %207 = sub nsw i32 %204, %206
  %208 = load i32*, i32** %12, align 8
  store i32 %207, i32* %208, align 4
  %209 = load i32, i32* %19, align 4
  %210 = add nsw i32 %209, 1
  %211 = load i32*, i32** %13, align 8
  %212 = load i32, i32* %211, align 4
  %213 = sub nsw i32 %210, %212
  %214 = load i32*, i32** %11, align 8
  store i32 %213, i32* %214, align 4
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %216 = load i32, i32* @AV_LOG_DEBUG, align 4
  %217 = load i32*, i32** %11, align 8
  %218 = load i32, i32* %217, align 4
  %219 = load i32*, i32** %12, align 8
  %220 = load i32, i32* %219, align 4
  %221 = load i32*, i32** %13, align 8
  %222 = load i32, i32* %221, align 4
  %223 = load i32*, i32** %14, align 8
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @av_log(%struct.TYPE_6__* %215, i32 %216, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %218, i32 %220, i32 %222, i32 %224, i32 %227, i32 %230)
  br label %232

232:                                              ; preds = %202, %41, %7
  ret void
}

declare dso_local i32 @av_log(%struct.TYPE_6__*, i32, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
