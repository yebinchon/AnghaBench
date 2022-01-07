; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_net_chan.c_Netchan_Process.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_net_chan.c_Netchan_Process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_10__ = type { i64, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i64 }

@FRAGMENT_BIT = common dso_local global i32 0, align 4
@qtrue = common dso_local global i64 0, align 8
@qfalse = common dso_local global i64 0, align 8
@NS_SERVER = common dso_local global i64 0, align 8
@showpackets = common dso_local global %struct.TYPE_12__* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"%s recv %4i : s=%i fragment=%i,%i\0A\00", align 1
@netsrcString = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"%s recv %4i : s=%i\0A\00", align 1
@showdrop = common dso_local global %struct.TYPE_13__* null, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"%s:Out of order packet %i at %i\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"%s:Dropped %i packets at %i\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"%s:Dropped a message fragment\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"%s:illegal fragment length\0A\00", align 1
@FRAGMENT_SIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"%s:fragmentLength %i > msg->maxsize\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Netchan_Process(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %12 = call i32 @MSG_BeginReadingOOB(%struct.TYPE_11__* %11)
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = call i32 @MSG_ReadLong(%struct.TYPE_11__* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @FRAGMENT_BIT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load i32, i32* @FRAGMENT_BIT, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load i64, i64* @qtrue, align 8
  store i64 %24, i64* %10, align 8
  br label %27

25:                                               ; preds = %2
  %26 = load i64, i64* @qfalse, align 8
  store i64 %26, i64* %10, align 8
  br label %27

27:                                               ; preds = %25, %19
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @NS_SERVER, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %35 = call i32 @MSG_ReadShort(%struct.TYPE_11__* %34)
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %33, %27
  %37 = load i64, i64* %10, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %41 = call i32 @MSG_ReadShort(%struct.TYPE_11__* %40)
  store i32 %41, i32* %8, align 4
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %43 = call i32 @MSG_ReadShort(%struct.TYPE_11__* %42)
  store i32 %43, i32* %9, align 4
  br label %45

44:                                               ; preds = %36
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %44, %39
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** @showpackets, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %80

50:                                               ; preds = %45
  %51 = load i64, i64* %10, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %50
  %54 = load i32*, i32** @netsrcString, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 (i8*, i32, ...) @Com_Printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %62, i32 %63, i32 %64, i32 %65)
  br label %79

67:                                               ; preds = %50
  %68 = load i32*, i32** @netsrcString, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 (i8*, i32, ...) @Com_Printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %73, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %67, %53
  br label %80

80:                                               ; preds = %79, %45
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp sle i32 %81, %84
  br i1 %85, label %86, label %108

86:                                               ; preds = %80
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** @showdrop, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %86
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** @showpackets, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %91, %86
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @NET_AdrToString(i32 %99)
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 (i8*, i32, ...) @Com_Printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %100, i32 %101, i32 %104)
  br label %106

106:                                              ; preds = %96, %91
  %107 = load i64, i64* @qfalse, align 8
  store i64 %107, i64* %3, align 8
  br label %307

108:                                              ; preds = %80
  %109 = load i32, i32* %6, align 4
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = add nsw i32 %112, 1
  %114 = sub nsw i32 %109, %113
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 4
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %142

121:                                              ; preds = %108
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** @showdrop, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %131, label %126

126:                                              ; preds = %121
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** @showpackets, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %126, %121
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @NET_AdrToString(i32 %134)
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %6, align 4
  %140 = call i32 (i8*, i32, ...) @Com_Printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %135, i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %131, %126
  br label %142

142:                                              ; preds = %141, %108
  %143 = load i64, i64* %10, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %302

145:                                              ; preds = %142
  %146 = load i32, i32* %6, align 4
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %146, %149
  br i1 %150, label %151, label %157

151:                                              ; preds = %145
  %152 = load i32, i32* %6, align 4
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 3
  store i32 %152, i32* %154, align 8
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 4
  store i32 0, i32* %156, align 4
  br label %157

157:                                              ; preds = %151, %145
  %158 = load i32, i32* %8, align 4
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %158, %161
  br i1 %162, label %163, label %182

163:                                              ; preds = %157
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** @showdrop, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %173, label %168

168:                                              ; preds = %163
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** @showpackets, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %168, %163
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 6
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @NET_AdrToString(i32 %176)
  %178 = load i32, i32* %6, align 4
  %179 = call i32 (i8*, i32, ...) @Com_Printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %177, i32 %178)
  br label %180

180:                                              ; preds = %173, %168
  %181 = load i64, i64* @qfalse, align 8
  store i64 %181, i64* %3, align 8
  br label %307

182:                                              ; preds = %157
  %183 = load i32, i32* %9, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %203, label %185

185:                                              ; preds = %182
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %9, align 4
  %190 = add nsw i32 %188, %189
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp sgt i32 %190, %193
  br i1 %194, label %203, label %195

195:                                              ; preds = %185
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* %9, align 4
  %200 = add nsw i32 %198, %199
  %201 = sext i32 %200 to i64
  %202 = icmp ugt i64 %201, 8
  br i1 %202, label %203, label %221

203:                                              ; preds = %195, %185, %182
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** @showdrop, align 8
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %213, label %208

208:                                              ; preds = %203
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** @showpackets, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %219

213:                                              ; preds = %208, %203
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 6
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @NET_AdrToString(i32 %216)
  %218 = call i32 (i8*, i32, ...) @Com_Printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %217)
  br label %219

219:                                              ; preds = %213, %208
  %220 = load i64, i64* @qfalse, align 8
  store i64 %220, i64* %3, align 8
  br label %307

221:                                              ; preds = %195
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 5
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 4
  %227 = load i32, i32* %226, align 4
  %228 = sext i32 %227 to i64
  %229 = add nsw i64 %224, %228
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 4
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = sext i32 %235 to i64
  %237 = add nsw i64 %232, %236
  %238 = load i32, i32* %9, align 4
  %239 = call i32 @Com_Memcpy(i64 %229, i64 %237, i32 %238)
  %240 = load i32, i32* %9, align 4
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 4
  %244 = add nsw i32 %243, %240
  store i32 %244, i32* %242, align 4
  %245 = load i32, i32* %9, align 4
  %246 = load i32, i32* @FRAGMENT_SIZE, align 4
  %247 = icmp eq i32 %245, %246
  br i1 %247, label %248, label %250

248:                                              ; preds = %221
  %249 = load i64, i64* @qfalse, align 8
  store i64 %249, i64* %3, align 8
  br label %307

250:                                              ; preds = %221
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 4
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 8
  %257 = icmp sgt i32 %253, %256
  br i1 %257, label %258, label %268

258:                                              ; preds = %250
  %259 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %259, i32 0, i32 6
  %261 = load i32, i32* %260, align 8
  %262 = call i32 @NET_AdrToString(i32 %261)
  %263 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 4
  %265 = load i32, i32* %264, align 4
  %266 = call i32 (i8*, i32, ...) @Com_Printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %262, i32 %265)
  %267 = load i64, i64* @qfalse, align 8
  store i64 %267, i64* %3, align 8
  br label %307

268:                                              ; preds = %250
  %269 = load i32, i32* %6, align 4
  %270 = call i32 @LittleLong(i32 %269)
  %271 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %271, i32 0, i32 4
  %273 = load i64, i64* %272, align 8
  %274 = inttoptr i64 %273 to i32*
  store i32 %270, i32* %274, align 4
  %275 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %275, i32 0, i32 4
  %277 = load i64, i64* %276, align 8
  %278 = add nsw i64 %277, 4
  %279 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %280 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %279, i32 0, i32 5
  %281 = load i64, i64* %280, align 8
  %282 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %282, i32 0, i32 4
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @Com_Memcpy(i64 %278, i64 %281, i32 %284)
  %286 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %287 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %286, i32 0, i32 4
  %288 = load i32, i32* %287, align 4
  %289 = add nsw i32 %288, 4
  %290 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %290, i32 0, i32 0
  store i32 %289, i32* %291, align 8
  %292 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %293 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %292, i32 0, i32 4
  store i32 0, i32* %293, align 4
  %294 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %294, i32 0, i32 1
  store i32 4, i32* %295, align 4
  %296 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %296, i32 0, i32 3
  store i32 32, i32* %297, align 4
  %298 = load i32, i32* %6, align 4
  %299 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %300 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %299, i32 0, i32 1
  store i32 %298, i32* %300, align 8
  %301 = load i64, i64* @qtrue, align 8
  store i64 %301, i64* %3, align 8
  br label %307

302:                                              ; preds = %142
  %303 = load i32, i32* %6, align 4
  %304 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %304, i32 0, i32 1
  store i32 %303, i32* %305, align 8
  %306 = load i64, i64* @qtrue, align 8
  store i64 %306, i64* %3, align 8
  br label %307

307:                                              ; preds = %302, %268, %258, %248, %219, %180, %106
  %308 = load i64, i64* %3, align 8
  ret i64 %308
}

declare dso_local i32 @MSG_BeginReadingOOB(%struct.TYPE_11__*) #1

declare dso_local i32 @MSG_ReadLong(%struct.TYPE_11__*) #1

declare dso_local i32 @MSG_ReadShort(%struct.TYPE_11__*) #1

declare dso_local i32 @Com_Printf(i8*, i32, ...) #1

declare dso_local i32 @NET_AdrToString(i32) #1

declare dso_local i32 @Com_Memcpy(i64, i64, i32) #1

declare dso_local i32 @LittleLong(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
