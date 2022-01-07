; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__process_gif_raster.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__process_gif_raster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"no clear code\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Corrupt GIF\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"too many codes\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"illegal code in raster\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_6__*)* @stbi__process_gif_raster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @stbi__process_gif_raster(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_5__*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @stbi__get8(i32* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp sgt i32 %21, 12
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %226

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = shl i32 1, %25
  store i32 %26, i32* %16, align 4
  store i32 1, i32* %9, align 4
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = shl i32 1, %29
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %11, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %60, %24
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %16, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %63

36:                                               ; preds = %32
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store i32 -1, i32* %43, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  store i32 %44, i32* %51, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  store i32 %52, i32* %59, align 4
  br label %60

60:                                               ; preds = %36
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %32

63:                                               ; preds = %32
  %64 = load i32, i32* %16, align 4
  %65 = add nsw i32 %64, 2
  store i32 %65, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %225, %63
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %94

70:                                               ; preds = %66
  %71 = load i32, i32* %7, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %70
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @stbi__get8(i32* %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  store i32* %81, i32** %3, align 8
  br label %226

82:                                               ; preds = %73
  br label %83

83:                                               ; preds = %82, %70
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %7, align 4
  %86 = load i32*, i32** %4, align 8
  %87 = call i32 @stbi__get8(i32* %86)
  %88 = load i32, i32* %15, align 4
  %89 = shl i32 %87, %88
  %90 = load i32, i32* %14, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %15, align 4
  %93 = add nsw i32 %92, 8
  store i32 %93, i32* %15, align 4
  br label %225

94:                                               ; preds = %66
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %11, align 4
  %97 = and i32 %95, %96
  store i32 %97, i32* %18, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %14, align 4
  %100 = ashr i32 %99, %98
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %15, align 4
  %103 = sub nsw i32 %102, %101
  store i32 %103, i32* %15, align 4
  %104 = load i32, i32* %18, align 4
  %105 = load i32, i32* %16, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %115

107:                                              ; preds = %94
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = shl i32 1, %110
  %112 = sub nsw i32 %111, 1
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %16, align 4
  %114 = add nsw i32 %113, 2
  store i32 %114, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  store i32 0, i32* %9, align 4
  br label %224

115:                                              ; preds = %94
  %116 = load i32, i32* %18, align 4
  %117 = load i32, i32* %16, align 4
  %118 = add nsw i32 %117, 1
  %119 = icmp eq i32 %116, %118
  br i1 %119, label %120, label %136

120:                                              ; preds = %115
  %121 = load i32*, i32** %4, align 8
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @stbi__skip(i32* %121, i32 %122)
  br label %124

124:                                              ; preds = %128, %120
  %125 = load i32*, i32** %4, align 8
  %126 = call i32 @stbi__get8(i32* %125)
  store i32 %126, i32* %7, align 4
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %124
  %129 = load i32*, i32** %4, align 8
  %130 = load i32, i32* %7, align 4
  %131 = call i32 @stbi__skip(i32* %129, i32 %130)
  br label %124

132:                                              ; preds = %124
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  store i32* %135, i32** %3, align 8
  br label %226

136:                                              ; preds = %115
  %137 = load i32, i32* %18, align 4
  %138 = load i32, i32* %12, align 4
  %139 = icmp sle i32 %137, %138
  br i1 %139, label %140, label %220

140:                                              ; preds = %136
  %141 = load i32, i32* %9, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  %144 = call i32* @stbi__errpuc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32* %144, i32** %3, align 8
  br label %226

145:                                              ; preds = %140
  %146 = load i32, i32* %13, align 4
  %147 = icmp sge i32 %146, 0
  br i1 %147, label %148, label %194

148:                                              ; preds = %145
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %150, align 8
  %152 = load i32, i32* %12, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %12, align 4
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i64 %154
  store %struct.TYPE_5__* %155, %struct.TYPE_5__** %17, align 8
  %156 = load i32, i32* %12, align 4
  %157 = icmp sgt i32 %156, 8192
  br i1 %157, label %158, label %160

158:                                              ; preds = %148
  %159 = call i32* @stbi__errpuc(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32* %159, i32** %3, align 8
  br label %226

160:                                              ; preds = %148
  %161 = load i32, i32* %13, align 4
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 4
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %165, align 8
  %167 = load i32, i32* %13, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 4
  %174 = load i32, i32* %18, align 4
  %175 = load i32, i32* %12, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %181

177:                                              ; preds = %160
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  br label %190

181:                                              ; preds = %160
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %183, align 8
  %185 = load i32, i32* %18, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  br label %190

190:                                              ; preds = %181, %177
  %191 = phi i32 [ %180, %177 ], [ %189, %181 ]
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 2
  store i32 %191, i32* %193, align 4
  br label %201

194:                                              ; preds = %145
  %195 = load i32, i32* %18, align 4
  %196 = load i32, i32* %12, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %200

198:                                              ; preds = %194
  %199 = call i32* @stbi__errpuc(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32* %199, i32** %3, align 8
  br label %226

200:                                              ; preds = %194
  br label %201

201:                                              ; preds = %200, %190
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %203 = load i32, i32* %18, align 4
  %204 = call i32 @stbi__out_gif_code(%struct.TYPE_6__* %202, i32 %203)
  %205 = load i32, i32* %12, align 4
  %206 = load i32, i32* %11, align 4
  %207 = and i32 %205, %206
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %218

209:                                              ; preds = %201
  %210 = load i32, i32* %12, align 4
  %211 = icmp sle i32 %210, 4095
  br i1 %211, label %212, label %218

212:                                              ; preds = %209
  %213 = load i32, i32* %10, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %10, align 4
  %215 = load i32, i32* %10, align 4
  %216 = shl i32 1, %215
  %217 = sub nsw i32 %216, 1
  store i32 %217, i32* %11, align 4
  br label %218

218:                                              ; preds = %212, %209, %201
  %219 = load i32, i32* %18, align 4
  store i32 %219, i32* %13, align 4
  br label %222

220:                                              ; preds = %136
  %221 = call i32* @stbi__errpuc(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32* %221, i32** %3, align 8
  br label %226

222:                                              ; preds = %218
  br label %223

223:                                              ; preds = %222
  br label %224

224:                                              ; preds = %223, %107
  br label %225

225:                                              ; preds = %224, %83
  br label %66

226:                                              ; preds = %220, %198, %158, %143, %132, %78, %23
  %227 = load i32*, i32** %3, align 8
  ret i32* %227
}

declare dso_local i32 @stbi__get8(i32*) #1

declare dso_local i32 @stbi__skip(i32*, i32) #1

declare dso_local i32* @stbi__errpuc(i8*, i8*) #1

declare dso_local i32 @stbi__out_gif_code(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
