; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_pixdesc.c_ff_check_pixfmt_descriptors.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_pixdesc.c_ff_check_pixfmt_descriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__*, i64* }
%struct.TYPE_9__ = type { i32 }

@av_pix_fmt_descriptors = common dso_local global %struct.TYPE_10__* null, align 8
@AV_PIX_FMT_FLAG_BITSTREAM = common dso_local global i32 0, align 4
@AV_PIX_FMT_FLAG_BAYER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_check_pixfmt_descriptors() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca [4 x [17 x %struct.TYPE_9__]], align 16
  %5 = alloca [4 x %struct.TYPE_9__*], align 16
  %6 = alloca [4 x i32], align 16
  %7 = alloca [2 x i32], align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  store i32 0, i32* %1, align 4
  br label %9

9:                                                ; preds = %221, %0
  %10 = load i32, i32* %1, align 4
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** @av_pix_fmt_descriptors, align 8
  %12 = call i32 @FF_ARRAY_ELEMS(%struct.TYPE_10__* %11)
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %224

14:                                               ; preds = %9
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** @av_pix_fmt_descriptors, align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i64 %17
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %3, align 8
  %19 = bitcast [4 x [17 x %struct.TYPE_9__]]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 272, i1 false)
  %20 = getelementptr inbounds [4 x %struct.TYPE_9__*], [4 x %struct.TYPE_9__*]* %5, i64 0, i64 0
  %21 = getelementptr inbounds [4 x [17 x %struct.TYPE_9__]], [4 x [17 x %struct.TYPE_9__]]* %4, i64 0, i64 0
  %22 = getelementptr inbounds [17 x %struct.TYPE_9__], [17 x %struct.TYPE_9__]* %21, i64 0, i64 0
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %20, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %20, i64 1
  %24 = getelementptr inbounds [4 x [17 x %struct.TYPE_9__]], [4 x [17 x %struct.TYPE_9__]]* %4, i64 0, i64 1
  %25 = getelementptr inbounds [17 x %struct.TYPE_9__], [17 x %struct.TYPE_9__]* %24, i64 0, i64 0
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %23, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %23, i64 1
  %27 = getelementptr inbounds [4 x [17 x %struct.TYPE_9__]], [4 x [17 x %struct.TYPE_9__]]* %4, i64 0, i64 2
  %28 = getelementptr inbounds [17 x %struct.TYPE_9__], [17 x %struct.TYPE_9__]* %27, i64 0, i64 0
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %26, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %26, i64 1
  %30 = getelementptr inbounds [4 x [17 x %struct.TYPE_9__]], [4 x [17 x %struct.TYPE_9__]]* %4, i64 0, i64 3
  %31 = getelementptr inbounds [17 x %struct.TYPE_9__], [17 x %struct.TYPE_9__]* %30, i64 0, i64 0
  store %struct.TYPE_9__* %31, %struct.TYPE_9__** %29, align 8
  %32 = bitcast [4 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %32, i8 0, i64 16, i1 false)
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 10
  %35 = load i64*, i64** %34, align 8
  %36 = icmp ne i64* %35, null
  br i1 %36, label %58, label %37

37:                                               ; preds = %14
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %58, label %42

42:                                               ; preds = %37
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %42
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %47
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  br label %221

58:                                               ; preds = %52, %47, %42, %37, %14
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp sle i32 %61, 3
  %63 = zext i1 %62 to i32
  %64 = call i32 @av_assert0(i32 %63)
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = icmp sle i32 %67, 3
  %69 = zext i1 %68 to i32
  %70 = call i32 @av_assert0(i32 %69)
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp sle i32 %73, 4
  %75 = zext i1 %74 to i32
  %76 = call i32 @av_assert0(i32 %75)
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 10
  %79 = load i64*, i64** %78, align 8
  %80 = icmp ne i64* %79, null
  br i1 %80, label %81, label %88

81:                                               ; preds = %58
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 10
  %84 = load i64*, i64** %83, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br label %88

88:                                               ; preds = %81, %58
  %89 = phi i1 [ false, %58 ], [ %87, %81 ]
  %90 = zext i1 %89 to i32
  %91 = call i32 @av_assert0(i32 %90)
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 10
  %94 = load i64*, i64** %93, align 8
  %95 = call i32 @av_get_pix_fmt(i64* %94)
  %96 = load i32, i32* %1, align 4
  %97 = icmp eq i32 %95, %96
  %98 = zext i1 %97 to i32
  %99 = call i32 @av_assert2(i32 %98)
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %217, %88
  %101 = load i32, i32* %2, align 4
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 9
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = call i32 @FF_ARRAY_ELEMS(%struct.TYPE_10__* %104)
  %106 = icmp slt i32 %101, %105
  br i1 %106, label %107, label %220

107:                                              ; preds = %100
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 9
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = load i32, i32* %2, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i64 %112
  store %struct.TYPE_10__* %113, %struct.TYPE_10__** %8, align 8
  %114 = load i32, i32* %2, align 4
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp sge i32 %114, %117
  br i1 %118, label %119, label %149

119:                                              ; preds = %107
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 8
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %145, label %124

124:                                              ; preds = %119
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %145, label %129

129:                                              ; preds = %124
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 7
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %145, label %134

134:                                              ; preds = %129
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 6
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %145, label %139

139:                                              ; preds = %134
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  %144 = xor i1 %143, true
  br label %145

145:                                              ; preds = %139, %134, %129, %124, %119
  %146 = phi i1 [ false, %134 ], [ false, %129 ], [ false, %124 ], [ false, %119 ], [ %144, %139 ]
  %147 = zext i1 %146 to i32
  %148 = call i32 @av_assert0(i32 %147)
  br label %217

149:                                              ; preds = %107
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @AV_PIX_FMT_FLAG_BITSTREAM, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %166

156:                                              ; preds = %149
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 4
  %163 = icmp sge i32 %159, %162
  %164 = zext i1 %163 to i32
  %165 = call i32 @av_assert0(i32 %164)
  br label %177

166:                                              ; preds = %149
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 8
  %170 = mul nsw i32 8, %169
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 4
  %174 = icmp sge i32 %170, %173
  %175 = zext i1 %174 to i32
  %176 = call i32 @av_assert0(i32 %175)
  br label %177

177:                                              ; preds = %166, %156
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @AV_PIX_FMT_FLAG_BAYER, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %177
  br label %217

185:                                              ; preds = %177
  %186 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %187 = getelementptr inbounds [4 x %struct.TYPE_9__*], [4 x %struct.TYPE_9__*]* %5, i64 0, i64 0
  %188 = bitcast %struct.TYPE_9__** %187 to i8*
  %189 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %191 = load i32, i32* %2, align 4
  %192 = call i32 @av_read_image_line(i32* %186, i8* %188, i32* %189, %struct.TYPE_10__* %190, i32 0, i32 0, i32 %191, i32 2, i32 0)
  %193 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %194 = load i32, i32* %193, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %185
  %197 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %198 = load i32, i32* %197, align 4
  %199 = icmp eq i32 %198, 0
  br label %200

200:                                              ; preds = %196, %185
  %201 = phi i1 [ false, %185 ], [ %199, %196 ]
  %202 = zext i1 %201 to i32
  %203 = call i32 @av_assert0(i32 %202)
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 5
  %206 = load i32, i32* %205, align 4
  %207 = shl i32 1, %206
  %208 = sub nsw i32 %207, 1
  %209 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %208, i32* %209, align 4
  %210 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %208, i32* %210, align 4
  %211 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %212 = getelementptr inbounds [4 x %struct.TYPE_9__*], [4 x %struct.TYPE_9__*]* %5, i64 0, i64 0
  %213 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %215 = load i32, i32* %2, align 4
  %216 = call i32 @av_write_image_line(i32* %211, %struct.TYPE_9__** %212, i32* %213, %struct.TYPE_10__* %214, i32 0, i32 0, i32 %215, i32 2)
  br label %217

217:                                              ; preds = %200, %184, %145
  %218 = load i32, i32* %2, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %2, align 4
  br label %100

220:                                              ; preds = %100
  br label %221

221:                                              ; preds = %220, %57
  %222 = load i32, i32* %1, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %1, align 4
  br label %9

224:                                              ; preds = %9
  ret void
}

declare dso_local i32 @FF_ARRAY_ELEMS(%struct.TYPE_10__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @av_assert2(i32) #1

declare dso_local i32 @av_get_pix_fmt(i64*) #1

declare dso_local i32 @av_read_image_line(i32*, i8*, i32*, %struct.TYPE_10__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @av_write_image_line(i32*, %struct.TYPE_9__**, i32*, %struct.TYPE_10__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
