; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/jpeg-6/extr_jdcolor.c_jinit_color_deconverter.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/jpeg-6/extr_jdcolor.c_jinit_color_deconverter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i64, %struct.TYPE_10__*, %struct.jpeg_color_deconverter*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32 }
%struct.jpeg_color_deconverter = type { i32 }
%struct.TYPE_9__ = type { i64 (i32, i32, i32)* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8*, i32 }

@JPOOL_IMAGE = common dso_local global i32 0, align 4
@my_color_deconverter = common dso_local global i32 0, align 4
@start_pass_dcolor = common dso_local global i32 0, align 4
@JERR_BAD_J_COLORSPACE = common dso_local global i32 0, align 4
@grayscale_convert = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@JERR_CONVERSION_NOTIMPL = common dso_local global i32 0, align 4
@RGB_PIXELSIZE = common dso_local global i32 0, align 4
@ycc_rgb_convert = common dso_local global i8* null, align 8
@null_convert = common dso_local global i8* null, align 8
@ycck_cmyk_convert = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jinit_color_deconverter(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %5 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load i64 (i32, i32, i32)*, i64 (i32, i32, i32)** %8, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %11 = ptrtoint %struct.TYPE_13__* %10 to i32
  %12 = load i32, i32* @JPOOL_IMAGE, align 4
  %13 = load i32, i32* @my_color_deconverter, align 4
  %14 = call i32 @SIZEOF(i32 %13)
  %15 = call i64 %9(i32 %11, i32 %12, i32 %14)
  %16 = inttoptr i64 %15 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %3, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %18 = bitcast %struct.TYPE_12__* %17 to %struct.jpeg_color_deconverter*
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 7
  store %struct.jpeg_color_deconverter* %18, %struct.jpeg_color_deconverter** %20, align 8
  %21 = load i32, i32* @start_pass_dcolor, align 4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %58 [
    i32 131, label %28
    i32 130, label %38
    i32 128, label %38
    i32 132, label %48
    i32 129, label %48
  ]

28:                                               ; preds = %1
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 1
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %35 = load i32, i32* @JERR_BAD_J_COLORSPACE, align 4
  %36 = call i32 @ERREXIT(%struct.TYPE_13__* %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %28
  br label %68

38:                                               ; preds = %1, %1
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 3
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %45 = load i32, i32* @JERR_BAD_J_COLORSPACE, align 4
  %46 = call i32 @ERREXIT(%struct.TYPE_13__* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %38
  br label %68

48:                                               ; preds = %1, %1
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 4
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %55 = load i32, i32* @JERR_BAD_J_COLORSPACE, align 4
  %56 = call i32 @ERREXIT(%struct.TYPE_13__* %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %48
  br label %68

58:                                               ; preds = %1
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %61, 1
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %65 = load i32, i32* @JERR_BAD_J_COLORSPACE, align 4
  %66 = call i32 @ERREXIT(%struct.TYPE_13__* %64, i32 %65)
  br label %67

67:                                               ; preds = %63, %58
  br label %68

68:                                               ; preds = %67, %57, %47, %37
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  switch i32 %71, label %177 [
    i32 131, label %72
    i32 130, label %113
    i32 132, label %147
  ]

72:                                               ; preds = %68
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 3
  store i32 1, i32* %74, align 4
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 131
  br i1 %78, label %84, label %79

79:                                               ; preds = %72
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, 128
  br i1 %83, label %84, label %108

84:                                               ; preds = %79, %72
  %85 = load i8*, i8** @grayscale_convert, align 8
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  store i8* %85, i8** %88, align 8
  store i32 1, i32* %4, align 4
  br label %89

89:                                               ; preds = %104, %84
  %90 = load i32, i32* %4, align 4
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %107

95:                                               ; preds = %89
  %96 = load i32, i32* @FALSE, align 4
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 6
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %98, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  store i32 %96, i32* %103, align 4
  br label %104

104:                                              ; preds = %95
  %105 = load i32, i32* %4, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %4, align 4
  br label %89

107:                                              ; preds = %89
  br label %112

108:                                              ; preds = %79
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %110 = load i32, i32* @JERR_CONVERSION_NOTIMPL, align 4
  %111 = call i32 @ERREXIT(%struct.TYPE_13__* %109, i32 %110)
  br label %112

112:                                              ; preds = %108, %107
  br label %200

113:                                              ; preds = %68
  %114 = load i32, i32* @RGB_PIXELSIZE, align 4
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 4
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp eq i32 %119, 128
  br i1 %120, label %121, label %128

121:                                              ; preds = %113
  %122 = load i8*, i8** @ycc_rgb_convert, align 8
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  store i8* %122, i8** %125, align 8
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %127 = call i32 @build_ycc_rgb_table(%struct.TYPE_13__* %126)
  br label %146

128:                                              ; preds = %113
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp eq i32 %131, 130
  br i1 %132, label %133, label %141

133:                                              ; preds = %128
  %134 = load i32, i32* @RGB_PIXELSIZE, align 4
  %135 = icmp eq i32 %134, 3
  br i1 %135, label %136, label %141

136:                                              ; preds = %133
  %137 = load i8*, i8** @null_convert, align 8
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  store i8* %137, i8** %140, align 8
  br label %145

141:                                              ; preds = %133, %128
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %143 = load i32, i32* @JERR_CONVERSION_NOTIMPL, align 4
  %144 = call i32 @ERREXIT(%struct.TYPE_13__* %142, i32 %143)
  br label %145

145:                                              ; preds = %141, %136
  br label %146

146:                                              ; preds = %145, %121
  br label %200

147:                                              ; preds = %68
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 3
  store i32 4, i32* %149, align 4
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp eq i32 %152, 129
  br i1 %153, label %154, label %161

154:                                              ; preds = %147
  %155 = load i8*, i8** @ycck_cmyk_convert, align 8
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 0
  store i8* %155, i8** %158, align 8
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %160 = call i32 @build_ycc_rgb_table(%struct.TYPE_13__* %159)
  br label %176

161:                                              ; preds = %147
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = icmp eq i32 %164, 132
  br i1 %165, label %166, label %171

166:                                              ; preds = %161
  %167 = load i8*, i8** @null_convert, align 8
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 0
  store i8* %167, i8** %170, align 8
  br label %175

171:                                              ; preds = %161
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %173 = load i32, i32* @JERR_CONVERSION_NOTIMPL, align 4
  %174 = call i32 @ERREXIT(%struct.TYPE_13__* %172, i32 %173)
  br label %175

175:                                              ; preds = %171, %166
  br label %176

176:                                              ; preds = %175, %154
  br label %200

177:                                              ; preds = %68
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = icmp eq i32 %180, %183
  br i1 %184, label %185, label %195

185:                                              ; preds = %177
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 3
  store i32 %188, i32* %190, align 4
  %191 = load i8*, i8** @null_convert, align 8
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 0
  store i8* %191, i8** %194, align 8
  br label %199

195:                                              ; preds = %177
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %197 = load i32, i32* @JERR_CONVERSION_NOTIMPL, align 4
  %198 = call i32 @ERREXIT(%struct.TYPE_13__* %196, i32 %197)
  br label %199

199:                                              ; preds = %195, %185
  br label %200

200:                                              ; preds = %199, %176, %146, %112
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 5
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %200
  %206 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 4
  store i32 1, i32* %207, align 8
  br label %214

208:                                              ; preds = %200
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 4
  store i32 %211, i32* %213, align 8
  br label %214

214:                                              ; preds = %208, %205
  ret void
}

declare dso_local i32 @SIZEOF(i32) #1

declare dso_local i32 @ERREXIT(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @build_ycc_rgb_table(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
