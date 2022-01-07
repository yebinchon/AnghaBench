; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dpx_parser.c_dpx_parse.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dpx_parser.c_dpx_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@END_NOT_FOUND = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32**, i32*, i32*, i32)* @dpx_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpx_parse(%struct.TYPE_6__* %0, i32* %1, i32** %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32** %2, i32*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %14, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* @END_NOT_FOUND, align 4
  store i32 %25, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %26 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32*, i32** %11, align 8
  store i32 0, i32* %29, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %6
  store i32 0, i32* %16, align 4
  br label %33

33:                                               ; preds = %32, %6
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %81, label %39

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %73, %39
  %41 = load i32, i32* %17, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %76

44:                                               ; preds = %40
  %45 = load i32, i32* %15, align 4
  %46 = shl i32 %45, 8
  %47 = load i32*, i32** %12, align 8
  %48 = load i32, i32* %17, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %46, %51
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = call i32 @MKBETAG(i8 signext 83, i8 signext 68, i8 signext 80, i8 signext 88)
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %60, label %56

56:                                               ; preds = %44
  %57 = load i32, i32* %15, align 4
  %58 = call i32 @MKTAG(i8 signext 83, i8 signext 68, i8 signext 80, i8 signext 88)
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %56, %44
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  %64 = load i32, i32* %15, align 4
  %65 = call i32 @MKBETAG(i8 signext 83, i8 signext 68, i8 signext 80, i8 signext 88)
  %66 = icmp eq i32 %64, %65
  %67 = zext i1 %66 to i32
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  store i32 0, i32* %71, align 4
  br label %76

72:                                               ; preds = %56
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %17, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %17, align 4
  br label %40

76:                                               ; preds = %60, %40
  %77 = load i32, i32* %15, align 4
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 4
  br label %104

81:                                               ; preds = %33
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %103

86:                                               ; preds = %81
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %13, align 4
  %91 = call i32 @FFMIN(i32 %89, i32 %90)
  store i32 %91, i32* %17, align 4
  %92 = load i32, i32* %17, align 4
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = sub nsw i32 %95, %92
  store i32 %96, i32* %94, align 4
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %86
  br label %225

102:                                              ; preds = %86
  br label %103

103:                                              ; preds = %102, %81
  br label %104

104:                                              ; preds = %103, %76
  br label %105

105:                                              ; preds = %221, %104
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %105
  %112 = load i32, i32* %17, align 4
  %113 = load i32, i32* %13, align 4
  %114 = icmp slt i32 %112, %113
  br label %115

115:                                              ; preds = %111, %105
  %116 = phi i1 [ false, %105 ], [ %114, %111 ]
  br i1 %116, label %117, label %224

117:                                              ; preds = %115
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = shl i32 %121, 8
  %123 = load i32*, i32** %12, align 8
  %124 = load i32, i32* %17, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %122, %127
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 4
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  store i32 %128, i32* %131, align 4
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 4
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %138, 17
  br i1 %139, label %140, label %196

140:                                              ; preds = %117
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %140
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 4
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  br label %156

150:                                              ; preds = %140
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 4
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @av_bswap32(i32 %154)
  br label %156

156:                                              ; preds = %150, %145
  %157 = phi i32 [ %149, %145 ], [ %155, %150 ]
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 3
  store i32 %157, i32* %159, align 4
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = icmp sle i32 %162, 1664
  br i1 %163, label %164, label %168

164:                                              ; preds = %156
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 4
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 1
  store i32 0, i32* %167, align 4
  br label %225

168:                                              ; preds = %156
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %13, align 4
  %173 = load i32, i32* %17, align 4
  %174 = sub nsw i32 %172, %173
  %175 = add nsw i32 %174, 19
  %176 = icmp sgt i32 %171, %175
  br i1 %176, label %177, label %188

177:                                              ; preds = %168
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %13, align 4
  %182 = sub nsw i32 %180, %181
  %183 = load i32, i32* %17, align 4
  %184 = add nsw i32 %182, %183
  %185 = sub nsw i32 %184, 19
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 2
  store i32 %185, i32* %187, align 4
  br label %195

188:                                              ; preds = %168
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = sub nsw i32 %191, 19
  %193 = load i32, i32* %17, align 4
  %194 = add nsw i32 %193, %192
  store i32 %194, i32* %17, align 4
  br label %195

195:                                              ; preds = %188, %177
  br label %224

196:                                              ; preds = %117
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = icmp sgt i32 %199, 17
  br i1 %200, label %201, label %219

201:                                              ; preds = %196
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 4
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @MKBETAG(i8 signext 83, i8 signext 68, i8 signext 80, i8 signext 88)
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %215, label %208

208:                                              ; preds = %201
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 4
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @MKTAG(i8 signext 83, i8 signext 68, i8 signext 80, i8 signext 88)
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %215, label %218

215:                                              ; preds = %208, %201
  %216 = load i32, i32* %17, align 4
  %217 = sub nsw i32 %216, 3
  store i32 %217, i32* %16, align 4
  br label %224

218:                                              ; preds = %208
  br label %219

219:                                              ; preds = %218, %196
  br label %220

220:                                              ; preds = %219
  br label %221

221:                                              ; preds = %220
  %222 = load i32, i32* %17, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %17, align 4
  br label %105

224:                                              ; preds = %215, %195, %115
  br label %225

225:                                              ; preds = %224, %164, %101
  %226 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 4
  %228 = load i32, i32* %16, align 4
  %229 = call i64 @ff_combine_frame(%struct.TYPE_7__* %227, i32 %228, i32** %12, i32* %13)
  %230 = icmp slt i64 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %225
  %232 = load i32, i32* %13, align 4
  store i32 %232, i32* %7, align 4
  br label %242

233:                                              ; preds = %225
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 4
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 1
  store i32 0, i32* %236, align 4
  %237 = load i32*, i32** %12, align 8
  %238 = load i32**, i32*** %10, align 8
  store i32* %237, i32** %238, align 8
  %239 = load i32, i32* %13, align 4
  %240 = load i32*, i32** %11, align 8
  store i32 %239, i32* %240, align 4
  %241 = load i32, i32* %16, align 4
  store i32 %241, i32* %7, align 4
  br label %242

242:                                              ; preds = %233, %231
  %243 = load i32, i32* %7, align 4
  ret i32 %243
}

declare dso_local i32 @MKBETAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @av_bswap32(i32) #1

declare dso_local i64 @ff_combine_frame(%struct.TYPE_7__*, i32, i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
