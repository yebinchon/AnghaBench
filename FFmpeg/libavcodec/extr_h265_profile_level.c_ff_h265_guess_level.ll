; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h265_profile_level.c_ff_h265_guess_level.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h265_profile_level.c_ff_h265_guess_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, i32, i64, i64, i64 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@h265_profiles = common dso_local global %struct.TYPE_12__* null, align 8
@h265_levels = common dso_local global %struct.TYPE_13__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @ff_h265_guess_level(%struct.TYPE_11__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_12__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_13__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %28 = icmp ne %struct.TYPE_11__* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %31 = call %struct.TYPE_12__* @ff_h265_get_profile(%struct.TYPE_11__* %30)
  store %struct.TYPE_12__* %31, %struct.TYPE_12__** %18, align 8
  br label %33

32:                                               ; preds = %8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %18, align 8
  br label %33

33:                                               ; preds = %32, %29
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %35 = icmp ne %struct.TYPE_12__* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** @h265_profiles, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i64 3
  store %struct.TYPE_12__* %38, %struct.TYPE_12__** %18, align 8
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %13, align 4
  %42 = mul nsw i32 %40, %41
  store i32 %42, i32* %19, align 4
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %44 = icmp ne %struct.TYPE_11__* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %20, align 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %21, align 4
  br label %58

52:                                               ; preds = %39
  store i32 0, i32* %20, align 4
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %55, 0
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %21, align 4
  br label %58

58:                                               ; preds = %52, %45
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %68, label %69

68:                                               ; preds = %63, %58
  store i32 1, i32* %22, align 4
  br label %89

69:                                               ; preds = %63
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 5
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %69
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i32, i32* %21, align 4
  %81 = mul nsw i32 12, %80
  %82 = sub nsw i32 24, %81
  store i32 %82, i32* %22, align 4
  br label %84

83:                                               ; preds = %74
  store i32 6, i32* %22, align 4
  br label %84

84:                                               ; preds = %83, %79
  br label %88

85:                                               ; preds = %69
  %86 = load i32, i32* %21, align 4
  %87 = sub nsw i32 2, %86
  store i32 %87, i32* %22, align 4
  br label %88

88:                                               ; preds = %85, %84
  br label %89

89:                                               ; preds = %88, %68
  store i32 0, i32* %23, align 4
  br label %90

90:                                               ; preds = %237, %89
  %91 = load i32, i32* %23, align 4
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** @h265_levels, align 8
  %93 = call i32 @FF_ARRAY_ELEMS(%struct.TYPE_13__* %92)
  %94 = icmp slt i32 %91, %93
  br i1 %94, label %95, label %240

95:                                               ; preds = %90
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** @h265_levels, align 8
  %97 = load i32, i32* %23, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i64 %98
  store %struct.TYPE_13__* %99, %struct.TYPE_13__** %24, align 8
  %100 = load i32, i32* %20, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %95
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %102
  br label %237

108:                                              ; preds = %102, %95
  %109 = load i32, i32* %19, align 4
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp sgt i32 %109, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  br label %237

115:                                              ; preds = %108
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %12, align 4
  %118 = mul nsw i32 %116, %117
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = mul nsw i32 8, %121
  %123 = icmp sgt i32 %118, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %115
  br label %237

125:                                              ; preds = %115
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* %13, align 4
  %128 = mul nsw i32 %126, %127
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = mul nsw i32 8, %131
  %133 = icmp sgt i32 %128, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %125
  br label %237

135:                                              ; preds = %125
  %136 = load i32, i32* %14, align 4
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = icmp sgt i32 %136, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  br label %237

142:                                              ; preds = %135
  %143 = load i32, i32* %15, align 4
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = icmp sgt i32 %143, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %142
  br label %237

149:                                              ; preds = %142
  %150 = load i32, i32* %16, align 4
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = icmp sgt i32 %150, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %149
  br label %237

156:                                              ; preds = %149
  %157 = load i32, i32* %20, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %156
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  store i32 %162, i32* %25, align 4
  br label %167

163:                                              ; preds = %156
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 4
  store i32 %166, i32* %25, align 4
  br label %167

167:                                              ; preds = %163, %159
  %168 = load i32, i32* %25, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %171, label %170

170:                                              ; preds = %167
  br label %237

171:                                              ; preds = %167
  %172 = load i32, i32* %11, align 4
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = trunc i64 %175 to i32
  %177 = load i32, i32* %22, align 4
  %178 = mul nsw i32 %176, %177
  %179 = load i32, i32* %25, align 4
  %180 = mul nsw i32 %178, %179
  %181 = icmp sgt i32 %172, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %171
  br label %237

183:                                              ; preds = %171
  %184 = load i32, i32* %19, align 4
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = ashr i32 %187, 2
  %189 = icmp sle i32 %184, %188
  br i1 %189, label %190, label %196

190:                                              ; preds = %183
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = mul nsw i32 4, %193
  %195 = call i32 @FFMIN(i32 %194, i32 16)
  store i32 %195, i32* %26, align 4
  br label %230

196:                                              ; preds = %183
  %197 = load i32, i32* %19, align 4
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = ashr i32 %200, 1
  %202 = icmp sle i32 %197, %201
  br i1 %202, label %203, label %209

203:                                              ; preds = %196
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = mul nsw i32 2, %206
  %208 = call i32 @FFMIN(i32 %207, i32 16)
  store i32 %208, i32* %26, align 4
  br label %229

209:                                              ; preds = %196
  %210 = load i32, i32* %19, align 4
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = mul nsw i32 3, %213
  %215 = ashr i32 %214, 2
  %216 = icmp sle i32 %210, %215
  br i1 %216, label %217, label %224

217:                                              ; preds = %209
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = mul nsw i32 4, %220
  %222 = sdiv i32 %221, 3
  %223 = call i32 @FFMIN(i32 %222, i32 16)
  store i32 %223, i32* %26, align 4
  br label %228

224:                                              ; preds = %209
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  store i32 %227, i32* %26, align 4
  br label %228

228:                                              ; preds = %224, %217
  br label %229

229:                                              ; preds = %228, %203
  br label %230

230:                                              ; preds = %229, %190
  %231 = load i32, i32* %17, align 4
  %232 = load i32, i32* %26, align 4
  %233 = icmp sgt i32 %231, %232
  br i1 %233, label %234, label %235

234:                                              ; preds = %230
  br label %237

235:                                              ; preds = %230
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  store %struct.TYPE_13__* %236, %struct.TYPE_13__** %9, align 8
  br label %241

237:                                              ; preds = %234, %182, %170, %155, %148, %141, %134, %124, %114, %107
  %238 = load i32, i32* %23, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %23, align 4
  br label %90

240:                                              ; preds = %90
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %9, align 8
  br label %241

241:                                              ; preds = %240, %235
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  ret %struct.TYPE_13__* %242
}

declare dso_local %struct.TYPE_12__* @ff_h265_get_profile(%struct.TYPE_11__*) #1

declare dso_local i32 @FF_ARRAY_ELEMS(%struct.TYPE_13__*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
