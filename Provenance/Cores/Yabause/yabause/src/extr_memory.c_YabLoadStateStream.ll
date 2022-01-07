; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_memory.c_YabLoadStateStream.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_memory.c_YabLoadStateStream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64, i32 (i32*, i32*)* }
%struct.TYPE_5__ = type { i32, i64 }

@.str = private unnamed_addr constant [4 x i8] c"YSS\00", align 1
@framecounter = common dso_local global i32 0, align 4
@YAB_ERR_OTHER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Load State byteswapping not supported\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@SCSP_MUTE_SYSTEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"CART\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"CS2 \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"MSH2\00", align 1
@MSH2 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"SSH2\00", align 1
@SSH2 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"SCSP\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"SCU \00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"SMPC\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"VDP1\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"VDP2\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"OTHR\00", align 1
@BupRam = common dso_local global i64 0, align 8
@HighWram = common dso_local global i64 0, align 8
@LowWram = common dso_local global i64 0, align 8
@yabsys = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@YABSYS_TIMING_BITS = common dso_local global i32 0, align 4
@VIDCore = common dso_local global %struct.TYPE_7__* null, align 8
@OSDMSG_STATUS = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [13 x i8] c"STATE LOADED\00", align 1
@GL_RGBA = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4
@VIDCORE_OGL = common dso_local global i64 0, align 8
@VIDCORE_SOFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @YabLoadStateStream(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [3 x i8], align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 12, i32* %10, align 4
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = getelementptr inbounds [3 x i8], [3 x i8]* %4, i64 0, i64 0
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @yread(%struct.TYPE_5__* %11, i8* %24, i32 1, i32 3, i32* %25)
  %27 = getelementptr inbounds [3 x i8], [3 x i8]* %4, i64 0, i64 0
  %28 = call i64 @strncmp(i8* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  store i32 -2, i32* %2, align 4
  br label %273

31:                                               ; preds = %1
  %32 = bitcast i32* %5 to i8*
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @yread(%struct.TYPE_5__* %11, i8* %32, i32 1, i32 1, i32* %33)
  %35 = bitcast i32* %6 to i8*
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @yread(%struct.TYPE_5__* %11, i8* %35, i32 4, i32 1, i32* %36)
  %38 = bitcast i32* %8 to i8*
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @yread(%struct.TYPE_5__* %11, i8* %38, i32 4, i32 1, i32* %39)
  %41 = load i32, i32* %6, align 4
  switch i32 %41, label %51 [
    i32 1, label %42
    i32 2, label %43
  ]

42:                                               ; preds = %31
  br label %52

43:                                               ; preds = %31
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @yread(%struct.TYPE_5__* %11, i8* bitcast (i32* @framecounter to i8*), i32 4, i32 1, i32* %44)
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @ftell(i32* %46)
  store i32 %47, i32* %18, align 4
  %48 = bitcast i32* %18 to i8*
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @yread(%struct.TYPE_5__* %11, i8* %48, i32 4, i32 1, i32* %49)
  store i32 20, i32* %10, align 4
  br label %52

51:                                               ; preds = %31
  store i32 -3, i32* %2, align 4
  br label %273

52:                                               ; preds = %43, %42
  %53 = load i32, i32* %5, align 4
  %54 = icmp eq i32 %53, 0
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %21, align 4
  %56 = load i32, i32* %21, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* @YAB_ERR_OTHER, align 4
  %60 = call i32 @YabSetError(i32 %59, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i32 -3, i32* %2, align 4
  br label %273

61:                                               ; preds = %52
  %62 = load i32*, i32** %3, align 8
  %63 = load i32, i32* @SEEK_END, align 4
  %64 = call i32 @fseek(i32* %62, i32 0, i32 %63)
  %65 = load i32, i32* %8, align 4
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 @ftell(i32* %66)
  %68 = load i32, i32* %10, align 4
  %69 = sub nsw i32 %67, %68
  %70 = icmp ne i32 %65, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  store i32 -2, i32* %2, align 4
  br label %273

72:                                               ; preds = %61
  %73 = load i32*, i32** %3, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @SEEK_SET, align 4
  %76 = call i32 @fseek(i32* %73, i32 %74, i32 %75)
  %77 = load i32, i32* @SCSP_MUTE_SYSTEM, align 4
  %78 = call i32 @ScspMuteAudio(i32 %77)
  %79 = load i32*, i32** %3, align 8
  %80 = call i64 @StateCheckRetrieveHeader(i32* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %7, i32* %9)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %72
  %83 = load i32, i32* @SCSP_MUTE_SYSTEM, align 4
  %84 = call i32 @ScspUnMuteAudio(i32 %83)
  store i32 -3, i32* %2, align 4
  br label %273

85:                                               ; preds = %72
  %86 = load i32*, i32** %3, align 8
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @CartLoadState(i32* %86, i32 %87, i32 %88)
  %90 = load i32*, i32** %3, align 8
  %91 = call i64 @StateCheckRetrieveHeader(i32* %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* %7, i32* %9)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %85
  %94 = load i32, i32* @SCSP_MUTE_SYSTEM, align 4
  %95 = call i32 @ScspUnMuteAudio(i32 %94)
  store i32 -3, i32* %2, align 4
  br label %273

96:                                               ; preds = %85
  %97 = load i32*, i32** %3, align 8
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @Cs2LoadState(i32* %97, i32 %98, i32 %99)
  %101 = load i32*, i32** %3, align 8
  %102 = call i64 @StateCheckRetrieveHeader(i32* %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* %7, i32* %9)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %96
  %105 = load i32, i32* @SCSP_MUTE_SYSTEM, align 4
  %106 = call i32 @ScspUnMuteAudio(i32 %105)
  store i32 -3, i32* %2, align 4
  br label %273

107:                                              ; preds = %96
  %108 = load i32, i32* @MSH2, align 4
  %109 = load i32*, i32** %3, align 8
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @SH2LoadState(i32 %108, i32* %109, i32 %110, i32 %111)
  %113 = load i32*, i32** %3, align 8
  %114 = call i64 @StateCheckRetrieveHeader(i32* %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32* %7, i32* %9)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %107
  %117 = load i32, i32* @SCSP_MUTE_SYSTEM, align 4
  %118 = call i32 @ScspUnMuteAudio(i32 %117)
  store i32 -3, i32* %2, align 4
  br label %273

119:                                              ; preds = %107
  %120 = load i32, i32* @SSH2, align 4
  %121 = load i32*, i32** %3, align 8
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @SH2LoadState(i32 %120, i32* %121, i32 %122, i32 %123)
  %125 = load i32*, i32** %3, align 8
  %126 = call i64 @StateCheckRetrieveHeader(i32* %125, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32* %7, i32* %9)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %119
  %129 = load i32, i32* @SCSP_MUTE_SYSTEM, align 4
  %130 = call i32 @ScspUnMuteAudio(i32 %129)
  store i32 -3, i32* %2, align 4
  br label %273

131:                                              ; preds = %119
  %132 = load i32*, i32** %3, align 8
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* %9, align 4
  %135 = call i32 @SoundLoadState(i32* %132, i32 %133, i32 %134)
  %136 = load i32*, i32** %3, align 8
  %137 = call i64 @StateCheckRetrieveHeader(i32* %136, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32* %7, i32* %9)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %131
  %140 = load i32, i32* @SCSP_MUTE_SYSTEM, align 4
  %141 = call i32 @ScspUnMuteAudio(i32 %140)
  store i32 -3, i32* %2, align 4
  br label %273

142:                                              ; preds = %131
  %143 = load i32*, i32** %3, align 8
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* %9, align 4
  %146 = call i32 @ScuLoadState(i32* %143, i32 %144, i32 %145)
  %147 = load i32*, i32** %3, align 8
  %148 = call i64 @StateCheckRetrieveHeader(i32* %147, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32* %7, i32* %9)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %142
  %151 = load i32, i32* @SCSP_MUTE_SYSTEM, align 4
  %152 = call i32 @ScspUnMuteAudio(i32 %151)
  store i32 -3, i32* %2, align 4
  br label %273

153:                                              ; preds = %142
  %154 = load i32*, i32** %3, align 8
  %155 = load i32, i32* %7, align 4
  %156 = load i32, i32* %9, align 4
  %157 = call i32 @SmpcLoadState(i32* %154, i32 %155, i32 %156)
  %158 = load i32*, i32** %3, align 8
  %159 = call i64 @StateCheckRetrieveHeader(i32* %158, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32* %7, i32* %9)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %153
  %162 = load i32, i32* @SCSP_MUTE_SYSTEM, align 4
  %163 = call i32 @ScspUnMuteAudio(i32 %162)
  store i32 -3, i32* %2, align 4
  br label %273

164:                                              ; preds = %153
  %165 = load i32*, i32** %3, align 8
  %166 = load i32, i32* %7, align 4
  %167 = load i32, i32* %9, align 4
  %168 = call i32 @Vdp1LoadState(i32* %165, i32 %166, i32 %167)
  %169 = load i32*, i32** %3, align 8
  %170 = call i64 @StateCheckRetrieveHeader(i32* %169, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %7, i32* %9)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %164
  %173 = load i32, i32* @SCSP_MUTE_SYSTEM, align 4
  %174 = call i32 @ScspUnMuteAudio(i32 %173)
  store i32 -3, i32* %2, align 4
  br label %273

175:                                              ; preds = %164
  %176 = load i32*, i32** %3, align 8
  %177 = load i32, i32* %7, align 4
  %178 = load i32, i32* %9, align 4
  %179 = call i32 @Vdp2LoadState(i32* %176, i32 %177, i32 %178)
  %180 = load i32*, i32** %3, align 8
  %181 = call i64 @StateCheckRetrieveHeader(i32* %180, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32* %7, i32* %9)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %175
  %184 = load i32, i32* @SCSP_MUTE_SYSTEM, align 4
  %185 = call i32 @ScspUnMuteAudio(i32 %184)
  store i32 -3, i32* %2, align 4
  br label %273

186:                                              ; preds = %175
  %187 = load i64, i64* @BupRam, align 8
  %188 = inttoptr i64 %187 to i8*
  %189 = load i32*, i32** %3, align 8
  %190 = call i32 @yread(%struct.TYPE_5__* %11, i8* %188, i32 65536, i32 1, i32* %189)
  %191 = load i64, i64* @HighWram, align 8
  %192 = inttoptr i64 %191 to i8*
  %193 = load i32*, i32** %3, align 8
  %194 = call i32 @yread(%struct.TYPE_5__* %11, i8* %192, i32 1048576, i32 1, i32* %193)
  %195 = load i64, i64* @LowWram, align 8
  %196 = inttoptr i64 %195 to i8*
  %197 = load i32*, i32** %3, align 8
  %198 = call i32 @yread(%struct.TYPE_5__* %11, i8* %196, i32 1048576, i32 1, i32* %197)
  %199 = load i32*, i32** %3, align 8
  %200 = call i32 @yread(%struct.TYPE_5__* %11, i8* bitcast (i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @yabsys, i32 0, i32 6) to i8*), i32 4, i32 1, i32* %199)
  %201 = load i32*, i32** %3, align 8
  %202 = call i32 @yread(%struct.TYPE_5__* %11, i8* bitcast (i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @yabsys, i32 0, i32 5) to i8*), i32 4, i32 1, i32* %201)
  %203 = load i32*, i32** %3, align 8
  %204 = call i32 @yread(%struct.TYPE_5__* %11, i8* bitcast (i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @yabsys, i32 0, i32 4) to i8*), i32 4, i32 1, i32* %203)
  %205 = load i32*, i32** %3, align 8
  %206 = call i32 @yread(%struct.TYPE_5__* %11, i8* bitcast (i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @yabsys, i32 0, i32 3) to i8*), i32 4, i32 1, i32* %205)
  %207 = bitcast i32* %19 to i8*
  %208 = load i32*, i32** %3, align 8
  %209 = call i32 @yread(%struct.TYPE_5__* %11, i8* %207, i32 4, i32 1, i32* %208)
  %210 = bitcast i32* %19 to i8*
  %211 = load i32*, i32** %3, align 8
  %212 = call i32 @yread(%struct.TYPE_5__* %11, i8* %210, i32 4, i32 1, i32* %211)
  %213 = bitcast i32* %20 to i8*
  %214 = load i32*, i32** %3, align 8
  %215 = call i32 @yread(%struct.TYPE_5__* %11, i8* %213, i32 4, i32 1, i32* %214)
  %216 = load i32*, i32** %3, align 8
  %217 = call i32 @yread(%struct.TYPE_5__* %11, i8* bitcast (i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @yabsys, i32 0, i32 1) to i8*), i32 4, i32 1, i32* %216)
  %218 = load i32*, i32** %3, align 8
  %219 = call i32 @yread(%struct.TYPE_5__* %11, i8* bitcast (i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @yabsys, i32 0, i32 2) to i8*), i32 4, i32 1, i32* %218)
  %220 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @yabsys, i32 0, i32 1), align 4
  %221 = call i32 @YabauseChangeTiming(i32 %220)
  %222 = load i32, i32* %20, align 4
  %223 = load i32, i32* @YABSYS_TIMING_BITS, align 4
  %224 = shl i32 %222, %223
  %225 = load i32, i32* %19, align 4
  %226 = mul nsw i32 %224, %225
  %227 = sdiv i32 %226, 10
  store i32 %227, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @yabsys, i32 0, i32 0), align 4
  %228 = load i32, i32* %6, align 4
  %229 = icmp sgt i32 %228, 1
  br i1 %229, label %230, label %268

230:                                              ; preds = %186
  %231 = bitcast i32* %14 to i8*
  %232 = load i32*, i32** %3, align 8
  %233 = call i32 @yread(%struct.TYPE_5__* %11, i8* %231, i32 4, i32 1, i32* %232)
  %234 = bitcast i32* %15 to i8*
  %235 = load i32*, i32** %3, align 8
  %236 = call i32 @yread(%struct.TYPE_5__* %11, i8* %234, i32 4, i32 1, i32* %235)
  %237 = load i32, i32* %14, align 4
  %238 = load i32, i32* %15, align 4
  %239 = mul nsw i32 %237, %238
  %240 = sext i32 %239 to i64
  %241 = mul i64 %240, 4
  %242 = trunc i64 %241 to i32
  store i32 %242, i32* %13, align 4
  %243 = load i32, i32* %13, align 4
  %244 = call i64 @malloc(i32 %243)
  %245 = inttoptr i64 %244 to i32*
  store i32* %245, i32** %12, align 8
  %246 = icmp eq i32* %245, null
  br i1 %246, label %247, label %248

247:                                              ; preds = %230
  store i32 -2, i32* %2, align 4
  br label %273

248:                                              ; preds = %230
  %249 = load i32*, i32** %12, align 8
  %250 = bitcast i32* %249 to i8*
  %251 = load i32, i32* %13, align 4
  %252 = load i32*, i32** %3, align 8
  %253 = call i32 @yread(%struct.TYPE_5__* %11, i8* %250, i32 %251, i32 1, i32* %252)
  %254 = call i32 (...) @YuiSwapBuffers()
  %255 = load %struct.TYPE_7__*, %struct.TYPE_7__** @VIDCore, align 8
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 1
  %257 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %256, align 8
  %258 = call i32 %257(i32* %16, i32* %17)
  %259 = call i32 (...) @YuiSwapBuffers()
  %260 = load i32*, i32** %12, align 8
  %261 = call i32 @free(i32* %260)
  %262 = load i32*, i32** %3, align 8
  %263 = load i32, i32* %18, align 4
  %264 = load i32, i32* @SEEK_SET, align 4
  %265 = call i32 @fseek(i32* %262, i32 %263, i32 %264)
  %266 = load i32*, i32** %3, align 8
  %267 = call i32 @MovieReadState(i32* %266)
  br label %268

268:                                              ; preds = %248, %186
  %269 = load i32, i32* @SCSP_MUTE_SYSTEM, align 4
  %270 = call i32 @ScspUnMuteAudio(i32 %269)
  %271 = load i32, i32* @OSDMSG_STATUS, align 4
  %272 = call i32 @OSDPushMessage(i32 %271, i32 150, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %273

273:                                              ; preds = %268, %247, %183, %172, %161, %150, %139, %128, %116, %104, %93, %82, %71, %58, %51, %30
  %274 = load i32, i32* %2, align 4
  ret i32 %274
}

declare dso_local i32 @yread(%struct.TYPE_5__*, i8*, i32, i32, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @ftell(i32*) #1

declare dso_local i32 @YabSetError(i32, i8*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @ScspMuteAudio(i32) #1

declare dso_local i64 @StateCheckRetrieveHeader(i32*, i8*, i32*, i32*) #1

declare dso_local i32 @ScspUnMuteAudio(i32) #1

declare dso_local i32 @CartLoadState(i32*, i32, i32) #1

declare dso_local i32 @Cs2LoadState(i32*, i32, i32) #1

declare dso_local i32 @SH2LoadState(i32, i32*, i32, i32) #1

declare dso_local i32 @SoundLoadState(i32*, i32, i32) #1

declare dso_local i32 @ScuLoadState(i32*, i32, i32) #1

declare dso_local i32 @SmpcLoadState(i32*, i32, i32) #1

declare dso_local i32 @Vdp1LoadState(i32*, i32, i32) #1

declare dso_local i32 @Vdp2LoadState(i32*, i32, i32) #1

declare dso_local i32 @YabauseChangeTiming(i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @YuiSwapBuffers(...) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @MovieReadState(i32*) #1

declare dso_local i32 @OSDPushMessage(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
