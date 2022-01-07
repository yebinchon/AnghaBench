; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_menu_generic.c_generic_menu_entry_action.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_menu_generic.c_generic_menu_entry_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i32 (i32, i32)*, i32 (i32, i32)*, i32 (i32, i32, i32, i64)*, i32 (i32, i32, i32, i64, i32)*, i32 (i32, i32)*, i32 (i32, i32, i32)*, i32 (i32, i32, i32)*, i32 (i32, i32)*, i32 (i32, i32, i32, i64)*, i32 (i32, i32, i32, i64)*, i32 (%struct.TYPE_13__*, %struct.TYPE_13__*)* }

@MENU_NAVIGATION_CTL_DESCEND_ALPHABET = common dso_local global i32 0, align 4
@MENU_NAVIGATION_CTL_ASCEND_ALPHABET = common dso_local global i32 0, align 4
@MENU_ENTRIES_CTL_NEEDS_REFRESH = common dso_local global i32 0, align 4
@MENU_ENTRIES_CTL_UNSET_REFRESH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generic_menu_entry_action(i8* %0, %struct.TYPE_12__* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_13__*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = call %struct.TYPE_13__* @menu_entries_get_selection_buf_ptr(i32 0)
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %10, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %16 = icmp ne %struct.TYPE_13__* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %4
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = load i64, i64* %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.TYPE_11__*
  br label %27

26:                                               ; preds = %4
  br label %27

27:                                               ; preds = %26, %17
  %28 = phi %struct.TYPE_11__* [ %25, %17 ], [ null, %26 ]
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %11, align 8
  %29 = load i32, i32* %8, align 4
  switch i32 %29, label %257 [
    i32 128, label %30
    i32 139, label %50
    i32 132, label %70
    i32 133, label %73
    i32 140, label %76
    i32 136, label %100
    i32 129, label %127
    i32 137, label %147
    i32 135, label %167
    i32 138, label %187
    i32 130, label %207
    i32 131, label %231
    i32 134, label %233
  ]

30:                                               ; preds = %27
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %32 = icmp ne %struct.TYPE_11__* %31, null
  br i1 %32, label %33, label %49

33:                                               ; preds = %30
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32 (i32, i32)*, i32 (i32, i32)** %35, align 8
  %37 = icmp ne i32 (i32, i32)* %36, null
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i32 (i32, i32)*, i32 (i32, i32)** %40, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 %41(i32 %44, i32 %47)
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %38, %33, %30
  br label %258

50:                                               ; preds = %27
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %52 = icmp ne %struct.TYPE_11__* %51, null
  br i1 %52, label %53, label %69

53:                                               ; preds = %50
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = load i32 (i32, i32)*, i32 (i32, i32)** %55, align 8
  %57 = icmp ne i32 (i32, i32)* %56, null
  br i1 %57, label %58, label %69

58:                                               ; preds = %53
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load i32 (i32, i32)*, i32 (i32, i32)** %60, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 %61(i32 %64, i32 %67)
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %58, %53, %50
  br label %258

70:                                               ; preds = %27
  %71 = load i32, i32* @MENU_NAVIGATION_CTL_DESCEND_ALPHABET, align 4
  %72 = call i32 @menu_driver_ctl(i32 %71, i32* null)
  br label %258

73:                                               ; preds = %27
  %74 = load i32, i32* @MENU_NAVIGATION_CTL_ASCEND_ALPHABET, align 4
  %75 = call i32 @menu_driver_ctl(i32 %74, i32* null)
  br label %258

76:                                               ; preds = %27
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %78 = icmp ne %struct.TYPE_11__* %77, null
  br i1 %78, label %79, label %99

79:                                               ; preds = %76
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 2
  %82 = load i32 (i32, i32, i32, i64)*, i32 (i32, i32, i32, i64)** %81, align 8
  %83 = icmp ne i32 (i32, i32, i32, i64)* %82, null
  br i1 %83, label %84, label %99

84:                                               ; preds = %79
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 2
  %87 = load i32 (i32, i32, i32, i64)*, i32 (i32, i32, i32, i64)** %86, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i64, i64* %7, align 8
  %98 = call i32 %87(i32 %90, i32 %93, i32 %96, i64 %97)
  store i32 %98, i32* %9, align 4
  br label %99

99:                                               ; preds = %84, %79, %76
  br label %258

100:                                              ; preds = %27
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %102 = icmp ne %struct.TYPE_11__* %101, null
  br i1 %102, label %103, label %126

103:                                              ; preds = %100
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 3
  %106 = load i32 (i32, i32, i32, i64, i32)*, i32 (i32, i32, i32, i64, i32)** %105, align 8
  %107 = icmp ne i32 (i32, i32, i32, i64, i32)* %106, null
  br i1 %107, label %108, label %126

108:                                              ; preds = %103
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 3
  %111 = load i32 (i32, i32, i32, i64, i32)*, i32 (i32, i32, i32, i64, i32)** %110, align 8
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i64, i64* %7, align 8
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = call i32 %111(i32 %114, i32 %117, i32 %120, i64 %121, i32 %124)
  store i32 %125, i32* %9, align 4
  br label %126

126:                                              ; preds = %108, %103, %100
  br label %258

127:                                              ; preds = %27
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %129 = icmp ne %struct.TYPE_11__* %128, null
  br i1 %129, label %130, label %146

130:                                              ; preds = %127
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 4
  %133 = load i32 (i32, i32)*, i32 (i32, i32)** %132, align 8
  %134 = icmp ne i32 (i32, i32)* %133, null
  br i1 %134, label %135, label %146

135:                                              ; preds = %130
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 4
  %138 = load i32 (i32, i32)*, i32 (i32, i32)** %137, align 8
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 %138(i32 %141, i32 %144)
  store i32 %145, i32* %9, align 4
  br label %146

146:                                              ; preds = %135, %130, %127
  br label %258

147:                                              ; preds = %27
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %149 = icmp ne %struct.TYPE_11__* %148, null
  br i1 %149, label %150, label %166

150:                                              ; preds = %147
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 5
  %153 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %152, align 8
  %154 = icmp ne i32 (i32, i32, i32)* %153, null
  br i1 %154, label %155, label %166

155:                                              ; preds = %150
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 5
  %158 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %157, align 8
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 %158(i32 %161, i32 %164, i32 0)
  store i32 %165, i32* %9, align 4
  br label %166

166:                                              ; preds = %155, %150, %147
  br label %258

167:                                              ; preds = %27
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %169 = icmp ne %struct.TYPE_11__* %168, null
  br i1 %169, label %170, label %186

170:                                              ; preds = %167
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 6
  %173 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %172, align 8
  %174 = icmp ne i32 (i32, i32, i32)* %173, null
  br i1 %174, label %175, label %186

175:                                              ; preds = %170
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 6
  %178 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %177, align 8
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i32 %178(i32 %181, i32 %184, i32 0)
  store i32 %185, i32* %9, align 4
  br label %186

186:                                              ; preds = %175, %170, %167
  br label %258

187:                                              ; preds = %27
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %189 = icmp ne %struct.TYPE_11__* %188, null
  br i1 %189, label %190, label %206

190:                                              ; preds = %187
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 7
  %193 = load i32 (i32, i32)*, i32 (i32, i32)** %192, align 8
  %194 = icmp ne i32 (i32, i32)* %193, null
  br i1 %194, label %195, label %206

195:                                              ; preds = %190
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 7
  %198 = load i32 (i32, i32)*, i32 (i32, i32)** %197, align 8
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = call i32 %198(i32 %201, i32 %204)
  store i32 %205, i32* %9, align 4
  br label %206

206:                                              ; preds = %195, %190, %187
  br label %258

207:                                              ; preds = %27
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %209 = icmp ne %struct.TYPE_11__* %208, null
  br i1 %209, label %210, label %230

210:                                              ; preds = %207
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 8
  %213 = load i32 (i32, i32, i32, i64)*, i32 (i32, i32, i32, i64)** %212, align 8
  %214 = icmp ne i32 (i32, i32, i32, i64)* %213, null
  br i1 %214, label %215, label %230

215:                                              ; preds = %210
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 8
  %218 = load i32 (i32, i32, i32, i64)*, i32 (i32, i32, i32, i64)** %217, align 8
  %219 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load i64, i64* %7, align 8
  %229 = call i32 %218(i32 %221, i32 %224, i32 %227, i64 %228)
  store i32 %229, i32* %9, align 4
  br label %230

230:                                              ; preds = %215, %210, %207
  br label %258

231:                                              ; preds = %27
  %232 = call i32 (...) @menu_input_dialog_start_search()
  br label %258

233:                                              ; preds = %27
  %234 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %235 = icmp ne %struct.TYPE_11__* %234, null
  br i1 %235, label %236, label %256

236:                                              ; preds = %233
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i32 0, i32 9
  %239 = load i32 (i32, i32, i32, i64)*, i32 (i32, i32, i32, i64)** %238, align 8
  %240 = icmp ne i32 (i32, i32, i32, i64)* %239, null
  br i1 %240, label %241, label %256

241:                                              ; preds = %236
  %242 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 9
  %244 = load i32 (i32, i32, i32, i64)*, i32 (i32, i32, i32, i64)** %243, align 8
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load i64, i64* %7, align 8
  %255 = call i32 %244(i32 %247, i32 %250, i32 %253, i64 %254)
  store i32 %255, i32* %9, align 4
  br label %256

256:                                              ; preds = %241, %236, %233
  br label %258

257:                                              ; preds = %27
  br label %258

258:                                              ; preds = %257, %256, %231, %230, %206, %186, %166, %146, %126, %99, %73, %70, %69, %49
  %259 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %260 = icmp ne %struct.TYPE_13__* %259, null
  br i1 %260, label %261, label %270

261:                                              ; preds = %258
  %262 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %263 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %262, i32 0, i32 0
  %264 = load %struct.TYPE_10__*, %struct.TYPE_10__** %263, align 8
  %265 = load i64, i64* %7, align 8
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = inttoptr i64 %268 to %struct.TYPE_11__*
  br label %271

270:                                              ; preds = %258
  br label %271

271:                                              ; preds = %270, %261
  %272 = phi %struct.TYPE_11__* [ %269, %261 ], [ null, %270 ]
  store %struct.TYPE_11__* %272, %struct.TYPE_11__** %11, align 8
  %273 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %274 = icmp ne %struct.TYPE_11__* %273, null
  br i1 %274, label %275, label %295

275:                                              ; preds = %271
  %276 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %277 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %276, i32 0, i32 10
  %278 = load i32 (%struct.TYPE_13__*, %struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*, %struct.TYPE_13__*)** %277, align 8
  %279 = icmp ne i32 (%struct.TYPE_13__*, %struct.TYPE_13__*)* %278, null
  br i1 %279, label %280, label %295

280:                                              ; preds = %275
  %281 = load i32, i32* @MENU_ENTRIES_CTL_NEEDS_REFRESH, align 4
  %282 = call i64 @menu_entries_ctl(i32 %281, i32* null)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %294

284:                                              ; preds = %280
  store i32 0, i32* %12, align 4
  %285 = call %struct.TYPE_13__* @menu_entries_get_menu_stack_ptr(i32 0)
  store %struct.TYPE_13__* %285, %struct.TYPE_13__** %13, align 8
  %286 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %287 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %286, i32 0, i32 10
  %288 = load i32 (%struct.TYPE_13__*, %struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*, %struct.TYPE_13__*)** %287, align 8
  %289 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %290 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %291 = call i32 %288(%struct.TYPE_13__* %289, %struct.TYPE_13__* %290)
  %292 = load i32, i32* @MENU_ENTRIES_CTL_UNSET_REFRESH, align 4
  %293 = call i64 @menu_entries_ctl(i32 %292, i32* %12)
  br label %294

294:                                              ; preds = %284, %280
  br label %295

295:                                              ; preds = %294, %275, %271
  %296 = load i32, i32* %9, align 4
  ret i32 %296
}

declare dso_local %struct.TYPE_13__* @menu_entries_get_selection_buf_ptr(i32) #1

declare dso_local i32 @menu_driver_ctl(i32, i32*) #1

declare dso_local i32 @menu_input_dialog_start_search(...) #1

declare dso_local i64 @menu_entries_ctl(i32, i32*) #1

declare dso_local %struct.TYPE_13__* @menu_entries_get_menu_stack_ptr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
