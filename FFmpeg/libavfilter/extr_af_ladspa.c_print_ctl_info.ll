; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_ladspa.c_print_ctl_info.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_ladspa.c_print_ctl_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64, i64 }

@.str = private unnamed_addr constant [10 x i8] c"c%i: %s [\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"toggled (1 or 0)\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c" (default %i)\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"<int>\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c", min: %i\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c", max: %i\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c" (value %d)\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c" (default %d)\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"<float>\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c", min: %f\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c", max: %f\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c" (value %f)\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c" (default %f)\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c", multiple of sample rate\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c", logarithmic scale\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.TYPE_7__*, i32, i64*, i64*, i32)* @print_ctl_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_ctl_info(i32* %0, i32 %1, %struct.TYPE_7__* %2, i32 %3, i64* %4, i64* %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  store i32 %6, i32* %14, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = load i64*, i64** %12, align 8
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i64 %25
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %15, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64*, i64** %12, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i32, i32* %34, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %27, i32 %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %41)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @LADSPA_IS_HINT_TOGGLED(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %68

48:                                               ; preds = %7
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %49, i32 %50, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @LADSPA_IS_HINT_HAS_DEFAULT(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %48
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i64*, i64** %13, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %58, i32 %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %57, %48
  br label %215

68:                                               ; preds = %7
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @LADSPA_IS_HINT_INTEGER(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %136

74:                                               ; preds = %68
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %75, i32 %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @LADSPA_IS_HINT_BOUNDED_BELOW(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %74
  %84 = load i32*, i32** %8, align 8
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = trunc i64 %88 to i32
  %90 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %84, i32 %85, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %83, %74
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @LADSPA_IS_HINT_BOUNDED_ABOVE(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %91
  %98 = load i32*, i32** %8, align 8
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = trunc i64 %102 to i32
  %104 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %98, i32 %99, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %97, %91
  %106 = load i32, i32* %14, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %105
  %109 = load i32*, i32** %8, align 8
  %110 = load i32, i32* %9, align 4
  %111 = load i64*, i64** %13, align 8
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %111, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = trunc i64 %115 to i32
  %117 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %109, i32 %110, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %116)
  br label %135

118:                                              ; preds = %105
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i64 @LADSPA_IS_HINT_HAS_DEFAULT(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %118
  %125 = load i32*, i32** %8, align 8
  %126 = load i32, i32* %9, align 4
  %127 = load i64*, i64** %13, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %127, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = trunc i64 %131 to i32
  %133 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %125, i32 %126, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %132)
  br label %134

134:                                              ; preds = %124, %118
  br label %135

135:                                              ; preds = %134, %108
  br label %194

136:                                              ; preds = %68
  %137 = load i32*, i32** %8, align 8
  %138 = load i32, i32* %9, align 4
  %139 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %137, i32 %138, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i64 @LADSPA_IS_HINT_BOUNDED_BELOW(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %136
  %146 = load i32*, i32** %8, align 8
  %147 = load i32, i32* %9, align 4
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %146, i32 %147, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i64 %150)
  br label %152

152:                                              ; preds = %145, %136
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i64 @LADSPA_IS_HINT_BOUNDED_ABOVE(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %152
  %159 = load i32*, i32** %8, align 8
  %160 = load i32, i32* %9, align 4
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %159, i32 %160, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i64 %163)
  br label %165

165:                                              ; preds = %158, %152
  %166 = load i32, i32* %14, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %165
  %169 = load i32*, i32** %8, align 8
  %170 = load i32, i32* %9, align 4
  %171 = load i64*, i64** %13, align 8
  %172 = load i32, i32* %11, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i64, i64* %171, i64 %173
  %175 = load i64, i64* %174, align 8
  %176 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %169, i32 %170, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i64 %175)
  br label %193

177:                                              ; preds = %165
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = call i64 @LADSPA_IS_HINT_HAS_DEFAULT(i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %192

183:                                              ; preds = %177
  %184 = load i32*, i32** %8, align 8
  %185 = load i32, i32* %9, align 4
  %186 = load i64*, i64** %13, align 8
  %187 = load i32, i32* %11, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i64, i64* %186, i64 %188
  %190 = load i64, i64* %189, align 8
  %191 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %184, i32 %185, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i64 %190)
  br label %192

192:                                              ; preds = %183, %177
  br label %193

193:                                              ; preds = %192, %168
  br label %194

194:                                              ; preds = %193, %135
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i64 @LADSPA_IS_HINT_SAMPLE_RATE(i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %194
  %201 = load i32*, i32** %8, align 8
  %202 = load i32, i32* %9, align 4
  %203 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %201, i32 %202, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0))
  br label %204

204:                                              ; preds = %200, %194
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = call i64 @LADSPA_IS_HINT_LOGARITHMIC(i32 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %204
  %211 = load i32*, i32** %8, align 8
  %212 = load i32, i32* %9, align 4
  %213 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %211, i32 %212, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0))
  br label %214

214:                                              ; preds = %210, %204
  br label %215

215:                                              ; preds = %214, %67
  %216 = load i32*, i32** %8, align 8
  %217 = load i32, i32* %9, align 4
  %218 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %216, i32 %217, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  ret void
}

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

declare dso_local i64 @LADSPA_IS_HINT_TOGGLED(i32) #1

declare dso_local i64 @LADSPA_IS_HINT_HAS_DEFAULT(i32) #1

declare dso_local i64 @LADSPA_IS_HINT_INTEGER(i32) #1

declare dso_local i64 @LADSPA_IS_HINT_BOUNDED_BELOW(i32) #1

declare dso_local i64 @LADSPA_IS_HINT_BOUNDED_ABOVE(i32) #1

declare dso_local i64 @LADSPA_IS_HINT_SAMPLE_RATE(i32) #1

declare dso_local i64 @LADSPA_IS_HINT_LOGARITHMIC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
