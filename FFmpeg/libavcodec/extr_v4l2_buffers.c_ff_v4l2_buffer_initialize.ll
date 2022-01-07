; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_v4l2_buffers.c_ff_v4l2_buffer_initialize.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_v4l2_buffers.c_ff_v4l2_buffer_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_29__*, %struct.TYPE_19__, i32, %struct.TYPE_27__*, %struct.TYPE_17__* }
%struct.TYPE_29__ = type { i32, i32, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32, i32, %struct.TYPE_28__, i32, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_29__*, i32 }
%struct.TYPE_27__ = type { i32, i64, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_23__, %struct.TYPE_22__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32 }

@V4L2_MEMORY_MMAP = common dso_local global i32 0, align 4
@VIDEO_MAX_PLANES = common dso_local global i32 0, align 4
@VIDIOC_QUERYBUF = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@V4L2BUF_AVAILABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_v4l2_buffer_initialize(%struct.TYPE_18__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 5
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  store %struct.TYPE_17__* %11, %struct.TYPE_17__** %6, align 8
  %12 = load i32, i32* @V4L2_MEMORY_MMAP, align 4
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 5
  store i32 %12, i32* %15, align 4
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 4
  store i32 %18, i32* %21, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @V4L2_TYPE_IS_MULTIPLANAR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %2
  %32 = load i32, i32* @VIDEO_MAX_PLANES, align 4
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_29__*, %struct.TYPE_29__** %37, align 8
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %41, i32 0, i32 0
  store %struct.TYPE_29__* %38, %struct.TYPE_29__** %42, align 8
  br label %43

43:                                               ; preds = %31, %2
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %45 = call %struct.TYPE_20__* @buf_to_m2mctx(%struct.TYPE_18__* %44)
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @VIDIOC_QUERYBUF, align 4
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 2
  %51 = call i32 @ioctl(i32 %47, i32 %48, %struct.TYPE_19__* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %43
  %55 = load i32, i32* @errno, align 4
  %56 = call i32 @AVERROR(i32 %55)
  store i32 %56, i32* %3, align 4
  br label %308

57:                                               ; preds = %43
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @V4L2_TYPE_IS_MULTIPLANAR(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %95

63:                                               ; preds = %57
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 0
  store i32 0, i32* %65, align 8
  store i32 0, i32* %8, align 4
  br label %66

66:                                               ; preds = %91, %63
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %67, %71
  br i1 %72, label %73, label %94

73:                                               ; preds = %66
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_29__*, %struct.TYPE_29__** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %73
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %85, %73
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %66

94:                                               ; preds = %66
  br label %98

95:                                               ; preds = %57
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  store i32 1, i32* %97, align 8
  br label %98

98:                                               ; preds = %95, %94
  store i32 0, i32* %8, align 4
  br label %99

99:                                               ; preds = %253, %98
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp slt i32 %100, %103
  br i1 %104, label %105, label %256

105:                                              ; preds = %99
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i64 @V4L2_TYPE_IS_MULTIPLANAR(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %123

111:                                              ; preds = %105
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  br label %130

123:                                              ; preds = %105
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  br label %130

130:                                              ; preds = %123, %111
  %131 = phi i32 [ %122, %111 ], [ %129, %123 ]
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 4
  %134 = load %struct.TYPE_27__*, %struct.TYPE_27__** %133, align 8
  %135 = load i32, i32* %8, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %137, i32 0, i32 2
  store i32 %131, i32* %138, align 8
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i64 @V4L2_TYPE_IS_MULTIPLANAR(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %200

144:                                              ; preds = %130
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_29__*, %struct.TYPE_29__** %148, align 8
  %150 = load i32, i32* %8, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 4
  %157 = load %struct.TYPE_27__*, %struct.TYPE_27__** %156, align 8
  %158 = load i32, i32* %8, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %160, i32 0, i32 0
  store i32 %154, i32* %161, align 8
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_29__*, %struct.TYPE_29__** %165, align 8
  %167 = load i32, i32* %8, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @PROT_READ, align 4
  %173 = load i32, i32* @PROT_WRITE, align 4
  %174 = or i32 %172, %173
  %175 = load i32, i32* @MAP_SHARED, align 4
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %177 = call %struct.TYPE_20__* @buf_to_m2mctx(%struct.TYPE_18__* %176)
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_29__*, %struct.TYPE_29__** %183, align 8
  %185 = load i32, i32* %8, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i8* @mmap(i32* null, i32 %171, i32 %174, i32 %175, i32 %179, i32 %190)
  %192 = ptrtoint i8* %191 to i64
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 4
  %195 = load %struct.TYPE_27__*, %struct.TYPE_27__** %194, align 8
  %196 = load i32, i32* %8, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %198, i32 0, i32 1
  store i64 %192, i64* %199, align 8
  br label %238

200:                                              ; preds = %130
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 4
  %207 = load %struct.TYPE_27__*, %struct.TYPE_27__** %206, align 8
  %208 = load i32, i32* %8, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %210, i32 0, i32 0
  store i32 %204, i32* %211, align 8
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @PROT_READ, align 4
  %217 = load i32, i32* @PROT_WRITE, align 4
  %218 = or i32 %216, %217
  %219 = load i32, i32* @MAP_SHARED, align 4
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %221 = call %struct.TYPE_20__* @buf_to_m2mctx(%struct.TYPE_18__* %220)
  %222 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %225, i32 0, i32 3
  %227 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = call i8* @mmap(i32* null, i32 %215, i32 %218, i32 %219, i32 %223, i32 %228)
  %230 = ptrtoint i8* %229 to i64
  %231 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %231, i32 0, i32 4
  %233 = load %struct.TYPE_27__*, %struct.TYPE_27__** %232, align 8
  %234 = load i32, i32* %8, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %236, i32 0, i32 1
  store i64 %230, i64* %237, align 8
  br label %238

238:                                              ; preds = %200, %144
  %239 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %239, i32 0, i32 4
  %241 = load %struct.TYPE_27__*, %struct.TYPE_27__** %240, align 8
  %242 = load i32, i32* %8, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %244, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* @MAP_FAILED, align 8
  %248 = icmp eq i64 %246, %247
  br i1 %248, label %249, label %252

249:                                              ; preds = %238
  %250 = load i32, i32* @ENOMEM, align 4
  %251 = call i32 @AVERROR(i32 %250)
  store i32 %251, i32* %3, align 4
  br label %308

252:                                              ; preds = %238
  br label %253

253:                                              ; preds = %252
  %254 = load i32, i32* %8, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %8, align 4
  br label %99

256:                                              ; preds = %99
  %257 = load i32, i32* @V4L2BUF_AVAILABLE, align 4
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %258, i32 0, i32 3
  store i32 %257, i32* %259, align 8
  %260 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = call i64 @V4L2_TYPE_IS_OUTPUT(i32 %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %266

265:                                              ; preds = %256
  store i32 0, i32* %3, align 4
  br label %308

266:                                              ; preds = %256
  %267 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = call i64 @V4L2_TYPE_IS_MULTIPLANAR(i32 %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %286

272:                                              ; preds = %266
  %273 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %273, i32 0, i32 1
  %275 = load %struct.TYPE_29__*, %struct.TYPE_29__** %274, align 8
  %276 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %276, i32 0, i32 2
  %278 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %277, i32 0, i32 3
  %279 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %278, i32 0, i32 0
  store %struct.TYPE_29__* %275, %struct.TYPE_29__** %279, align 8
  %280 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %283, i32 0, i32 2
  %285 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %284, i32 0, i32 1
  store i32 %282, i32* %285, align 4
  br label %305

286:                                              ; preds = %266
  %287 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %287, i32 0, i32 1
  %289 = load %struct.TYPE_29__*, %struct.TYPE_29__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %289, i64 0
  %291 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %293, i32 0, i32 2
  %295 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %294, i32 0, i32 2
  store i32 %292, i32* %295, align 8
  %296 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %296, i32 0, i32 1
  %298 = load %struct.TYPE_29__*, %struct.TYPE_29__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %298, i64 0
  %300 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %303 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %302, i32 0, i32 2
  %304 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %303, i32 0, i32 1
  store i32 %301, i32* %304, align 4
  br label %305

305:                                              ; preds = %286, %272
  %306 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %307 = call i32 @ff_v4l2_buffer_enqueue(%struct.TYPE_18__* %306)
  store i32 %307, i32* %3, align 4
  br label %308

308:                                              ; preds = %305, %265, %249, %54
  %309 = load i32, i32* %3, align 4
  ret i32 %309
}

declare dso_local i64 @V4L2_TYPE_IS_MULTIPLANAR(i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_20__* @buf_to_m2mctx(%struct.TYPE_18__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @V4L2_TYPE_IS_OUTPUT(i32) #1

declare dso_local i32 @ff_v4l2_buffer_enqueue(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
