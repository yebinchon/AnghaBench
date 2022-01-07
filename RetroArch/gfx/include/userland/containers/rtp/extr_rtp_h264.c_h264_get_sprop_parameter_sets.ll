; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtp/extr_rtp_h264.c_h264_get_sprop_parameter_sets.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtp/extr_rtp_h264.c_h264_get_sprop_parameter_sets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i8*, i8* }

@.str = private unnamed_addr constant [21 x i8] c"sprop-parameter-sets\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"H.264: sprop-parameter-sets is required, but not found\00", align 1
@VC_CONTAINER_ERROR_FORMAT_INVALID = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [56 x i8] c"H.264: sprop-parameter-sets doesn't contain useful data\00", align 1
@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"H.264: sprop-parameter-sets failed to decode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_11__*, i32*)* @h264_get_sprop_parameter_sets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @h264_get_sprop_parameter_sets(i32* %0, %struct.TYPE_11__* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_12__, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %11, align 4
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @vc_containers_list_find_entry(i32* %20, %struct.TYPE_12__* %9)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %23, %3
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @LOG_ERROR(i32* %28, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_INVALID, align 8
  store i64 %30, i64* %4, align 8
  br label %177

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %13, align 8
  br label %34

34:                                               ; preds = %58, %31
  %35 = load i8*, i8** %13, align 8
  %36 = call i8* @strchr(i8* %35, i8 signext 44)
  store i8* %36, i8** %14, align 8
  %37 = load i8*, i8** %14, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load i8*, i8** %14, align 8
  %41 = load i8*, i8** %13, align 8
  %42 = ptrtoint i8* %40 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  br label %48

45:                                               ; preds = %34
  %46 = load i8*, i8** %13, align 8
  %47 = call i64 @strlen(i8* %46)
  br label %48

48:                                               ; preds = %45, %39
  %49 = phi i64 [ %44, %39 ], [ %47, %45 ]
  store i64 %49, i64* %10, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = load i64, i64* %10, align 8
  %52 = call i32 @rtp_base64_byte_length(i8* %50, i64 %51)
  %53 = add nsw i32 %52, 4
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %11, align 4
  %56 = load i8*, i8** %14, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  store i8* %57, i8** %13, align 8
  br label %58

58:                                               ; preds = %48
  %59 = load i8*, i8** %14, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %34, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %61
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @LOG_ERROR(i32* %65, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_INVALID, align 8
  store i64 %67, i64* %4, align 8
  br label %177

68:                                               ; preds = %61
  %69 = load i32*, i32** %5, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i64 @vc_container_track_allocate_extradata(i32* %69, %struct.TYPE_11__* %70, i32 %71)
  store i64 %72, i64* %8, align 8
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %68
  %77 = load i64, i64* %8, align 8
  store i64 %77, i64* %4, align 8
  br label %177

78:                                               ; preds = %68
  %79 = load i32, i32* %11, align 4
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  store i32 %79, i32* %83, align 4
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  store i32* %88, i32** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  store i8* %90, i8** %13, align 8
  br label %91

91:                                               ; preds = %172, %78
  %92 = load i8*, i8** %13, align 8
  %93 = call i8* @strchr(i8* %92, i8 signext 44)
  store i8* %93, i8** %14, align 8
  %94 = load i8*, i8** %14, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load i8*, i8** %14, align 8
  %98 = load i8*, i8** %13, align 8
  %99 = ptrtoint i8* %97 to i64
  %100 = ptrtoint i8* %98 to i64
  %101 = sub i64 %99, %100
  br label %105

102:                                              ; preds = %91
  %103 = load i8*, i8** %13, align 8
  %104 = call i64 @strlen(i8* %103)
  br label %105

105:                                              ; preds = %102, %96
  %106 = phi i64 [ %101, %96 ], [ %104, %102 ]
  store i64 %106, i64* %10, align 8
  %107 = load i32*, i32** %12, align 8
  %108 = getelementptr inbounds i32, i32* %107, i32 1
  store i32* %108, i32** %12, align 8
  store i32 0, i32* %107, align 4
  %109 = load i32*, i32** %12, align 8
  %110 = getelementptr inbounds i32, i32* %109, i32 1
  store i32* %110, i32** %12, align 8
  store i32 0, i32* %109, align 4
  %111 = load i32*, i32** %12, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %12, align 8
  store i32 0, i32* %111, align 4
  %113 = load i32*, i32** %12, align 8
  %114 = getelementptr inbounds i32, i32* %113, i32 1
  store i32* %114, i32** %12, align 8
  store i32 1, i32* %113, align 4
  %115 = load i32, i32* %11, align 4
  %116 = sub nsw i32 %115, 4
  store i32 %116, i32* %11, align 4
  %117 = load i8*, i8** %13, align 8
  %118 = load i64, i64* %10, align 8
  %119 = load i32*, i32** %12, align 8
  %120 = load i32, i32* %11, align 4
  %121 = call i32* @rtp_base64_decode(i8* %117, i64 %118, i32* %119, i32 %120)
  store i32* %121, i32** %15, align 8
  %122 = load i32*, i32** %15, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %128, label %124

124:                                              ; preds = %105
  %125 = load i32*, i32** %5, align 8
  %126 = call i32 @LOG_ERROR(i32* %125, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %127 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_INVALID, align 8
  store i64 %127, i64* %4, align 8
  br label %177

128:                                              ; preds = %105
  %129 = load i32*, i32** %15, align 8
  %130 = load i32*, i32** %12, align 8
  %131 = ptrtoint i32* %129 to i64
  %132 = ptrtoint i32* %130 to i64
  %133 = sub i64 %131, %132
  %134 = sdiv exact i64 %133, 4
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %16, align 4
  %136 = load i32, i32* %16, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %169

138:                                              ; preds = %128
  %139 = load i32*, i32** %12, align 8
  %140 = load i32, i32* %16, align 4
  %141 = call i32 @h264_remove_emulation_prevention_bytes(i32* %139, i32 %140)
  store i32 %141, i32* %18, align 4
  %142 = load i32*, i32** %5, align 8
  %143 = load i32*, i32** %12, align 8
  %144 = load i32, i32* %18, align 4
  %145 = call i32 @BITS_INIT(i32* %142, i32* %17, i32* %143, i32 %144)
  %146 = load i32*, i32** %5, align 8
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %148 = call i64 @h264_decode_sprop(i32* %146, %struct.TYPE_11__* %147, i32* %17)
  store i64 %148, i64* %8, align 8
  %149 = load i64, i64* %8, align 8
  %150 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %138
  %153 = load i64, i64* %8, align 8
  store i64 %153, i64* %4, align 8
  br label %177

154:                                              ; preds = %138
  %155 = load i32, i32* %18, align 4
  %156 = load i32, i32* %16, align 4
  %157 = icmp ne i32 %155, %156
  br i1 %157, label %158, label %164

158:                                              ; preds = %154
  %159 = load i8*, i8** %13, align 8
  %160 = load i64, i64* %10, align 8
  %161 = load i32*, i32** %12, align 8
  %162 = load i32, i32* %16, align 4
  %163 = call i32* @rtp_base64_decode(i8* %159, i64 %160, i32* %161, i32 %162)
  br label %164

164:                                              ; preds = %158, %154
  %165 = load i32, i32* %16, align 4
  %166 = load i32, i32* %11, align 4
  %167 = sub nsw i32 %166, %165
  store i32 %167, i32* %11, align 4
  %168 = load i32*, i32** %15, align 8
  store i32* %168, i32** %12, align 8
  br label %169

169:                                              ; preds = %164, %128
  %170 = load i8*, i8** %14, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 1
  store i8* %171, i8** %13, align 8
  br label %172

172:                                              ; preds = %169
  %173 = load i8*, i8** %14, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %91, label %175

175:                                              ; preds = %172
  %176 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %176, i64* %4, align 8
  br label %177

177:                                              ; preds = %175, %152, %124, %76, %64, %27
  %178 = load i64, i64* %4, align 8
  ret i64 %178
}

declare dso_local i32 @vc_containers_list_find_entry(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @LOG_ERROR(i32*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @rtp_base64_byte_length(i8*, i64) #1

declare dso_local i64 @vc_container_track_allocate_extradata(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i32* @rtp_base64_decode(i8*, i64, i32*, i32) #1

declare dso_local i32 @h264_remove_emulation_prevention_bytes(i32*, i32) #1

declare dso_local i32 @BITS_INIT(i32*, i32*, i32*, i32) #1

declare dso_local i64 @h264_decode_sprop(i32*, %struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
