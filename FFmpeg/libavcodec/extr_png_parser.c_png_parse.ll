; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_png_parser.c_png_parse.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_png_parser.c_png_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }

@END_NOT_FOUND = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_NONE = common dso_local global i32 0, align 4
@PNGSIG = common dso_local global i32 0, align 4
@MNGSIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32**, i32*, i32*, i32)* @png_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @png_parse(%struct.TYPE_6__* %0, i32* %1, i32** %2, i32* %3, i32* %4, i32 %5) #0 {
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
  %21 = load i32, i32* @END_NOT_FOUND, align 4
  store i32 %21, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %22 = load i32, i32* @AV_PICTURE_TYPE_NONE, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32*, i32** %11, align 8
  store i32 0, i32* %25, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %71, label %31

31:                                               ; preds = %6
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %17, align 4
  br label %36

36:                                               ; preds = %63, %31
  %37 = load i32, i32* %16, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %66

40:                                               ; preds = %36
  %41 = load i32, i32* %17, align 4
  %42 = shl i32 %41, 8
  %43 = load i32*, i32** %12, align 8
  %44 = load i32, i32* %16, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %42, %47
  store i32 %48, i32* %17, align 4
  %49 = load i32, i32* %17, align 4
  %50 = load i32, i32* @PNGSIG, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %40
  %53 = load i32, i32* %17, align 4
  %54 = load i32, i32* @MNGSIG, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %52, %40
  %57 = load i32, i32* %16, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %16, align 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  store i32 1, i32* %61, align 4
  br label %66

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %16, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %16, align 4
  br label %36

66:                                               ; preds = %56, %36
  %67 = load i32, i32* %17, align 4
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  store i32 %67, i32* %70, align 4
  br label %101

71:                                               ; preds = %6
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %100

76:                                               ; preds = %71
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @FFMIN(i32 %79, i32 %80)
  store i32 %81, i32* %16, align 4
  %82 = load i32, i32* %16, align 4
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %85, %82
  store i32 %86, i32* %84, align 4
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %76
  br label %227

92:                                               ; preds = %76
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i32, i32* %16, align 4
  store i32 %98, i32* %15, align 4
  br label %227

99:                                               ; preds = %92
  br label %100

100:                                              ; preds = %99, %71
  br label %101

101:                                              ; preds = %100, %66
  br label %102

102:                                              ; preds = %223, %101
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %102
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* %13, align 4
  %111 = icmp slt i32 %109, %110
  br label %112

112:                                              ; preds = %108, %102
  %113 = phi i1 [ false, %102 ], [ %111, %108 ]
  br i1 %113, label %114, label %226

114:                                              ; preds = %112
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = shl i32 %118, 8
  %120 = load i32*, i32** %12, align 8
  %121 = load i32, i32* %16, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %119, %124
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 2
  store i32 %125, i32* %128, align 4
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = icmp eq i32 %131, 3
  br i1 %132, label %133, label %155

133:                                              ; preds = %114
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 4
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = icmp sgt i32 %142, 2147483647
  br i1 %143, label %144, label %150

144:                                              ; preds = %133
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  store i32 0, i32* %147, align 4
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 1
  store i32 0, i32* %149, align 4
  br label %227

150:                                              ; preds = %133
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, 4
  store i32 %154, i32* %152, align 4
  br label %218

155:                                              ; preds = %114
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %158, 7
  br i1 %159, label %160, label %217

160:                                              ; preds = %155
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %13, align 4
  %165 = load i32, i32* %16, align 4
  %166 = sub nsw i32 %164, %165
  %167 = icmp sge i32 %163, %166
  br i1 %167, label %168, label %179

168:                                              ; preds = %160
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %13, align 4
  %173 = sub nsw i32 %171, %172
  %174 = load i32, i32* %16, align 4
  %175 = add nsw i32 %173, %174
  %176 = add nsw i32 %175, 1
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 4
  br label %179

179:                                              ; preds = %168, %160
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @MKBETAG(i8 signext 73, i8 signext 69, i8 signext 78, i8 signext 68)
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %202

186:                                              ; preds = %179
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %186
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 1
  store i32 -1, i32* %193, align 4
  br label %201

194:                                              ; preds = %186
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* %16, align 4
  %199 = add nsw i32 %197, %198
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %15, align 4
  br label %201

201:                                              ; preds = %194, %191
  br label %226

202:                                              ; preds = %179
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 1
  store i32 0, i32* %204, align 4
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %202
  br label %226

210:                                              ; preds = %202
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* %16, align 4
  %215 = add nsw i32 %214, %213
  store i32 %215, i32* %16, align 4
  br label %216

216:                                              ; preds = %210
  br label %223

217:                                              ; preds = %155
  br label %218

218:                                              ; preds = %217, %150
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %220, align 4
  br label %223

223:                                              ; preds = %218, %216
  %224 = load i32, i32* %16, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %16, align 4
  br label %102

226:                                              ; preds = %209, %201, %112
  br label %227

227:                                              ; preds = %226, %144, %97, %91
  %228 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 3
  %230 = load i32, i32* %15, align 4
  %231 = call i64 @ff_combine_frame(%struct.TYPE_7__* %229, i32 %230, i32** %12, i32* %13)
  %232 = icmp slt i64 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %227
  %234 = load i32, i32* %13, align 4
  store i32 %234, i32* %7, align 4
  br label %246

235:                                              ; preds = %227
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 3
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 0
  store i32 0, i32* %238, align 4
  %239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 1
  store i32 0, i32* %240, align 4
  %241 = load i32*, i32** %12, align 8
  %242 = load i32**, i32*** %10, align 8
  store i32* %241, i32** %242, align 8
  %243 = load i32, i32* %13, align 4
  %244 = load i32*, i32** %11, align 8
  store i32 %243, i32* %244, align 4
  %245 = load i32, i32* %15, align 4
  store i32 %245, i32* %7, align 4
  br label %246

246:                                              ; preds = %235, %233
  %247 = load i32, i32* %7, align 4
  ret i32 %247
}

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @MKBETAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i64 @ff_combine_frame(%struct.TYPE_7__*, i32, i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
