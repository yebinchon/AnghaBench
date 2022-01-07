; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtsp/extr_rtsp_reader.c_rtsp_create_tracks_from_sdp.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtsp/extr_rtsp_reader.c_rtsp_create_tracks_from_sdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_20__*, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i8* }

@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@attribute_name_delimiter_fn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"rtpmap\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"fmtp\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"control\00", align 1
@VC_CONTAINER_ERROR_FORMAT_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_22__*, i8*, i8*)* @rtsp_create_tracks_from_sdp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rtsp_create_tracks_from_sdp(%struct.TYPE_22__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i8**, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %15 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %15, i64* %7, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %8, align 8
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** %9, align 8
  %17 = load i8*, i8** %5, align 8
  store i8* %17, i8** %10, align 8
  br label %18

18:                                               ; preds = %172, %3
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i8*, i8** %10, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br label %27

27:                                               ; preds = %22, %18
  %28 = phi i1 [ false, %18 ], [ %26, %22 ]
  br i1 %28, label %29, label %174

29:                                               ; preds = %27
  %30 = load i8*, i8** %10, align 8
  %31 = load i8, i8* %30, align 1
  store i8 %31, i8* %13, align 1
  %32 = load i8*, i8** %10, align 8
  store i8* %32, i8** %11, align 8
  br label %33

33:                                               ; preds = %45, %29
  %34 = load i8*, i8** %11, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i8*, i8** %11, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 10
  br label %43

43:                                               ; preds = %38, %33
  %44 = phi i1 [ false, %33 ], [ %42, %38 ]
  br i1 %44, label %45, label %48

45:                                               ; preds = %43
  %46 = load i8*, i8** %11, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %11, align 8
  br label %33

48:                                               ; preds = %43
  %49 = load i8*, i8** %11, align 8
  %50 = load i8, i8* %49, align 1
  %51 = icmp ne i8 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i8*, i8** %11, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %11, align 8
  store i8 0, i8* %53, align 1
  br label %55

55:                                               ; preds = %52, %48
  %56 = load i8*, i8** %10, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 61
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %172

62:                                               ; preds = %55
  %63 = load i8*, i8** %10, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 2
  %65 = call i8* @rtsp_trim(i8* %64)
  store i8* %65, i8** %10, align 8
  %66 = load i8, i8* %13, align 1
  %67 = sext i8 %66 to i32
  switch i32 %67, label %170 [
    i32 109, label %68
    i32 97, label %92
  ]

68:                                               ; preds = %62
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %70 = icmp ne %struct.TYPE_21__* %69, null
  br i1 %70, label %71, label %88

71:                                               ; preds = %68
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %74 = call i64 @rtsp_complete_track(%struct.TYPE_22__* %72, %struct.TYPE_21__* %73)
  store i64 %74, i64* %7, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %8, align 8
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  %83 = load i64, i64* %7, align 8
  %84 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %71
  br label %171

87:                                               ; preds = %71
  br label %88

88:                                               ; preds = %87, %68
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %90 = load i8*, i8** %10, align 8
  %91 = call i64 @rtsp_create_track_for_media_field(%struct.TYPE_22__* %89, i8* %90, %struct.TYPE_21__** %8)
  store i64 %91, i64* %7, align 8
  br label %171

92:                                               ; preds = %62
  %93 = load i32, i32* @attribute_name_delimiter_fn, align 4
  %94 = call i8* @rtsp_parse_extract(i8** %10, i32 %93, i32* null)
  store i8* %94, i8** %12, align 8
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %96 = icmp ne %struct.TYPE_21__* %95, null
  br i1 %96, label %97, label %143

97:                                               ; preds = %92
  %98 = load i8*, i8** %12, align 8
  %99 = call i32 @strcmp(i8* %98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %97
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %104 = load i8*, i8** %10, align 8
  %105 = call i64 @rtsp_parse_rtpmap_attribute(%struct.TYPE_22__* %102, %struct.TYPE_21__* %103, i8* %104)
  store i64 %105, i64* %7, align 8
  br label %142

106:                                              ; preds = %97
  %107 = load i8*, i8** %12, align 8
  %108 = call i32 @strcmp(i8* %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %106
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %113 = load i8*, i8** %10, align 8
  %114 = call i64 @rtsp_parse_fmtp_attribute(%struct.TYPE_22__* %111, %struct.TYPE_21__* %112, i8* %113)
  store i64 %114, i64* %7, align 8
  br label %141

115:                                              ; preds = %106
  %116 = load i8*, i8** %12, align 8
  %117 = call i32 @strcmp(i8* %116, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %140

119:                                              ; preds = %115
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 0
  store i8** %125, i8*** %14, align 8
  %126 = load i8**, i8*** %14, align 8
  %127 = load i8*, i8** %126, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %134

129:                                              ; preds = %119
  %130 = load i8**, i8*** %14, align 8
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 @free(i8* %131)
  %133 = load i8**, i8*** %14, align 8
  store i8* null, i8** %133, align 8
  br label %134

134:                                              ; preds = %129, %119
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %136 = load i8*, i8** %10, align 8
  %137 = load i8*, i8** %9, align 8
  %138 = load i8**, i8*** %14, align 8
  %139 = call i64 @rtsp_parse_control_attribute(%struct.TYPE_22__* %135, i8* %136, i8* %137, i8** %138)
  store i64 %139, i64* %7, align 8
  br label %140

140:                                              ; preds = %134, %115
  br label %141

141:                                              ; preds = %140, %110
  br label %142

142:                                              ; preds = %141, %101
  br label %169

143:                                              ; preds = %92
  %144 = load i8*, i8** %12, align 8
  %145 = call i32 @strcmp(i8* %144, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %168

147:                                              ; preds = %143
  %148 = load i8*, i8** %10, align 8
  %149 = call i8* @rtsp_trim(i8* %148)
  store i8* %149, i8** %10, align 8
  %150 = load i8*, i8** %9, align 8
  %151 = load i8*, i8** %6, align 8
  %152 = icmp ne i8* %150, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %147
  %154 = load i8*, i8** %9, align 8
  %155 = call i32 @free(i8* %154)
  %156 = load i8*, i8** %6, align 8
  store i8* %156, i8** %9, align 8
  br label %157

157:                                              ; preds = %153, %147
  %158 = load i8*, i8** %10, align 8
  %159 = load i8*, i8** %6, align 8
  %160 = call i32 @strcmp(i8* %158, i8* %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %157
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %164 = load i8*, i8** %10, align 8
  %165 = load i8*, i8** %6, align 8
  %166 = call i64 @rtsp_parse_control_attribute(%struct.TYPE_22__* %163, i8* %164, i8* %165, i8** %9)
  store i64 %166, i64* %7, align 8
  br label %167

167:                                              ; preds = %162, %157
  br label %168

168:                                              ; preds = %167, %143
  br label %169

169:                                              ; preds = %168, %142
  br label %171

170:                                              ; preds = %62
  br label %171

171:                                              ; preds = %170, %169, %88, %86
  br label %172

172:                                              ; preds = %171, %61
  %173 = load i8*, i8** %11, align 8
  store i8* %173, i8** %10, align 8
  br label %18

174:                                              ; preds = %27
  %175 = load i8*, i8** %9, align 8
  %176 = icmp ne i8* %175, null
  br i1 %176, label %177, label %184

177:                                              ; preds = %174
  %178 = load i8*, i8** %9, align 8
  %179 = load i8*, i8** %6, align 8
  %180 = icmp ne i8* %178, %179
  br i1 %180, label %181, label %184

181:                                              ; preds = %177
  %182 = load i8*, i8** %9, align 8
  %183 = call i32 @free(i8* %182)
  br label %184

184:                                              ; preds = %181, %177, %174
  %185 = load i64, i64* %7, align 8
  %186 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %212

188:                                              ; preds = %184
  %189 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %195, label %193

193:                                              ; preds = %188
  %194 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_INVALID, align 8
  store i64 %194, i64* %7, align 8
  br label %211

195:                                              ; preds = %188
  %196 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %197 = icmp ne %struct.TYPE_21__* %196, null
  br i1 %197, label %198, label %210

198:                                              ; preds = %195
  %199 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %200 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %201 = call i64 @rtsp_complete_track(%struct.TYPE_22__* %199, %struct.TYPE_21__* %200)
  store i64 %201, i64* %7, align 8
  %202 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_20__*, %struct.TYPE_20__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_19__*, %struct.TYPE_19__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %207, align 4
  br label %210

210:                                              ; preds = %198, %195
  br label %211

211:                                              ; preds = %210, %193
  br label %212

212:                                              ; preds = %211, %184
  %213 = load i64, i64* %7, align 8
  ret i64 %213
}

declare dso_local i8* @rtsp_trim(i8*) #1

declare dso_local i64 @rtsp_complete_track(%struct.TYPE_22__*, %struct.TYPE_21__*) #1

declare dso_local i64 @rtsp_create_track_for_media_field(%struct.TYPE_22__*, i8*, %struct.TYPE_21__**) #1

declare dso_local i8* @rtsp_parse_extract(i8**, i32, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @rtsp_parse_rtpmap_attribute(%struct.TYPE_22__*, %struct.TYPE_21__*, i8*) #1

declare dso_local i64 @rtsp_parse_fmtp_attribute(%struct.TYPE_22__*, %struct.TYPE_21__*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @rtsp_parse_control_attribute(%struct.TYPE_22__*, i8*, i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
