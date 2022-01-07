; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cs2.c_Cs2Exec.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cs2.c_Cs2Exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i32, i64, i32, i32, i64, i32, i32, i32, i64, %struct.TYPE_7__, i64, i32, i8*, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 (...)*, i32 (i32)* }
%struct.TYPE_8__ = type { i32, i32 }

@Cs2Area = common dso_local global %struct.TYPE_9__* null, align 8
@CDB_STAT_NODISC = common dso_local global i32 0, align 4
@CDB_STAT_OPEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [107 x i8] c"partition number = %d blocks = %d blockfreespace = %d fad = %x playpartition->size = %x isbufferfull = %x\0A\00", align 1
@CDB_HIRQ_CSCT = common dso_local global i32 0, align 4
@CDB_HIRQ_PEND = common dso_local global i32 0, align 4
@CDB_PLAYTYPE_FILE = common dso_local global i32 0, align 4
@CDB_HIRQ_EFLS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"PLAY HAS ENDED\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"PLAY HAS REPEATED\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"BUFFER IS FULL\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Sector filtered out\0A\00", align 1
@CDB_STAT_PERI = common dso_local global i32 0, align 4
@CDB_HIRQ_SCDQ = common dso_local global i32 0, align 4
@CART_NETLINK = common dso_local global i64 0, align 8
@CART_JAPMODEM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Cs2Exec(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = mul nsw i32 %5, 3
  %7 = sext i32 %6 to i64
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, %7
  store i64 %11, i64* %9, align 8
  %12 = load i32, i32* %2, align 4
  %13 = mul nsw i32 %12, 3
  %14 = sext i32 %13 to i64
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, %14
  store i64 %18, i64* %16, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %1
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %2, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = call i32 (...) @Cs2Execute()
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 2
  store i32 0, i32* %32, align 8
  br label %39

33:                                               ; preds = %23
  %34 = load i32, i32* %2, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %37, %34
  store i32 %38, i32* %36, align 8
  br label %39

39:                                               ; preds = %33, %29
  br label %40

40:                                               ; preds = %39, %1
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp sge i64 %43, %46
  br i1 %47, label %48, label %108

48:                                               ; preds = %40
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %54, %51
  store i64 %55, i64* %53, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 21
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32 (...)*, i32 (...)** %59, align 8
  %61 = call i32 (...) %60()
  switch i32 %61, label %106 [
    i32 0, label %62
    i32 1, label %62
    i32 2, label %82
    i32 3, label %94
  ]

62:                                               ; preds = %48, %48
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = and i32 %65, 15
  %67 = load i32, i32* @CDB_STAT_NODISC, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %76, label %69

69:                                               ; preds = %62
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, 15
  %74 = load i32, i32* @CDB_STAT_OPEN, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %69, %62
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 4
  store i32 132, i32* %78, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 5
  store i32 1, i32* %80, align 4
  br label %81

81:                                               ; preds = %76, %69
  br label %107

82:                                               ; preds = %48
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = and i32 %85, 15
  %87 = load i32, i32* @CDB_STAT_NODISC, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %82
  %90 = load i32, i32* @CDB_STAT_NODISC, align 4
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 8
  br label %93

93:                                               ; preds = %89, %82
  br label %107

94:                                               ; preds = %48
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = and i32 %97, 15
  %99 = load i32, i32* @CDB_STAT_OPEN, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %94
  %102 = load i32, i32* @CDB_STAT_OPEN, align 4
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 4
  store i32 %102, i32* %104, align 8
  br label %105

105:                                              ; preds = %101, %94
  br label %107

106:                                              ; preds = %48
  br label %107

107:                                              ; preds = %106, %105, %93, %81
  br label %108

108:                                              ; preds = %107, %40
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 6
  %114 = load i64, i64* %113, align 8
  %115 = icmp sge i64 %111, %114
  br i1 %115, label %116, label %350

116:                                              ; preds = %108
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 6
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = sub nsw i64 %122, %119
  store i64 %123, i64* %121, align 8
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = and i32 %126, 15
  switch i32 %127, label %327 [
    i32 132, label %128
    i32 131, label %129
    i32 128, label %324
    i32 129, label %325
    i32 130, label %326
  ]

128:                                              ; preds = %116
  br label %328

129:                                              ; preds = %116
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 13
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @Cs2ReadFilteredSector(i32 %132, %struct.TYPE_8__** %3)
  store i32 %133, i32* %4, align 4
  %134 = load i32, i32* %4, align 4
  switch i32 %134, label %323 [
    i32 0, label %135
    i32 -1, label %321
    i32 -2, label %322
  ]

135:                                              ; preds = %129
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 13
  %138 = load i32, i32* %137, align 8
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 8
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 21
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 1
  %144 = load i32 (i32)*, i32 (i32)** %143, align 8
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 13
  %147 = load i32, i32* %146, align 8
  %148 = call i32 %144(i32 %147)
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %150 = icmp ne %struct.TYPE_8__* %149, null
  br i1 %150, label %151, label %254

151:                                              ; preds = %135
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 20
  %155 = load i32, i32* %154, align 4
  %156 = sext i32 %155 to i64
  %157 = sub i64 0, %156
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i64 %157
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 19
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 13
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 18
  %173 = load i32, i32* %172, align 4
  %174 = call i32 (i8*, ...) @CDLOG(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %158, i32 %161, i32 %164, i32 %167, i32 %170, i32 %173)
  %175 = load i32, i32* @CDB_HIRQ_CSCT, align 4
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 11
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = or i32 %179, %175
  store i32 %180, i32* %178, align 8
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 7
  store i32 1, i32* %182, align 8
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 13
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 17
  %188 = load i32, i32* %187, align 8
  %189 = icmp sge i32 %185, %188
  br i1 %189, label %190, label %246

190:                                              ; preds = %151
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 8
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 9
  %196 = load i32, i32* %195, align 8
  %197 = icmp sge i32 %193, %196
  br i1 %197, label %198, label %222

198:                                              ; preds = %190
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 4
  store i32 132, i32* %200, align 8
  %201 = call i32 @Cs2SetTiming(i32 0)
  %202 = load i32, i32* @CDB_HIRQ_PEND, align 4
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 11
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = or i32 %206, %202
  store i32 %207, i32* %205, align 8
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 16
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @CDB_PLAYTYPE_FILE, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %220

213:                                              ; preds = %198
  %214 = load i32, i32* @CDB_HIRQ_EFLS, align 4
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 11
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = or i32 %218, %214
  store i32 %219, i32* %217, align 8
  br label %220

220:                                              ; preds = %213, %198
  %221 = call i32 (i8*, ...) @CDLOG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %245

222:                                              ; preds = %190
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 15
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 13
  store i32 %225, i32* %227, align 8
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 8
  %230 = load i32, i32* %229, align 4
  %231 = icmp slt i32 %230, 14
  br i1 %231, label %232, label %237

232:                                              ; preds = %222
  %233 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 8
  %235 = load i32, i32* %234, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %234, align 4
  br label %237

237:                                              ; preds = %232, %222
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 13
  %240 = load i32, i32* %239, align 8
  %241 = call i8* @Cs2FADToTrack(i32 %240)
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 14
  store i8* %241, i8** %243, align 8
  %244 = call i32 (i8*, ...) @CDLOG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %245

245:                                              ; preds = %237, %220
  br label %246

246:                                              ; preds = %245, %151
  %247 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 0, i32 18
  %249 = load i32, i32* %248, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %246
  %252 = call i32 (i8*, ...) @CDLOG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %253

253:                                              ; preds = %251, %246
  br label %320

254:                                              ; preds = %135
  %255 = call i32 (i8*, ...) @CDLOG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %256 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 13
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i32 0, i32 17
  %261 = load i32, i32* %260, align 8
  %262 = icmp sge i32 %258, %261
  br i1 %262, label %263, label %319

263:                                              ; preds = %254
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 8
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i32 0, i32 9
  %269 = load i32, i32* %268, align 8
  %270 = icmp sge i32 %266, %269
  br i1 %270, label %271, label %295

271:                                              ; preds = %263
  %272 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %272, i32 0, i32 4
  store i32 132, i32* %273, align 8
  %274 = call i32 @Cs2SetTiming(i32 0)
  %275 = load i32, i32* @CDB_HIRQ_PEND, align 4
  %276 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 11
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = or i32 %279, %275
  store i32 %280, i32* %278, align 8
  %281 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %281, i32 0, i32 16
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* @CDB_PLAYTYPE_FILE, align 4
  %285 = icmp eq i32 %283, %284
  br i1 %285, label %286, label %293

286:                                              ; preds = %271
  %287 = load i32, i32* @CDB_HIRQ_EFLS, align 4
  %288 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %288, i32 0, i32 11
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = or i32 %291, %287
  store i32 %292, i32* %290, align 8
  br label %293

293:                                              ; preds = %286, %271
  %294 = call i32 (i8*, ...) @CDLOG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %318

295:                                              ; preds = %263
  %296 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %297 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %296, i32 0, i32 15
  %298 = load i32, i32* %297, align 8
  %299 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %300 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %299, i32 0, i32 13
  store i32 %298, i32* %300, align 8
  %301 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %302 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %301, i32 0, i32 8
  %303 = load i32, i32* %302, align 4
  %304 = icmp slt i32 %303, 14
  br i1 %304, label %305, label %310

305:                                              ; preds = %295
  %306 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %307 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %306, i32 0, i32 8
  %308 = load i32, i32* %307, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %307, align 4
  br label %310

310:                                              ; preds = %305, %295
  %311 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %312 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %311, i32 0, i32 13
  %313 = load i32, i32* %312, align 8
  %314 = call i8* @Cs2FADToTrack(i32 %313)
  %315 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %316 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %315, i32 0, i32 14
  store i8* %314, i8** %316, align 8
  %317 = call i32 (i8*, ...) @CDLOG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %318

318:                                              ; preds = %310, %293
  br label %319

319:                                              ; preds = %318, %254
  br label %320

320:                                              ; preds = %319, %253
  br label %323

321:                                              ; preds = %129
  br label %323

322:                                              ; preds = %129
  br label %323

323:                                              ; preds = %129, %322, %321, %320
  br label %328

324:                                              ; preds = %116
  br label %328

325:                                              ; preds = %116
  br label %328

326:                                              ; preds = %116
  br label %328

327:                                              ; preds = %116
  br label %328

328:                                              ; preds = %327, %326, %325, %324, %323, %128
  %329 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %330 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %329, i32 0, i32 12
  %331 = load i64, i64* %330, align 8
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %334

333:                                              ; preds = %328
  br label %369

334:                                              ; preds = %328
  %335 = load i32, i32* @CDB_STAT_PERI, align 4
  %336 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %337 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %336, i32 0, i32 4
  %338 = load i32, i32* %337, align 8
  %339 = or i32 %338, %335
  store i32 %339, i32* %337, align 8
  %340 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %341 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %340, i32 0, i32 4
  %342 = load i32, i32* %341, align 8
  %343 = call i32 @doCDReport(i32 %342)
  %344 = load i32, i32* @CDB_HIRQ_SCDQ, align 4
  %345 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %346 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %345, i32 0, i32 11
  %347 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = or i32 %348, %344
  store i32 %349, i32* %347, align 8
  br label %350

350:                                              ; preds = %334, %108
  %351 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %352 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %351, i32 0, i32 10
  %353 = load i64, i64* %352, align 8
  %354 = load i64, i64* @CART_NETLINK, align 8
  %355 = icmp eq i64 %353, %354
  br i1 %355, label %356, label %359

356:                                              ; preds = %350
  %357 = load i32, i32* %2, align 4
  %358 = call i32 @NetlinkExec(i32 %357)
  br label %369

359:                                              ; preds = %350
  %360 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Cs2Area, align 8
  %361 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %360, i32 0, i32 10
  %362 = load i64, i64* %361, align 8
  %363 = load i64, i64* @CART_JAPMODEM, align 8
  %364 = icmp eq i64 %362, %363
  br i1 %364, label %365, label %368

365:                                              ; preds = %359
  %366 = load i32, i32* %2, align 4
  %367 = call i32 @JapModemExec(i32 %366)
  br label %368

368:                                              ; preds = %365, %359
  br label %369

369:                                              ; preds = %333, %368, %356
  ret void
}

declare dso_local i32 @Cs2Execute(...) #1

declare dso_local i32 @Cs2ReadFilteredSector(i32, %struct.TYPE_8__**) #1

declare dso_local i32 @CDLOG(i8*, ...) #1

declare dso_local i32 @Cs2SetTiming(i32) #1

declare dso_local i8* @Cs2FADToTrack(i32) #1

declare dso_local i32 @doCDReport(i32) #1

declare dso_local i32 @NetlinkExec(i32) #1

declare dso_local i32 @JapModemExec(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
