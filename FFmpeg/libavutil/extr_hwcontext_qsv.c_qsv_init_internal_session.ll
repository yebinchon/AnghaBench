; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext_qsv.c_qsv_init_internal_session.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext_qsv.c_qsv_init_internal_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_23__*, %struct.TYPE_19__*, %struct.TYPE_21__* }
%struct.TYPE_23__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_28__ = type { i32, i32, i32, i32, i32, %struct.TYPE_20__* }
%struct.TYPE_27__ = type { i32, %struct.TYPE_26__, i32, i32, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_25__, %struct.TYPE_25__ }

@MFX_MEMTYPE_OPAQUE_FRAME = common dso_local global i32 0, align 4
@frame_free = common dso_local global i32 0, align 4
@frame_get_hdl = common dso_local global i32 0, align 4
@frame_unlock = common dso_local global i32 0, align 4
@frame_lock = common dso_local global i32 0, align 4
@frame_alloc = common dso_local global i32 0, align 4
@MFX_ERR_NONE = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Error initializing an internal session\0A\00", align 1
@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@MFX_IOPATTERN_OUT_OPAQUE_MEMORY = common dso_local global i32 0, align 4
@MFX_IOPATTERN_IN_OPAQUE_MEMORY = common dso_local global i32 0, align 4
@MFX_IOPATTERN_OUT_VIDEO_MEMORY = common dso_local global i32 0, align 4
@MFX_IOPATTERN_IN_VIDEO_MEMORY = common dso_local global i32 0, align 4
@MFX_IOPATTERN_IN_SYSTEM_MEMORY = common dso_local global i32 0, align 4
@MFX_IOPATTERN_OUT_SYSTEM_MEMORY = common dso_local global i32 0, align 4
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [85 x i8] c"Error opening the internal VPP session.Surface upload/download will not be possible\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, i32**, i32)* @qsv_init_internal_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qsv_init_internal_session(%struct.TYPE_20__* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_29__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_28__, align 8
  %13 = alloca %struct.TYPE_27__, align 4
  %14 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  store %struct.TYPE_29__* %19, %struct.TYPE_29__** %8, align 8
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  store %struct.TYPE_19__* %22, %struct.TYPE_19__** %9, align 8
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %28, align 8
  store %struct.TYPE_18__* %29, %struct.TYPE_18__** %10, align 8
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @MFX_MEMTYPE_OPAQUE_FRAME, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %11, align 4
  %39 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %12, i32 0, i32 0
  %40 = load i32, i32* @frame_free, align 4
  store i32 %40, i32* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %12, i32 0, i32 1
  %42 = load i32, i32* @frame_get_hdl, align 4
  store i32 %42, i32* %41, align 4
  %43 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %12, i32 0, i32 2
  %44 = load i32, i32* @frame_unlock, align 4
  store i32 %44, i32* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %12, i32 0, i32 3
  %46 = load i32, i32* @frame_lock, align 4
  store i32 %46, i32* %45, align 4
  %47 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %12, i32 0, i32 4
  %48 = load i32, i32* @frame_alloc, align 4
  store i32 %48, i32* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %12, i32 0, i32 5
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_20__* %50, %struct.TYPE_20__** %49, align 8
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 2
  %56 = load i32**, i32*** %6, align 8
  %57 = call i64 @MFXInit(i32 %53, i32* %55, i32** %56)
  store i64 %57, i64* %14, align 8
  %58 = load i64, i64* %14, align 8
  %59 = load i64, i64* @MFX_ERR_NONE, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %3
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %63 = load i32, i32* @AV_LOG_ERROR, align 4
  %64 = call i32 @av_log(%struct.TYPE_20__* %62, i32 %63, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %65, i32* %4, align 4
  br label %182

66:                                               ; preds = %3
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %87

71:                                               ; preds = %66
  %72 = load i32**, i32*** %6, align 8
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i64 @MFXVideoCORE_SetHandle(i32* %73, i32 %76, i64 %79)
  store i64 %80, i64* %14, align 8
  %81 = load i64, i64* %14, align 8
  %82 = load i64, i64* @MFX_ERR_NONE, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %71
  %85 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %85, i32* %4, align 4
  br label %182

86:                                               ; preds = %71
  br label %87

87:                                               ; preds = %86, %66
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %100, label %90

90:                                               ; preds = %87
  %91 = load i32**, i32*** %6, align 8
  %92 = load i32*, i32** %91, align 8
  %93 = call i64 @MFXVideoCORE_SetFrameAllocator(i32* %92, %struct.TYPE_28__* %12)
  store i64 %93, i64* %14, align 8
  %94 = load i64, i64* %14, align 8
  %95 = load i64, i64* @MFX_ERR_NONE, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %98, i32* %4, align 4
  br label %182

99:                                               ; preds = %90
  br label %100

100:                                              ; preds = %99, %87
  %101 = call i32 @memset(%struct.TYPE_27__* %13, i32 0, i32 32)
  %102 = load i32, i32* %11, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %123

104:                                              ; preds = %100
  %105 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 4
  store i32 %107, i32* %108, align 4
  %109 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @FF_ARRAY_ELEMS(i32 %111)
  %113 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 3
  store i32 %112, i32* %113, align 4
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %104
  %117 = load i32, i32* @MFX_IOPATTERN_OUT_OPAQUE_MEMORY, align 4
  br label %120

118:                                              ; preds = %104
  %119 = load i32, i32* @MFX_IOPATTERN_IN_OPAQUE_MEMORY, align 4
  br label %120

120:                                              ; preds = %118, %116
  %121 = phi i32 [ %117, %116 ], [ %119, %118 ]
  %122 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 2
  store i32 %121, i32* %122, align 4
  br label %133

123:                                              ; preds = %100
  %124 = load i32, i32* %7, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = load i32, i32* @MFX_IOPATTERN_OUT_VIDEO_MEMORY, align 4
  br label %130

128:                                              ; preds = %123
  %129 = load i32, i32* @MFX_IOPATTERN_IN_VIDEO_MEMORY, align 4
  br label %130

130:                                              ; preds = %128, %126
  %131 = phi i32 [ %127, %126 ], [ %129, %128 ]
  %132 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 2
  store i32 %131, i32* %132, align 4
  br label %133

133:                                              ; preds = %130, %120
  %134 = load i32, i32* %7, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %133
  %137 = load i32, i32* @MFX_IOPATTERN_IN_SYSTEM_MEMORY, align 4
  br label %140

138:                                              ; preds = %133
  %139 = load i32, i32* @MFX_IOPATTERN_OUT_SYSTEM_MEMORY, align 4
  br label %140

140:                                              ; preds = %138, %136
  %141 = phi i32 [ %137, %136 ], [ %139, %138 ]
  %142 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %141
  store i32 %144, i32* %142, align 4
  %145 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 0
  store i32 1, i32* %145, align 4
  %146 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %150, i64 0
  %152 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %151, i32 0, i32 0
  %153 = bitcast %struct.TYPE_25__* %147 to i8*
  %154 = bitcast %struct.TYPE_25__* %152 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %153, i8* align 4 %154, i64 8, i1 false)
  %155 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %156, i32 0, i32 0
  store i32 25, i32* %157, align 4
  %158 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %159, i32 0, i32 1
  store i32 1, i32* %160, align 4
  %161 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %163, i32 0, i32 0
  %165 = bitcast %struct.TYPE_25__* %162 to i8*
  %166 = bitcast %struct.TYPE_25__* %164 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %165, i8* align 4 %166, i64 8, i1 false)
  %167 = load i32**, i32*** %6, align 8
  %168 = load i32*, i32** %167, align 8
  %169 = call i64 @MFXVideoVPP_Init(i32* %168, %struct.TYPE_27__* %13)
  store i64 %169, i64* %14, align 8
  %170 = load i64, i64* %14, align 8
  %171 = load i64, i64* @MFX_ERR_NONE, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %173, label %181

173:                                              ; preds = %140
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %175 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %176 = call i32 @av_log(%struct.TYPE_20__* %174, i32 %175, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0))
  %177 = load i32**, i32*** %6, align 8
  %178 = load i32*, i32** %177, align 8
  %179 = call i32 @MFXClose(i32* %178)
  %180 = load i32**, i32*** %6, align 8
  store i32* null, i32** %180, align 8
  br label %181

181:                                              ; preds = %173, %140
  store i32 0, i32* %4, align 4
  br label %182

182:                                              ; preds = %181, %97, %84, %61
  %183 = load i32, i32* %4, align 4
  ret i32 %183
}

declare dso_local i64 @MFXInit(i32, i32*, i32**) #1

declare dso_local i32 @av_log(%struct.TYPE_20__*, i32, i8*) #1

declare dso_local i64 @MFXVideoCORE_SetHandle(i32*, i32, i64) #1

declare dso_local i64 @MFXVideoCORE_SetFrameAllocator(i32*, %struct.TYPE_28__*) #1

declare dso_local i32 @memset(%struct.TYPE_27__*, i32, i32) #1

declare dso_local i32 @FF_ARRAY_ELEMS(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @MFXVideoVPP_Init(i32*, %struct.TYPE_27__*) #1

declare dso_local i32 @MFXClose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
