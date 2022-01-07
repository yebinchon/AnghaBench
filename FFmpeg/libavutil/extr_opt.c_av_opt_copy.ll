; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_opt.c_av_opt_copy.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_opt.c_av_opt_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@AV_OPT_TYPE_STRING = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@AV_OPT_TYPE_BINARY = common dso_local global i64 0, align 8
@AV_OPT_TYPE_CONST = common dso_local global i64 0, align 8
@AV_OPT_TYPE_DICT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_opt_copy(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32**, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %6, align 8
  store i32 0, i32* %8, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = call i32 @AVERROR(i32 %20)
  store i32 %21, i32* %3, align 4
  br label %197

22:                                               ; preds = %2
  %23 = load i8*, i8** %5, align 8
  %24 = bitcast i8* %23 to i32**
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %7, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load i32*, i32** %7, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = bitcast i8* %30 to i32**
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %29, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28, %22
  %35 = load i32, i32* @EINVAL, align 4
  %36 = call i32 @AVERROR(i32 %35)
  store i32 %36, i32* %3, align 4
  br label %197

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %194, %37
  %39 = load i8*, i8** %5, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %41 = call %struct.TYPE_4__* @av_opt_next(i8* %39, %struct.TYPE_4__* %40)
  store %struct.TYPE_4__* %41, %struct.TYPE_4__** %6, align 8
  %42 = icmp ne %struct.TYPE_4__* %41, null
  br i1 %42, label %43, label %195

43:                                               ; preds = %38
  %44 = load i8*, i8** %4, align 8
  %45 = bitcast i8* %44 to i32*
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %45, i64 %49
  %51 = bitcast i32* %50 to i8*
  store i8* %51, i8** %9, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = bitcast i8* %52 to i32*
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %53, i64 %57
  %59 = bitcast i32* %58 to i8*
  store i8* %59, i8** %10, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = bitcast i8* %60 to i32**
  store i32** %61, i32*** %11, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = bitcast i8* %62 to i32**
  store i32** %63, i32*** %12, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @AV_OPT_TYPE_STRING, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %94

69:                                               ; preds = %43
  %70 = load i32**, i32*** %11, align 8
  %71 = load i32*, i32** %70, align 8
  %72 = load i32**, i32*** %12, align 8
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %71, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i32**, i32*** %11, align 8
  %77 = call i32 @av_freep(i32** %76)
  br label %78

78:                                               ; preds = %75, %69
  %79 = load i32**, i32*** %12, align 8
  %80 = load i32*, i32** %79, align 8
  %81 = call i32* @av_strdup(i32* %80)
  %82 = load i32**, i32*** %11, align 8
  store i32* %81, i32** %82, align 8
  %83 = load i32**, i32*** %12, align 8
  %84 = load i32*, i32** %83, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %93

86:                                               ; preds = %78
  %87 = load i32**, i32*** %11, align 8
  %88 = load i32*, i32** %87, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = call i32 @AVERROR(i32 %91)
  store i32 %92, i32* %8, align 4
  br label %93

93:                                               ; preds = %90, %86, %78
  br label %194

94:                                               ; preds = %43
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @AV_OPT_TYPE_BINARY, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %133

100:                                              ; preds = %94
  %101 = load i32**, i32*** %12, align 8
  %102 = getelementptr inbounds i32*, i32** %101, i64 1
  %103 = bitcast i32** %102 to i32*
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %13, align 4
  %105 = load i32**, i32*** %11, align 8
  %106 = load i32*, i32** %105, align 8
  %107 = load i32**, i32*** %12, align 8
  %108 = load i32*, i32** %107, align 8
  %109 = icmp ne i32* %106, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %100
  %111 = load i32**, i32*** %11, align 8
  %112 = call i32 @av_freep(i32** %111)
  br label %113

113:                                              ; preds = %110, %100
  %114 = load i32**, i32*** %12, align 8
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %13, align 4
  %117 = call i32* @av_memdup(i32* %115, i32 %116)
  %118 = load i32**, i32*** %11, align 8
  store i32* %117, i32** %118, align 8
  %119 = load i32, i32* %13, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %113
  %122 = load i32**, i32*** %11, align 8
  %123 = load i32*, i32** %122, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %128, label %125

125:                                              ; preds = %121
  %126 = load i32, i32* @ENOMEM, align 4
  %127 = call i32 @AVERROR(i32 %126)
  store i32 %127, i32* %8, align 4
  store i32 0, i32* %13, align 4
  br label %128

128:                                              ; preds = %125, %121, %113
  %129 = load i32, i32* %13, align 4
  %130 = load i32**, i32*** %11, align 8
  %131 = getelementptr inbounds i32*, i32** %130, i64 1
  %132 = bitcast i32** %131 to i32*
  store i32 %129, i32* %132, align 4
  br label %193

133:                                              ; preds = %94
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @AV_OPT_TYPE_CONST, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %133
  br label %192

140:                                              ; preds = %133
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @AV_OPT_TYPE_DICT, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %176

146:                                              ; preds = %140
  %147 = load i8*, i8** %10, align 8
  %148 = bitcast i8* %147 to i32**
  store i32** %148, i32*** %14, align 8
  %149 = load i8*, i8** %9, align 8
  %150 = bitcast i8* %149 to i32**
  store i32** %150, i32*** %15, align 8
  %151 = load i32**, i32*** %14, align 8
  %152 = load i32*, i32** %151, align 8
  %153 = load i32**, i32*** %15, align 8
  %154 = load i32*, i32** %153, align 8
  %155 = icmp ne i32* %152, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %146
  %157 = load i32**, i32*** %15, align 8
  %158 = call i32 @av_dict_free(i32** %157)
  br label %159

159:                                              ; preds = %156, %146
  %160 = load i32**, i32*** %15, align 8
  store i32* null, i32** %160, align 8
  %161 = load i32**, i32*** %15, align 8
  %162 = load i32**, i32*** %14, align 8
  %163 = load i32*, i32** %162, align 8
  %164 = call i32 @av_dict_copy(i32** %161, i32* %163, i32 0)
  %165 = load i32**, i32*** %14, align 8
  %166 = load i32*, i32** %165, align 8
  %167 = call i64 @av_dict_count(i32* %166)
  %168 = load i32**, i32*** %15, align 8
  %169 = load i32*, i32** %168, align 8
  %170 = call i64 @av_dict_count(i32* %169)
  %171 = icmp ne i64 %167, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %159
  %173 = load i32, i32* @ENOMEM, align 4
  %174 = call i32 @AVERROR(i32 %173)
  store i32 %174, i32* %8, align 4
  br label %175

175:                                              ; preds = %172, %159
  br label %191

176:                                              ; preds = %140
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = call i32 @opt_size(i64 %179)
  store i32 %180, i32* %16, align 4
  %181 = load i32, i32* %16, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %176
  %184 = load i32, i32* %16, align 4
  store i32 %184, i32* %8, align 4
  br label %190

185:                                              ; preds = %176
  %186 = load i8*, i8** %9, align 8
  %187 = load i8*, i8** %10, align 8
  %188 = load i32, i32* %16, align 4
  %189 = call i32 @memcpy(i8* %186, i8* %187, i32 %188)
  br label %190

190:                                              ; preds = %185, %183
  br label %191

191:                                              ; preds = %190, %175
  br label %192

192:                                              ; preds = %191, %139
  br label %193

193:                                              ; preds = %192, %128
  br label %194

194:                                              ; preds = %193, %93
  br label %38

195:                                              ; preds = %38
  %196 = load i32, i32* %8, align 4
  store i32 %196, i32* %3, align 4
  br label %197

197:                                              ; preds = %195, %34, %19
  %198 = load i32, i32* %3, align 4
  ret i32 %198
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local %struct.TYPE_4__* @av_opt_next(i8*, %struct.TYPE_4__*) #1

declare dso_local i32 @av_freep(i32**) #1

declare dso_local i32* @av_strdup(i32*) #1

declare dso_local i32* @av_memdup(i32*, i32) #1

declare dso_local i32 @av_dict_free(i32**) #1

declare dso_local i32 @av_dict_copy(i32**, i32*, i32) #1

declare dso_local i64 @av_dict_count(i32*) #1

declare dso_local i32 @opt_size(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
