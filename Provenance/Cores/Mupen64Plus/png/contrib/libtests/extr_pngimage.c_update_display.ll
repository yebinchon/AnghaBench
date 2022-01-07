; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngimage.c_update_display.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngimage.c_update_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32* }
%struct.display = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32*, i32*, i32*, i32*, i32 }

@.str = private unnamed_addr constant [14 x i8] c"original read\00", align 1
@LIBPNG_BUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"png_get_rowbytes returned 0\00", align 1
@PNG_INFO_IDAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"png_read_png did not set IDAT flag\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"png_read_png did not create row buffers\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"png_get_IHDR failed\00", align 1
@TTABLE_SIZE = common dso_local global i32 0, align 4
@transform_info = common dso_local global %struct.TYPE_2__* null, align 8
@TRANSFORM_R = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.display*)* @update_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_display(%struct.display* %0) #0 {
  %2 = alloca %struct.display*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.display* %0, %struct.display** %2, align 8
  %12 = load %struct.display*, %struct.display** %2, align 8
  %13 = load %struct.display*, %struct.display** %2, align 8
  %14 = getelementptr inbounds %struct.display, %struct.display* %13, i32 0, i32 16
  %15 = call i32 @read_png(%struct.display* %12, i32* %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 0)
  %16 = load %struct.display*, %struct.display** %2, align 8
  %17 = getelementptr inbounds %struct.display, %struct.display* %16, i32 0, i32 14
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %3, align 8
  %19 = load %struct.display*, %struct.display** %2, align 8
  %20 = getelementptr inbounds %struct.display, %struct.display* %19, i32 0, i32 15
  store i32* %18, i32** %20, align 8
  %21 = load %struct.display*, %struct.display** %2, align 8
  %22 = getelementptr inbounds %struct.display, %struct.display* %21, i32 0, i32 14
  store i32* null, i32** %22, align 8
  %23 = load %struct.display*, %struct.display** %2, align 8
  %24 = getelementptr inbounds %struct.display, %struct.display* %23, i32 0, i32 12
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %4, align 8
  %26 = load %struct.display*, %struct.display** %2, align 8
  %27 = getelementptr inbounds %struct.display, %struct.display* %26, i32 0, i32 13
  store i32* %25, i32** %27, align 8
  %28 = load %struct.display*, %struct.display** %2, align 8
  %29 = getelementptr inbounds %struct.display, %struct.display* %28, i32 0, i32 12
  store i32* null, i32** %29, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @png_get_rowbytes(i32* %30, i32* %31)
  %33 = load %struct.display*, %struct.display** %2, align 8
  %34 = getelementptr inbounds %struct.display, %struct.display* %33, i32 0, i32 11
  store i32 %32, i32* %34, align 8
  %35 = load %struct.display*, %struct.display** %2, align 8
  %36 = getelementptr inbounds %struct.display, %struct.display* %35, i32 0, i32 11
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %1
  %40 = load %struct.display*, %struct.display** %2, align 8
  %41 = load i32, i32* @LIBPNG_BUG, align 4
  %42 = call i32 @display_log(%struct.display* %40, i32 %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %39, %1
  %44 = load i32*, i32** %3, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @png_get_valid(i32* %44, i32* %45, i32 -1)
  %47 = load %struct.display*, %struct.display** %2, align 8
  %48 = getelementptr inbounds %struct.display, %struct.display* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.display*, %struct.display** %2, align 8
  %50 = getelementptr inbounds %struct.display, %struct.display* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @PNG_INFO_IDAT, align 4
  %53 = and i32 %51, %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %43
  %56 = load %struct.display*, %struct.display** %2, align 8
  %57 = load i32, i32* @LIBPNG_BUG, align 4
  %58 = call i32 @display_log(%struct.display* %56, i32 %57, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %59

59:                                               ; preds = %55, %43
  %60 = load i32*, i32** %3, align 8
  %61 = load i32*, i32** %4, align 8
  %62 = call i32* @png_get_rows(i32* %60, i32* %61)
  %63 = load %struct.display*, %struct.display** %2, align 8
  %64 = getelementptr inbounds %struct.display, %struct.display* %63, i32 0, i32 10
  store i32* %62, i32** %64, align 8
  %65 = load %struct.display*, %struct.display** %2, align 8
  %66 = getelementptr inbounds %struct.display, %struct.display* %65, i32 0, i32 10
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %59
  %70 = load %struct.display*, %struct.display** %2, align 8
  %71 = load i32, i32* @LIBPNG_BUG, align 4
  %72 = call i32 @display_log(%struct.display* %70, i32 %71, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %73

73:                                               ; preds = %69, %59
  %74 = load i32*, i32** %3, align 8
  %75 = load i32*, i32** %4, align 8
  %76 = load %struct.display*, %struct.display** %2, align 8
  %77 = getelementptr inbounds %struct.display, %struct.display* %76, i32 0, i32 9
  %78 = load %struct.display*, %struct.display** %2, align 8
  %79 = getelementptr inbounds %struct.display, %struct.display* %78, i32 0, i32 8
  %80 = load %struct.display*, %struct.display** %2, align 8
  %81 = getelementptr inbounds %struct.display, %struct.display* %80, i32 0, i32 1
  %82 = load %struct.display*, %struct.display** %2, align 8
  %83 = getelementptr inbounds %struct.display, %struct.display* %82, i32 0, i32 2
  %84 = load %struct.display*, %struct.display** %2, align 8
  %85 = getelementptr inbounds %struct.display, %struct.display* %84, i32 0, i32 7
  %86 = load %struct.display*, %struct.display** %2, align 8
  %87 = getelementptr inbounds %struct.display, %struct.display* %86, i32 0, i32 6
  %88 = load %struct.display*, %struct.display** %2, align 8
  %89 = getelementptr inbounds %struct.display, %struct.display* %88, i32 0, i32 5
  %90 = call i32 @png_get_IHDR(i32* %74, i32* %75, i32* %77, i32* %79, i32* %81, i32* %83, i32* %85, i32* %87, i32* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %73
  %93 = load %struct.display*, %struct.display** %2, align 8
  %94 = load i32, i32* @LIBPNG_BUG, align 4
  %95 = call i32 @display_log(%struct.display* %93, i32 %94, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %96

96:                                               ; preds = %92, %73
  %97 = load %struct.display*, %struct.display** %2, align 8
  %98 = getelementptr inbounds %struct.display, %struct.display* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  store i32 %99, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %100 = load %struct.display*, %struct.display** %2, align 8
  %101 = getelementptr inbounds %struct.display, %struct.display* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  store i32 %102, i32* %8, align 4
  %103 = load %struct.display*, %struct.display** %2, align 8
  %104 = getelementptr inbounds %struct.display, %struct.display* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %106

106:                                              ; preds = %209, %96
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @TTABLE_SIZE, align 4
  %109 = icmp ult i32 %107, %108
  br i1 %109, label %110, label %212

110:                                              ; preds = %106
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transform_info, align 8
  %112 = load i32, i32* %10, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 6
  %116 = load i32*, i32** %115, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %208

118:                                              ; preds = %110
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transform_info, align 8
  %120 = load i32, i32* %10, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  store i32 %124, i32* %11, align 4
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transform_info, align 8
  %126 = load i32, i32* %10, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %142, label %132

132:                                              ; preds = %118
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transform_info, align 8
  %134 = load i32, i32* %10, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %5, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %192

142:                                              ; preds = %132, %118
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transform_info, align 8
  %144 = load i32, i32* %10, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* %8, align 4
  %150 = and i32 %148, %149
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transform_info, align 8
  %152 = load i32, i32* %10, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = icmp eq i32 %150, %156
  br i1 %157, label %158, label %192

158:                                              ; preds = %142
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transform_info, align 8
  %160 = load i32, i32* %10, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %8, align 4
  %166 = and i32 %164, %165
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %192

168:                                              ; preds = %158
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transform_info, align 8
  %170 = load i32, i32* %10, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* %9, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %192

178:                                              ; preds = %168
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transform_info, align 8
  %180 = load i32, i32* %10, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 5
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @TRANSFORM_R, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %178
  %189 = load i32, i32* %11, align 4
  %190 = load i32, i32* %6, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %6, align 4
  br label %207

192:                                              ; preds = %178, %168, %158, %142, %132
  %193 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transform_info, align 8
  %194 = load i32, i32* %10, align 4
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 5
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @TRANSFORM_R, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %192
  %203 = load i32, i32* %11, align 4
  %204 = load i32, i32* %7, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %7, align 4
  br label %206

206:                                              ; preds = %202, %192
  br label %207

207:                                              ; preds = %206, %188
  br label %208

208:                                              ; preds = %207, %110
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %10, align 4
  %211 = add i32 %210, 1
  store i32 %211, i32* %10, align 4
  br label %106

212:                                              ; preds = %106
  %213 = load i32, i32* %6, align 4
  %214 = xor i32 %213, -1
  %215 = load i32, i32* %7, align 4
  %216 = and i32 %215, %214
  store i32 %216, i32* %7, align 4
  %217 = load i32, i32* %6, align 4
  %218 = load %struct.display*, %struct.display** %2, align 8
  %219 = getelementptr inbounds %struct.display, %struct.display* %218, i32 0, i32 3
  store i32 %217, i32* %219, align 4
  %220 = load i32, i32* %7, align 4
  %221 = load %struct.display*, %struct.display** %2, align 8
  %222 = getelementptr inbounds %struct.display, %struct.display* %221, i32 0, i32 4
  store i32 %220, i32* %222, align 8
  ret void
}

declare dso_local i32 @read_png(%struct.display*, i32*, i8*, i32) #1

declare dso_local i32 @png_get_rowbytes(i32*, i32*) #1

declare dso_local i32 @display_log(%struct.display*, i32, i8*) #1

declare dso_local i32 @png_get_valid(i32*, i32*, i32) #1

declare dso_local i32* @png_get_rows(i32*, i32*) #1

declare dso_local i32 @png_get_IHDR(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
