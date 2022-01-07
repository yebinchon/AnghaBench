; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/jpeg-6/extr_jccolor.c_jinit_color_converter.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/jpeg-6/extr_jccolor.c_jinit_color_converter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, %struct.jpeg_color_converter*, %struct.TYPE_7__* }
%struct.jpeg_color_converter = type { i32 }
%struct.TYPE_7__ = type { i64 (i32, i32, i32)* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i8* }

@JPOOL_IMAGE = common dso_local global i32 0, align 4
@my_color_converter = common dso_local global i32 0, align 4
@null_method = common dso_local global i8* null, align 8
@JERR_BAD_IN_COLORSPACE = common dso_local global i32 0, align 4
@RGB_PIXELSIZE = common dso_local global i32 0, align 4
@JERR_BAD_J_COLORSPACE = common dso_local global i32 0, align 4
@grayscale_convert = common dso_local global i8* null, align 8
@rgb_ycc_start = common dso_local global i8* null, align 8
@rgb_gray_convert = common dso_local global i8* null, align 8
@JERR_CONVERSION_NOTIMPL = common dso_local global i32 0, align 4
@null_convert = common dso_local global i8* null, align 8
@rgb_ycc_convert = common dso_local global i8* null, align 8
@cmyk_ycck_convert = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jinit_color_converter(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %4 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 5
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load i64 (i32, i32, i32)*, i64 (i32, i32, i32)** %7, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %10 = ptrtoint %struct.TYPE_10__* %9 to i32
  %11 = load i32, i32* @JPOOL_IMAGE, align 4
  %12 = load i32, i32* @my_color_converter, align 4
  %13 = call i32 @SIZEOF(i32 %12)
  %14 = call i64 %8(i32 %10, i32 %11, i32 %13)
  %15 = inttoptr i64 %14 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %3, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = bitcast %struct.TYPE_9__* %16 to %struct.jpeg_color_converter*
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 4
  store %struct.jpeg_color_converter* %17, %struct.jpeg_color_converter** %19, align 8
  %20 = load i8*, i8** @null_method, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  store i8* %20, i8** %23, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %68 [
    i32 131, label %27
    i32 130, label %37
    i32 128, label %48
    i32 132, label %58
    i32 129, label %58
  ]

27:                                               ; preds = %1
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 1
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %34 = load i32, i32* @JERR_BAD_IN_COLORSPACE, align 4
  %35 = call i32 @ERREXIT(%struct.TYPE_10__* %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %27
  br label %78

37:                                               ; preds = %1
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @RGB_PIXELSIZE, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %45 = load i32, i32* @JERR_BAD_IN_COLORSPACE, align 4
  %46 = call i32 @ERREXIT(%struct.TYPE_10__* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %37
  br label %78

48:                                               ; preds = %1
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 3
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %55 = load i32, i32* @JERR_BAD_IN_COLORSPACE, align 4
  %56 = call i32 @ERREXIT(%struct.TYPE_10__* %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %48
  br label %78

58:                                               ; preds = %1, %1
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 4
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %65 = load i32, i32* @JERR_BAD_IN_COLORSPACE, align 4
  %66 = call i32 @ERREXIT(%struct.TYPE_10__* %64, i32 %65)
  br label %67

67:                                               ; preds = %63, %58
  br label %78

68:                                               ; preds = %1
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %71, 1
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %75 = load i32, i32* @JERR_BAD_IN_COLORSPACE, align 4
  %76 = call i32 @ERREXIT(%struct.TYPE_10__* %74, i32 %75)
  br label %77

77:                                               ; preds = %73, %68
  br label %78

78:                                               ; preds = %77, %67, %57, %47, %36
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  switch i32 %81, label %261 [
    i32 131, label %82
    i32 130, label %132
    i32 128, label %159
    i32 132, label %198
    i32 129, label %222
  ]

82:                                               ; preds = %78
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 1
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %89 = load i32, i32* @JERR_BAD_J_COLORSPACE, align 4
  %90 = call i32 @ERREXIT(%struct.TYPE_10__* %88, i32 %89)
  br label %91

91:                                               ; preds = %87, %82
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 %94, 131
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load i8*, i8** @grayscale_convert, align 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  store i8* %97, i8** %100, align 8
  br label %131

101:                                              ; preds = %91
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp eq i32 %104, 130
  br i1 %105, label %106, label %115

106:                                              ; preds = %101
  %107 = load i8*, i8** @rgb_ycc_start, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  store i8* %107, i8** %110, align 8
  %111 = load i8*, i8** @rgb_gray_convert, align 8
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  store i8* %111, i8** %114, align 8
  br label %130

115:                                              ; preds = %101
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp eq i32 %118, 128
  br i1 %119, label %120, label %125

120:                                              ; preds = %115
  %121 = load i8*, i8** @grayscale_convert, align 8
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  store i8* %121, i8** %124, align 8
  br label %129

125:                                              ; preds = %115
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %127 = load i32, i32* @JERR_CONVERSION_NOTIMPL, align 4
  %128 = call i32 @ERREXIT(%struct.TYPE_10__* %126, i32 %127)
  br label %129

129:                                              ; preds = %125, %120
  br label %130

130:                                              ; preds = %129, %106
  br label %131

131:                                              ; preds = %130, %96
  br label %286

132:                                              ; preds = %78
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 3
  br i1 %136, label %137, label %141

137:                                              ; preds = %132
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %139 = load i32, i32* @JERR_BAD_J_COLORSPACE, align 4
  %140 = call i32 @ERREXIT(%struct.TYPE_10__* %138, i32 %139)
  br label %141

141:                                              ; preds = %137, %132
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp eq i32 %144, 130
  br i1 %145, label %146, label %154

146:                                              ; preds = %141
  %147 = load i32, i32* @RGB_PIXELSIZE, align 4
  %148 = icmp eq i32 %147, 3
  br i1 %148, label %149, label %154

149:                                              ; preds = %146
  %150 = load i8*, i8** @null_convert, align 8
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  store i8* %150, i8** %153, align 8
  br label %158

154:                                              ; preds = %146, %141
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %156 = load i32, i32* @JERR_CONVERSION_NOTIMPL, align 4
  %157 = call i32 @ERREXIT(%struct.TYPE_10__* %155, i32 %156)
  br label %158

158:                                              ; preds = %154, %149
  br label %286

159:                                              ; preds = %78
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 3
  br i1 %163, label %164, label %168

164:                                              ; preds = %159
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %166 = load i32, i32* @JERR_BAD_J_COLORSPACE, align 4
  %167 = call i32 @ERREXIT(%struct.TYPE_10__* %165, i32 %166)
  br label %168

168:                                              ; preds = %164, %159
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp eq i32 %171, 130
  br i1 %172, label %173, label %182

173:                                              ; preds = %168
  %174 = load i8*, i8** @rgb_ycc_start, align 8
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 1
  store i8* %174, i8** %177, align 8
  %178 = load i8*, i8** @rgb_ycc_convert, align 8
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  store i8* %178, i8** %181, align 8
  br label %197

182:                                              ; preds = %168
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = icmp eq i32 %185, 128
  br i1 %186, label %187, label %192

187:                                              ; preds = %182
  %188 = load i8*, i8** @null_convert, align 8
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 0
  store i8* %188, i8** %191, align 8
  br label %196

192:                                              ; preds = %182
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %194 = load i32, i32* @JERR_CONVERSION_NOTIMPL, align 4
  %195 = call i32 @ERREXIT(%struct.TYPE_10__* %193, i32 %194)
  br label %196

196:                                              ; preds = %192, %187
  br label %197

197:                                              ; preds = %196, %173
  br label %286

198:                                              ; preds = %78
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = icmp ne i32 %201, 4
  br i1 %202, label %203, label %207

203:                                              ; preds = %198
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %205 = load i32, i32* @JERR_BAD_J_COLORSPACE, align 4
  %206 = call i32 @ERREXIT(%struct.TYPE_10__* %204, i32 %205)
  br label %207

207:                                              ; preds = %203, %198
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = icmp eq i32 %210, 132
  br i1 %211, label %212, label %217

212:                                              ; preds = %207
  %213 = load i8*, i8** @null_convert, align 8
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 0
  store i8* %213, i8** %216, align 8
  br label %221

217:                                              ; preds = %207
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %219 = load i32, i32* @JERR_CONVERSION_NOTIMPL, align 4
  %220 = call i32 @ERREXIT(%struct.TYPE_10__* %218, i32 %219)
  br label %221

221:                                              ; preds = %217, %212
  br label %286

222:                                              ; preds = %78
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = icmp ne i32 %225, 4
  br i1 %226, label %227, label %231

227:                                              ; preds = %222
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %229 = load i32, i32* @JERR_BAD_J_COLORSPACE, align 4
  %230 = call i32 @ERREXIT(%struct.TYPE_10__* %228, i32 %229)
  br label %231

231:                                              ; preds = %227, %222
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = icmp eq i32 %234, 132
  br i1 %235, label %236, label %245

236:                                              ; preds = %231
  %237 = load i8*, i8** @rgb_ycc_start, align 8
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 1
  store i8* %237, i8** %240, align 8
  %241 = load i8*, i8** @cmyk_ycck_convert, align 8
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 0
  store i8* %241, i8** %244, align 8
  br label %260

245:                                              ; preds = %231
  %246 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = icmp eq i32 %248, 129
  br i1 %249, label %250, label %255

250:                                              ; preds = %245
  %251 = load i8*, i8** @null_convert, align 8
  %252 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 0
  store i8* %251, i8** %254, align 8
  br label %259

255:                                              ; preds = %245
  %256 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %257 = load i32, i32* @JERR_CONVERSION_NOTIMPL, align 4
  %258 = call i32 @ERREXIT(%struct.TYPE_10__* %256, i32 %257)
  br label %259

259:                                              ; preds = %255, %250
  br label %260

260:                                              ; preds = %259, %236
  br label %286

261:                                              ; preds = %78
  %262 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = icmp ne i32 %264, %267
  br i1 %268, label %277, label %269

269:                                              ; preds = %261
  %270 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i32 0, i32 3
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = icmp ne i32 %272, %275
  br i1 %276, label %277, label %281

277:                                              ; preds = %269, %261
  %278 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %279 = load i32, i32* @JERR_CONVERSION_NOTIMPL, align 4
  %280 = call i32 @ERREXIT(%struct.TYPE_10__* %278, i32 %279)
  br label %281

281:                                              ; preds = %277, %269
  %282 = load i8*, i8** @null_convert, align 8
  %283 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %284 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %284, i32 0, i32 0
  store i8* %282, i8** %285, align 8
  br label %286

286:                                              ; preds = %281, %260, %221, %197, %158, %131
  ret void
}

declare dso_local i32 @SIZEOF(i32) #1

declare dso_local i32 @ERREXIT(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
