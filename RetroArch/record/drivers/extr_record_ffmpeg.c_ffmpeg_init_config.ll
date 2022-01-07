; ModuleID = '/home/carl/AnghaBench/RetroArch/record/drivers/extr_record_ffmpeg.c_ffmpeg_init_config.c'
source_filename = "/home/carl/AnghaBench/RetroArch/record/drivers/extr_record_ffmpeg.c_ffmpeg_init_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ff_config_param = type { i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i8* }
%struct.config_file_entry = type { i8*, i32 }

@PIX_FMT_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"[FFmpeg] Loading FFmpeg config \22%s\22.\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"[FFmpeg] Failed to load FFmpeg config \22%s\22.\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"vcodec\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"acodec\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"threads\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"frame_drop_ratio\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"audio_enable\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"sample_rate\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"scale_factor\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"audio_global_quality\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"audio_bit_rate\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"video_global_quality\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"video_bit_rate\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"pix_fmt\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"[FFmpeg] Cannot find pix_fmt \22%s\22.\0A\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"video_\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"audio_\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ff_config_param*, i8*)* @ffmpeg_init_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffmpeg_init_config(%struct.ff_config_param* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ff_config_param*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.config_file_entry, align 8
  %7 = alloca [64 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.ff_config_param* %0, %struct.ff_config_param** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = bitcast [64 x i8]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 64, i1 false)
  %11 = load i32, i32* @PIX_FMT_NONE, align 4
  %12 = load %struct.ff_config_param*, %struct.ff_config_param** %4, align 8
  %13 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %12, i32 0, i32 11
  store i32 %11, i32* %13, align 8
  %14 = load %struct.ff_config_param*, %struct.ff_config_param** %4, align 8
  %15 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load %struct.ff_config_param*, %struct.ff_config_param** %4, align 8
  %17 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %16, i32 0, i32 1
  store i32 1, i32* %17, align 4
  %18 = load %struct.ff_config_param*, %struct.ff_config_param** %4, align 8
  %19 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %18, i32 0, i32 2
  store i32 1, i32* %19, align 8
  %20 = load %struct.ff_config_param*, %struct.ff_config_param** %4, align 8
  %21 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %20, i32 0, i32 3
  store i32 1, i32* %21, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %203

25:                                               ; preds = %2
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @config_file_new_from_path_to_string(i8* %28)
  %30 = load %struct.ff_config_param*, %struct.ff_config_param** %4, align 8
  %31 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %30, i32 0, i32 10
  store i32 %29, i32* %31, align 4
  %32 = icmp ne i32 %29, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %25
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  store i32 0, i32* %3, align 4
  br label %203

36:                                               ; preds = %25
  %37 = load %struct.ff_config_param*, %struct.ff_config_param** %4, align 8
  %38 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %37, i32 0, i32 10
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ff_config_param*, %struct.ff_config_param** %4, align 8
  %41 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %40, i32 0, i32 4
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @config_get_array(i32 %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %42, i32 8)
  %44 = load %struct.ff_config_param*, %struct.ff_config_param** %4, align 8
  %45 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %44, i32 0, i32 10
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ff_config_param*, %struct.ff_config_param** %4, align 8
  %48 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %47, i32 0, i32 5
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @config_get_array(i32 %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %49, i32 8)
  %51 = load %struct.ff_config_param*, %struct.ff_config_param** %4, align 8
  %52 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %51, i32 0, i32 10
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ff_config_param*, %struct.ff_config_param** %4, align 8
  %55 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %54, i32 0, i32 6
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @config_get_array(i32 %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %56, i32 8)
  %58 = load %struct.ff_config_param*, %struct.ff_config_param** %4, align 8
  %59 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %58, i32 0, i32 10
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ff_config_param*, %struct.ff_config_param** %4, align 8
  %62 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %61, i32 0, i32 1
  %63 = call i32 @config_get_uint(i32 %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* %62)
  %64 = load %struct.ff_config_param*, %struct.ff_config_param** %4, align 8
  %65 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %64, i32 0, i32 10
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ff_config_param*, %struct.ff_config_param** %4, align 8
  %68 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %67, i32 0, i32 2
  %69 = call i32 @config_get_uint(i32 %66, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %36
  %72 = load %struct.ff_config_param*, %struct.ff_config_param** %4, align 8
  %73 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %71, %36
  %77 = load %struct.ff_config_param*, %struct.ff_config_param** %4, align 8
  %78 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %77, i32 0, i32 2
  store i32 1, i32* %78, align 8
  br label %79

79:                                               ; preds = %76, %71
  %80 = load %struct.ff_config_param*, %struct.ff_config_param** %4, align 8
  %81 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %80, i32 0, i32 10
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ff_config_param*, %struct.ff_config_param** %4, align 8
  %84 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %83, i32 0, i32 3
  %85 = call i32 @config_get_bool(i32 %82, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %79
  %88 = load %struct.ff_config_param*, %struct.ff_config_param** %4, align 8
  %89 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %88, i32 0, i32 3
  store i32 1, i32* %89, align 4
  br label %90

90:                                               ; preds = %87, %79
  %91 = load %struct.ff_config_param*, %struct.ff_config_param** %4, align 8
  %92 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %91, i32 0, i32 10
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ff_config_param*, %struct.ff_config_param** %4, align 8
  %95 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %94, i32 0, i32 7
  %96 = call i32 @config_get_uint(i32 %93, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32* %95)
  %97 = load %struct.ff_config_param*, %struct.ff_config_param** %4, align 8
  %98 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %97, i32 0, i32 10
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.ff_config_param*, %struct.ff_config_param** %4, align 8
  %101 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %100, i32 0, i32 0
  %102 = call i32 @config_get_float(i32 %99, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32* %101)
  %103 = load %struct.ff_config_param*, %struct.ff_config_param** %4, align 8
  %104 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %103, i32 0, i32 10
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.ff_config_param*, %struct.ff_config_param** %4, align 8
  %107 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %106, i32 0, i32 16
  %108 = call i8* @config_get_int(i32 %105, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32* %107)
  %109 = load %struct.ff_config_param*, %struct.ff_config_param** %4, align 8
  %110 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %109, i32 0, i32 17
  store i8* %108, i8** %110, align 8
  %111 = load %struct.ff_config_param*, %struct.ff_config_param** %4, align 8
  %112 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %111, i32 0, i32 10
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.ff_config_param*, %struct.ff_config_param** %4, align 8
  %115 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %114, i32 0, i32 15
  %116 = call i8* @config_get_int(i32 %113, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32* %115)
  %117 = load %struct.ff_config_param*, %struct.ff_config_param** %4, align 8
  %118 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %117, i32 0, i32 10
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.ff_config_param*, %struct.ff_config_param** %4, align 8
  %121 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %120, i32 0, i32 13
  %122 = call i8* @config_get_int(i32 %119, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32* %121)
  %123 = load %struct.ff_config_param*, %struct.ff_config_param** %4, align 8
  %124 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %123, i32 0, i32 14
  store i8* %122, i8** %124, align 8
  %125 = load %struct.ff_config_param*, %struct.ff_config_param** %4, align 8
  %126 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %125, i32 0, i32 10
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.ff_config_param*, %struct.ff_config_param** %4, align 8
  %129 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %128, i32 0, i32 12
  %130 = call i8* @config_get_int(i32 %127, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i32* %129)
  %131 = load %struct.ff_config_param*, %struct.ff_config_param** %4, align 8
  %132 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %131, i32 0, i32 10
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %135 = call i64 @config_get_array(i32 %133, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8* %134, i32 64)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %151

137:                                              ; preds = %90
  %138 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %139 = call i32 @av_get_pix_fmt(i8* %138)
  %140 = load %struct.ff_config_param*, %struct.ff_config_param** %4, align 8
  %141 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %140, i32 0, i32 11
  store i32 %139, i32* %141, align 8
  %142 = load %struct.ff_config_param*, %struct.ff_config_param** %4, align 8
  %143 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %142, i32 0, i32 11
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @PIX_FMT_NONE, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %137
  %148 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %149 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0), i8* %148)
  store i32 0, i32* %3, align 4
  br label %203

150:                                              ; preds = %137
  br label %151

151:                                              ; preds = %150, %90
  %152 = load %struct.ff_config_param*, %struct.ff_config_param** %4, align 8
  %153 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %152, i32 0, i32 10
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @config_get_entry_list_head(i32 %154, %struct.config_file_entry* %6)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %151
  store i32 1, i32* %3, align 4
  br label %203

158:                                              ; preds = %151
  br label %159

159:                                              ; preds = %199, %158
  %160 = getelementptr inbounds %struct.config_file_entry, %struct.config_file_entry* %6, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = call i8* @strstr(i8* %161, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  %163 = getelementptr inbounds %struct.config_file_entry, %struct.config_file_entry* %6, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  %165 = icmp eq i8* %162, %164
  br i1 %165, label %166, label %178

166:                                              ; preds = %159
  %167 = getelementptr inbounds %struct.config_file_entry, %struct.config_file_entry* %6, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 @STRLEN_CONST(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %168, i64 %170
  store i8* %171, i8** %8, align 8
  %172 = load %struct.ff_config_param*, %struct.ff_config_param** %4, align 8
  %173 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %172, i32 0, i32 9
  %174 = load i8*, i8** %8, align 8
  %175 = getelementptr inbounds %struct.config_file_entry, %struct.config_file_entry* %6, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @av_dict_set(i32* %173, i8* %174, i32 %176, i32 0)
  br label %198

178:                                              ; preds = %159
  %179 = getelementptr inbounds %struct.config_file_entry, %struct.config_file_entry* %6, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8
  %181 = call i8* @strstr(i8* %180, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  %182 = getelementptr inbounds %struct.config_file_entry, %struct.config_file_entry* %6, i32 0, i32 0
  %183 = load i8*, i8** %182, align 8
  %184 = icmp eq i8* %181, %183
  br i1 %184, label %185, label %197

185:                                              ; preds = %178
  %186 = getelementptr inbounds %struct.config_file_entry, %struct.config_file_entry* %6, i32 0, i32 0
  %187 = load i8*, i8** %186, align 8
  %188 = call i32 @STRLEN_CONST(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8, i8* %187, i64 %189
  store i8* %190, i8** %9, align 8
  %191 = load %struct.ff_config_param*, %struct.ff_config_param** %4, align 8
  %192 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %191, i32 0, i32 8
  %193 = load i8*, i8** %9, align 8
  %194 = getelementptr inbounds %struct.config_file_entry, %struct.config_file_entry* %6, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @av_dict_set(i32* %192, i8* %193, i32 %195, i32 0)
  br label %197

197:                                              ; preds = %185, %178
  br label %198

198:                                              ; preds = %197, %166
  br label %199

199:                                              ; preds = %198
  %200 = call i64 @config_get_entry_list_next(%struct.config_file_entry* %6)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %159, label %202

202:                                              ; preds = %199
  store i32 1, i32* %3, align 4
  br label %203

203:                                              ; preds = %202, %157, %147, %33, %24
  %204 = load i32, i32* %3, align 4
  ret i32 %204
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @RARCH_LOG(i8*, i8*) #2

declare dso_local i32 @config_file_new_from_path_to_string(i8*) #2

declare dso_local i32 @RARCH_ERR(i8*, i8*) #2

declare dso_local i64 @config_get_array(i32, i8*, i8*, i32) #2

declare dso_local i32 @config_get_uint(i32, i8*, i32*) #2

declare dso_local i32 @config_get_bool(i32, i8*, i32*) #2

declare dso_local i32 @config_get_float(i32, i8*, i32*) #2

declare dso_local i8* @config_get_int(i32, i8*, i32*) #2

declare dso_local i32 @av_get_pix_fmt(i8*) #2

declare dso_local i32 @config_get_entry_list_head(i32, %struct.config_file_entry*) #2

declare dso_local i8* @strstr(i8*, i8*) #2

declare dso_local i32 @STRLEN_CONST(i8*) #2

declare dso_local i32 @av_dict_set(i32*, i8*, i32, i32) #2

declare dso_local i64 @config_get_entry_list_next(%struct.config_file_entry*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
