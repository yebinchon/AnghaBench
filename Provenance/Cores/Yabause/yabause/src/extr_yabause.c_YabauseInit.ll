; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_yabause.c_YabauseInit.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_yabause.c_YabauseInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i64, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64, i32*, i32, i32, i64, i32*, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@yabsys = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@YAB_ERR_CANNOTINIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"SH2\00", align 1
@BiosRom = common dso_local global i32* null, align 8
@HighWram = common dso_local global i32* null, align 8
@LowWram = common dso_local global i32* null, align 8
@BupRam = common dso_local global i32* null, align 8
@BupRamWritten = common dso_local global i64 0, align 8
@bupfilename = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"Cartridge\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Video\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Peripheral\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"CS2\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"SCU\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"M68K\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"SCSP/M68K\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"VDP1\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"VDP2\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"SMPC\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"Cheat System\00", align 1
@CLKTYPE_26MHZ = common dso_local global i32 0, align 4
@OSDCORE_DEFAULT = common dso_local global i32 0, align 4
@YAB_ERR_FILENOTFOUND = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"Game\00", align 1
@MSH2 = common dso_local global i32 0, align 4
@SH2Core = common dso_local global %struct.TYPE_7__* null, align 8
@ssf_artist = common dso_local global i32 0, align 4
@ssf_track_name = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @YabauseInit(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 24
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @yabsys, i32 0, i32 4), align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @yabsys, i32 0, i32 0), align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 23
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @SH2Init(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, i32* @YAB_ERR_CANNOTINIT, align 4
  %18 = call i8* @_(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @YabSetError(i32 %17, i8* %18)
  store i32 -1, i32* %2, align 4
  br label %267

20:                                               ; preds = %1
  %21 = call i8* @T2MemoryInit(i32 524288)
  %22 = bitcast i8* %21 to i32*
  store i32* %22, i32** @BiosRom, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 -1, i32* %2, align 4
  br label %267

25:                                               ; preds = %20
  %26 = call i8* @T2MemoryInit(i32 1048576)
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** @HighWram, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 -1, i32* %2, align 4
  br label %267

30:                                               ; preds = %25
  %31 = call i8* @T2MemoryInit(i32 1048576)
  %32 = bitcast i8* %31 to i32*
  store i32* %32, i32** @LowWram, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 -1, i32* %2, align 4
  br label %267

35:                                               ; preds = %30
  %36 = call i32* @T1MemoryInit(i32 65536)
  store i32* %36, i32** @BupRam, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 -1, i32* %2, align 4
  br label %267

39:                                               ; preds = %35
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 22
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @LoadBackupRam(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32*, i32** @BupRam, align 8
  %47 = call i32 @FormatBackupRam(i32* %46, i32 65536)
  br label %48

48:                                               ; preds = %45, %39
  store i64 0, i64* @BupRamWritten, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 22
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* @bupfilename, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 21
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 18
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @CartInit(i32 %54, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %48
  %61 = load i32, i32* @YAB_ERR_CANNOTINIT, align 4
  %62 = call i8* @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %63 = call i32 @YabSetError(i32 %61, i8* %62)
  store i32 -1, i32* %2, align 4
  br label %267

64:                                               ; preds = %48
  %65 = call i32 (...) @MappedMemoryInit()
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 20
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @VideoInit(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load i32, i32* @YAB_ERR_CANNOTINIT, align 4
  %73 = call i8* @_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %74 = call i32 @YabSetError(i32 %72, i8* %73)
  store i32 -1, i32* %2, align 4
  br label %267

75:                                               ; preds = %64
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 19
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @PerInit(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load i32, i32* @YAB_ERR_CANNOTINIT, align 4
  %83 = call i8* @_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %84 = call i32 @YabSetError(i32 %82, i8* %83)
  store i32 -1, i32* %2, align 4
  br label %267

85:                                               ; preds = %75
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 18
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 17
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 16
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 15
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 14
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 13
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @Cs2Init(i32 %88, i32 %91, i32 %94, i32 %97, i32 %100, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %85
  %107 = load i32, i32* @YAB_ERR_CANNOTINIT, align 4
  %108 = call i8* @_(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %109 = call i32 @YabSetError(i32 %107, i8* %108)
  store i32 -1, i32* %2, align 4
  br label %267

110:                                              ; preds = %85
  %111 = call i64 (...) @ScuInit()
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load i32, i32* @YAB_ERR_CANNOTINIT, align 4
  %115 = call i8* @_(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %116 = call i32 @YabSetError(i32 %114, i8* %115)
  store i32 -1, i32* %2, align 4
  br label %267

117:                                              ; preds = %110
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @M68KInit(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %117
  %124 = load i32, i32* @YAB_ERR_CANNOTINIT, align 4
  %125 = call i8* @_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %126 = call i32 @YabSetError(i32 %124, i8* %125)
  store i32 -1, i32* %2, align 4
  br label %267

127:                                              ; preds = %117
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = call i64 @ScspInit(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %127
  %134 = load i32, i32* @YAB_ERR_CANNOTINIT, align 4
  %135 = call i8* @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %136 = call i32 @YabSetError(i32 %134, i8* %135)
  store i32 -1, i32* %2, align 4
  br label %267

137:                                              ; preds = %127
  %138 = call i64 (...) @Vdp1Init()
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %137
  %141 = load i32, i32* @YAB_ERR_CANNOTINIT, align 4
  %142 = call i8* @_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %143 = call i32 @YabSetError(i32 %141, i8* %142)
  store i32 -1, i32* %2, align 4
  br label %267

144:                                              ; preds = %137
  %145 = call i64 (...) @Vdp2Init()
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %144
  %148 = load i32, i32* @YAB_ERR_CANNOTINIT, align 4
  %149 = call i8* @_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %150 = call i32 @YabSetError(i32 %148, i8* %149)
  store i32 -1, i32* %2, align 4
  br label %267

151:                                              ; preds = %144
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 12
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 11
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 10
  %160 = load i32, i32* %159, align 4
  %161 = call i64 @SmpcInit(i32 %154, i32 %157, i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %151
  %164 = load i32, i32* @YAB_ERR_CANNOTINIT, align 4
  %165 = call i8* @_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %166 = call i32 @YabSetError(i32 %164, i8* %165)
  store i32 -1, i32* %2, align 4
  br label %267

167:                                              ; preds = %151
  %168 = call i64 (...) @CheatInit()
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %167
  %171 = load i32, i32* @YAB_ERR_CANNOTINIT, align 4
  %172 = call i8* @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %173 = call i32 @YabSetError(i32 %171, i8* %172)
  store i32 -1, i32* %2, align 4
  br label %267

174:                                              ; preds = %167
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 9
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @YabauseSetVideoFormat(i32 %177)
  %179 = load i32, i32* @CLKTYPE_26MHZ, align 4
  %180 = call i32 @YabauseChangeTiming(i32 %179)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @yabsys, i32 0, i32 1), align 4
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 8
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %174
  %186 = call i32 (...) @EnableAutoFrameSkip()
  br label %187

187:                                              ; preds = %185, %174
  %188 = load i32, i32* @OSDCORE_DEFAULT, align 4
  %189 = call i32 @OSDChangeCore(i32 %188)
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 6
  %192 = load i32*, i32** %191, align 8
  %193 = icmp ne i32* %192, null
  br i1 %193, label %194, label %214

194:                                              ; preds = %187
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 6
  %197 = load i32*, i32** %196, align 8
  %198 = call i64 @strlen(i32* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %214

200:                                              ; preds = %194
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 6
  %203 = load i32*, i32** %202, align 8
  %204 = call i64 @LoadBios(i32* %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %213

206:                                              ; preds = %200
  %207 = load i32, i32* @YAB_ERR_FILENOTFOUND, align 4
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 6
  %210 = load i32*, i32** %209, align 8
  %211 = bitcast i32* %210 to i8*
  %212 = call i32 @YabSetError(i32 %207, i8* %211)
  store i32 -2, i32* %2, align 4
  br label %267

213:                                              ; preds = %200
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @yabsys, i32 0, i32 2), align 8
  br label %215

214:                                              ; preds = %194, %187
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @yabsys, i32 0, i32 2), align 8
  br label %215

215:                                              ; preds = %214, %213
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @yabsys, i32 0, i32 5), align 8
  %216 = call i32 (...) @YabauseResetNoLoad()
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %215
  store i32 0, i32* %2, align 4
  br label %267

222:                                              ; preds = %215
  %223 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @yabsys, i32 0, i32 5), align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %228, label %225

225:                                              ; preds = %222
  %226 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @yabsys, i32 0, i32 2), align 8
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %242

228:                                              ; preds = %225, %222
  %229 = call i64 (...) @YabauseQuickLoadGame()
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %241

231:                                              ; preds = %228
  %232 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @yabsys, i32 0, i32 2), align 8
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %238

234:                                              ; preds = %231
  %235 = load i32, i32* @YAB_ERR_CANNOTINIT, align 4
  %236 = call i8* @_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %237 = call i32 @YabSetError(i32 %235, i8* %236)
  store i32 -2, i32* %2, align 4
  br label %267

238:                                              ; preds = %231
  %239 = call i32 (...) @YabauseResetNoLoad()
  br label %240

240:                                              ; preds = %238
  br label %241

241:                                              ; preds = %240, %228
  br label %242

242:                                              ; preds = %241, %225
  %243 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @yabsys, i32 0, i32 4), align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %262

245:                                              ; preds = %242
  %246 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @yabsys, i32 0, i32 0), align 8
  %247 = icmp slt i32 %246, 1
  br i1 %247, label %248, label %249

248:                                              ; preds = %245
  br label %251

249:                                              ; preds = %245
  %250 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @yabsys, i32 0, i32 0), align 8
  br label %251

251:                                              ; preds = %249, %248
  %252 = phi i32 [ 1, %248 ], [ %250, %249 ]
  store i32 %252, i32* %4, align 4
  %253 = load i32, i32* %4, align 4
  %254 = icmp eq i32 %253, 1
  %255 = zext i1 %254 to i64
  %256 = select i1 %254, i32 0, i32 1
  %257 = call i32 @VIDSoftSetVdp1ThreadEnable(i32 %256)
  %258 = load i32, i32* %4, align 4
  %259 = call i32 @VIDSoftSetNumLayerThreads(i32 %258)
  %260 = load i32, i32* %4, align 4
  %261 = call i32 @VIDSoftSetNumPriorityThreads(i32 %260)
  br label %266

262:                                              ; preds = %242
  %263 = call i32 @VIDSoftSetVdp1ThreadEnable(i32 0)
  %264 = call i32 @VIDSoftSetNumLayerThreads(i32 0)
  %265 = call i32 @VIDSoftSetNumPriorityThreads(i32 0)
  br label %266

266:                                              ; preds = %262, %251
  store i32 0, i32* %2, align 4
  br label %267

267:                                              ; preds = %266, %234, %221, %206, %170, %163, %147, %140, %133, %123, %113, %106, %81, %71, %60, %38, %34, %29, %24, %16
  %268 = load i32, i32* %2, align 4
  ret i32 %268
}

declare dso_local i64 @SH2Init(i32) #1

declare dso_local i32 @YabSetError(i32, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i8* @T2MemoryInit(i32) #1

declare dso_local i32* @T1MemoryInit(i32) #1

declare dso_local i64 @LoadBackupRam(i32) #1

declare dso_local i32 @FormatBackupRam(i32*, i32) #1

declare dso_local i64 @CartInit(i32, i32) #1

declare dso_local i32 @MappedMemoryInit(...) #1

declare dso_local i64 @VideoInit(i32) #1

declare dso_local i64 @PerInit(i32) #1

declare dso_local i64 @Cs2Init(i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @ScuInit(...) #1

declare dso_local i64 @M68KInit(i32) #1

declare dso_local i64 @ScspInit(i32) #1

declare dso_local i64 @Vdp1Init(...) #1

declare dso_local i64 @Vdp2Init(...) #1

declare dso_local i64 @SmpcInit(i32, i32, i32) #1

declare dso_local i64 @CheatInit(...) #1

declare dso_local i32 @YabauseSetVideoFormat(i32) #1

declare dso_local i32 @YabauseChangeTiming(i32) #1

declare dso_local i32 @EnableAutoFrameSkip(...) #1

declare dso_local i32 @OSDChangeCore(i32) #1

declare dso_local i64 @strlen(i32*) #1

declare dso_local i64 @LoadBios(i32*) #1

declare dso_local i32 @YabauseResetNoLoad(...) #1

declare dso_local i64 @YabauseQuickLoadGame(...) #1

declare dso_local i32 @VIDSoftSetVdp1ThreadEnable(i32) #1

declare dso_local i32 @VIDSoftSetNumLayerThreads(i32) #1

declare dso_local i32 @VIDSoftSetNumPriorityThreads(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
