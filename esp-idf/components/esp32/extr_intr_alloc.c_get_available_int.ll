; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/extr_intr_alloc.c_get_available_int.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/extr_intr_alloc.c_get_available_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64*, i32, i64 }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_9__* }

@INT_MAX = common dso_local global i32 0, align 4
@ESP_INTR_FLAG_LEVELMASK = common dso_local global i32 0, align 4
@ESP_INTR_FLAG_LOWMED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"get_available_int: try to find existing. Cpu: %d, Source: %d\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"get_avalible_int: existing vd found. intno: %d\00", align 1
@.str.2 = private unnamed_addr constant [85 x i8] c"get_avalible_int: intr forced but not matach existing. existing intno: %d, force: %d\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"get_avalible_int: existing vd invalid.\00", align 1
@.str.4 = private unnamed_addr constant [69 x i8] c"get_available_int: try to find force. Cpu: %d, Source: %d, Force: %d\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"get_avalible_int: forced vd invalid.\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"get_free_int: start looking. Current cpu: %d\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Int %d reserved %d level %d %s hasIsr %d\00", align 1
@int_desc = common dso_local global %struct.TYPE_10__* null, align 8
@INTDESC_RESVD = common dso_local global i64 0, align 8
@INTTP_LEVEL = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [6 x i8] c"LEVEL\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"EDGE\00", align 1
@ESP_INTR_FLAG_SHARED = common dso_local global i32 0, align 4
@VECDESC_FL_SHARED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [63 x i8] c"...int %d more usable as a shared int: has %d existing vectors\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"...worse than int %d\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"...int %d usable as a new shared int\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"...already have a shared int\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"get_available_int: using int %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @get_available_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_available_int(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_8__, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 -1, i32* %11, align 4
  store i32 9, i32* %12, align 4
  %18 = load i32, i32* @INT_MAX, align 4
  store i32 %18, i32* %13, align 4
  %19 = call i32 @memset(%struct.TYPE_8__* %14, i32 0, i32 16)
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @ESP_INTR_FLAG_LEVELMASK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @ESP_INTR_FLAG_LOWMED, align 4
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %24, %4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 (i8*, ...) @ALCHLOG(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call %struct.TYPE_8__* @find_desc_for_source(i32 %32, i32 %33)
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %15, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %36 = icmp ne %struct.TYPE_8__* %35, null
  br i1 %36, label %37, label %72

37:                                               ; preds = %28
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (i8*, ...) @ALCHLOG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, -1
  br i1 %43, label %44, label %56

44:                                               ; preds = %37
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %45, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 (i8*, ...) @ALCHLOG(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i64 0, i64 0), i32 %53, i32 %54)
  br label %70

56:                                               ; preds = %44, %37
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i64 @is_vect_desc_usable(%struct.TYPE_8__* %57, i32 %58, i32 %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %56
  %64 = call i32 (i8*, ...) @ALCHLOG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %69

65:                                               ; preds = %56
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %65, %63
  br label %70

70:                                               ; preds = %69, %50
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %5, align 4
  br label %270

72:                                               ; preds = %28
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, -1
  br i1 %74, label %75, label %103

75:                                               ; preds = %72
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i32 (i8*, ...) @ALCHLOG(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0), i32 %76, i32 %77, i32 %78)
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call %struct.TYPE_8__* @find_desc_for_int(i32 %80, i32 %81)
  store %struct.TYPE_8__* %82, %struct.TYPE_8__** %15, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %84 = icmp eq %struct.TYPE_8__* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %75
  %86 = load i32, i32* %8, align 4
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  store i32 %86, i32* %87, align 8
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %15, align 8
  br label %88

88:                                               ; preds = %85, %75
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i64 @is_vect_desc_usable(%struct.TYPE_8__* %89, i32 %90, i32 %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %88
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  store i32 %98, i32* %11, align 4
  br label %101

99:                                               ; preds = %88
  %100 = call i32 (i8*, ...) @ALCHLOG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %95
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %5, align 4
  br label %270

103:                                              ; preds = %72
  %104 = load i32, i32* %7, align 4
  %105 = call i32 (i8*, ...) @ALCHLOG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %104)
  store i32 0, i32* %10, align 4
  br label %106

106:                                              ; preds = %263, %103
  %107 = load i32, i32* %10, align 4
  %108 = icmp slt i32 %107, 32
  br i1 %108, label %109, label %266

109:                                              ; preds = %106
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %7, align 4
  %112 = call %struct.TYPE_8__* @find_desc_for_int(i32 %110, i32 %111)
  store %struct.TYPE_8__* %112, %struct.TYPE_8__** %15, align 8
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %114 = icmp eq %struct.TYPE_8__* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %109
  %116 = load i32, i32* %10, align 4
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  store i32 %116, i32* %117, align 8
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %15, align 8
  br label %118

118:                                              ; preds = %115, %109
  %119 = load i32, i32* %10, align 4
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** @int_desc, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = load i64*, i64** %124, align 8
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %125, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @INTDESC_RESVD, align 8
  %131 = icmp eq i64 %129, %130
  %132 = zext i1 %131 to i32
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** @int_desc, align 8
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** @int_desc, align 8
  %140 = load i32, i32* %10, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @INTTP_LEVEL, align 8
  %146 = icmp eq i64 %144, %145
  %147 = zext i1 %146 to i64
  %148 = select i1 %146, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0)
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* %7, align 4
  %151 = call i32 @int_has_handler(i32 %149, i32 %150)
  %152 = call i32 (i8*, ...) @ALCHLOG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i32 %119, i32 %132, i32 %138, i8* %148, i32 %151)
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %154 = load i32, i32* %6, align 4
  %155 = load i32, i32* %7, align 4
  %156 = load i32, i32* %8, align 4
  %157 = call i64 @is_vect_desc_usable(%struct.TYPE_8__* %153, i32 %154, i32 %155, i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %118
  br label %263

160:                                              ; preds = %118
  %161 = load i32, i32* %6, align 4
  %162 = load i32, i32* @ESP_INTR_FLAG_SHARED, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %241

165:                                              ; preds = %160
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @VECDESC_FL_SHARED, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %214

172:                                              ; preds = %165
  store i32 0, i32* %16, align 4
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 2
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %174, align 8
  store %struct.TYPE_9__* %175, %struct.TYPE_9__** %17, align 8
  br label %176

176:                                              ; preds = %179, %172
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %178 = icmp ne %struct.TYPE_9__* %177, null
  br i1 %178, label %179, label %185

179:                                              ; preds = %176
  %180 = load i32, i32* %16, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %16, align 4
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %183, align 8
  store %struct.TYPE_9__* %184, %struct.TYPE_9__** %17, align 8
  br label %176

185:                                              ; preds = %176
  %186 = load i32, i32* %16, align 4
  %187 = load i32, i32* %13, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %198, label %189

189:                                              ; preds = %185
  %190 = load i32, i32* %12, align 4
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** @int_desc, align 8
  %192 = load i32, i32* %10, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = icmp sgt i32 %190, %196
  br i1 %197, label %198, label %210

198:                                              ; preds = %189, %185
  %199 = load i32, i32* %10, align 4
  store i32 %199, i32* %11, align 4
  %200 = load i32, i32* %16, align 4
  store i32 %200, i32* %13, align 4
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** @int_desc, align 8
  %202 = load i32, i32* %10, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  store i32 %206, i32* %12, align 4
  %207 = load i32, i32* %10, align 4
  %208 = load i32, i32* %16, align 4
  %209 = call i32 (i8*, ...) @ALCHLOG(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.10, i64 0, i64 0), i32 %207, i32 %208)
  br label %213

210:                                              ; preds = %189
  %211 = load i32, i32* %11, align 4
  %212 = call i32 (i8*, ...) @ALCHLOG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 %211)
  br label %213

213:                                              ; preds = %210, %198
  br label %240

214:                                              ; preds = %165
  %215 = load i32, i32* %11, align 4
  %216 = icmp eq i32 %215, -1
  br i1 %216, label %217, label %237

217:                                              ; preds = %214
  %218 = load i32, i32* %12, align 4
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** @int_desc, align 8
  %220 = load i32, i32* %10, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = icmp sgt i32 %218, %224
  br i1 %225, label %226, label %236

226:                                              ; preds = %217
  %227 = load i32, i32* %10, align 4
  store i32 %227, i32* %11, align 4
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** @int_desc, align 8
  %229 = load i32, i32* %10, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  store i32 %233, i32* %12, align 4
  %234 = load i32, i32* %10, align 4
  %235 = call i32 (i8*, ...) @ALCHLOG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0), i32 %234)
  br label %236

236:                                              ; preds = %226, %217
  br label %239

237:                                              ; preds = %214
  %238 = call i32 (i8*, ...) @ALCHLOG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  br label %239

239:                                              ; preds = %237, %236
  br label %240

240:                                              ; preds = %239, %213
  br label %262

241:                                              ; preds = %160
  %242 = load i32, i32* %12, align 4
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** @int_desc, align 8
  %244 = load i32, i32* %10, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = icmp sgt i32 %242, %248
  br i1 %249, label %250, label %258

250:                                              ; preds = %241
  %251 = load i32, i32* %10, align 4
  store i32 %251, i32* %11, align 4
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** @int_desc, align 8
  %253 = load i32, i32* %10, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 8
  store i32 %257, i32* %12, align 4
  br label %261

258:                                              ; preds = %241
  %259 = load i32, i32* %11, align 4
  %260 = call i32 (i8*, ...) @ALCHLOG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 %259)
  br label %261

261:                                              ; preds = %258, %250
  br label %262

262:                                              ; preds = %261, %240
  br label %263

263:                                              ; preds = %262, %159
  %264 = load i32, i32* %10, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %10, align 4
  br label %106

266:                                              ; preds = %106
  %267 = load i32, i32* %11, align 4
  %268 = call i32 (i8*, ...) @ALCHLOG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0), i32 %267)
  %269 = load i32, i32* %11, align 4
  store i32 %269, i32* %5, align 4
  br label %270

270:                                              ; preds = %266, %101, %70
  %271 = load i32, i32* %5, align 4
  ret i32 %271
}

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @ALCHLOG(i8*, ...) #1

declare dso_local %struct.TYPE_8__* @find_desc_for_source(i32, i32) #1

declare dso_local i64 @is_vect_desc_usable(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_8__* @find_desc_for_int(i32, i32) #1

declare dso_local i32 @int_has_handler(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
