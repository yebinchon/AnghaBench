; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_entry_get.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_entry_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i64, i64, i32, i64, i32, i32, i64, i32 }
%struct.TYPE_14__ = type { i8*, i64 (%struct.TYPE_16__*, i32, i32, i8*, i8*, i8*, i32)*, %struct.TYPE_13__*, i32 (%struct.TYPE_16__*, i32*, i32, i32, i8*, i8*, i32, i8*, i8*, i32)*, i32 (%struct.TYPE_16__*, i32, i32, i8*, i8*, i8*, i32)*, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i8*, i8*, i64, i32, i32 }
%struct.TYPE_13__ = type { i64, i32 }

@MENU_SUBLABEL_MAX_LENGTH = common dso_local global i32 0, align 4
@MSG_UNKNOWN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @menu_entry_get(%struct.TYPE_15__* %0, i64 %1, i64 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [255 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca %struct.TYPE_16__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %14, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call %struct.TYPE_16__* @menu_entries_get_selection_buf_ptr_internal(i64 %23)
  store %struct.TYPE_16__* %24, %struct.TYPE_16__** %15, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %5
  %28 = load i8*, i8** %9, align 8
  %29 = bitcast i8* %28 to %struct.TYPE_16__*
  br label %32

30:                                               ; preds = %5
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  br label %32

32:                                               ; preds = %30, %27
  %33 = phi %struct.TYPE_16__* [ %29, %27 ], [ %31, %30 ]
  store %struct.TYPE_16__* %33, %struct.TYPE_16__** %16, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %17, align 4
  %37 = getelementptr inbounds [255 x i8], [255 x i8]* %11, i64 0, i64 0
  store i8 0, i8* %37, align 16
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %39 = icmp ne %struct.TYPE_16__* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %32
  br label %343

41:                                               ; preds = %32
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %12, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = load i64, i64* %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %13, align 8
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %57, align 8
  %59 = load i64, i64* %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 8
  store i32 %62, i32* %64, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %66, align 8
  %68 = load i64, i64* %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 16
  store i32 %71, i32* %73, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %75, align 8
  %77 = load i64, i64* %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %81, %struct.TYPE_14__** %14, align 8
  %82 = load i64, i64* %8, align 8
  %83 = trunc i64 %82 to i32
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 15
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %41
  %91 = load i8*, i8** %13, align 8
  %92 = call i64 @string_is_empty(i8* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %90
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 2
  %97 = load i8*, i8** %96, align 8
  %98 = load i8*, i8** %13, align 8
  %99 = call i64 @strlcpy(i8* %97, i8* %98, i32 8)
  br label %100

100:                                              ; preds = %94, %90, %41
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %102 = icmp ne %struct.TYPE_14__* %101, null
  br i1 %102, label %103, label %285

103:                                              ; preds = %100
  store i8* null, i8** %18, align 8
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 14
  store i32 %106, i32* %108, align 4
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 13
  store i32 %111, i32* %113, align 8
  %114 = call i32 @menu_entries_get_last_stack(i32* null, i8** %18, i32* null, i32* null, i32* null)
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 12
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %147

119:                                              ; preds = %103
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 4
  %122 = load i32 (%struct.TYPE_16__*, i32, i32, i8*, i8*, i8*, i32)*, i32 (%struct.TYPE_16__*, i32, i32, i8*, i8*, i8*, i32)** %121, align 8
  %123 = icmp ne i32 (%struct.TYPE_16__*, i32, i32, i8*, i8*, i8*, i32)* %122, null
  br i1 %123, label %124, label %147

124:                                              ; preds = %119
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 4
  %127 = load i32 (%struct.TYPE_16__*, i32, i32, i8*, i8*, i8*, i32)*, i32 (%struct.TYPE_16__*, i32, i32, i8*, i8*, i8*, i32)** %126, align 8
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 8
  %131 = load i32, i32* %130, align 8
  %132 = load i64, i64* %8, align 8
  %133 = trunc i64 %132 to i32
  %134 = load i8*, i8** %18, align 8
  %135 = load i8*, i8** %12, align 8
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 3
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 %127(%struct.TYPE_16__* %128, i32 %131, i32 %133, i8* %134, i8* %135, i8* %138, i32 8)
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 3
  %142 = load i8*, i8** %141, align 8
  %143 = call i64 @string_is_empty(i8* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %124
  store i32 1, i32* %17, align 4
  br label %146

146:                                              ; preds = %145, %124
  br label %147

147:                                              ; preds = %146, %119, %103
  %148 = load i32, i32* %17, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %155, label %150

150:                                              ; preds = %147
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 10
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %227

155:                                              ; preds = %150, %147
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 3
  %158 = load i32 (%struct.TYPE_16__*, i32*, i32, i32, i8*, i8*, i32, i8*, i8*, i32)*, i32 (%struct.TYPE_16__*, i32*, i32, i32, i8*, i8*, i32, i8*, i8*, i32)** %157, align 8
  %159 = icmp ne i32 (%struct.TYPE_16__*, i32*, i32, i32, i8*, i8*, i32, i8*, i8*, i32)* %158, null
  br i1 %159, label %160, label %227

160:                                              ; preds = %155
  %161 = load i32, i32* %10, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %227

163:                                              ; preds = %160
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 3
  %166 = load i32 (%struct.TYPE_16__*, i32*, i32, i32, i8*, i8*, i32, i8*, i8*, i32)*, i32 (%struct.TYPE_16__*, i32*, i32, i32, i8*, i8*, i32, i8*, i8*, i32)** %165, align 8
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 11
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 8
  %172 = load i32, i32* %171, align 8
  %173 = load i64, i64* %8, align 8
  %174 = trunc i64 %173 to i32
  %175 = load i8*, i8** %18, align 8
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 4
  %178 = load i8*, i8** %177, align 8
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 10
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  %183 = zext i1 %182 to i64
  %184 = select i1 %182, i64 8, i64 0
  %185 = trunc i64 %184 to i32
  %186 = load i8*, i8** %12, align 8
  %187 = getelementptr inbounds [255 x i8], [255 x i8]* %11, i64 0, i64 0
  %188 = load i32, i32* %17, align 4
  %189 = icmp ne i32 %188, 0
  %190 = zext i1 %189 to i64
  %191 = select i1 %189, i64 255, i64 0
  %192 = trunc i64 %191 to i32
  %193 = call i32 %166(%struct.TYPE_16__* %167, i32* %169, i32 %172, i32 %174, i8* %175, i8* %178, i32 %185, i8* %186, i8* %187, i32 %192)
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 4
  %196 = load i8*, i8** %195, align 8
  %197 = call i64 @string_is_empty(i8* %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %226, label %199

199:                                              ; preds = %163
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %201 = call i64 @menu_entry_is_password(%struct.TYPE_15__* %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %225

203:                                              ; preds = %199
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 5
  %206 = load i8*, i8** %205, align 8
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 4
  %209 = load i8*, i8** %208, align 8
  %210 = call i64 @strlcpy(i8* %206, i8* %209, i32 8)
  store i64 %210, i64* %19, align 8
  store i64 0, i64* %20, align 8
  br label %211

211:                                              ; preds = %221, %203
  %212 = load i64, i64* %20, align 8
  %213 = load i64, i64* %19, align 8
  %214 = icmp ult i64 %212, %213
  br i1 %214, label %215, label %224

215:                                              ; preds = %211
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 5
  %218 = load i8*, i8** %217, align 8
  %219 = load i64, i64* %20, align 8
  %220 = getelementptr inbounds i8, i8* %218, i64 %219
  store i8 42, i8* %220, align 1
  br label %221

221:                                              ; preds = %215
  %222 = load i64, i64* %20, align 8
  %223 = add i64 %222, 1
  store i64 %223, i64* %20, align 8
  br label %211

224:                                              ; preds = %211
  br label %225

225:                                              ; preds = %224, %199
  br label %226

226:                                              ; preds = %225, %163
  br label %227

227:                                              ; preds = %226, %160, %155, %150
  %228 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 9
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %284

232:                                              ; preds = %227
  %233 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i32 0, i32 0
  %235 = load i8*, i8** %234, align 8
  %236 = call i64 @string_is_empty(i8* %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %246, label %238

238:                                              ; preds = %232
  %239 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i32 0, i32 6
  %241 = load i8*, i8** %240, align 8
  %242 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 0
  %244 = load i8*, i8** %243, align 8
  %245 = call i64 @strlcpy(i8* %241, i8* %244, i32 8)
  br label %283

246:                                              ; preds = %232
  %247 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i32 0, i32 1
  %249 = load i64 (%struct.TYPE_16__*, i32, i32, i8*, i8*, i8*, i32)*, i64 (%struct.TYPE_16__*, i32, i32, i8*, i8*, i8*, i32)** %248, align 8
  %250 = icmp ne i64 (%struct.TYPE_16__*, i32, i32, i8*, i8*, i8*, i32)* %249, null
  br i1 %250, label %251, label %282

251:                                              ; preds = %246
  %252 = load i32, i32* @MENU_SUBLABEL_MAX_LENGTH, align 4
  %253 = zext i32 %252 to i64
  %254 = call i8* @llvm.stacksave()
  store i8* %254, i8** %21, align 8
  %255 = alloca i8, i64 %253, align 16
  store i64 %253, i64* %22, align 8
  %256 = getelementptr inbounds i8, i8* %255, i64 0
  store i8 0, i8* %256, align 16
  %257 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 1
  %259 = load i64 (%struct.TYPE_16__*, i32, i32, i8*, i8*, i8*, i32)*, i64 (%struct.TYPE_16__*, i32, i32, i8*, i8*, i8*, i32)** %258, align 8
  %260 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %261 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i32 0, i32 8
  %263 = load i32, i32* %262, align 8
  %264 = load i64, i64* %8, align 8
  %265 = trunc i64 %264 to i32
  %266 = load i8*, i8** %18, align 8
  %267 = load i8*, i8** %12, align 8
  %268 = trunc i64 %253 to i32
  %269 = call i64 %259(%struct.TYPE_16__* %260, i32 %263, i32 %265, i8* %266, i8* %267, i8* %255, i32 %268)
  %270 = icmp sgt i64 %269, 0
  br i1 %270, label %271, label %276

271:                                              ; preds = %251
  %272 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 0
  %274 = load i8*, i8** %273, align 8
  %275 = call i64 @strlcpy(i8* %274, i8* %255, i32 8)
  br label %276

276:                                              ; preds = %271, %251
  %277 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 6
  %279 = load i8*, i8** %278, align 8
  %280 = call i64 @strlcpy(i8* %279, i8* %255, i32 8)
  %281 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %281)
  br label %282

282:                                              ; preds = %276, %246
  br label %283

283:                                              ; preds = %282, %238
  br label %284

284:                                              ; preds = %283, %227
  br label %285

285:                                              ; preds = %284, %100
  %286 = load i32, i32* %17, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %343

288:                                              ; preds = %285
  %289 = load i8*, i8** %12, align 8
  %290 = call i64 @string_is_empty(i8* %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %299, label %292

292:                                              ; preds = %288
  %293 = load i32, i32* %10, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %299, label %295

295:                                              ; preds = %292
  %296 = getelementptr inbounds [255 x i8], [255 x i8]* %11, i64 0, i64 0
  %297 = load i8*, i8** %12, align 8
  %298 = call i64 @strlcpy(i8* %296, i8* %297, i32 255)
  br label %332

299:                                              ; preds = %292, %288
  %300 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %301 = icmp ne %struct.TYPE_14__* %300, null
  br i1 %301, label %302, label %331

302:                                              ; preds = %299
  %303 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %304 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %303, i32 0, i32 2
  %305 = load %struct.TYPE_13__*, %struct.TYPE_13__** %304, align 8
  %306 = icmp ne %struct.TYPE_13__* %305, null
  br i1 %306, label %307, label %331

307:                                              ; preds = %302
  %308 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %309 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %308, i32 0, i32 2
  %310 = load %struct.TYPE_13__*, %struct.TYPE_13__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %310, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  %313 = load i64, i64* @MSG_UNKNOWN, align 8
  %314 = icmp ne i64 %312, %313
  br i1 %314, label %315, label %331

315:                                              ; preds = %307
  %316 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %317 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %316, i32 0, i32 2
  %318 = load %struct.TYPE_13__*, %struct.TYPE_13__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 8
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %331, label %322

322:                                              ; preds = %315
  %323 = getelementptr inbounds [255 x i8], [255 x i8]* %11, i64 0, i64 0
  %324 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %325 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %324, i32 0, i32 2
  %326 = load %struct.TYPE_13__*, %struct.TYPE_13__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = call i8* @msg_hash_to_str(i64 %328)
  %330 = call i64 @strlcpy(i8* %323, i8* %329, i32 255)
  br label %331

331:                                              ; preds = %322, %315, %307, %302, %299
  br label %332

332:                                              ; preds = %331, %295
  %333 = getelementptr inbounds [255 x i8], [255 x i8]* %11, i64 0, i64 0
  %334 = call i64 @string_is_empty(i8* %333)
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %342, label %336

336:                                              ; preds = %332
  %337 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %338 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %337, i32 0, i32 7
  %339 = load i8*, i8** %338, align 8
  %340 = getelementptr inbounds [255 x i8], [255 x i8]* %11, i64 0, i64 0
  %341 = call i64 @strlcpy(i8* %339, i8* %340, i32 8)
  br label %342

342:                                              ; preds = %336, %332
  br label %343

343:                                              ; preds = %40, %342, %285
  ret void
}

declare dso_local %struct.TYPE_16__* @menu_entries_get_selection_buf_ptr_internal(i64) #1

declare dso_local i64 @string_is_empty(i8*) #1

declare dso_local i64 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @menu_entries_get_last_stack(i32*, i8**, i32*, i32*, i32*) #1

declare dso_local i64 @menu_entry_is_password(%struct.TYPE_15__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i8* @msg_hash_to_str(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
