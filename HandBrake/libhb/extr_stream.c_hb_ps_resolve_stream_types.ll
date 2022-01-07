; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_hb_ps_resolve_stream_types.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_hb_ps_resolve_stream_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__, i64 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i64, i64, %struct.TYPE_20__*, i32, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }

@A = common dso_local global i64 0, align 8
@S = common dso_local global i64 0, align 8
@V = common dso_local global i64 0, align 8
@st2codec = common dso_local global %struct.TYPE_21__* null, align 8
@U = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Probing %d unknown stream%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"    Probe: Unsupported stream %s. stream id 0x%x-0x%x\00", align 1
@N = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [48 x i8] c"    Probe: Found stream %s. stream id 0x%x-0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*)* @hb_ps_resolve_stream_types to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hb_ps_resolve_stream_types(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %110, %1
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %11, %15
  br i1 %16, label %17, label %113

17:                                               ; preds = %10
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %94

29:                                               ; preds = %17
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @A, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %65, label %41

41:                                               ; preds = %29
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @S, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %65, label %53

53:                                               ; preds = %41
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %56, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @V, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %94

65:                                               ; preds = %53, %41, %29
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** @st2codec, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %74, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 8
  store i32 %71, i32* %79, align 8
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** @st2codec, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %88, align 8
  %90 = load i32, i32* %3, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 7
  store i32 %85, i32* %93, align 4
  br label %110

94:                                               ; preds = %53, %17
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %97, align 8
  %99 = load i32, i32* %3, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @U, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %94
  %107 = load i32, i32* %4, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %106, %94
  br label %110

110:                                              ; preds = %109, %65
  %111 = load i32, i32* %3, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %3, align 4
  br label %10

113:                                              ; preds = %10
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %115 = call i32 @hb_stream_seek(%struct.TYPE_18__* %114, double 0.000000e+00)
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 1
  store i64 0, i64* %117, align 8
  %118 = load i32, i32* %4, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %113
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* %4, align 4
  %123 = icmp sgt i32 %122, 1
  %124 = zext i1 %123 to i64
  %125 = select i1 %123, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %126 = call i32 (i8*, i32, i8*, ...) @hb_log(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %121, i8* %125)
  br label %127

127:                                              ; preds = %120, %113
  br label %128

128:                                              ; preds = %218, %158, %127
  %129 = load i32, i32* %4, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %133 = call %struct.TYPE_20__* @hb_ps_stream_decode(%struct.TYPE_18__* %132)
  store %struct.TYPE_20__* %133, %struct.TYPE_20__** %6, align 8
  %134 = icmp ne %struct.TYPE_20__* %133, null
  br label %135

135:                                              ; preds = %131, %128
  %136 = phi i1 [ false, %128 ], [ %134, %131 ]
  br i1 %136, label %137, label %220

137:                                              ; preds = %135
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @index_of_id(%struct.TYPE_18__* %138, i32 %142)
  store i32 %143, i32* %7, align 4
  %144 = load i32, i32* %7, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %158, label %146

146:                                              ; preds = %137
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %149, align 8
  %151 = load i32, i32* %7, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @U, align 8
  %157 = icmp ne i64 %155, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %146, %137
  %159 = call i32 @hb_buffer_close(%struct.TYPE_20__** %6)
  br label %128

160:                                              ; preds = %146
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %163, align 8
  %165 = load i32, i32* %7, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i64 %166
  store %struct.TYPE_19__* %167, %struct.TYPE_19__** %9, align 8
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %171 = call i32 @do_probe(%struct.TYPE_18__* %168, %struct.TYPE_19__* %169, %struct.TYPE_20__* %170)
  store i32 %171, i32* %8, align 4
  %172 = load i32, i32* %8, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %193

174:                                              ; preds = %160
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 6
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 4
  %181 = sext i32 %180 to i64
  %182 = inttoptr i64 %181 to i8*
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 8
  %186 = call i32 (i8*, i32, i8*, ...) @hb_log(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %177, i8* %182, i32 %185)
  %187 = load i8*, i8** @N, align 8
  %188 = ptrtoint i8* %187 to i64
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %189, i32 0, i32 1
  store i64 %188, i64* %190, align 8
  %191 = load i32, i32* %4, align 4
  %192 = add nsw i32 %191, -1
  store i32 %192, i32* %4, align 4
  br label %218

193:                                              ; preds = %160
  %194 = load i32, i32* %8, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %217

196:                                              ; preds = %193
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @U, align 8
  %201 = icmp ne i64 %199, %200
  br i1 %201, label %202, label %217

202:                                              ; preds = %196
  %203 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %204 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %203, i32 0, i32 6
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %207 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %206, i32 0, i32 5
  %208 = load i32, i32* %207, align 4
  %209 = sext i32 %208 to i64
  %210 = inttoptr i64 %209 to i8*
  %211 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 8
  %214 = call i32 (i8*, i32, i8*, ...) @hb_log(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %205, i8* %210, i32 %213)
  %215 = load i32, i32* %4, align 4
  %216 = add nsw i32 %215, -1
  store i32 %216, i32* %4, align 4
  br label %217

217:                                              ; preds = %202, %196, %193
  br label %218

218:                                              ; preds = %217, %174
  %219 = call i32 @hb_buffer_close(%struct.TYPE_20__** %6)
  br label %128

220:                                              ; preds = %135
  store i32 0, i32* %3, align 4
  br label %221

221:                                              ; preds = %269, %220
  %222 = load i32, i32* %3, align 4
  %223 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %224 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = icmp slt i32 %222, %226
  br i1 %227, label %228, label %272

228:                                              ; preds = %221
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %230, i32 0, i32 1
  %232 = load %struct.TYPE_19__*, %struct.TYPE_19__** %231, align 8
  %233 = load i32, i32* %3, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %232, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @U, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %240, label %251

240:                                              ; preds = %228
  %241 = load i8*, i8** @N, align 8
  %242 = ptrtoint i8* %241 to i64
  %243 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %244 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %244, i32 0, i32 1
  %246 = load %struct.TYPE_19__*, %struct.TYPE_19__** %245, align 8
  %247 = load i32, i32* %3, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %246, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %249, i32 0, i32 1
  store i64 %242, i64* %250, align 8
  br label %251

251:                                              ; preds = %240, %228
  %252 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %253 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %253, i32 0, i32 1
  %255 = load %struct.TYPE_19__*, %struct.TYPE_19__** %254, align 8
  %256 = load i32, i32* %3, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %258, i32 0, i32 3
  %260 = call i32 @hb_buffer_close(%struct.TYPE_20__** %259)
  %261 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %262 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %262, i32 0, i32 1
  %264 = load %struct.TYPE_19__*, %struct.TYPE_19__** %263, align 8
  %265 = load i32, i32* %3, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %267, i32 0, i32 2
  store i64 0, i64* %268, align 8
  br label %269

269:                                              ; preds = %251
  %270 = load i32, i32* %3, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %3, align 4
  br label %221

272:                                              ; preds = %221
  ret void
}

declare dso_local i32 @hb_stream_seek(%struct.TYPE_18__*, double) #1

declare dso_local i32 @hb_log(i8*, i32, i8*, ...) #1

declare dso_local %struct.TYPE_20__* @hb_ps_stream_decode(%struct.TYPE_18__*) #1

declare dso_local i32 @index_of_id(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @hb_buffer_close(%struct.TYPE_20__**) #1

declare dso_local i32 @do_probe(%struct.TYPE_18__*, %struct.TYPE_19__*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
