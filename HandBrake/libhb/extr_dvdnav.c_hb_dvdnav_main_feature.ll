; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_dvdnav.c_hb_dvdnav_main_feature.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_dvdnav.c_hb_dvdnav_main_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"dvdnav: Searching menus for main feature\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"dvdnav: Longest title %d duration %02d:%02d:%02d\00", align 1
@DVD_MENU_Escape = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"dvdnav: Found first-play title %d duration %02d:%02d:%02d\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"dvdnav: No first-play menu title found\00", align 1
@DVD_MENU_Root = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"dvdnav: Found root title %d duration %02d:%02d:%02d\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"dvdnav: No root menu title found\00", align 1
@DVD_MENU_Title = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [47 x i8] c"dvdnav: found title %d duration %02d:%02d:%02d\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"dvdnav: No title menu title found\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"dvdnav: Using longest title %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*)* @hb_dvdnav_main_feature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hb_dvdnav_main_feature(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32* %1, i32** %4, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %5, align 8
  store i32 -1, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %22 = call i32 (i32, i8*, ...) @hb_deep_log(i32 2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %59, %2
  %24 = load i32, i32* %9, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @hb_list_count(i32* %25)
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %62

28:                                               ; preds = %23
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call %struct.TYPE_7__* @hb_list_item(i32* %29, i32 %30)
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** %15, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %28
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %12, align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %37, %28
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp sgt i64 %48, 162000000
  br i1 %49, label %50, label %58

50:                                               ; preds = %44
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %14, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %14, align 4
  br label %58

58:                                               ; preds = %50, %44
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %23

62:                                               ; preds = %23
  %63 = load i32, i32* %14, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %13, align 4
  %68 = sdiv i32 %67, %66
  store i32 %68, i32* %13, align 4
  br label %69

69:                                               ; preds = %65, %62
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @find_title(i32* %70, i32 %71)
  store i32 %72, i32* %16, align 4
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* %16, align 4
  %75 = call %struct.TYPE_7__* @hb_list_item(i32* %73, i32 %74)
  store %struct.TYPE_7__* %75, %struct.TYPE_7__** %15, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %77 = icmp ne %struct.TYPE_7__* %76, null
  br i1 %77, label %78, label %90

78:                                               ; preds = %69
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i32, i8*, ...) @hb_deep_log(i32 2, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %82, i32 %85, i32 %88)
  br label %90

90:                                               ; preds = %78, %69
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @dvdnav_reset(i32 %93)
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @skip_to_menu(i32 %97, i32 2000)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %136

100:                                              ; preds = %90
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %102 = load i32*, i32** %4, align 8
  %103 = load i32, i32* @DVD_MENU_Escape, align 4
  %104 = load i32, i32* %12, align 4
  %105 = call i32 @try_menu(%struct.TYPE_8__* %101, i32* %102, i32 %103, i32 %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp sge i32 %106, 0
  br i1 %107, label %108, label %133

108:                                              ; preds = %100
  %109 = load i32*, i32** %4, align 8
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @find_title(i32* %109, i32 %110)
  store i32 %111, i32* %16, align 4
  %112 = load i32*, i32** %4, align 8
  %113 = load i32, i32* %16, align 4
  %114 = call %struct.TYPE_7__* @hb_list_item(i32* %112, i32 %113)
  store %struct.TYPE_7__* %114, %struct.TYPE_7__** %15, align 8
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %116 = icmp ne %struct.TYPE_7__* %115, null
  br i1 %116, label %117, label %132

117:                                              ; preds = %108
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* %6, align 4
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = call i32 (i32, i8*, ...) @hb_deep_log(i32 2, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %121, i32 %124, i32 %127, i32 %130)
  br label %132

132:                                              ; preds = %117, %108
  br label %135

133:                                              ; preds = %100
  %134 = call i32 (i32, i8*, ...) @hb_deep_log(i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %132
  br label %136

136:                                              ; preds = %135, %90
  %137 = load i32, i32* %6, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %147, label %139

139:                                              ; preds = %136
  %140 = load i32, i32* %12, align 4
  %141 = sitofp i32 %140 to float
  %142 = fpext float %141 to double
  %143 = fmul double %142, 0x3FE6666666666666
  %144 = load i32, i32* %10, align 4
  %145 = sitofp i32 %144 to double
  %146 = fcmp ogt double %143, %145
  br i1 %146, label %147, label %183

147:                                              ; preds = %139, %136
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %149 = load i32*, i32** %4, align 8
  %150 = load i32, i32* @DVD_MENU_Root, align 4
  %151 = load i32, i32* %12, align 4
  %152 = call i32 @try_menu(%struct.TYPE_8__* %148, i32* %149, i32 %150, i32 %151)
  store i32 %152, i32* %6, align 4
  %153 = load i32, i32* %6, align 4
  %154 = icmp sge i32 %153, 0
  br i1 %154, label %155, label %180

155:                                              ; preds = %147
  %156 = load i32*, i32** %4, align 8
  %157 = load i32, i32* %6, align 4
  %158 = call i32 @find_title(i32* %156, i32 %157)
  store i32 %158, i32* %16, align 4
  %159 = load i32*, i32** %4, align 8
  %160 = load i32, i32* %16, align 4
  %161 = call %struct.TYPE_7__* @hb_list_item(i32* %159, i32 %160)
  store %struct.TYPE_7__* %161, %struct.TYPE_7__** %15, align 8
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %163 = icmp ne %struct.TYPE_7__* %162, null
  br i1 %163, label %164, label %179

164:                                              ; preds = %155
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %10, align 4
  %168 = load i32, i32* %6, align 4
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = call i32 (i32, i8*, ...) @hb_deep_log(i32 2, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i32 %168, i32 %171, i32 %174, i32 %177)
  br label %179

179:                                              ; preds = %164, %155
  br label %182

180:                                              ; preds = %147
  %181 = call i32 (i32, i8*, ...) @hb_deep_log(i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %182

182:                                              ; preds = %180, %179
  br label %183

183:                                              ; preds = %182, %139
  %184 = load i32, i32* %6, align 4
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %194, label %186

186:                                              ; preds = %183
  %187 = load i32, i32* %12, align 4
  %188 = sitofp i32 %187 to float
  %189 = fpext float %188 to double
  %190 = fmul double %189, 0x3FE6666666666666
  %191 = load i32, i32* %10, align 4
  %192 = sitofp i32 %191 to double
  %193 = fcmp ogt double %190, %192
  br i1 %193, label %194, label %230

194:                                              ; preds = %186, %183
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %196 = load i32*, i32** %4, align 8
  %197 = load i32, i32* @DVD_MENU_Title, align 4
  %198 = load i32, i32* %12, align 4
  %199 = call i32 @try_menu(%struct.TYPE_8__* %195, i32* %196, i32 %197, i32 %198)
  store i32 %199, i32* %7, align 4
  %200 = load i32, i32* %7, align 4
  %201 = icmp sge i32 %200, 0
  br i1 %201, label %202, label %227

202:                                              ; preds = %194
  %203 = load i32*, i32** %4, align 8
  %204 = load i32, i32* %7, align 4
  %205 = call i32 @find_title(i32* %203, i32 %204)
  store i32 %205, i32* %16, align 4
  %206 = load i32*, i32** %4, align 8
  %207 = load i32, i32* %16, align 4
  %208 = call %struct.TYPE_7__* @hb_list_item(i32* %206, i32 %207)
  store %struct.TYPE_7__* %208, %struct.TYPE_7__** %15, align 8
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %210 = icmp ne %struct.TYPE_7__* %209, null
  br i1 %210, label %211, label %226

211:                                              ; preds = %202
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  store i32 %214, i32* %11, align 4
  %215 = load i32, i32* %7, align 4
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 4
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 4
  %225 = call i32 (i32, i8*, ...) @hb_deep_log(i32 2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i32 %215, i32 %218, i32 %221, i32 %224)
  br label %226

226:                                              ; preds = %211, %202
  br label %229

227:                                              ; preds = %194
  %228 = call i32 (i32, i8*, ...) @hb_deep_log(i32 2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  br label %229

229:                                              ; preds = %227, %226
  br label %230

230:                                              ; preds = %229, %186
  %231 = load i32, i32* %10, align 4
  %232 = load i32, i32* %11, align 4
  %233 = icmp sgt i32 %231, %232
  br i1 %233, label %234, label %237

234:                                              ; preds = %230
  %235 = load i32, i32* %10, align 4
  store i32 %235, i32* %17, align 4
  %236 = load i32, i32* %6, align 4
  store i32 %236, i32* %18, align 4
  br label %240

237:                                              ; preds = %230
  %238 = load i32, i32* %11, align 4
  store i32 %238, i32* %17, align 4
  %239 = load i32, i32* %7, align 4
  store i32 %239, i32* %18, align 4
  br label %240

240:                                              ; preds = %237, %234
  %241 = load i32, i32* %12, align 4
  %242 = sitofp i32 %241 to float
  %243 = fpext float %242 to double
  %244 = fmul double %243, 0x3FE6666666666666
  %245 = load i32, i32* %17, align 4
  %246 = sitofp i32 %245 to double
  %247 = fcmp ogt double %244, %246
  br i1 %247, label %248, label %275

248:                                              ; preds = %240
  %249 = load i32, i32* %17, align 4
  %250 = sext i32 %249 to i64
  %251 = icmp slt i64 %250, 162000000
  br i1 %251, label %252, label %275

252:                                              ; preds = %248
  %253 = load i32, i32* %13, align 4
  %254 = sitofp i32 %253 to float
  %255 = load i32, i32* %17, align 4
  %256 = sitofp i32 %255 to float
  %257 = fdiv float %254, %256
  store float %257, float* %19, align 4
  %258 = load float, float* %19, align 4
  %259 = fcmp ogt float %258, 1.000000e+00
  br i1 %259, label %260, label %263

260:                                              ; preds = %252
  %261 = load float, float* %19, align 4
  %262 = fdiv float 1.000000e+00, %261
  store float %262, float* %19, align 4
  br label %263

263:                                              ; preds = %260, %252
  %264 = load i32, i32* %14, align 4
  %265 = icmp sgt i32 %264, 10
  br i1 %265, label %266, label %274

266:                                              ; preds = %263
  %267 = load float, float* %19, align 4
  %268 = fpext float %267 to double
  %269 = fcmp olt double %268, 0x3FE6666666666666
  br i1 %269, label %270, label %274

270:                                              ; preds = %266
  %271 = load i32, i32* %8, align 4
  store i32 %271, i32* %18, align 4
  %272 = load i32, i32* %18, align 4
  %273 = call i32 (i32, i8*, ...) @hb_deep_log(i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %272)
  br label %274

274:                                              ; preds = %270, %266, %263
  br label %275

275:                                              ; preds = %274, %248, %240
  %276 = load i32, i32* %18, align 4
  ret i32 %276
}

declare dso_local i32 @hb_deep_log(i32, i8*, ...) #1

declare dso_local i32 @hb_list_count(i32*) #1

declare dso_local %struct.TYPE_7__* @hb_list_item(i32*, i32) #1

declare dso_local i32 @find_title(i32*, i32) #1

declare dso_local i32 @dvdnav_reset(i32) #1

declare dso_local i64 @skip_to_menu(i32, i32) #1

declare dso_local i32 @try_menu(%struct.TYPE_8__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
