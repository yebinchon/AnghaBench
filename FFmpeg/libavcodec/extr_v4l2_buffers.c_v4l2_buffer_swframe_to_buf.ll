; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_v4l2_buffers.c_v4l2_buffer_swframe_to_buf.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_v4l2_buffers.c_v4l2_buffer_swframe_to_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32*, %struct.TYPE_14__**, i32*, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.v4l2_format }
%struct.v4l2_format = type { %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_20__*)* @v4l2_buffer_swframe_to_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l2_buffer_swframe_to_buf(%struct.TYPE_22__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.v4l2_format, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = bitcast %struct.v4l2_format* %8 to i8*
  %22 = bitcast %struct.v4l2_format* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 20, i1 false)
  %23 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %8, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @V4L2_TYPE_IS_MULTIPLANAR(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %8, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  br label %37

32:                                               ; preds = %2
  %33 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %8, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  br label %37

37:                                               ; preds = %32, %27
  %38 = phi i32 [ %31, %27 ], [ %36, %32 ]
  store i32 %38, i32* %9, align 4
  %39 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %8, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @V4L2_TYPE_IS_MULTIPLANAR(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %8, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  br label %53

48:                                               ; preds = %37
  %49 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %8, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  br label %53

53:                                               ; preds = %48, %43
  %54 = phi i32 [ %47, %43 ], [ %52, %48 ]
  store i32 %54, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %55 = load i32, i32* %9, align 4
  switch i32 %55, label %57 [
    i32 133, label %56
    i32 130, label %56
    i32 132, label %56
    i32 129, label %56
    i32 131, label %56
    i32 128, label %56
    i32 139, label %56
    i32 135, label %56
    i32 137, label %56
    i32 138, label %56
    i32 136, label %56
    i32 134, label %56
  ]

56:                                               ; preds = %53, %53, %53, %53, %53, %53, %53, %53, %53, %53, %53, %53
  store i32 1, i32* %11, align 4
  br label %57

57:                                               ; preds = %56, %53
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %144, label %60

60:                                               ; preds = %57
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call %struct.TYPE_21__* @av_pix_fmt_desc_get(i32 %63)
  store %struct.TYPE_21__* %64, %struct.TYPE_21__** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %83, %60
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %86

71:                                               ; preds = %65
  %72 = load i32, i32* %13, align 4
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, 1
  %82 = call i32 @FFMAX(i32 %72, i64 %81)
  store i32 %82, i32* %13, align 4
  br label %83

83:                                               ; preds = %71
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %6, align 4
  br label %65

86:                                               ; preds = %65
  store i32 0, i32* %6, align 4
  br label %87

87:                                               ; preds = %140, %86
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %143

91:                                               ; preds = %87
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %16, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %98, label %95

95:                                               ; preds = %91
  %96 = load i32, i32* %6, align 4
  %97 = icmp eq i32 %96, 2
  br i1 %97, label %98, label %104

98:                                               ; preds = %95, %91
  %99 = load i32, i32* %16, align 4
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @AV_CEIL_RSHIFT(i32 %99, i32 %102)
  store i32 %103, i32* %16, align 4
  br label %104

104:                                              ; preds = %98, %95
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %16, align 4
  %113 = mul nsw i32 %111, %112
  store i32 %113, i32* %15, align 4
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* %14, align 4
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %125, align 8
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %126, i64 %128
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %129, align 8
  %131 = call i32 @v4l2_bufref_to_buf(%struct.TYPE_20__* %114, i32 0, i32 %121, i32 %122, i32 %123, %struct.TYPE_14__* %130)
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %104
  %135 = load i32, i32* %7, align 4
  store i32 %135, i32* %3, align 4
  br label %189

136:                                              ; preds = %104
  %137 = load i32, i32* %15, align 4
  %138 = load i32, i32* %14, align 4
  %139 = add nsw i32 %138, %137
  store i32 %139, i32* %14, align 4
  br label %140

140:                                              ; preds = %136
  %141 = load i32, i32* %6, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %6, align 4
  br label %87

143:                                              ; preds = %87
  store i32 0, i32* %3, align 4
  br label %189

144:                                              ; preds = %57
  store i32 0, i32* %6, align 4
  br label %145

145:                                              ; preds = %185, %144
  %146 = load i32, i32* %6, align 4
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp slt i32 %146, %149
  br i1 %150, label %151, label %188

151:                                              ; preds = %145
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %153 = load i32, i32* %6, align 4
  %154 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %155, align 8
  %157 = load i32, i32* %6, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %156, i64 %158
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %164, align 8
  %166 = load i32, i32* %6, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %165, i64 %167
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %173, align 8
  %175 = load i32, i32* %6, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %174, i64 %176
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %177, align 8
  %179 = call i32 @v4l2_bufref_to_buf(%struct.TYPE_20__* %152, i32 %153, i32 %162, i32 %171, i32 0, %struct.TYPE_14__* %178)
  store i32 %179, i32* %7, align 4
  %180 = load i32, i32* %7, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %151
  %183 = load i32, i32* %7, align 4
  store i32 %183, i32* %3, align 4
  br label %189

184:                                              ; preds = %151
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %6, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %6, align 4
  br label %145

188:                                              ; preds = %145
  store i32 0, i32* %3, align 4
  br label %189

189:                                              ; preds = %188, %182, %143, %134
  %190 = load i32, i32* %3, align 4
  ret i32 %190
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @V4L2_TYPE_IS_MULTIPLANAR(i32) #2

declare dso_local %struct.TYPE_21__* @av_pix_fmt_desc_get(i32) #2

declare dso_local i32 @FFMAX(i32, i64) #2

declare dso_local i32 @AV_CEIL_RSHIFT(i32, i32) #2

declare dso_local i32 @v4l2_bufref_to_buf(%struct.TYPE_20__*, i32, i32, i32, i32, %struct.TYPE_14__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
