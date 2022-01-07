; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cbs_h2645.c_cbs_h265_read_nal_unit.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cbs_h2645.c_cbs_h265_read_nal_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32 }
%struct.TYPE_29__ = type { i32, i32, %struct.TYPE_28__*, i32*, i32 }
%struct.TYPE_28__ = type { i32, i32, i32, i32, i32 }

@cbs_h265_free_vps = common dso_local global i32 0, align 4
@cbs_h265_free_sps = common dso_local global i32 0, align 4
@cbs_h265_free_pps = common dso_local global i32 0, align 4
@cbs_h265_free_slice = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Deleted %d trailing zeroes from slice data.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@cbs_h265_free_sei = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_30__*, %struct.TYPE_29__*)* @cbs_h265_read_nal_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbs_h265_read_nal_unit(%struct.TYPE_30__* %0, %struct.TYPE_29__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_30__*, align 8
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca %struct.TYPE_28__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %4, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %5, align 8
  %15 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = mul nsw i32 8, %20
  %22 = call i32 @init_get_bits(i32* %6, i32* %17, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %265

27:                                               ; preds = %2
  %28 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %261 [
    i32 128, label %31
    i32 135, label %59
    i32 142, label %87
    i32 132, label %115
    i32 131, label %115
    i32 130, label %115
    i32 129, label %115
    i32 134, label %115
    i32 133, label %115
    i32 141, label %115
    i32 140, label %115
    i32 139, label %115
    i32 138, label %115
    i32 147, label %115
    i32 146, label %115
    i32 148, label %115
    i32 143, label %115
    i32 144, label %115
    i32 145, label %115
    i32 149, label %218
    i32 137, label %237
    i32 136, label %237
  ]

31:                                               ; preds = %27
  %32 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %33 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %34 = call i32 @ff_cbs_alloc_unit_content(%struct.TYPE_30__* %32, %struct.TYPE_29__* %33, i32 20, i32* @cbs_h265_free_vps)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %265

39:                                               ; preds = %31
  %40 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_28__*, %struct.TYPE_28__** %41, align 8
  store %struct.TYPE_28__* %42, %struct.TYPE_28__** %8, align 8
  %43 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %44 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %45 = call i32 @cbs_h265_read_vps(%struct.TYPE_30__* %43, i32* %6, %struct.TYPE_28__* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %3, align 4
  br label %265

50:                                               ; preds = %39
  %51 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %52 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %53 = call i32 @cbs_h265_replace_vps(%struct.TYPE_30__* %51, %struct.TYPE_29__* %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %3, align 4
  br label %265

58:                                               ; preds = %50
  br label %264

59:                                               ; preds = %27
  %60 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %61 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %62 = call i32 @ff_cbs_alloc_unit_content(%struct.TYPE_30__* %60, %struct.TYPE_29__* %61, i32 20, i32* @cbs_h265_free_sps)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %3, align 4
  br label %265

67:                                               ; preds = %59
  %68 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_28__*, %struct.TYPE_28__** %69, align 8
  store %struct.TYPE_28__* %70, %struct.TYPE_28__** %9, align 8
  %71 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %72 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %73 = call i32 @cbs_h265_read_sps(%struct.TYPE_30__* %71, i32* %6, %struct.TYPE_28__* %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %67
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %3, align 4
  br label %265

78:                                               ; preds = %67
  %79 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %80 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %81 = call i32 @cbs_h265_replace_sps(%struct.TYPE_30__* %79, %struct.TYPE_29__* %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %3, align 4
  br label %265

86:                                               ; preds = %78
  br label %264

87:                                               ; preds = %27
  %88 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %89 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %90 = call i32 @ff_cbs_alloc_unit_content(%struct.TYPE_30__* %88, %struct.TYPE_29__* %89, i32 20, i32* @cbs_h265_free_pps)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load i32, i32* %7, align 4
  store i32 %94, i32* %3, align 4
  br label %265

95:                                               ; preds = %87
  %96 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_28__*, %struct.TYPE_28__** %97, align 8
  store %struct.TYPE_28__* %98, %struct.TYPE_28__** %10, align 8
  %99 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %100 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %101 = call i32 @cbs_h265_read_pps(%struct.TYPE_30__* %99, i32* %6, %struct.TYPE_28__* %100)
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %95
  %105 = load i32, i32* %7, align 4
  store i32 %105, i32* %3, align 4
  br label %265

106:                                              ; preds = %95
  %107 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %108 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %109 = call i32 @cbs_h265_replace_pps(%struct.TYPE_30__* %107, %struct.TYPE_29__* %108)
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = load i32, i32* %7, align 4
  store i32 %113, i32* %3, align 4
  br label %265

114:                                              ; preds = %106
  br label %264

115:                                              ; preds = %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27
  %116 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %117 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %118 = call i32 @ff_cbs_alloc_unit_content(%struct.TYPE_30__* %116, %struct.TYPE_29__* %117, i32 20, i32* @cbs_h265_free_slice)
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %7, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %115
  %122 = load i32, i32* %7, align 4
  store i32 %122, i32* %3, align 4
  br label %265

123:                                              ; preds = %115
  %124 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %124, i32 0, i32 2
  %126 = load %struct.TYPE_28__*, %struct.TYPE_28__** %125, align 8
  store %struct.TYPE_28__* %126, %struct.TYPE_28__** %11, align 8
  %127 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %128 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %128, i32 0, i32 4
  %130 = call i32 @cbs_h265_read_slice_segment_header(%struct.TYPE_30__* %127, i32* %6, i32* %129)
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* %7, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %123
  %134 = load i32, i32* %7, align 4
  store i32 %134, i32* %3, align 4
  br label %265

135:                                              ; preds = %123
  %136 = call i32 @get_bits_count(i32* %6)
  store i32 %136, i32* %12, align 4
  %137 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  store i32 %139, i32* %13, align 4
  %140 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %140, i32 0, i32 3
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %13, align 4
  %144 = sub nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %142, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %183, label %149

149:                                              ; preds = %135
  store i32 0, i32* %14, align 4
  br label %150

150:                                              ; preds = %170, %149
  %151 = load i32, i32* %14, align 4
  %152 = load i32, i32* %13, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %167

154:                                              ; preds = %150
  %155 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %155, i32 0, i32 3
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %13, align 4
  %159 = load i32, i32* %14, align 4
  %160 = sub nsw i32 %158, %159
  %161 = sub nsw i32 %160, 1
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %157, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  %166 = xor i1 %165, true
  br label %167

167:                                              ; preds = %154, %150
  %168 = phi i1 [ false, %150 ], [ %166, %154 ]
  br i1 %168, label %169, label %173

169:                                              ; preds = %167
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %14, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %14, align 4
  br label %150

173:                                              ; preds = %167
  %174 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @AV_LOG_DEBUG, align 4
  %178 = load i32, i32* %14, align 4
  %179 = call i32 @av_log(i32 %176, i32 %177, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %178)
  %180 = load i32, i32* %14, align 4
  %181 = load i32, i32* %13, align 4
  %182 = sub nsw i32 %181, %180
  store i32 %182, i32* %13, align 4
  br label %183

183:                                              ; preds = %173, %135
  %184 = load i32, i32* %13, align 4
  %185 = load i32, i32* %12, align 4
  %186 = sdiv i32 %185, 8
  %187 = sub nsw i32 %184, %186
  %188 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %188, i32 0, i32 0
  store i32 %187, i32* %189, align 4
  %190 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @av_buffer_ref(i32 %192)
  %194 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %195 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %194, i32 0, i32 3
  store i32 %193, i32* %195, align 4
  %196 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %197 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %203, label %200

200:                                              ; preds = %183
  %201 = load i32, i32* @ENOMEM, align 4
  %202 = call i32 @AVERROR(i32 %201)
  store i32 %202, i32* %3, align 4
  br label %265

203:                                              ; preds = %183
  %204 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %204, i32 0, i32 3
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %12, align 4
  %208 = sdiv i32 %207, 8
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %206, i64 %209
  %211 = ptrtoint i32* %210 to i32
  %212 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %213 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %212, i32 0, i32 2
  store i32 %211, i32* %213, align 4
  %214 = load i32, i32* %12, align 4
  %215 = srem i32 %214, 8
  %216 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %217 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %216, i32 0, i32 1
  store i32 %215, i32* %217, align 4
  br label %264

218:                                              ; preds = %27
  %219 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %220 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %221 = call i32 @ff_cbs_alloc_unit_content(%struct.TYPE_30__* %219, %struct.TYPE_29__* %220, i32 4, i32* null)
  store i32 %221, i32* %7, align 4
  %222 = load i32, i32* %7, align 4
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %218
  %225 = load i32, i32* %7, align 4
  store i32 %225, i32* %3, align 4
  br label %265

226:                                              ; preds = %218
  %227 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %228 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %228, i32 0, i32 2
  %230 = load %struct.TYPE_28__*, %struct.TYPE_28__** %229, align 8
  %231 = call i32 @cbs_h265_read_aud(%struct.TYPE_30__* %227, i32* %6, %struct.TYPE_28__* %230)
  store i32 %231, i32* %7, align 4
  %232 = load i32, i32* %7, align 4
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %226
  %235 = load i32, i32* %7, align 4
  store i32 %235, i32* %3, align 4
  br label %265

236:                                              ; preds = %226
  br label %264

237:                                              ; preds = %27, %27
  %238 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %239 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %240 = call i32 @ff_cbs_alloc_unit_content(%struct.TYPE_30__* %238, %struct.TYPE_29__* %239, i32 4, i32* @cbs_h265_free_sei)
  store i32 %240, i32* %7, align 4
  %241 = load i32, i32* %7, align 4
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %237
  %244 = load i32, i32* %7, align 4
  store i32 %244, i32* %3, align 4
  br label %265

245:                                              ; preds = %237
  %246 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %247 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %247, i32 0, i32 2
  %249 = load %struct.TYPE_28__*, %struct.TYPE_28__** %248, align 8
  %250 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = icmp eq i32 %252, 137
  %254 = zext i1 %253 to i32
  %255 = call i32 @cbs_h265_read_sei(%struct.TYPE_30__* %246, i32* %6, %struct.TYPE_28__* %249, i32 %254)
  store i32 %255, i32* %7, align 4
  %256 = load i32, i32* %7, align 4
  %257 = icmp slt i32 %256, 0
  br i1 %257, label %258, label %260

258:                                              ; preds = %245
  %259 = load i32, i32* %7, align 4
  store i32 %259, i32* %3, align 4
  br label %265

260:                                              ; preds = %245
  br label %264

261:                                              ; preds = %27
  %262 = load i32, i32* @ENOSYS, align 4
  %263 = call i32 @AVERROR(i32 %262)
  store i32 %263, i32* %3, align 4
  br label %265

264:                                              ; preds = %260, %236, %203, %114, %86, %58
  store i32 0, i32* %3, align 4
  br label %265

265:                                              ; preds = %264, %261, %258, %243, %234, %224, %200, %133, %121, %112, %104, %93, %84, %76, %65, %56, %48, %37, %25
  %266 = load i32, i32* %3, align 4
  ret i32 %266
}

declare dso_local i32 @init_get_bits(i32*, i32*, i32) #1

declare dso_local i32 @ff_cbs_alloc_unit_content(%struct.TYPE_30__*, %struct.TYPE_29__*, i32, i32*) #1

declare dso_local i32 @cbs_h265_read_vps(%struct.TYPE_30__*, i32*, %struct.TYPE_28__*) #1

declare dso_local i32 @cbs_h265_replace_vps(%struct.TYPE_30__*, %struct.TYPE_29__*) #1

declare dso_local i32 @cbs_h265_read_sps(%struct.TYPE_30__*, i32*, %struct.TYPE_28__*) #1

declare dso_local i32 @cbs_h265_replace_sps(%struct.TYPE_30__*, %struct.TYPE_29__*) #1

declare dso_local i32 @cbs_h265_read_pps(%struct.TYPE_30__*, i32*, %struct.TYPE_28__*) #1

declare dso_local i32 @cbs_h265_replace_pps(%struct.TYPE_30__*, %struct.TYPE_29__*) #1

declare dso_local i32 @cbs_h265_read_slice_segment_header(%struct.TYPE_30__*, i32*, i32*) #1

declare dso_local i32 @get_bits_count(i32*) #1

declare dso_local i32 @av_log(i32, i32, i8*, i32) #1

declare dso_local i32 @av_buffer_ref(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @cbs_h265_read_aud(%struct.TYPE_30__*, i32*, %struct.TYPE_28__*) #1

declare dso_local i32 @cbs_h265_read_sei(%struct.TYPE_30__*, i32*, %struct.TYPE_28__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
