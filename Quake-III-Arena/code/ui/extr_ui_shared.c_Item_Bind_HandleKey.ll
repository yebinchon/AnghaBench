; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_shared.c_Item_Bind_HandleKey.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_shared.c_Item_Bind_HandleKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (i32, i8*)*, i32, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

@DC = common dso_local global %struct.TYPE_10__* null, align 8
@g_waitingForKey = common dso_local global i64 0, align 8
@K_MOUSE1 = common dso_local global i32 0, align 4
@K_ENTER = common dso_local global i32 0, align 4
@qtrue = common dso_local global i64 0, align 8
@g_bindItem = common dso_local global %struct.TYPE_8__* null, align 8
@K_CHAR_FLAG = common dso_local global i32 0, align 4
@qfalse = common dso_local global i64 0, align 8
@g_bindings = common dso_local global %struct.TYPE_9__* null, align 8
@g_bindCount = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Item_Bind_HandleKey(%struct.TYPE_8__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** @DC, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** @DC, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @Rect_ContainsPoint(i32* %12, i32 %15, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %3
  %22 = load i64, i64* @g_waitingForKey, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %40, label %24

24:                                               ; preds = %21
  %25 = load i64, i64* %7, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @K_MOUSE1, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @K_ENTER, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31, %27
  %36 = load i64, i64* @qtrue, align 8
  store i64 %36, i64* @g_waitingForKey, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** @g_bindItem, align 8
  br label %38

38:                                               ; preds = %35, %31, %24
  %39 = load i64, i64* @qtrue, align 8
  store i64 %39, i64* %4, align 8
  br label %278

40:                                               ; preds = %21, %3
  %41 = load i64, i64* @g_waitingForKey, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_bindItem, align 8
  %45 = icmp eq %struct.TYPE_8__* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %43, %40
  %47 = load i64, i64* @qtrue, align 8
  store i64 %47, i64* %4, align 8
  br label %278

48:                                               ; preds = %43
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @K_CHAR_FLAG, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i64, i64* @qtrue, align 8
  store i64 %54, i64* %4, align 8
  br label %278

55:                                               ; preds = %48
  %56 = load i32, i32* %6, align 4
  switch i32 %56, label %85 [
    i32 128, label %57
    i32 129, label %60
    i32 96, label %83
  ]

57:                                               ; preds = %55
  %58 = load i64, i64* @qfalse, align 8
  store i64 %58, i64* @g_waitingForKey, align 8
  %59 = load i64, i64* @qtrue, align 8
  store i64 %59, i64* %4, align 8
  br label %278

60:                                               ; preds = %55
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @BindingIDFromName(i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, -1
  br i1 %66, label %67, label %78

67:                                               ; preds = %60
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  store i32 -1, i32* %72, align 4
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  store i32 -1, i32* %77, align 4
  br label %78

78:                                               ; preds = %67, %60
  %79 = load i64, i64* @qtrue, align 8
  %80 = call i32 @Controls_SetConfig(i64 %79)
  %81 = load i64, i64* @qfalse, align 8
  store i64 %81, i64* @g_waitingForKey, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** @g_bindItem, align 8
  %82 = load i64, i64* @qtrue, align 8
  store i64 %82, i64* %4, align 8
  br label %278

83:                                               ; preds = %55
  %84 = load i64, i64* @qtrue, align 8
  store i64 %84, i64* %4, align 8
  br label %278

85:                                               ; preds = %55
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, -1
  br i1 %88, label %89, label %140

89:                                               ; preds = %86
  store i32 0, i32* %9, align 4
  br label %90

90:                                               ; preds = %136, %89
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @g_bindCount, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %139

94:                                               ; preds = %90
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %94
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  store i32 -1, i32* %108, align 4
  br label %109

109:                                              ; preds = %103, %94
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %6, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %135

118:                                              ; preds = %109
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  store i32 %124, i32* %129, align 4
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 1
  store i32 -1, i32* %134, align 4
  br label %135

135:                                              ; preds = %118, %109
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %9, align 4
  br label %90

139:                                              ; preds = %90
  br label %140

140:                                              ; preds = %139, %86
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @BindingIDFromName(i32 %143)
  store i32 %144, i32* %8, align 4
  %145 = load i32, i32* %8, align 4
  %146 = icmp ne i32 %145, -1
  br i1 %146, label %147, label %273

147:                                              ; preds = %140
  %148 = load i32, i32* %6, align 4
  %149 = icmp eq i32 %148, -1
  br i1 %149, label %150, label %199

150:                                              ; preds = %147
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, -1
  br i1 %157, label %158, label %174

158:                                              ; preds = %150
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** @DC, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  %161 = load i32 (i32, i8*)*, i32 (i32, i8*)** %160, align 8
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %163 = load i32, i32* %8, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 %161(i32 %167, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %170 = load i32, i32* %8, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 0
  store i32 -1, i32* %173, align 4
  br label %174

174:                                              ; preds = %158, %150
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %176 = load i32, i32* %8, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %180, -1
  br i1 %181, label %182, label %198

182:                                              ; preds = %174
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** @DC, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  %185 = load i32 (i32, i8*)*, i32 (i32, i8*)** %184, align 8
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %187 = load i32, i32* %8, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = call i32 %185(i32 %191, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %194 = load i32, i32* %8, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 1
  store i32 -1, i32* %197, align 4
  br label %198

198:                                              ; preds = %182, %174
  br label %272

199:                                              ; preds = %147
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %201 = load i32, i32* %8, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = icmp eq i32 %205, -1
  br i1 %206, label %207, label %214

207:                                              ; preds = %199
  %208 = load i32, i32* %6, align 4
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %210 = load i32, i32* %8, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 0
  store i32 %208, i32* %213, align 4
  br label %271

214:                                              ; preds = %199
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %216 = load i32, i32* %8, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* %6, align 4
  %222 = icmp ne i32 %220, %221
  br i1 %222, label %223, label %238

223:                                              ; preds = %214
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %225 = load i32, i32* %8, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = icmp eq i32 %229, -1
  br i1 %230, label %231, label %238

231:                                              ; preds = %223
  %232 = load i32, i32* %6, align 4
  %233 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %234 = load i32, i32* %8, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 1
  store i32 %232, i32* %237, align 4
  br label %270

238:                                              ; preds = %223, %214
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** @DC, align 8
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 0
  %241 = load i32 (i32, i8*)*, i32 (i32, i8*)** %240, align 8
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %243 = load i32, i32* %8, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = call i32 %241(i32 %247, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** @DC, align 8
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 0
  %251 = load i32 (i32, i8*)*, i32 (i32, i8*)** %250, align 8
  %252 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %253 = load i32, i32* %8, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = call i32 %251(i32 %257, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %259 = load i32, i32* %6, align 4
  %260 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %261 = load i32, i32* %8, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %263, i32 0, i32 0
  store i32 %259, i32* %264, align 4
  %265 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %266 = load i32, i32* %8, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %265, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %268, i32 0, i32 1
  store i32 -1, i32* %269, align 4
  br label %270

270:                                              ; preds = %238, %231
  br label %271

271:                                              ; preds = %270, %207
  br label %272

272:                                              ; preds = %271, %198
  br label %273

273:                                              ; preds = %272, %140
  %274 = load i64, i64* @qtrue, align 8
  %275 = call i32 @Controls_SetConfig(i64 %274)
  %276 = load i64, i64* @qfalse, align 8
  store i64 %276, i64* @g_waitingForKey, align 8
  %277 = load i64, i64* @qtrue, align 8
  store i64 %277, i64* %4, align 8
  br label %278

278:                                              ; preds = %273, %83, %78, %57, %53, %46, %38
  %279 = load i64, i64* %4, align 8
  ret i64 %279
}

declare dso_local i64 @Rect_ContainsPoint(i32*, i32, i32) #1

declare dso_local i32 @BindingIDFromName(i32) #1

declare dso_local i32 @Controls_SetConfig(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
