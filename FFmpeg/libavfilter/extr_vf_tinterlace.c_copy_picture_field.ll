; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_tinterlace.c_copy_picture_field.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_tinterlace.c_copy_picture_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32 (i32*, i32, i32*, i32, i32, i32)* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }

@FIELD_UPPER_AND_LOWER = common dso_local global i32 0, align 4
@FIELD_UPPER = common dso_local global i32 0, align 4
@FIELD_LOWER = common dso_local global i32 0, align 4
@TINTERLACE_FLAG_VLPF = common dso_local global i32 0, align 4
@TINTERLACE_FLAG_CVLPF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32**, i32*, i32**, i32*, i32, i32, i32, i32, i32, i32, i32)* @copy_picture_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_picture_field(%struct.TYPE_9__* %0, i32** %1, i32* %2, i32** %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32**, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_10__*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %13, align 8
  store i32** %1, i32*** %14, align 8
  store i32* %2, i32** %15, align 8
  store i32** %3, i32*** %16, align 8
  store i32* %4, i32** %17, align 8
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store i32 %11, i32* %24, align 4
  %41 = load i32, i32* %18, align 4
  %42 = call %struct.TYPE_10__* @av_pix_fmt_desc_get(i32 %41)
  store %struct.TYPE_10__* %42, %struct.TYPE_10__** %25, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %26, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %28, align 4
  %49 = load i32, i32* %21, align 4
  %50 = load i32, i32* @FIELD_UPPER_AND_LOWER, align 4
  %51 = icmp eq i32 %49, %50
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 1, i32 2
  store i32 %53, i32* %29, align 4
  store i32 0, i32* %27, align 4
  br label %54

54:                                               ; preds = %249, %12
  %55 = load i32, i32* %27, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %252

60:                                               ; preds = %54
  %61 = load i32, i32* %27, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %27, align 4
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %66, label %70

66:                                               ; preds = %63, %60
  %67 = load i32, i32* %20, align 4
  %68 = load i32, i32* %28, align 4
  %69 = call i32 @AV_CEIL_RSHIFT(i32 %67, i32 %68)
  br label %72

70:                                               ; preds = %63
  %71 = load i32, i32* %20, align 4
  br label %72

72:                                               ; preds = %70, %66
  %73 = phi i32 [ %69, %66 ], [ %71, %70 ]
  store i32 %73, i32* %31, align 4
  %74 = load i32, i32* %27, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* %27, align 4
  %78 = icmp eq i32 %77, 2
  br i1 %78, label %79, label %83

79:                                               ; preds = %76, %72
  %80 = load i32, i32* %19, align 4
  %81 = load i32, i32* %26, align 4
  %82 = call i32 @AV_CEIL_RSHIFT(i32 %80, i32 %81)
  br label %85

83:                                               ; preds = %76
  %84 = load i32, i32* %19, align 4
  br label %85

85:                                               ; preds = %83, %79
  %86 = phi i32 [ %82, %79 ], [ %84, %83 ]
  store i32 %86, i32* %32, align 4
  %87 = load i32**, i32*** %14, align 8
  %88 = load i32, i32* %27, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32*, i32** %87, i64 %89
  %91 = load i32*, i32** %90, align 8
  store i32* %91, i32** %33, align 8
  %92 = load i32**, i32*** %16, align 8
  %93 = load i32, i32* %27, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32*, i32** %92, i64 %94
  %96 = load i32*, i32** %95, align 8
  store i32* %96, i32** %34, align 8
  %97 = load i32*, i32** %17, align 8
  %98 = load i32, i32* %27, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %29, align 4
  %103 = mul nsw i32 %101, %102
  store i32 %103, i32* %35, align 4
  %104 = load i32*, i32** %15, align 8
  %105 = load i32, i32* %27, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %22, align 4
  %110 = icmp ne i32 %109, 0
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i32 2, i32 1
  %113 = mul nsw i32 %108, %112
  store i32 %113, i32* %36, align 4
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = load i32, i32* %27, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = shl i32 1, %123
  %125 = sub nsw i32 %124, 1
  store i32 %125, i32* %37, align 4
  %126 = load i32, i32* %31, align 4
  %127 = load i32, i32* %21, align 4
  %128 = load i32, i32* @FIELD_UPPER, align 4
  %129 = icmp eq i32 %127, %128
  %130 = zext i1 %129 to i32
  %131 = add nsw i32 %126, %130
  %132 = load i32, i32* %29, align 4
  %133 = sdiv i32 %131, %132
  store i32 %133, i32* %31, align 4
  %134 = load i32, i32* %21, align 4
  %135 = load i32, i32* @FIELD_LOWER, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %146

137:                                              ; preds = %85
  %138 = load i32*, i32** %17, align 8
  %139 = load i32, i32* %27, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load i32*, i32** %34, align 8
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  store i32* %145, i32** %34, align 8
  br label %146

146:                                              ; preds = %137, %85
  %147 = load i32, i32* %22, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %162

149:                                              ; preds = %146
  %150 = load i32, i32* %23, align 4
  %151 = load i32, i32* @FIELD_LOWER, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %162

153:                                              ; preds = %149
  %154 = load i32*, i32** %15, align 8
  %155 = load i32, i32* %27, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load i32*, i32** %33, align 8
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds i32, i32* %159, i64 %160
  store i32* %161, i32** %33, align 8
  br label %162

162:                                              ; preds = %153, %149, %146
  %163 = load i32, i32* %24, align 4
  %164 = load i32, i32* @TINTERLACE_FLAG_VLPF, align 4
  %165 = load i32, i32* @TINTERLACE_FLAG_CVLPF, align 4
  %166 = or i32 %164, %165
  %167 = and i32 %163, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %225

169:                                              ; preds = %162
  %170 = load i32, i32* %24, align 4
  %171 = load i32, i32* @TINTERLACE_FLAG_CVLPF, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  %174 = xor i1 %173, true
  %175 = xor i1 %174, true
  %176 = zext i1 %175 to i32
  store i32 %176, i32* %38, align 4
  %177 = load i32, i32* %31, align 4
  store i32 %177, i32* %30, align 4
  br label %178

178:                                              ; preds = %221, %169
  %179 = load i32, i32* %30, align 4
  %180 = icmp sgt i32 %179, 0
  br i1 %180, label %181, label %224

181:                                              ; preds = %178
  %182 = load i32*, i32** %17, align 8
  %183 = load i32, i32* %27, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load i32, i32* %185, align 4
  store i32 %186, i32* %39, align 4
  %187 = load i32, i32* %39, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %40, align 4
  %189 = load i32, i32* %30, align 4
  %190 = load i32, i32* %31, align 4
  %191 = load i32, i32* %38, align 4
  %192 = sub nsw i32 %190, %191
  %193 = icmp sge i32 %189, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %181
  store i32 0, i32* %40, align 4
  br label %202

195:                                              ; preds = %181
  %196 = load i32, i32* %30, align 4
  %197 = load i32, i32* %38, align 4
  %198 = add nsw i32 1, %197
  %199 = icmp sle i32 %196, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %195
  store i32 0, i32* %39, align 4
  br label %201

201:                                              ; preds = %200, %195
  br label %202

202:                                              ; preds = %201, %194
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 1
  %205 = load i32 (i32*, i32, i32*, i32, i32, i32)*, i32 (i32*, i32, i32*, i32, i32, i32)** %204, align 8
  %206 = load i32*, i32** %33, align 8
  %207 = load i32, i32* %32, align 4
  %208 = load i32*, i32** %34, align 8
  %209 = load i32, i32* %40, align 4
  %210 = load i32, i32* %39, align 4
  %211 = load i32, i32* %37, align 4
  %212 = call i32 %205(i32* %206, i32 %207, i32* %208, i32 %209, i32 %210, i32 %211)
  %213 = load i32, i32* %36, align 4
  %214 = load i32*, i32** %33, align 8
  %215 = sext i32 %213 to i64
  %216 = getelementptr inbounds i32, i32* %214, i64 %215
  store i32* %216, i32** %33, align 8
  %217 = load i32, i32* %35, align 4
  %218 = load i32*, i32** %34, align 8
  %219 = sext i32 %217 to i64
  %220 = getelementptr inbounds i32, i32* %218, i64 %219
  store i32* %220, i32** %34, align 8
  br label %221

221:                                              ; preds = %202
  %222 = load i32, i32* %30, align 4
  %223 = add nsw i32 %222, -1
  store i32 %223, i32* %30, align 4
  br label %178

224:                                              ; preds = %178
  br label %248

225:                                              ; preds = %162
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 0
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %229, align 8
  %231 = load i32, i32* %27, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = icmp sgt i32 %235, 8
  br i1 %236, label %237, label %240

237:                                              ; preds = %225
  %238 = load i32, i32* %32, align 4
  %239 = mul nsw i32 %238, 2
  store i32 %239, i32* %32, align 4
  br label %240

240:                                              ; preds = %237, %225
  %241 = load i32*, i32** %33, align 8
  %242 = load i32, i32* %36, align 4
  %243 = load i32*, i32** %34, align 8
  %244 = load i32, i32* %35, align 4
  %245 = load i32, i32* %32, align 4
  %246 = load i32, i32* %31, align 4
  %247 = call i32 @av_image_copy_plane(i32* %241, i32 %242, i32* %243, i32 %244, i32 %245, i32 %246)
  br label %248

248:                                              ; preds = %240, %224
  br label %249

249:                                              ; preds = %248
  %250 = load i32, i32* %27, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %27, align 4
  br label %54

252:                                              ; preds = %54
  ret void
}

declare dso_local %struct.TYPE_10__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @AV_CEIL_RSHIFT(i32, i32) #1

declare dso_local i32 @av_image_copy_plane(i32*, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
