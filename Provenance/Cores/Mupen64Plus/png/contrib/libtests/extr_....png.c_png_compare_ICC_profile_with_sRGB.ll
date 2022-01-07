; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_....png.c_png_compare_ICC_profile_with_sRGB.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_....png.c_png_compare_ICC_profile_with_sRGB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64*, i64, i32, i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i32 }

@png_sRGB_checks = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"known incorrect sRGB profile\00", align 1
@PNG_CHUNK_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"out-of-date sRGB profile with no signature\00", align 1
@PNG_CHUNK_WARNING = common dso_local global i32 0, align 4
@PNG_OPTION_ON = common dso_local global i32 0, align 4
@PNG_SKIP_sRGB_CHECK_PROFILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i64)* @png_compare_ICC_profile_with_sRGB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @png_compare_ICC_profile_with_sRGB(%struct.TYPE_5__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 65536, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %164, %3
  %12 = load i32, i32* %10, align 4
  %13 = zext i32 %12 to i64
  %14 = icmp ult i64 %13, 0
  br i1 %14, label %15, label %167

15:                                               ; preds = %11
  %16 = load i32*, i32** %6, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 84
  %18 = call i64 @png_get_uint_32(i32* %17)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @png_sRGB_checks, align 8
  %20 = load i32, i32* %10, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %18, %26
  br i1 %27, label %28, label %163

28:                                               ; preds = %15
  %29 = load i32*, i32** %6, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 88
  %31 = call i64 @png_get_uint_32(i32* %30)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @png_sRGB_checks, align 8
  %33 = load i32, i32* %10, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %31, %39
  br i1 %40, label %41, label %163

41:                                               ; preds = %28
  %42 = load i32*, i32** %6, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 92
  %44 = call i64 @png_get_uint_32(i32* %43)
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** @png_sRGB_checks, align 8
  %46 = load i32, i32* %10, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %44, %52
  br i1 %53, label %54, label %163

54:                                               ; preds = %41
  %55 = load i32*, i32** %6, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 96
  %57 = call i64 @png_get_uint_32(i32* %56)
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** @png_sRGB_checks, align 8
  %59 = load i32, i32* %10, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %57, %65
  br i1 %66, label %67, label %163

67:                                               ; preds = %54
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** @png_sRGB_checks, align 8
  %69 = load i32, i32* %10, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %67
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** @png_sRGB_checks, align 8
  %77 = load i32, i32* %10, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 1, %81
  store i32 %82, i32* %4, align 4
  br label %168

83:                                               ; preds = %67
  %84 = load i64, i64* %8, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = load i32*, i32** %6, align 8
  %88 = call i64 @png_get_uint_32(i32* %87)
  store i64 %88, i64* %8, align 8
  %89 = load i32*, i32** %6, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 64
  %91 = call i64 @png_get_uint_32(i32* %90)
  store i64 %91, i64* %9, align 8
  br label %92

92:                                               ; preds = %86, %83
  %93 = load i64, i64* %8, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** @png_sRGB_checks, align 8
  %95 = load i32, i32* %10, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 6
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %93, %99
  br i1 %100, label %101, label %162

101:                                              ; preds = %92
  %102 = load i64, i64* %9, align 8
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** @png_sRGB_checks, align 8
  %104 = load i32, i32* %10, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 5
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %102, %108
  br i1 %109, label %110, label %162

110:                                              ; preds = %101
  %111 = load i64, i64* %7, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %110
  %114 = call i64 @adler32(i64 0, i32* null, i64 0)
  store i64 %114, i64* %7, align 8
  %115 = load i64, i64* %7, align 8
  %116 = load i32*, i32** %6, align 8
  %117 = load i64, i64* %8, align 8
  %118 = call i64 @adler32(i64 %115, i32* %116, i64 %117)
  store i64 %118, i64* %7, align 8
  br label %119

119:                                              ; preds = %113, %110
  %120 = load i64, i64* %7, align 8
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** @png_sRGB_checks, align 8
  %122 = load i32, i32* %10, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %120, %126
  br i1 %127, label %128, label %161

128:                                              ; preds = %119
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** @png_sRGB_checks, align 8
  %130 = load i32, i32* %10, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %128
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %138 = load i32, i32* @PNG_CHUNK_ERROR, align 4
  %139 = call i32 @png_chunk_report(%struct.TYPE_5__* %137, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %138)
  br label %153

140:                                              ; preds = %128
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** @png_sRGB_checks, align 8
  %142 = load i32, i32* %10, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %140
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %150 = load i32, i32* @PNG_CHUNK_WARNING, align 4
  %151 = call i32 @png_chunk_report(%struct.TYPE_5__* %149, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %150)
  br label %152

152:                                              ; preds = %148, %140
  br label %153

153:                                              ; preds = %152, %136
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** @png_sRGB_checks, align 8
  %155 = load i32, i32* %10, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = add nsw i32 1, %159
  store i32 %160, i32* %4, align 4
  br label %168

161:                                              ; preds = %119
  br label %162

162:                                              ; preds = %161, %101, %92
  br label %163

163:                                              ; preds = %162, %54, %41, %28, %15
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %10, align 4
  %166 = add i32 %165, 1
  store i32 %166, i32* %10, align 4
  br label %11

167:                                              ; preds = %11
  store i32 0, i32* %4, align 4
  br label %168

168:                                              ; preds = %167, %153, %75
  %169 = load i32, i32* %4, align 4
  ret i32 %169
}

declare dso_local i64 @png_get_uint_32(i32*) #1

declare dso_local i64 @adler32(i64, i32*, i64) #1

declare dso_local i32 @png_chunk_report(%struct.TYPE_5__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
