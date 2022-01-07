; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/drivers/extr_tinyalsa.c_pcm_set_config.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/drivers/extr_tinyalsa.c_pcm_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm = type { i32, i32, i32, i64, i32, i32, %struct.pcm_config }
%struct.pcm_config = type { i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.snd_pcm_sw_params = type { i32, i32, i32, i32, i32, i32, i64, i64, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, i32, i32, i32, i32, i32, i64, i64, i32, i32 }

@EFAULT = common dso_local global i32 0, align 4
@PCM_FORMAT_S16_LE = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_FORMAT = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_SUBFORMAT = common dso_local global i32 0, align 4
@SNDRV_PCM_SUBFORMAT_STD = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_SIZE = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_SAMPLE_BITS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_FRAME_BITS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@PCM_NOIRQ = common dso_local global i32 0, align 4
@PCM_MMAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"[TINYALSA]: noirq only currently supported with mmap().\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAMS_NO_PERIOD_WAKEUP = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_ACCESS = common dso_local global i32 0, align 4
@SNDRV_PCM_ACCESS_MMAP_INTERLEAVED = common dso_local global i32 0, align 4
@SNDRV_PCM_ACCESS_RW_INTERLEAVED = common dso_local global i32 0, align 4
@SNDRV_PCM_IOCTL_HW_PARAMS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"[TINYALSA]: cannot set HW params.\00", align 1
@errno = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_FILE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"[TINYALSA]: failed to mmap buffer %d bytes\0A\00", align 1
@SNDRV_PCM_TSTAMP_ENABLE = common dso_local global i32 0, align 4
@PCM_IN = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@SNDRV_PCM_IOCTL_SW_PARAMS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"[TINYALSA]: Cannot set HW params.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcm*, %struct.pcm_config*)* @pcm_set_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm_set_config(%struct.pcm* %0, %struct.pcm_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcm*, align 8
  %5 = alloca %struct.pcm_config*, align 8
  %6 = alloca %struct.snd_pcm_sw_params, align 8
  %7 = alloca %struct.snd_pcm_hw_params, align 8
  store %struct.pcm* %0, %struct.pcm** %4, align 8
  store %struct.pcm_config* %1, %struct.pcm_config** %5, align 8
  %8 = load %struct.pcm*, %struct.pcm** %4, align 8
  %9 = icmp eq %struct.pcm* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EFAULT, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %369

13:                                               ; preds = %2
  %14 = load %struct.pcm_config*, %struct.pcm_config** %5, align 8
  %15 = icmp ne %struct.pcm_config* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load %struct.pcm*, %struct.pcm** %4, align 8
  %18 = getelementptr inbounds %struct.pcm, %struct.pcm* %17, i32 0, i32 6
  %19 = load %struct.pcm_config*, %struct.pcm_config** %5, align 8
  %20 = bitcast %struct.pcm_config* %18 to i8*
  %21 = bitcast %struct.pcm_config* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 40, i1 false)
  br label %64

22:                                               ; preds = %13
  %23 = load %struct.pcm*, %struct.pcm** %4, align 8
  %24 = getelementptr inbounds %struct.pcm, %struct.pcm* %23, i32 0, i32 6
  store %struct.pcm_config* %24, %struct.pcm_config** %5, align 8
  %25 = load %struct.pcm*, %struct.pcm** %4, align 8
  %26 = getelementptr inbounds %struct.pcm, %struct.pcm* %25, i32 0, i32 6
  %27 = getelementptr inbounds %struct.pcm_config, %struct.pcm_config* %26, i32 0, i32 0
  store i32 2, i32* %27, align 8
  %28 = load %struct.pcm*, %struct.pcm** %4, align 8
  %29 = getelementptr inbounds %struct.pcm, %struct.pcm* %28, i32 0, i32 6
  %30 = getelementptr inbounds %struct.pcm_config, %struct.pcm_config* %29, i32 0, i32 1
  store i32 48000, i32* %30, align 4
  %31 = load %struct.pcm*, %struct.pcm** %4, align 8
  %32 = getelementptr inbounds %struct.pcm, %struct.pcm* %31, i32 0, i32 6
  %33 = getelementptr inbounds %struct.pcm_config, %struct.pcm_config* %32, i32 0, i32 2
  store i32 1024, i32* %33, align 8
  %34 = load %struct.pcm*, %struct.pcm** %4, align 8
  %35 = getelementptr inbounds %struct.pcm, %struct.pcm* %34, i32 0, i32 6
  %36 = getelementptr inbounds %struct.pcm_config, %struct.pcm_config* %35, i32 0, i32 3
  store i32 4, i32* %36, align 4
  %37 = load i32, i32* @PCM_FORMAT_S16_LE, align 4
  %38 = load %struct.pcm*, %struct.pcm** %4, align 8
  %39 = getelementptr inbounds %struct.pcm, %struct.pcm* %38, i32 0, i32 6
  %40 = getelementptr inbounds %struct.pcm_config, %struct.pcm_config* %39, i32 0, i32 7
  store i32 %37, i32* %40, align 8
  %41 = load %struct.pcm_config*, %struct.pcm_config** %5, align 8
  %42 = getelementptr inbounds %struct.pcm_config, %struct.pcm_config* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.pcm_config*, %struct.pcm_config** %5, align 8
  %45 = getelementptr inbounds %struct.pcm_config, %struct.pcm_config* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = mul nsw i32 %43, %46
  %48 = load %struct.pcm*, %struct.pcm** %4, align 8
  %49 = getelementptr inbounds %struct.pcm, %struct.pcm* %48, i32 0, i32 6
  %50 = getelementptr inbounds %struct.pcm_config, %struct.pcm_config* %49, i32 0, i32 4
  store i32 %47, i32* %50, align 8
  %51 = load %struct.pcm_config*, %struct.pcm_config** %5, align 8
  %52 = getelementptr inbounds %struct.pcm_config, %struct.pcm_config* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.pcm_config*, %struct.pcm_config** %5, align 8
  %55 = getelementptr inbounds %struct.pcm_config, %struct.pcm_config* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = mul nsw i32 %53, %56
  %58 = load %struct.pcm*, %struct.pcm** %4, align 8
  %59 = getelementptr inbounds %struct.pcm, %struct.pcm* %58, i32 0, i32 6
  %60 = getelementptr inbounds %struct.pcm_config, %struct.pcm_config* %59, i32 0, i32 5
  store i32 %57, i32* %60, align 4
  %61 = load %struct.pcm*, %struct.pcm** %4, align 8
  %62 = getelementptr inbounds %struct.pcm, %struct.pcm* %61, i32 0, i32 6
  %63 = getelementptr inbounds %struct.pcm_config, %struct.pcm_config* %62, i32 0, i32 6
  store i64 0, i64* %63, align 8
  br label %64

64:                                               ; preds = %22, %16
  %65 = bitcast %struct.snd_pcm_hw_params* %7 to %struct.snd_pcm_sw_params*
  %66 = call i32 @param_init(%struct.snd_pcm_sw_params* %65)
  %67 = bitcast %struct.snd_pcm_hw_params* %7 to %struct.snd_pcm_sw_params*
  %68 = load i32, i32* @SNDRV_PCM_HW_PARAM_FORMAT, align 4
  %69 = load %struct.pcm_config*, %struct.pcm_config** %5, align 8
  %70 = getelementptr inbounds %struct.pcm_config, %struct.pcm_config* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @pcm_format_to_alsa(i32 %71)
  %73 = call i32 @param_set_mask(%struct.snd_pcm_sw_params* %67, i32 %68, i32 %72)
  %74 = bitcast %struct.snd_pcm_hw_params* %7 to %struct.snd_pcm_sw_params*
  %75 = load i32, i32* @SNDRV_PCM_HW_PARAM_SUBFORMAT, align 4
  %76 = load i32, i32* @SNDRV_PCM_SUBFORMAT_STD, align 4
  %77 = call i32 @param_set_mask(%struct.snd_pcm_sw_params* %74, i32 %75, i32 %76)
  %78 = bitcast %struct.snd_pcm_hw_params* %7 to %struct.snd_pcm_sw_params*
  %79 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_SIZE, align 4
  %80 = load %struct.pcm_config*, %struct.pcm_config** %5, align 8
  %81 = getelementptr inbounds %struct.pcm_config, %struct.pcm_config* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @param_set_min(%struct.snd_pcm_sw_params* %78, i32 %79, i32 %82)
  %84 = bitcast %struct.snd_pcm_hw_params* %7 to %struct.snd_pcm_sw_params*
  %85 = load i32, i32* @SNDRV_PCM_HW_PARAM_SAMPLE_BITS, align 4
  %86 = load %struct.pcm_config*, %struct.pcm_config** %5, align 8
  %87 = getelementptr inbounds %struct.pcm_config, %struct.pcm_config* %86, i32 0, i32 7
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @pcm_format_to_bits(i32 %88)
  %90 = call i32 @param_set_int(%struct.snd_pcm_sw_params* %84, i32 %85, i32 %89)
  %91 = bitcast %struct.snd_pcm_hw_params* %7 to %struct.snd_pcm_sw_params*
  %92 = load i32, i32* @SNDRV_PCM_HW_PARAM_FRAME_BITS, align 4
  %93 = load %struct.pcm_config*, %struct.pcm_config** %5, align 8
  %94 = getelementptr inbounds %struct.pcm_config, %struct.pcm_config* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @pcm_format_to_bits(i32 %95)
  %97 = load %struct.pcm_config*, %struct.pcm_config** %5, align 8
  %98 = getelementptr inbounds %struct.pcm_config, %struct.pcm_config* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = mul nsw i32 %96, %99
  %101 = call i32 @param_set_int(%struct.snd_pcm_sw_params* %91, i32 %92, i32 %100)
  %102 = bitcast %struct.snd_pcm_hw_params* %7 to %struct.snd_pcm_sw_params*
  %103 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %104 = load %struct.pcm_config*, %struct.pcm_config** %5, align 8
  %105 = getelementptr inbounds %struct.pcm_config, %struct.pcm_config* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @param_set_int(%struct.snd_pcm_sw_params* %102, i32 %103, i32 %106)
  %108 = bitcast %struct.snd_pcm_hw_params* %7 to %struct.snd_pcm_sw_params*
  %109 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %110 = load %struct.pcm_config*, %struct.pcm_config** %5, align 8
  %111 = getelementptr inbounds %struct.pcm_config, %struct.pcm_config* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @param_set_int(%struct.snd_pcm_sw_params* %108, i32 %109, i32 %112)
  %114 = bitcast %struct.snd_pcm_hw_params* %7 to %struct.snd_pcm_sw_params*
  %115 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %116 = load %struct.pcm_config*, %struct.pcm_config** %5, align 8
  %117 = getelementptr inbounds %struct.pcm_config, %struct.pcm_config* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @param_set_int(%struct.snd_pcm_sw_params* %114, i32 %115, i32 %118)
  %120 = load %struct.pcm*, %struct.pcm** %4, align 8
  %121 = getelementptr inbounds %struct.pcm, %struct.pcm* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @PCM_NOIRQ, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %148

126:                                              ; preds = %64
  %127 = load %struct.pcm*, %struct.pcm** %4, align 8
  %128 = getelementptr inbounds %struct.pcm, %struct.pcm* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @PCM_MMAP, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %126
  %134 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %3, align 4
  br label %369

137:                                              ; preds = %126
  %138 = load i32, i32* @SNDRV_PCM_HW_PARAMS_NO_PERIOD_WAKEUP, align 4
  %139 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %7, i32 0, i32 9
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, %138
  store i32 %141, i32* %139, align 4
  %142 = load %struct.pcm_config*, %struct.pcm_config** %5, align 8
  %143 = getelementptr inbounds %struct.pcm_config, %struct.pcm_config* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = sdiv i32 %144, 1000
  %146 = load %struct.pcm*, %struct.pcm** %4, align 8
  %147 = getelementptr inbounds %struct.pcm, %struct.pcm* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 4
  br label %148

148:                                              ; preds = %137, %64
  %149 = load %struct.pcm*, %struct.pcm** %4, align 8
  %150 = getelementptr inbounds %struct.pcm, %struct.pcm* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @PCM_MMAP, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %148
  %156 = bitcast %struct.snd_pcm_hw_params* %7 to %struct.snd_pcm_sw_params*
  %157 = load i32, i32* @SNDRV_PCM_HW_PARAM_ACCESS, align 4
  %158 = load i32, i32* @SNDRV_PCM_ACCESS_MMAP_INTERLEAVED, align 4
  %159 = call i32 @param_set_mask(%struct.snd_pcm_sw_params* %156, i32 %157, i32 %158)
  br label %165

160:                                              ; preds = %148
  %161 = bitcast %struct.snd_pcm_hw_params* %7 to %struct.snd_pcm_sw_params*
  %162 = load i32, i32* @SNDRV_PCM_HW_PARAM_ACCESS, align 4
  %163 = load i32, i32* @SNDRV_PCM_ACCESS_RW_INTERLEAVED, align 4
  %164 = call i32 @param_set_mask(%struct.snd_pcm_sw_params* %161, i32 %162, i32 %163)
  br label %165

165:                                              ; preds = %160, %155
  %166 = load %struct.pcm*, %struct.pcm** %4, align 8
  %167 = getelementptr inbounds %struct.pcm, %struct.pcm* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @SNDRV_PCM_IOCTL_HW_PARAMS, align 4
  %170 = bitcast %struct.snd_pcm_hw_params* %7 to %struct.snd_pcm_sw_params*
  %171 = call i64 @ioctl(i32 %168, i32 %169, %struct.snd_pcm_sw_params* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %165
  %174 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %175 = load i32, i32* @errno, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %3, align 4
  br label %369

177:                                              ; preds = %165
  %178 = bitcast %struct.snd_pcm_hw_params* %7 to %struct.snd_pcm_sw_params*
  %179 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_SIZE, align 4
  %180 = call i8* @param_get_int(%struct.snd_pcm_sw_params* %178, i32 %179)
  %181 = ptrtoint i8* %180 to i32
  %182 = load %struct.pcm*, %struct.pcm** %4, align 8
  %183 = getelementptr inbounds %struct.pcm, %struct.pcm* %182, i32 0, i32 6
  %184 = getelementptr inbounds %struct.pcm_config, %struct.pcm_config* %183, i32 0, i32 2
  store i32 %181, i32* %184, align 8
  %185 = bitcast %struct.snd_pcm_hw_params* %7 to %struct.snd_pcm_sw_params*
  %186 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %187 = call i8* @param_get_int(%struct.snd_pcm_sw_params* %185, i32 %186)
  %188 = ptrtoint i8* %187 to i32
  %189 = load %struct.pcm*, %struct.pcm** %4, align 8
  %190 = getelementptr inbounds %struct.pcm, %struct.pcm* %189, i32 0, i32 6
  %191 = getelementptr inbounds %struct.pcm_config, %struct.pcm_config* %190, i32 0, i32 3
  store i32 %188, i32* %191, align 4
  %192 = load %struct.pcm_config*, %struct.pcm_config** %5, align 8
  %193 = getelementptr inbounds %struct.pcm_config, %struct.pcm_config* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.pcm_config*, %struct.pcm_config** %5, align 8
  %196 = getelementptr inbounds %struct.pcm_config, %struct.pcm_config* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = mul nsw i32 %194, %197
  %199 = load %struct.pcm*, %struct.pcm** %4, align 8
  %200 = getelementptr inbounds %struct.pcm, %struct.pcm* %199, i32 0, i32 2
  store i32 %198, i32* %200, align 8
  %201 = load %struct.pcm*, %struct.pcm** %4, align 8
  %202 = getelementptr inbounds %struct.pcm, %struct.pcm* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @PCM_MMAP, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %240

207:                                              ; preds = %177
  %208 = load %struct.pcm*, %struct.pcm** %4, align 8
  %209 = load %struct.pcm*, %struct.pcm** %4, align 8
  %210 = getelementptr inbounds %struct.pcm, %struct.pcm* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @pcm_frames_to_bytes(%struct.pcm* %208, i32 %211)
  %213 = load i32, i32* @PROT_READ, align 4
  %214 = load i32, i32* @PROT_WRITE, align 4
  %215 = or i32 %213, %214
  %216 = load i32, i32* @MAP_FILE, align 4
  %217 = load i32, i32* @MAP_SHARED, align 4
  %218 = or i32 %216, %217
  %219 = load %struct.pcm*, %struct.pcm** %4, align 8
  %220 = getelementptr inbounds %struct.pcm, %struct.pcm* %219, i32 0, i32 5
  %221 = load i32, i32* %220, align 4
  %222 = call i64 @mmap(i32* null, i32 %212, i32 %215, i32 %218, i32 %221, i32 0)
  %223 = load %struct.pcm*, %struct.pcm** %4, align 8
  %224 = getelementptr inbounds %struct.pcm, %struct.pcm* %223, i32 0, i32 3
  store i64 %222, i64* %224, align 8
  %225 = load %struct.pcm*, %struct.pcm** %4, align 8
  %226 = getelementptr inbounds %struct.pcm, %struct.pcm* %225, i32 0, i32 3
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @MAP_FAILED, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %239

230:                                              ; preds = %207
  %231 = load %struct.pcm*, %struct.pcm** %4, align 8
  %232 = load %struct.pcm*, %struct.pcm** %4, align 8
  %233 = getelementptr inbounds %struct.pcm, %struct.pcm* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @pcm_frames_to_bytes(%struct.pcm* %231, i32 %234)
  %236 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %235)
  %237 = load i32, i32* @errno, align 4
  %238 = sub nsw i32 0, %237
  store i32 %238, i32* %3, align 4
  br label %369

239:                                              ; preds = %207
  br label %240

240:                                              ; preds = %239, %177
  %241 = call i32 @memset(%struct.snd_pcm_sw_params* %6, i32 0, i32 48)
  %242 = load i32, i32* @SNDRV_PCM_TSTAMP_ENABLE, align 4
  %243 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %6, i32 0, i32 8
  store i32 %242, i32* %243, align 8
  %244 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %6, i32 0, i32 0
  store i32 1, i32* %244, align 8
  %245 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %6, i32 0, i32 1
  store i32 1, i32* %245, align 4
  %246 = load %struct.pcm_config*, %struct.pcm_config** %5, align 8
  %247 = getelementptr inbounds %struct.pcm_config, %struct.pcm_config* %246, i32 0, i32 4
  %248 = load i32, i32* %247, align 8
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %276, label %250

250:                                              ; preds = %240
  %251 = load %struct.pcm*, %struct.pcm** %4, align 8
  %252 = getelementptr inbounds %struct.pcm, %struct.pcm* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @PCM_IN, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %262

257:                                              ; preds = %250
  %258 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %6, i32 0, i32 2
  store i32 1, i32* %258, align 8
  %259 = load %struct.pcm*, %struct.pcm** %4, align 8
  %260 = getelementptr inbounds %struct.pcm, %struct.pcm* %259, i32 0, i32 6
  %261 = getelementptr inbounds %struct.pcm_config, %struct.pcm_config* %260, i32 0, i32 4
  store i32 1, i32* %261, align 8
  br label %275

262:                                              ; preds = %250
  %263 = load %struct.pcm_config*, %struct.pcm_config** %5, align 8
  %264 = getelementptr inbounds %struct.pcm_config, %struct.pcm_config* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.pcm_config*, %struct.pcm_config** %5, align 8
  %267 = getelementptr inbounds %struct.pcm_config, %struct.pcm_config* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 8
  %269 = mul nsw i32 %265, %268
  %270 = sdiv i32 %269, 2
  %271 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %6, i32 0, i32 2
  store i32 %270, i32* %271, align 8
  %272 = load %struct.pcm*, %struct.pcm** %4, align 8
  %273 = getelementptr inbounds %struct.pcm, %struct.pcm* %272, i32 0, i32 6
  %274 = getelementptr inbounds %struct.pcm_config, %struct.pcm_config* %273, i32 0, i32 4
  store i32 %270, i32* %274, align 8
  br label %275

275:                                              ; preds = %262, %257
  br label %281

276:                                              ; preds = %240
  %277 = load %struct.pcm_config*, %struct.pcm_config** %5, align 8
  %278 = getelementptr inbounds %struct.pcm_config, %struct.pcm_config* %277, i32 0, i32 4
  %279 = load i32, i32* %278, align 8
  %280 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %6, i32 0, i32 2
  store i32 %279, i32* %280, align 8
  br label %281

281:                                              ; preds = %276, %275
  %282 = load %struct.pcm_config*, %struct.pcm_config** %5, align 8
  %283 = getelementptr inbounds %struct.pcm_config, %struct.pcm_config* %282, i32 0, i32 5
  %284 = load i32, i32* %283, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %319, label %286

286:                                              ; preds = %281
  %287 = load %struct.pcm*, %struct.pcm** %4, align 8
  %288 = getelementptr inbounds %struct.pcm, %struct.pcm* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* @PCM_IN, align 4
  %291 = and i32 %289, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %306

293:                                              ; preds = %286
  %294 = load %struct.pcm_config*, %struct.pcm_config** %5, align 8
  %295 = getelementptr inbounds %struct.pcm_config, %struct.pcm_config* %294, i32 0, i32 3
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.pcm_config*, %struct.pcm_config** %5, align 8
  %298 = getelementptr inbounds %struct.pcm_config, %struct.pcm_config* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 8
  %300 = mul nsw i32 %296, %299
  %301 = mul nsw i32 %300, 10
  %302 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %6, i32 0, i32 3
  store i32 %301, i32* %302, align 4
  %303 = load %struct.pcm*, %struct.pcm** %4, align 8
  %304 = getelementptr inbounds %struct.pcm, %struct.pcm* %303, i32 0, i32 6
  %305 = getelementptr inbounds %struct.pcm_config, %struct.pcm_config* %304, i32 0, i32 5
  store i32 %301, i32* %305, align 4
  br label %318

306:                                              ; preds = %286
  %307 = load %struct.pcm_config*, %struct.pcm_config** %5, align 8
  %308 = getelementptr inbounds %struct.pcm_config, %struct.pcm_config* %307, i32 0, i32 3
  %309 = load i32, i32* %308, align 4
  %310 = load %struct.pcm_config*, %struct.pcm_config** %5, align 8
  %311 = getelementptr inbounds %struct.pcm_config, %struct.pcm_config* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 8
  %313 = mul nsw i32 %309, %312
  %314 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %6, i32 0, i32 3
  store i32 %313, i32* %314, align 4
  %315 = load %struct.pcm*, %struct.pcm** %4, align 8
  %316 = getelementptr inbounds %struct.pcm, %struct.pcm* %315, i32 0, i32 6
  %317 = getelementptr inbounds %struct.pcm_config, %struct.pcm_config* %316, i32 0, i32 5
  store i32 %313, i32* %317, align 4
  br label %318

318:                                              ; preds = %306, %293
  br label %324

319:                                              ; preds = %281
  %320 = load %struct.pcm_config*, %struct.pcm_config** %5, align 8
  %321 = getelementptr inbounds %struct.pcm_config, %struct.pcm_config* %320, i32 0, i32 5
  %322 = load i32, i32* %321, align 4
  %323 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %6, i32 0, i32 3
  store i32 %322, i32* %323, align 4
  br label %324

324:                                              ; preds = %319, %318
  %325 = load %struct.pcm_config*, %struct.pcm_config** %5, align 8
  %326 = getelementptr inbounds %struct.pcm_config, %struct.pcm_config* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 8
  %328 = sdiv i32 %327, 2
  %329 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %6, i32 0, i32 4
  store i32 %328, i32* %329, align 8
  %330 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %6, i32 0, i32 7
  store i64 0, i64* %330, align 8
  %331 = load %struct.pcm_config*, %struct.pcm_config** %5, align 8
  %332 = getelementptr inbounds %struct.pcm_config, %struct.pcm_config* %331, i32 0, i32 6
  %333 = load i64, i64* %332, align 8
  %334 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %6, i32 0, i32 6
  store i64 %333, i64* %334, align 8
  %335 = load %struct.pcm*, %struct.pcm** %4, align 8
  %336 = getelementptr inbounds %struct.pcm, %struct.pcm* %335, i32 0, i32 2
  %337 = load i32, i32* %336, align 8
  %338 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %6, i32 0, i32 5
  store i32 %337, i32* %338, align 4
  %339 = load %struct.pcm*, %struct.pcm** %4, align 8
  %340 = getelementptr inbounds %struct.pcm, %struct.pcm* %339, i32 0, i32 4
  store i32 %337, i32* %340, align 8
  br label %341

341:                                              ; preds = %352, %324
  %342 = load %struct.pcm*, %struct.pcm** %4, align 8
  %343 = getelementptr inbounds %struct.pcm, %struct.pcm* %342, i32 0, i32 4
  %344 = load i32, i32* %343, align 8
  %345 = mul nsw i32 %344, 2
  %346 = load i32, i32* @INT_MAX, align 4
  %347 = load %struct.pcm*, %struct.pcm** %4, align 8
  %348 = getelementptr inbounds %struct.pcm, %struct.pcm* %347, i32 0, i32 2
  %349 = load i32, i32* %348, align 8
  %350 = sub nsw i32 %346, %349
  %351 = icmp sle i32 %345, %350
  br i1 %351, label %352, label %357

352:                                              ; preds = %341
  %353 = load %struct.pcm*, %struct.pcm** %4, align 8
  %354 = getelementptr inbounds %struct.pcm, %struct.pcm* %353, i32 0, i32 4
  %355 = load i32, i32* %354, align 8
  %356 = mul nsw i32 %355, 2
  store i32 %356, i32* %354, align 8
  br label %341

357:                                              ; preds = %341
  %358 = load %struct.pcm*, %struct.pcm** %4, align 8
  %359 = getelementptr inbounds %struct.pcm, %struct.pcm* %358, i32 0, i32 5
  %360 = load i32, i32* %359, align 4
  %361 = load i32, i32* @SNDRV_PCM_IOCTL_SW_PARAMS, align 4
  %362 = call i64 @ioctl(i32 %360, i32 %361, %struct.snd_pcm_sw_params* %6)
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %368

364:                                              ; preds = %357
  %365 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %366 = load i32, i32* @errno, align 4
  %367 = sub nsw i32 0, %366
  store i32 %367, i32* %3, align 4
  br label %369

368:                                              ; preds = %357
  store i32 0, i32* %3, align 4
  br label %369

369:                                              ; preds = %368, %364, %230, %173, %133, %10
  %370 = load i32, i32* %3, align 4
  ret i32 %370
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @param_init(%struct.snd_pcm_sw_params*) #2

declare dso_local i32 @param_set_mask(%struct.snd_pcm_sw_params*, i32, i32) #2

declare dso_local i32 @pcm_format_to_alsa(i32) #2

declare dso_local i32 @param_set_min(%struct.snd_pcm_sw_params*, i32, i32) #2

declare dso_local i32 @param_set_int(%struct.snd_pcm_sw_params*, i32, i32) #2

declare dso_local i32 @pcm_format_to_bits(i32) #2

declare dso_local i32 @RARCH_ERR(i8*, ...) #2

declare dso_local i64 @ioctl(i32, i32, %struct.snd_pcm_sw_params*) #2

declare dso_local i8* @param_get_int(%struct.snd_pcm_sw_params*, i32) #2

declare dso_local i64 @mmap(i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @pcm_frames_to_bytes(%struct.pcm*, i32) #2

declare dso_local i32 @memset(%struct.snd_pcm_sw_params*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
