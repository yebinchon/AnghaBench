; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngstest.c_read_file.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngstest.c_read_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i8*, i32, i32, i64, i64, %struct.TYPE_18__, i64, i32*, i32, i32* }
%struct.TYPE_18__ = type { i64, i64, i64, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32 }

@PNG_IMAGE_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"memory init: \00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"unsupported file/stdio init: \00", align 1
@sRGB_16BIT = common dso_local global i32 0, align 4
@PNG_IMAGE_FLAG_16BIT_sRGB = common dso_local global i32 0, align 4
@VERBOSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"%s %lu x %lu %s -> %s\00", align 1
@format_names = common dso_local global i8** null, align 8
@FORMAT_MASK = common dso_local global i64 0, align 8
@FORMAT_NO_CHANGE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"no change\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c" background(%d,%d,%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@PNG_FORMAT_FLAG_COLORMAP = common dso_local global i64 0, align 8
@BASE_FORMATS = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [20 x i8] c": image read failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i64, %struct.TYPE_16__*)* @read_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_file(%struct.TYPE_17__* %0, i64 %1, %struct.TYPE_16__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %7, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 5
  %12 = call i32 @memset(%struct.TYPE_18__* %11, i32 0, i32 32)
  %13 = load i32, i32* @PNG_IMAGE_VERSION, align 4
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 5
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 4
  store i32 %13, i32* %16, align 4
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 9
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %39

21:                                               ; preds = %3
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 5
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 9
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 8
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @png_image_begin_read_from_memory(%struct.TYPE_18__* %23, i32* %26, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %21
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @logerror(%struct.TYPE_17__* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %36, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i32 %37, i32* %4, align 4
  br label %202

38:                                               ; preds = %21
  br label %45

39:                                               ; preds = %3
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @logerror(%struct.TYPE_17__* %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %43, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i32 %44, i32* %4, align 4
  br label %202

45:                                               ; preds = %38
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @sRGB_16BIT, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %45
  %53 = load i32, i32* @PNG_IMAGE_FLAG_16BIT_sRGB, align 4
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 5
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %53
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %52, %45
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %9, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @VERBOSE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %128

70:                                               ; preds = %59
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 5
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i8**, i8*** @format_names, align 8
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* @FORMAT_MASK, align 8
  %85 = and i64 %83, %84
  %86 = getelementptr inbounds i8*, i8** %82, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = load i64, i64* %6, align 8
  %89 = load i64, i64* @FORMAT_NO_CHANGE, align 8
  %90 = and i64 %88, %89
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %70
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %6, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %92, %70
  br label %107

100:                                              ; preds = %92
  %101 = load i8**, i8*** @format_names, align 8
  %102 = load i64, i64* %6, align 8
  %103 = load i64, i64* @FORMAT_MASK, align 8
  %104 = and i64 %102, %103
  %105 = getelementptr inbounds i8*, i8** %101, i64 %104
  %106 = load i8*, i8** %105, align 8
  br label %107

107:                                              ; preds = %100, %99
  %108 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), %99 ], [ %106, %100 ]
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %73, i64 %77, i64 %81, i8* %87, i8* %108)
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %111 = icmp ne %struct.TYPE_16__* %110, null
  br i1 %111, label %112, label %123

112:                                              ; preds = %107
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %115, i32 %118, i32 %121)
  br label %125

123:                                              ; preds = %107
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %125

125:                                              ; preds = %123, %112
  %126 = load i32, i32* @stdout, align 4
  %127 = call i32 @fflush(i32 %126)
  br label %128

128:                                              ; preds = %125, %59
  %129 = load i64, i64* %6, align 8
  %130 = load i64, i64* @FORMAT_NO_CHANGE, align 8
  %131 = and i64 %129, %130
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %155

133:                                              ; preds = %128
  %134 = load i64, i64* %6, align 8
  %135 = load i64, i64* @PNG_FORMAT_FLAG_COLORMAP, align 8
  %136 = and i64 %134, %135
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %152

138:                                              ; preds = %133
  %139 = load i64, i64* %9, align 8
  %140 = load i64, i64* @PNG_FORMAT_FLAG_COLORMAP, align 8
  %141 = and i64 %139, %140
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %138
  %144 = load i64, i64* %9, align 8
  %145 = load i64, i64* @BASE_FORMATS, align 8
  %146 = xor i64 %145, -1
  %147 = and i64 %144, %146
  %148 = load i64, i64* %6, align 8
  %149 = load i64, i64* @BASE_FORMATS, align 8
  %150 = and i64 %148, %149
  %151 = or i64 %147, %150
  store i64 %151, i64* %6, align 8
  br label %154

152:                                              ; preds = %138, %133
  %153 = load i64, i64* %9, align 8
  store i64 %153, i64* %6, align 8
  br label %154

154:                                              ; preds = %152, %143
  br label %155

155:                                              ; preds = %154, %128
  %156 = load i64, i64* %6, align 8
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 5
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 0
  store i64 %156, i64* %159, align 8
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 5
  %162 = call i64 @PNG_IMAGE_ROW_STRIDE(%struct.TYPE_18__* byval(%struct.TYPE_18__) align 8 %161)
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 6
  %165 = load i64, i64* %164, align 8
  %166 = add nsw i64 %162, %165
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 3
  store i64 %166, i64* %168, align 8
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %170 = call i32 @allocbuffer(%struct.TYPE_17__* %169)
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 5
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 4
  %176 = load i64, i64* %175, align 8
  %177 = add nsw i64 %176, 16
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 3
  %180 = load i64, i64* %179, align 8
  %181 = trunc i64 %180 to i32
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @png_image_finish_read(%struct.TYPE_18__* %172, %struct.TYPE_16__* %173, i64 %177, i32 %181, i32 %184)
  store i32 %185, i32* %8, align 4
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8
  %190 = call i32 @checkbuffer(%struct.TYPE_17__* %186, i8* %189)
  %191 = load i32, i32* %8, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %155
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %195 = call i32 @checkopaque(%struct.TYPE_17__* %194)
  store i32 %195, i32* %4, align 4
  br label %202

196:                                              ; preds = %155
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 0
  %200 = load i8*, i8** %199, align 8
  %201 = call i32 @logerror(%struct.TYPE_17__* %197, i8* %200, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i32 %201, i32* %4, align 4
  br label %202

202:                                              ; preds = %196, %193, %39, %32
  %203 = load i32, i32* %4, align 4
  ret i32 %203
}

declare dso_local i32 @memset(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @png_image_begin_read_from_memory(%struct.TYPE_18__*, i32*, i32) #1

declare dso_local i32 @logerror(%struct.TYPE_17__*, i8*, i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i64 @PNG_IMAGE_ROW_STRIDE(%struct.TYPE_18__* byval(%struct.TYPE_18__) align 8) #1

declare dso_local i32 @allocbuffer(%struct.TYPE_17__*) #1

declare dso_local i32 @png_image_finish_read(%struct.TYPE_18__*, %struct.TYPE_16__*, i64, i32, i32) #1

declare dso_local i32 @checkbuffer(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @checkopaque(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
