; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scspdsp.c_ScspDspDisasm.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scspdsp.c_ScspDspDisasm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64* }
%union.ScspDspInstruction = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@scsp_dsp = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [7 x i8] c"%02X: \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"nop \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"nofl \00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"coef %02X \00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"masa %02X \00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"adreb \00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"nxadr \00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"table \00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"mwt \00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"mrd \00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"ewt \00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"ewa %01X \00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"adrl \00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"frcl \00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"shift %d \00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"yrl \00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"negb \00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"zero \00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"bsel \00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"xsel \00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"ysel %d \00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"ira %02X \00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"iwt \00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"iwa %02X \00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"tra %02X \00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"twt \00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"twa %02X \00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"unknown \00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"unknown2 \00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"unknown3 %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ScspDspDisasm(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %union.ScspDspInstruction, align 8
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp_dsp, i32 0, i32 0), align 8
  %7 = load i64, i64* %3, align 8
  %8 = getelementptr inbounds i64, i64* %6, i64 %7
  %9 = load i64, i64* %8, align 8
  %10 = bitcast %union.ScspDspInstruction* %5 to i64*
  store i64 %9, i64* %10, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load i64, i64* %3, align 8
  %13 = call i32 (i8*, i8*, ...) @sprintf(i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @strlen(i8* %14)
  %16 = load i8*, i8** %4, align 8
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  store i8* %18, i8** %4, align 8
  %19 = bitcast %union.ScspDspInstruction* %5 to i64*
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %2
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 (i8*, i8*, ...) @sprintf(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @strlen(i8* %25)
  %27 = load i8*, i8** %4, align 8
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  store i8* %29, i8** %4, align 8
  br label %434

30:                                               ; preds = %2
  %31 = bitcast %union.ScspDspInstruction* %5 to %struct.TYPE_3__*
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 27
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 (i8*, i8*, ...) @sprintf(i8* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @strlen(i8* %38)
  %40 = load i8*, i8** %4, align 8
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  store i8* %42, i8** %4, align 8
  br label %43

43:                                               ; preds = %35, %30
  %44 = bitcast %union.ScspDspInstruction* %5 to %struct.TYPE_3__*
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %43
  %49 = load i8*, i8** %4, align 8
  %50 = bitcast %union.ScspDspInstruction* %5 to %struct.TYPE_3__*
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, 63
  %54 = call i32 (i8*, i8*, ...) @sprintf(i8* %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  %55 = load i8*, i8** %4, align 8
  %56 = call i32 @strlen(i8* %55)
  %57 = load i8*, i8** %4, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8* %59, i8** %4, align 8
  br label %60

60:                                               ; preds = %48, %43
  %61 = bitcast %union.ScspDspInstruction* %5 to %struct.TYPE_3__*
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %60
  %66 = load i8*, i8** %4, align 8
  %67 = bitcast %union.ScspDspInstruction* %5 to %struct.TYPE_3__*
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 31
  %71 = call i32 (i8*, i8*, ...) @sprintf(i8* %66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %70)
  %72 = load i8*, i8** %4, align 8
  %73 = call i32 @strlen(i8* %72)
  %74 = load i8*, i8** %4, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8* %76, i8** %4, align 8
  br label %77

77:                                               ; preds = %65, %60
  %78 = bitcast %union.ScspDspInstruction* %5 to %struct.TYPE_3__*
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 26
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %77
  %83 = load i8*, i8** %4, align 8
  %84 = call i32 (i8*, i8*, ...) @sprintf(i8* %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %85 = load i8*, i8** %4, align 8
  %86 = call i32 @strlen(i8* %85)
  %87 = load i8*, i8** %4, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  store i8* %89, i8** %4, align 8
  br label %90

90:                                               ; preds = %82, %77
  %91 = bitcast %union.ScspDspInstruction* %5 to %struct.TYPE_3__*
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 25
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %90
  %96 = load i8*, i8** %4, align 8
  %97 = call i32 (i8*, i8*, ...) @sprintf(i8* %96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %98 = load i8*, i8** %4, align 8
  %99 = call i32 @strlen(i8* %98)
  %100 = load i8*, i8** %4, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  store i8* %102, i8** %4, align 8
  br label %103

103:                                              ; preds = %95, %90
  %104 = bitcast %union.ScspDspInstruction* %5 to %struct.TYPE_3__*
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 24
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %103
  %109 = load i8*, i8** %4, align 8
  %110 = call i32 (i8*, i8*, ...) @sprintf(i8* %109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %111 = load i8*, i8** %4, align 8
  %112 = call i32 @strlen(i8* %111)
  %113 = load i8*, i8** %4, align 8
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i8, i8* %113, i64 %114
  store i8* %115, i8** %4, align 8
  br label %116

116:                                              ; preds = %108, %103
  %117 = bitcast %union.ScspDspInstruction* %5 to %struct.TYPE_3__*
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 23
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %116
  %122 = load i8*, i8** %4, align 8
  %123 = call i32 (i8*, i8*, ...) @sprintf(i8* %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %124 = load i8*, i8** %4, align 8
  %125 = call i32 @strlen(i8* %124)
  %126 = load i8*, i8** %4, align 8
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i8, i8* %126, i64 %127
  store i8* %128, i8** %4, align 8
  br label %129

129:                                              ; preds = %121, %116
  %130 = bitcast %union.ScspDspInstruction* %5 to %struct.TYPE_3__*
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 22
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %129
  %135 = load i8*, i8** %4, align 8
  %136 = call i32 (i8*, i8*, ...) @sprintf(i8* %135, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %137 = load i8*, i8** %4, align 8
  %138 = call i32 @strlen(i8* %137)
  %139 = load i8*, i8** %4, align 8
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i8, i8* %139, i64 %140
  store i8* %141, i8** %4, align 8
  br label %142

142:                                              ; preds = %134, %129
  %143 = bitcast %union.ScspDspInstruction* %5 to %struct.TYPE_3__*
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 21
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %142
  %148 = load i8*, i8** %4, align 8
  %149 = call i32 (i8*, i8*, ...) @sprintf(i8* %148, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %150 = load i8*, i8** %4, align 8
  %151 = call i32 @strlen(i8* %150)
  %152 = load i8*, i8** %4, align 8
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i8, i8* %152, i64 %153
  store i8* %154, i8** %4, align 8
  br label %155

155:                                              ; preds = %147, %142
  %156 = bitcast %union.ScspDspInstruction* %5 to %struct.TYPE_3__*
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %172

160:                                              ; preds = %155
  %161 = load i8*, i8** %4, align 8
  %162 = bitcast %union.ScspDspInstruction* %5 to %struct.TYPE_3__*
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = and i32 %164, 15
  %166 = call i32 (i8*, i8*, ...) @sprintf(i8* %161, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 %165)
  %167 = load i8*, i8** %4, align 8
  %168 = call i32 @strlen(i8* %167)
  %169 = load i8*, i8** %4, align 8
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds i8, i8* %169, i64 %170
  store i8* %171, i8** %4, align 8
  br label %172

172:                                              ; preds = %160, %155
  %173 = bitcast %union.ScspDspInstruction* %5 to %struct.TYPE_3__*
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 20
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %185

177:                                              ; preds = %172
  %178 = load i8*, i8** %4, align 8
  %179 = call i32 (i8*, i8*, ...) @sprintf(i8* %178, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %180 = load i8*, i8** %4, align 8
  %181 = call i32 @strlen(i8* %180)
  %182 = load i8*, i8** %4, align 8
  %183 = sext i32 %181 to i64
  %184 = getelementptr inbounds i8, i8* %182, i64 %183
  store i8* %184, i8** %4, align 8
  br label %185

185:                                              ; preds = %177, %172
  %186 = bitcast %union.ScspDspInstruction* %5 to %struct.TYPE_3__*
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 19
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %198

190:                                              ; preds = %185
  %191 = load i8*, i8** %4, align 8
  %192 = call i32 (i8*, i8*, ...) @sprintf(i8* %191, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %193 = load i8*, i8** %4, align 8
  %194 = call i32 @strlen(i8* %193)
  %195 = load i8*, i8** %4, align 8
  %196 = sext i32 %194 to i64
  %197 = getelementptr inbounds i8, i8* %195, i64 %196
  store i8* %197, i8** %4, align 8
  br label %198

198:                                              ; preds = %190, %185
  %199 = bitcast %union.ScspDspInstruction* %5 to %struct.TYPE_3__*
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %215

203:                                              ; preds = %198
  %204 = load i8*, i8** %4, align 8
  %205 = bitcast %union.ScspDspInstruction* %5 to %struct.TYPE_3__*
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = and i32 %207, 3
  %209 = call i32 (i8*, i8*, ...) @sprintf(i8* %204, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i32 %208)
  %210 = load i8*, i8** %4, align 8
  %211 = call i32 @strlen(i8* %210)
  %212 = load i8*, i8** %4, align 8
  %213 = sext i32 %211 to i64
  %214 = getelementptr inbounds i8, i8* %212, i64 %213
  store i8* %214, i8** %4, align 8
  br label %215

215:                                              ; preds = %203, %198
  %216 = bitcast %union.ScspDspInstruction* %5 to %struct.TYPE_3__*
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 18
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %228

220:                                              ; preds = %215
  %221 = load i8*, i8** %4, align 8
  %222 = call i32 (i8*, i8*, ...) @sprintf(i8* %221, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %223 = load i8*, i8** %4, align 8
  %224 = call i32 @strlen(i8* %223)
  %225 = load i8*, i8** %4, align 8
  %226 = sext i32 %224 to i64
  %227 = getelementptr inbounds i8, i8* %225, i64 %226
  store i8* %227, i8** %4, align 8
  br label %228

228:                                              ; preds = %220, %215
  %229 = bitcast %union.ScspDspInstruction* %5 to %struct.TYPE_3__*
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 17
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %241

233:                                              ; preds = %228
  %234 = load i8*, i8** %4, align 8
  %235 = call i32 (i8*, i8*, ...) @sprintf(i8* %234, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  %236 = load i8*, i8** %4, align 8
  %237 = call i32 @strlen(i8* %236)
  %238 = load i8*, i8** %4, align 8
  %239 = sext i32 %237 to i64
  %240 = getelementptr inbounds i8, i8* %238, i64 %239
  store i8* %240, i8** %4, align 8
  br label %241

241:                                              ; preds = %233, %228
  %242 = bitcast %union.ScspDspInstruction* %5 to %struct.TYPE_3__*
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 16
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %254

246:                                              ; preds = %241
  %247 = load i8*, i8** %4, align 8
  %248 = call i32 (i8*, i8*, ...) @sprintf(i8* %247, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0))
  %249 = load i8*, i8** %4, align 8
  %250 = call i32 @strlen(i8* %249)
  %251 = load i8*, i8** %4, align 8
  %252 = sext i32 %250 to i64
  %253 = getelementptr inbounds i8, i8* %251, i64 %252
  store i8* %253, i8** %4, align 8
  br label %254

254:                                              ; preds = %246, %241
  %255 = bitcast %union.ScspDspInstruction* %5 to %struct.TYPE_3__*
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i32 0, i32 15
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %267

259:                                              ; preds = %254
  %260 = load i8*, i8** %4, align 8
  %261 = call i32 (i8*, i8*, ...) @sprintf(i8* %260, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  %262 = load i8*, i8** %4, align 8
  %263 = call i32 @strlen(i8* %262)
  %264 = load i8*, i8** %4, align 8
  %265 = sext i32 %263 to i64
  %266 = getelementptr inbounds i8, i8* %264, i64 %265
  store i8* %266, i8** %4, align 8
  br label %267

267:                                              ; preds = %259, %254
  %268 = bitcast %union.ScspDspInstruction* %5 to %struct.TYPE_3__*
  %269 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %268, i32 0, i32 14
  %270 = load i64, i64* %269, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %280

272:                                              ; preds = %267
  %273 = load i8*, i8** %4, align 8
  %274 = call i32 (i8*, i8*, ...) @sprintf(i8* %273, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0))
  %275 = load i8*, i8** %4, align 8
  %276 = call i32 @strlen(i8* %275)
  %277 = load i8*, i8** %4, align 8
  %278 = sext i32 %276 to i64
  %279 = getelementptr inbounds i8, i8* %277, i64 %278
  store i8* %279, i8** %4, align 8
  br label %280

280:                                              ; preds = %272, %267
  %281 = bitcast %union.ScspDspInstruction* %5 to %struct.TYPE_3__*
  %282 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %281, i32 0, i32 4
  %283 = load i32, i32* %282, align 8
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %297

285:                                              ; preds = %280
  %286 = load i8*, i8** %4, align 8
  %287 = bitcast %union.ScspDspInstruction* %5 to %struct.TYPE_3__*
  %288 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %287, i32 0, i32 4
  %289 = load i32, i32* %288, align 8
  %290 = and i32 %289, 3
  %291 = call i32 (i8*, i8*, ...) @sprintf(i8* %286, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i32 %290)
  %292 = load i8*, i8** %4, align 8
  %293 = call i32 @strlen(i8* %292)
  %294 = load i8*, i8** %4, align 8
  %295 = sext i32 %293 to i64
  %296 = getelementptr inbounds i8, i8* %294, i64 %295
  store i8* %296, i8** %4, align 8
  br label %297

297:                                              ; preds = %285, %280
  %298 = bitcast %union.ScspDspInstruction* %5 to %struct.TYPE_3__*
  %299 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %298, i32 0, i32 5
  %300 = load i32, i32* %299, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %314

302:                                              ; preds = %297
  %303 = load i8*, i8** %4, align 8
  %304 = bitcast %union.ScspDspInstruction* %5 to %struct.TYPE_3__*
  %305 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %304, i32 0, i32 5
  %306 = load i32, i32* %305, align 4
  %307 = and i32 %306, 63
  %308 = call i32 (i8*, i8*, ...) @sprintf(i8* %303, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i32 %307)
  %309 = load i8*, i8** %4, align 8
  %310 = call i32 @strlen(i8* %309)
  %311 = load i8*, i8** %4, align 8
  %312 = sext i32 %310 to i64
  %313 = getelementptr inbounds i8, i8* %311, i64 %312
  store i8* %313, i8** %4, align 8
  br label %314

314:                                              ; preds = %302, %297
  %315 = bitcast %union.ScspDspInstruction* %5 to %struct.TYPE_3__*
  %316 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %315, i32 0, i32 13
  %317 = load i64, i64* %316, align 8
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %327

319:                                              ; preds = %314
  %320 = load i8*, i8** %4, align 8
  %321 = call i32 (i8*, i8*, ...) @sprintf(i8* %320, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0))
  %322 = load i8*, i8** %4, align 8
  %323 = call i32 @strlen(i8* %322)
  %324 = load i8*, i8** %4, align 8
  %325 = sext i32 %323 to i64
  %326 = getelementptr inbounds i8, i8* %324, i64 %325
  store i8* %326, i8** %4, align 8
  br label %327

327:                                              ; preds = %319, %314
  %328 = bitcast %union.ScspDspInstruction* %5 to %struct.TYPE_3__*
  %329 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %328, i32 0, i32 6
  %330 = load i32, i32* %329, align 8
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %344

332:                                              ; preds = %327
  %333 = load i8*, i8** %4, align 8
  %334 = bitcast %union.ScspDspInstruction* %5 to %struct.TYPE_3__*
  %335 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %334, i32 0, i32 6
  %336 = load i32, i32* %335, align 8
  %337 = and i32 %336, 31
  %338 = call i32 (i8*, i8*, ...) @sprintf(i8* %333, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i32 %337)
  %339 = load i8*, i8** %4, align 8
  %340 = call i32 @strlen(i8* %339)
  %341 = load i8*, i8** %4, align 8
  %342 = sext i32 %340 to i64
  %343 = getelementptr inbounds i8, i8* %341, i64 %342
  store i8* %343, i8** %4, align 8
  br label %344

344:                                              ; preds = %332, %327
  %345 = bitcast %union.ScspDspInstruction* %5 to %struct.TYPE_3__*
  %346 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %345, i32 0, i32 7
  %347 = load i32, i32* %346, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %361

349:                                              ; preds = %344
  %350 = load i8*, i8** %4, align 8
  %351 = bitcast %union.ScspDspInstruction* %5 to %struct.TYPE_3__*
  %352 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %351, i32 0, i32 7
  %353 = load i32, i32* %352, align 4
  %354 = and i32 %353, 127
  %355 = call i32 (i8*, i8*, ...) @sprintf(i8* %350, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0), i32 %354)
  %356 = load i8*, i8** %4, align 8
  %357 = call i32 @strlen(i8* %356)
  %358 = load i8*, i8** %4, align 8
  %359 = sext i32 %357 to i64
  %360 = getelementptr inbounds i8, i8* %358, i64 %359
  store i8* %360, i8** %4, align 8
  br label %361

361:                                              ; preds = %349, %344
  %362 = bitcast %union.ScspDspInstruction* %5 to %struct.TYPE_3__*
  %363 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %362, i32 0, i32 12
  %364 = load i64, i64* %363, align 8
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %366, label %374

366:                                              ; preds = %361
  %367 = load i8*, i8** %4, align 8
  %368 = call i32 (i8*, i8*, ...) @sprintf(i8* %367, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0))
  %369 = load i8*, i8** %4, align 8
  %370 = call i32 @strlen(i8* %369)
  %371 = load i8*, i8** %4, align 8
  %372 = sext i32 %370 to i64
  %373 = getelementptr inbounds i8, i8* %371, i64 %372
  store i8* %373, i8** %4, align 8
  br label %374

374:                                              ; preds = %366, %361
  %375 = bitcast %union.ScspDspInstruction* %5 to %struct.TYPE_3__*
  %376 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %375, i32 0, i32 8
  %377 = load i32, i32* %376, align 8
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %391

379:                                              ; preds = %374
  %380 = load i8*, i8** %4, align 8
  %381 = bitcast %union.ScspDspInstruction* %5 to %struct.TYPE_3__*
  %382 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %381, i32 0, i32 8
  %383 = load i32, i32* %382, align 8
  %384 = and i32 %383, 127
  %385 = call i32 (i8*, i8*, ...) @sprintf(i8* %380, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0), i32 %384)
  %386 = load i8*, i8** %4, align 8
  %387 = call i32 @strlen(i8* %386)
  %388 = load i8*, i8** %4, align 8
  %389 = sext i32 %387 to i64
  %390 = getelementptr inbounds i8, i8* %388, i64 %389
  store i8* %390, i8** %4, align 8
  br label %391

391:                                              ; preds = %379, %374
  %392 = bitcast %union.ScspDspInstruction* %5 to %struct.TYPE_3__*
  %393 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %392, i32 0, i32 11
  %394 = load i64, i64* %393, align 8
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %396, label %404

396:                                              ; preds = %391
  %397 = load i8*, i8** %4, align 8
  %398 = call i32 (i8*, i8*, ...) @sprintf(i8* %397, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0))
  %399 = load i8*, i8** %4, align 8
  %400 = call i32 @strlen(i8* %399)
  %401 = load i8*, i8** %4, align 8
  %402 = sext i32 %400 to i64
  %403 = getelementptr inbounds i8, i8* %401, i64 %402
  store i8* %403, i8** %4, align 8
  br label %404

404:                                              ; preds = %396, %391
  %405 = bitcast %union.ScspDspInstruction* %5 to %struct.TYPE_3__*
  %406 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %405, i32 0, i32 10
  %407 = load i64, i64* %406, align 8
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %409, label %417

409:                                              ; preds = %404
  %410 = load i8*, i8** %4, align 8
  %411 = call i32 (i8*, i8*, ...) @sprintf(i8* %410, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0))
  %412 = load i8*, i8** %4, align 8
  %413 = call i32 @strlen(i8* %412)
  %414 = load i8*, i8** %4, align 8
  %415 = sext i32 %413 to i64
  %416 = getelementptr inbounds i8, i8* %414, i64 %415
  store i8* %416, i8** %4, align 8
  br label %417

417:                                              ; preds = %409, %404
  %418 = bitcast %union.ScspDspInstruction* %5 to %struct.TYPE_3__*
  %419 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %418, i32 0, i32 9
  %420 = load i32, i32* %419, align 4
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %434

422:                                              ; preds = %417
  %423 = load i8*, i8** %4, align 8
  %424 = bitcast %union.ScspDspInstruction* %5 to %struct.TYPE_3__*
  %425 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %424, i32 0, i32 9
  %426 = load i32, i32* %425, align 4
  %427 = and i32 %426, 3
  %428 = call i32 (i8*, i8*, ...) @sprintf(i8* %423, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i32 %427)
  %429 = load i8*, i8** %4, align 8
  %430 = call i32 @strlen(i8* %429)
  %431 = load i8*, i8** %4, align 8
  %432 = sext i32 %430 to i64
  %433 = getelementptr inbounds i8, i8* %431, i64 %432
  store i8* %433, i8** %4, align 8
  br label %434

434:                                              ; preds = %22, %422, %417
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
