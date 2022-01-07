; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mediacodec_wrapper.c_codec_create.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mediacodec_wrapper.c_codec_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32, %struct.TYPE_28__, i64, i64, i32* }
%struct.TYPE_28__ = type { i32, i32, i64, i64, i32, i32*, i32*, i32* }
%struct.TYPE_29__ = type { i32 (%struct.TYPE_29__**, i64)*, i32 (%struct.TYPE_29__**, i32*)*, i64 (%struct.TYPE_29__**, i32*)*, i32* (%struct.TYPE_29__**, i32, i32)*, i32* (%struct.TYPE_29__**, i32, i32*, i32*)* }

@amediacodec_class = common dso_local global i32 0, align 4
@jni_amediacodec_mapping = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_30__* (i32, i8*)* @codec_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_30__* @codec_create(i32 %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_30__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_29__**, align 8
  %8 = alloca %struct.TYPE_30__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 -1, i32* %6, align 4
  store %struct.TYPE_29__** null, %struct.TYPE_29__*** %7, align 8
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %13 = call %struct.TYPE_30__* @av_mallocz(i32 88)
  store %struct.TYPE_30__* %13, %struct.TYPE_30__** %8, align 8
  %14 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %15 = icmp ne %struct.TYPE_30__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %3, align 8
  br label %227

17:                                               ; preds = %2
  %18 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %18, i32 0, i32 4
  store i32* @amediacodec_class, i32** %19, align 8
  %20 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %21 = call %struct.TYPE_29__** @ff_jni_get_env(%struct.TYPE_30__* %20)
  store %struct.TYPE_29__** %21, %struct.TYPE_29__*** %7, align 8
  %22 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %7, align 8
  %23 = icmp ne %struct.TYPE_29__** %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  %25 = call i32 @av_freep(%struct.TYPE_30__** %8)
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %3, align 8
  br label %227

26:                                               ; preds = %17
  %27 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %7, align 8
  %28 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %28, i32 0, i32 1
  %30 = load i32, i32* @jni_amediacodec_mapping, align 4
  %31 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %32 = call i64 @ff_jni_init_jfields(%struct.TYPE_29__** %27, %struct.TYPE_28__* %29, i32 %30, i32 1, %struct.TYPE_30__* %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %151

35:                                               ; preds = %26
  %36 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %7, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %39 = call i32* @ff_jni_utf_chars_to_jstring(%struct.TYPE_29__** %36, i8* %37, %struct.TYPE_30__* %38)
  store i32* %39, i32** %9, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  br label %151

43:                                               ; preds = %35
  %44 = load i32, i32* %4, align 4
  switch i32 %44, label %60 [
    i32 130, label %45
    i32 129, label %50
    i32 128, label %55
  ]

45:                                               ; preds = %43
  %46 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %47, i32 0, i32 7
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %12, align 8
  br label %62

50:                                               ; preds = %43
  %51 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %52, i32 0, i32 6
  %54 = load i32*, i32** %53, align 8
  store i32* %54, i32** %12, align 8
  br label %62

55:                                               ; preds = %43
  %56 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %57, i32 0, i32 5
  %59 = load i32*, i32** %58, align 8
  store i32* %59, i32** %12, align 8
  br label %62

60:                                               ; preds = %43
  %61 = call i32 @av_assert0(i32 0)
  br label %62

62:                                               ; preds = %60, %55, %50, %45
  %63 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %7, align 8
  %64 = load %struct.TYPE_29__*, %struct.TYPE_29__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %64, i32 0, i32 4
  %66 = load i32* (%struct.TYPE_29__**, i32, i32*, i32*)*, i32* (%struct.TYPE_29__**, i32, i32*, i32*)** %65, align 8
  %67 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %7, align 8
  %68 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = load i32*, i32** %12, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = call i32* %66(%struct.TYPE_29__** %67, i32 %71, i32* %72, i32* %73)
  store i32* %74, i32** %10, align 8
  %75 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %7, align 8
  %76 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %77 = call i64 @ff_jni_exception_check(%struct.TYPE_29__** %75, i32 1, %struct.TYPE_30__* %76)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %62
  br label %151

80:                                               ; preds = %62
  %81 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %7, align 8
  %82 = load %struct.TYPE_29__*, %struct.TYPE_29__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %82, i32 0, i32 2
  %84 = load i64 (%struct.TYPE_29__**, i32*)*, i64 (%struct.TYPE_29__**, i32*)** %83, align 8
  %85 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %7, align 8
  %86 = load i32*, i32** %10, align 8
  %87 = call i64 %84(%struct.TYPE_29__** %85, i32* %86)
  %88 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %88, i32 0, i32 3
  store i64 %87, i64* %89, align 8
  %90 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %80
  br label %151

95:                                               ; preds = %80
  %96 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %97 = call i64 @codec_init_static_fields(%struct.TYPE_30__* %96)
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  br label %151

100:                                              ; preds = %95
  %101 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %100
  %107 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %113, i32 0, i32 0
  store i32 1, i32* %114, align 8
  br label %115

115:                                              ; preds = %112, %106, %100
  %116 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %7, align 8
  %117 = load %struct.TYPE_29__*, %struct.TYPE_29__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %117, i32 0, i32 3
  %119 = load i32* (%struct.TYPE_29__**, i32, i32)*, i32* (%struct.TYPE_29__**, i32, i32)** %118, align 8
  %120 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %7, align 8
  %121 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32* %119(%struct.TYPE_29__** %120, i32 %124, i32 %128)
  store i32* %129, i32** %11, align 8
  %130 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %7, align 8
  %131 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %132 = call i64 @ff_jni_exception_check(%struct.TYPE_29__** %130, i32 1, %struct.TYPE_30__* %131)
  %133 = icmp slt i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %115
  br label %151

135:                                              ; preds = %115
  %136 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %7, align 8
  %137 = load %struct.TYPE_29__*, %struct.TYPE_29__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %137, i32 0, i32 2
  %139 = load i64 (%struct.TYPE_29__**, i32*)*, i64 (%struct.TYPE_29__**, i32*)** %138, align 8
  %140 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %7, align 8
  %141 = load i32*, i32** %11, align 8
  %142 = call i64 %139(%struct.TYPE_29__** %140, i32* %141)
  %143 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %143, i32 0, i32 2
  store i64 %142, i64* %144, align 8
  %145 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %135
  br label %151

150:                                              ; preds = %135
  store i32 0, i32* %6, align 4
  br label %151

151:                                              ; preds = %150, %149, %134, %99, %94, %79, %42, %34
  %152 = load i32*, i32** %9, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %154, label %162

154:                                              ; preds = %151
  %155 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %7, align 8
  %156 = load %struct.TYPE_29__*, %struct.TYPE_29__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %156, i32 0, i32 1
  %158 = load i32 (%struct.TYPE_29__**, i32*)*, i32 (%struct.TYPE_29__**, i32*)** %157, align 8
  %159 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %7, align 8
  %160 = load i32*, i32** %9, align 8
  %161 = call i32 %158(%struct.TYPE_29__** %159, i32* %160)
  br label %162

162:                                              ; preds = %154, %151
  %163 = load i32*, i32** %10, align 8
  %164 = icmp ne i32* %163, null
  br i1 %164, label %165, label %173

165:                                              ; preds = %162
  %166 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %7, align 8
  %167 = load %struct.TYPE_29__*, %struct.TYPE_29__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %167, i32 0, i32 1
  %169 = load i32 (%struct.TYPE_29__**, i32*)*, i32 (%struct.TYPE_29__**, i32*)** %168, align 8
  %170 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %7, align 8
  %171 = load i32*, i32** %10, align 8
  %172 = call i32 %169(%struct.TYPE_29__** %170, i32* %171)
  br label %173

173:                                              ; preds = %165, %162
  %174 = load i32*, i32** %11, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %184

176:                                              ; preds = %173
  %177 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %7, align 8
  %178 = load %struct.TYPE_29__*, %struct.TYPE_29__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %178, i32 0, i32 1
  %180 = load i32 (%struct.TYPE_29__**, i32*)*, i32 (%struct.TYPE_29__**, i32*)** %179, align 8
  %181 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %7, align 8
  %182 = load i32*, i32** %11, align 8
  %183 = call i32 %180(%struct.TYPE_29__** %181, i32* %182)
  br label %184

184:                                              ; preds = %176, %173
  %185 = load i32, i32* %6, align 4
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %225

187:                                              ; preds = %184
  %188 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %188, i32 0, i32 3
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %202

192:                                              ; preds = %187
  %193 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %7, align 8
  %194 = load %struct.TYPE_29__*, %struct.TYPE_29__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %194, i32 0, i32 0
  %196 = load i32 (%struct.TYPE_29__**, i64)*, i32 (%struct.TYPE_29__**, i64)** %195, align 8
  %197 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %7, align 8
  %198 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %198, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = call i32 %196(%struct.TYPE_29__** %197, i64 %200)
  br label %202

202:                                              ; preds = %192, %187
  %203 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %217

207:                                              ; preds = %202
  %208 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %7, align 8
  %209 = load %struct.TYPE_29__*, %struct.TYPE_29__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %209, i32 0, i32 0
  %211 = load i32 (%struct.TYPE_29__**, i64)*, i32 (%struct.TYPE_29__**, i64)** %210, align 8
  %212 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %7, align 8
  %213 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %213, i32 0, i32 2
  %215 = load i64, i64* %214, align 8
  %216 = call i32 %211(%struct.TYPE_29__** %212, i64 %215)
  br label %217

217:                                              ; preds = %207, %202
  %218 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %7, align 8
  %219 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %219, i32 0, i32 1
  %221 = load i32, i32* @jni_amediacodec_mapping, align 4
  %222 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %223 = call i32 @ff_jni_reset_jfields(%struct.TYPE_29__** %218, %struct.TYPE_28__* %220, i32 %221, i32 1, %struct.TYPE_30__* %222)
  %224 = call i32 @av_freep(%struct.TYPE_30__** %8)
  br label %225

225:                                              ; preds = %217, %184
  %226 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  store %struct.TYPE_30__* %226, %struct.TYPE_30__** %3, align 8
  br label %227

227:                                              ; preds = %225, %24, %16
  %228 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  ret %struct.TYPE_30__* %228
}

declare dso_local %struct.TYPE_30__* @av_mallocz(i32) #1

declare dso_local %struct.TYPE_29__** @ff_jni_get_env(%struct.TYPE_30__*) #1

declare dso_local i32 @av_freep(%struct.TYPE_30__**) #1

declare dso_local i64 @ff_jni_init_jfields(%struct.TYPE_29__**, %struct.TYPE_28__*, i32, i32, %struct.TYPE_30__*) #1

declare dso_local i32* @ff_jni_utf_chars_to_jstring(%struct.TYPE_29__**, i8*, %struct.TYPE_30__*) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i64 @ff_jni_exception_check(%struct.TYPE_29__**, i32, %struct.TYPE_30__*) #1

declare dso_local i64 @codec_init_static_fields(%struct.TYPE_30__*) #1

declare dso_local i32 @ff_jni_reset_jfields(%struct.TYPE_29__**, %struct.TYPE_28__*, i32, i32, %struct.TYPE_30__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
