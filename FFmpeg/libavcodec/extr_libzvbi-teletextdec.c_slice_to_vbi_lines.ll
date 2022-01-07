; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libzvbi-teletextdec.c_slice_to_vbi_lines.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libzvbi-teletextdec.c_slice_to_vbi_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32*, i32, i32 }

@MAX_SLICES = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@VBI_SLICED_TELETEXT_B = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%d bytes remained after slicing data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32)* @slice_to_vbi_lines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slice_to_vbi_lines(%struct.TYPE_6__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %222, %3
  %23 = load i32, i32* %7, align 4
  %24 = icmp sge i32 %23, 2
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @MAX_SLICES, align 4
  %28 = icmp slt i32 %26, %27
  br label %29

29:                                               ; preds = %25, %22
  %30 = phi i1 [ false, %22 ], [ %28, %25 ]
  br i1 %30, label %31, label %232

31:                                               ; preds = %29
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, 2
  %40 = load i32, i32* %7, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %31
  %43 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %43, i32* %4, align 4
  br label %242

44:                                               ; preds = %31
  %45 = load i32, i32* %9, align 4
  %46 = call i64 @ff_data_unit_id_is_teletext(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %222

48:                                               ; preds = %44
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 44
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %52, i32* %4, align 4
  br label %242

53:                                               ; preds = %48
  %54 = load i32*, i32** %6, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 31
  store i32 %57, i32* %11, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 32
  store i32 %61, i32* %12, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 3
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  store i32* %69, i32** %13, align 8
  %70 = load i32, i32* @VBI_SLICED_TELETEXT_B, align 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 3
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 2
  store i32 %70, i32* %77, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %53
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 0, i32 313
  %86 = add nsw i32 %81, %85
  br label %88

87:                                               ; preds = %53
  br label %88

88:                                               ; preds = %87, %80
  %89 = phi i32 [ %86, %80 ], [ 0, %87 ]
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 3
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  store i32 %89, i32* %96, align 8
  store i32 0, i32* %14, align 4
  br label %97

97:                                               ; preds = %112, %88
  %98 = load i32, i32* %14, align 4
  %99 = icmp slt i32 %98, 42
  br i1 %99, label %100, label %115

100:                                              ; preds = %97
  %101 = load i32*, i32** %6, align 8
  %102 = load i32, i32* %14, align 4
  %103 = add nsw i32 4, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %101, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @vbi_rev8(i32 %106)
  %108 = load i32*, i32** %13, align 8
  %109 = load i32, i32* %14, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32 %107, i32* %111, align 4
  br label %112

112:                                              ; preds = %100
  %113 = load i32, i32* %14, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %14, align 4
  br label %97

115:                                              ; preds = %97
  %116 = load i32*, i32** %13, align 8
  %117 = call i32 @vbi_unham16p(i32* %116)
  store i32 %117, i32* %15, align 4
  %118 = load i32, i32* %15, align 4
  %119 = icmp sge i32 %118, 0
  br i1 %119, label %120, label %218

120:                                              ; preds = %115
  %121 = load i32, i32* %15, align 4
  %122 = ashr i32 %121, 3
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %218

124:                                              ; preds = %120
  %125 = load i32*, i32** %13, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 2
  %127 = call i32 @vbi_unham16p(i32* %126)
  store i32 %127, i32* %16, align 4
  %128 = load i32*, i32** %13, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 6
  %130 = call i32 @vbi_unham16p(i32* %129)
  store i32 %130, i32* %17, align 4
  %131 = load i32*, i32** %13, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 8
  %133 = call i32 @vbi_unham16p(i32* %132)
  store i32 %133, i32* %18, align 4
  %134 = load i32, i32* %16, align 4
  %135 = icmp sge i32 %134, 0
  br i1 %135, label %136, label %217

136:                                              ; preds = %124
  %137 = load i32, i32* %17, align 4
  %138 = icmp sge i32 %137, 0
  br i1 %138, label %139, label %217

139:                                              ; preds = %136
  %140 = load i32, i32* %18, align 4
  %141 = icmp sge i32 %140, 0
  br i1 %141, label %142, label %217

142:                                              ; preds = %139
  %143 = load i32, i32* %15, align 4
  %144 = and i32 %143, 7
  %145 = shl i32 %144, 8
  %146 = load i32, i32* %16, align 4
  %147 = add nsw i32 %145, %146
  store i32 %147, i32* %19, align 4
  %148 = load i32, i32* %17, align 4
  %149 = and i32 %148, 64
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %159, label %151

151:                                              ; preds = %142
  %152 = load i32, i32* %17, align 4
  %153 = and i32 %152, 128
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %151
  %156 = load i32, i32* %18, align 4
  %157 = and i32 %156, 1
  %158 = icmp ne i32 %157, 0
  br label %159

159:                                              ; preds = %155, %151, %142
  %160 = phi i1 [ false, %151 ], [ false, %142 ], [ %158, %155 ]
  %161 = zext i1 %160 to i32
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %19, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  store i32 %161, i32* %167, align 4
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %19, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %208

176:                                              ; preds = %159
  %177 = load i32, i32* %19, align 4
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = icmp eq i32 %177, %180
  br i1 %181, label %182, label %208

182:                                              ; preds = %176
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @vbi_unham8(i32 %185)
  store i32 %186, i32* %20, align 4
  %187 = load i32, i32* %20, align 4
  %188 = icmp sge i32 %187, 0
  br i1 %188, label %189, label %207

189:                                              ; preds = %182
  %190 = load i32, i32* %20, align 4
  %191 = and i32 %190, 8
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %207

193:                                              ; preds = %189
  %194 = load i32*, i32** %13, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 5
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @vbi_unham8(i32 %196)
  store i32 %197, i32* %21, align 4
  %198 = load i32, i32* %21, align 4
  %199 = icmp sge i32 %198, 0
  br i1 %199, label %200, label %206

200:                                              ; preds = %193
  %201 = load i32, i32* %21, align 4
  %202 = or i32 %201, 8
  %203 = call i32 @vbi_ham8(i32 %202)
  %204 = load i32*, i32** %13, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 5
  store i32 %203, i32* %205, align 4
  br label %206

206:                                              ; preds = %200, %193
  br label %207

207:                                              ; preds = %206, %189, %182
  br label %208

208:                                              ; preds = %207, %176, %159
  %209 = load i32, i32* %19, align 4
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 1
  store i32 %209, i32* %211, align 8
  %212 = load i32*, i32** %13, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 5
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 2
  store i32 %214, i32* %216, align 4
  br label %217

217:                                              ; preds = %208, %139, %136, %124
  br label %218

218:                                              ; preds = %217, %120, %115
  %219 = load i32, i32* %8, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %8, align 4
  br label %221

221:                                              ; preds = %218
  br label %222

222:                                              ; preds = %221, %44
  %223 = load i32, i32* %10, align 4
  %224 = add nsw i32 %223, 2
  %225 = load i32, i32* %7, align 4
  %226 = sub nsw i32 %225, %224
  store i32 %226, i32* %7, align 4
  %227 = load i32, i32* %10, align 4
  %228 = add nsw i32 %227, 2
  %229 = load i32*, i32** %6, align 8
  %230 = sext i32 %228 to i64
  %231 = getelementptr inbounds i32, i32* %229, i64 %230
  store i32* %231, i32** %6, align 8
  br label %22

232:                                              ; preds = %29
  %233 = load i32, i32* %7, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %240

235:                                              ; preds = %232
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %237 = load i32, i32* @AV_LOG_WARNING, align 4
  %238 = load i32, i32* %7, align 4
  %239 = call i32 @av_log(%struct.TYPE_6__* %236, i32 %237, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %238)
  br label %240

240:                                              ; preds = %235, %232
  %241 = load i32, i32* %8, align 4
  store i32 %241, i32* %4, align 4
  br label %242

242:                                              ; preds = %240, %51, %42
  %243 = load i32, i32* %4, align 4
  ret i32 %243
}

declare dso_local i64 @ff_data_unit_id_is_teletext(i32) #1

declare dso_local i32 @vbi_rev8(i32) #1

declare dso_local i32 @vbi_unham16p(i32*) #1

declare dso_local i32 @vbi_unham8(i32) #1

declare dso_local i32 @vbi_ham8(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_6__*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
