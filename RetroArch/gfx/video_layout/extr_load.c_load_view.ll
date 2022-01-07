; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/video_layout/extr_load.c_load_view.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/video_layout/extr_load.c_load_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i8* }
%struct.TYPE_27__ = type { i32*, %struct.TYPE_27__*, %struct.TYPE_27__* }
%struct.TYPE_28__ = type { i32, i32, i8*, %struct.TYPE_25__*, i8*, i8*, i8* }
%struct.TYPE_25__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"video_layout: <view> is missing 'name' attribute\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"param\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"bounds\00", align 1
@VIDEO_LAYOUT_ROT0 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"orientation\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"video_layout: group \22%s\22 is missing\0A\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"video_layout: <group> is missing 'ref' attribute\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"repeat\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.12 = private unnamed_addr constant [53 x i8] c"video_layout: <repeat> is missing 'count' attribute\0A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"screen\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"element\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"inputtag\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"inputmask\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"inputraw\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"video_layout: element \22%s\22 is missing\0A\00", align 1
@.str.19 = private unnamed_addr constant [51 x i8] c"video_layout: <%s> is missing 'element' attribute\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_26__*, %struct.TYPE_27__*, i32)* @load_view to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_view(i32* %0, %struct.TYPE_26__* %1, %struct.TYPE_27__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_27__*, align 8
  %13 = alloca %struct.TYPE_27__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_26__*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_26__, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_28__*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca %struct.TYPE_28__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %7, align 8
  store %struct.TYPE_27__* %2, %struct.TYPE_27__** %8, align 8
  store i32 %3, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %4
  %32 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %33 = call i8* @rxml_node_attrib(%struct.TYPE_27__* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %33, i8** %15, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %370

37:                                               ; preds = %31
  %38 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load i8*, i8** %15, align 8
  %41 = call i32* @scope_eval(i32* %39, i8* %40)
  %42 = call i32 @view_init(%struct.TYPE_26__* %38, i32* %41)
  br label %43

43:                                               ; preds = %37, %4
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %44 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_27__*, %struct.TYPE_27__** %45, align 8
  store %struct.TYPE_27__* %46, %struct.TYPE_27__** %12, align 8
  br label %47

47:                                               ; preds = %364, %43
  %48 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %49 = icmp ne %struct.TYPE_27__* %48, null
  br i1 %49, label %50, label %368

50:                                               ; preds = %47
  %51 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = call i64 @strcmp(i32* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = load i32*, i32** %6, align 8
  %58 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %59 = call i32 @load_param(i32* %57, %struct.TYPE_27__* %58, i32 1)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  store i32 0, i32* %10, align 4
  br label %62

62:                                               ; preds = %61, %56
  br label %364

63:                                               ; preds = %50
  %64 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = call i64 @strcmp(i32* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load i32*, i32** %6, align 8
  %71 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %72 = call i8* @parse_bounds(i32* %70, %struct.TYPE_27__* %71)
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  store i32 1, i32* %11, align 4
  br label %364

75:                                               ; preds = %63
  br label %76

76:                                               ; preds = %75
  %77 = call i32 (...) @make_color_white()
  store i32 %77, i32* %16, align 4
  %78 = call i8* (...) @make_bounds()
  store i8* %78, i8** %17, align 8
  %79 = load i32, i32* @VIDEO_LAYOUT_ROT0, align 4
  store i32 %79, i32* %18, align 4
  %80 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %81, align 8
  store %struct.TYPE_27__* %82, %struct.TYPE_27__** %13, align 8
  br label %83

83:                                               ; preds = %119, %76
  %84 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %85 = icmp ne %struct.TYPE_27__* %84, null
  br i1 %85, label %86, label %123

86:                                               ; preds = %83
  %87 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = call i64 @strcmp(i32* %89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = load i32*, i32** %6, align 8
  %94 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %95 = call i32 @parse_color(i32* %93, %struct.TYPE_27__* %94)
  store i32 %95, i32* %16, align 4
  br label %118

96:                                               ; preds = %86
  %97 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = call i64 @strcmp(i32* %99, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = load i32*, i32** %6, align 8
  %104 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %105 = call i8* @parse_bounds(i32* %103, %struct.TYPE_27__* %104)
  store i8* %105, i8** %17, align 8
  br label %117

106:                                              ; preds = %96
  %107 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = call i64 @strcmp(i32* %109, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %106
  %113 = load i32*, i32** %6, align 8
  %114 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %115 = call i32 @parse_orientation(i32* %113, %struct.TYPE_27__* %114)
  store i32 %115, i32* %18, align 4
  br label %116

116:                                              ; preds = %112, %106
  br label %117

117:                                              ; preds = %116, %102
  br label %118

118:                                              ; preds = %117, %92
  br label %119

119:                                              ; preds = %118
  %120 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_27__*, %struct.TYPE_27__** %121, align 8
  store %struct.TYPE_27__* %122, %struct.TYPE_27__** %13, align 8
  br label %83

123:                                              ; preds = %83
  %124 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = call i64 @strcmp(i32* %126, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %158

129:                                              ; preds = %123
  %130 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %131 = call i8* @rxml_node_attrib(%struct.TYPE_27__* %130, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  store i8* %131, i8** %19, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %155

133:                                              ; preds = %129
  %134 = load i32*, i32** %6, align 8
  %135 = load i32*, i32** %6, align 8
  %136 = load i8*, i8** %19, align 8
  %137 = call i32* @scope_eval(i32* %135, i8* %136)
  %138 = call %struct.TYPE_26__* @scope_find_group(i32* %134, i32* %137)
  store %struct.TYPE_26__* %138, %struct.TYPE_26__** %20, align 8
  %139 = icmp ne %struct.TYPE_26__* %138, null
  br i1 %139, label %140, label %149

140:                                              ; preds = %133
  %141 = load i32*, i32** %6, align 8
  %142 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %143 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %144 = load i32, i32* %11, align 4
  %145 = load i8*, i8** %17, align 8
  %146 = load i32, i32* %18, align 4
  %147 = load i32, i32* %16, align 4
  %148 = call i32 @merge_group(i32* %141, %struct.TYPE_26__* %142, %struct.TYPE_26__* %143, i32 %144, i8* %145, i32 %146, i32 %147)
  br label %154

149:                                              ; preds = %133
  %150 = load i32*, i32** %6, align 8
  %151 = load i8*, i8** %19, align 8
  %152 = call i32* @scope_eval(i32* %150, i8* %151)
  %153 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32* %152)
  store i32 0, i32* %10, align 4
  br label %154

154:                                              ; preds = %149, %140
  br label %157

155:                                              ; preds = %129
  %156 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %157

157:                                              ; preds = %155, %154
  br label %363

158:                                              ; preds = %123
  %159 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = call i64 @strcmp(i32* %161, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %231

164:                                              ; preds = %158
  %165 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %166 = call i8* @rxml_node_attrib(%struct.TYPE_27__* %165, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  store i8* %166, i8** %21, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %170, label %168

168:                                              ; preds = %164
  %169 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %364

170:                                              ; preds = %164
  %171 = load i32*, i32** %6, align 8
  %172 = load i8*, i8** %21, align 8
  %173 = call i32* @scope_eval(i32* %171, i8* %172)
  %174 = call i8* @get_int(i32* %173)
  %175 = ptrtoint i8* %174 to i32
  store i32 %175, i32* %22, align 4
  %176 = load i32*, i32** %6, align 8
  %177 = call i32 @scope_push(i32* %176)
  %178 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %178, i32 0, i32 2
  %180 = load %struct.TYPE_27__*, %struct.TYPE_27__** %179, align 8
  store %struct.TYPE_27__* %180, %struct.TYPE_27__** %13, align 8
  br label %181

181:                                              ; preds = %198, %170
  %182 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %183 = icmp ne %struct.TYPE_27__* %182, null
  br i1 %183, label %184, label %202

184:                                              ; preds = %181
  %185 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %186 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = call i64 @strcmp(i32* %187, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %190, label %197

190:                                              ; preds = %184
  %191 = load i32*, i32** %6, align 8
  %192 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %193 = call i32 @load_param(i32* %191, %struct.TYPE_27__* %192, i32 1)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %196, label %195

195:                                              ; preds = %190
  store i32 0, i32* %10, align 4
  br label %196

196:                                              ; preds = %195, %190
  br label %197

197:                                              ; preds = %196, %184
  br label %198

198:                                              ; preds = %197
  %199 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %200 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %199, i32 0, i32 1
  %201 = load %struct.TYPE_27__*, %struct.TYPE_27__** %200, align 8
  store %struct.TYPE_27__* %201, %struct.TYPE_27__** %13, align 8
  br label %181

202:                                              ; preds = %181
  store i32 0, i32* %14, align 4
  br label %203

203:                                              ; preds = %225, %202
  %204 = load i32, i32* %14, align 4
  %205 = load i32, i32* %22, align 4
  %206 = icmp slt i32 %204, %205
  br i1 %206, label %207, label %228

207:                                              ; preds = %203
  %208 = call i32 @view_init(%struct.TYPE_26__* %23, i32* null)
  %209 = load i32*, i32** %6, align 8
  %210 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %211 = call i32 @load_view(i32* %209, %struct.TYPE_26__* %23, %struct.TYPE_27__* %210, i32 0)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %214, label %213

213:                                              ; preds = %207
  store i32 0, i32* %10, align 4
  br label %214

214:                                              ; preds = %213, %207
  %215 = load i32*, i32** %6, align 8
  %216 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %217 = load i32, i32* %11, align 4
  %218 = load i8*, i8** %17, align 8
  %219 = load i32, i32* %18, align 4
  %220 = load i32, i32* %16, align 4
  %221 = call i32 @merge_group(i32* %215, %struct.TYPE_26__* %216, %struct.TYPE_26__* %23, i32 %217, i8* %218, i32 %219, i32 %220)
  %222 = call i32 @view_deinit(%struct.TYPE_26__* %23)
  %223 = load i32*, i32** %6, align 8
  %224 = call i32 @scope_repeat(i32* %223)
  br label %225

225:                                              ; preds = %214
  %226 = load i32, i32* %14, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %14, align 4
  br label %203

228:                                              ; preds = %203
  %229 = load i32*, i32** %6, align 8
  %230 = call i32 @scope_pop(i32* %229)
  br label %362

231:                                              ; preds = %158
  %232 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %233 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %234 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %233, i32 0, i32 0
  %235 = load i32*, i32** %234, align 8
  %236 = call i32* @view_emplace_layer(%struct.TYPE_26__* %232, i32* %235)
  store i32* %236, i32** %24, align 8
  %237 = load i32*, i32** %24, align 8
  %238 = call %struct.TYPE_28__* @layer_add_element(i32* %237)
  store %struct.TYPE_28__* %238, %struct.TYPE_28__** %25, align 8
  %239 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %240 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %239, i32 0, i32 0
  %241 = load i32*, i32** %240, align 8
  %242 = call i64 @strcmp(i32* %241, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  %243 = icmp eq i64 %242, 0
  br i1 %243, label %244, label %252

244:                                              ; preds = %231
  %245 = load i32*, i32** %6, align 8
  %246 = load %struct.TYPE_28__*, %struct.TYPE_28__** %25, align 8
  %247 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %248 = call i32 @load_screen(i32* %245, %struct.TYPE_28__* %246, %struct.TYPE_27__* %247)
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %251, label %250

250:                                              ; preds = %244
  store i32 0, i32* %10, align 4
  br label %251

251:                                              ; preds = %250, %244
  br label %324

252:                                              ; preds = %231
  %253 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %254 = call i8* @rxml_node_attrib(%struct.TYPE_27__* %253, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  store i8* %254, i8** %26, align 8
  %255 = icmp ne i8* %254, null
  br i1 %255, label %256, label %318

256:                                              ; preds = %252
  %257 = load i32*, i32** %6, align 8
  %258 = load i8*, i8** %26, align 8
  %259 = call %struct.TYPE_28__* @scope_find_element(i32* %257, i8* %258)
  store %struct.TYPE_28__* %259, %struct.TYPE_28__** %28, align 8
  %260 = icmp ne %struct.TYPE_28__* %259, null
  br i1 %260, label %261, label %312

261:                                              ; preds = %256
  %262 = load %struct.TYPE_28__*, %struct.TYPE_28__** %25, align 8
  %263 = load %struct.TYPE_28__*, %struct.TYPE_28__** %28, align 8
  %264 = call i32 @element_copy(%struct.TYPE_28__* %262, %struct.TYPE_28__* %263)
  %265 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %266 = call i8* @rxml_node_attrib(%struct.TYPE_27__* %265, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %266, i8** %27, align 8
  %267 = icmp ne i8* %266, null
  br i1 %267, label %268, label %275

268:                                              ; preds = %261
  %269 = load i32*, i32** %6, align 8
  %270 = load i8*, i8** %27, align 8
  %271 = call i32* @scope_eval(i32* %269, i8* %270)
  %272 = call i8* @video_layout_io_find(i32* %271)
  %273 = load %struct.TYPE_28__*, %struct.TYPE_28__** %25, align 8
  %274 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %273, i32 0, i32 6
  store i8* %272, i8** %274, align 8
  br label %275

275:                                              ; preds = %268, %261
  %276 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %277 = call i8* @rxml_node_attrib(%struct.TYPE_27__* %276, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  store i8* %277, i8** %27, align 8
  %278 = icmp ne i8* %277, null
  br i1 %278, label %279, label %286

279:                                              ; preds = %275
  %280 = load i32*, i32** %6, align 8
  %281 = load i8*, i8** %27, align 8
  %282 = call i32* @scope_eval(i32* %280, i8* %281)
  %283 = call i8* @video_layout_io_find(i32* %282)
  %284 = load %struct.TYPE_28__*, %struct.TYPE_28__** %25, align 8
  %285 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %284, i32 0, i32 5
  store i8* %283, i8** %285, align 8
  br label %286

286:                                              ; preds = %279, %275
  %287 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %288 = call i8* @rxml_node_attrib(%struct.TYPE_27__* %287, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0))
  store i8* %288, i8** %27, align 8
  %289 = icmp ne i8* %288, null
  br i1 %289, label %290, label %297

290:                                              ; preds = %286
  %291 = load i32*, i32** %6, align 8
  %292 = load i8*, i8** %27, align 8
  %293 = call i32* @scope_eval(i32* %291, i8* %292)
  %294 = call i8* @get_int(i32* %293)
  %295 = load %struct.TYPE_28__*, %struct.TYPE_28__** %25, align 8
  %296 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %295, i32 0, i32 4
  store i8* %294, i8** %296, align 8
  br label %297

297:                                              ; preds = %290, %286
  %298 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %299 = call i8* @rxml_node_attrib(%struct.TYPE_27__* %298, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  store i8* %299, i8** %27, align 8
  %300 = icmp ne i8* %299, null
  br i1 %300, label %301, label %311

301:                                              ; preds = %297
  %302 = load i32*, i32** %6, align 8
  %303 = load i8*, i8** %27, align 8
  %304 = call i32* @scope_eval(i32* %302, i8* %303)
  %305 = call i8* @get_int(i32* %304)
  %306 = icmp ne i8* %305, null
  %307 = zext i1 %306 to i64
  %308 = select i1 %306, i32 1, i32 0
  %309 = load %struct.TYPE_28__*, %struct.TYPE_28__** %25, align 8
  %310 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %309, i32 0, i32 0
  store i32 %308, i32* %310, align 8
  br label %311

311:                                              ; preds = %301, %297
  br label %317

312:                                              ; preds = %256
  %313 = load i32*, i32** %6, align 8
  %314 = load i8*, i8** %26, align 8
  %315 = call i32* @scope_eval(i32* %313, i8* %314)
  %316 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18, i64 0, i64 0), i32* %315)
  store i32 0, i32* %10, align 4
  br label %317

317:                                              ; preds = %312, %311
  br label %323

318:                                              ; preds = %252
  %319 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %320 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %319, i32 0, i32 0
  %321 = load i32*, i32** %320, align 8
  %322 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.19, i64 0, i64 0), i32* %321)
  store i32 0, i32* %10, align 4
  br label %323

323:                                              ; preds = %318, %317
  br label %324

324:                                              ; preds = %323, %251
  store i32 0, i32* %14, align 4
  br label %325

325:                                              ; preds = %337, %324
  %326 = load i32, i32* %14, align 4
  %327 = load %struct.TYPE_28__*, %struct.TYPE_28__** %25, align 8
  %328 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 4
  %330 = icmp slt i32 %326, %329
  br i1 %330, label %331, label %340

331:                                              ; preds = %325
  %332 = load %struct.TYPE_28__*, %struct.TYPE_28__** %25, align 8
  %333 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %332, i32 0, i32 3
  %334 = load %struct.TYPE_25__*, %struct.TYPE_25__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %334, i32 0, i32 0
  %336 = call i32 @color_mod(i32* %335, i32* %16)
  br label %337

337:                                              ; preds = %331
  %338 = load i32, i32* %14, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %14, align 4
  br label %325

340:                                              ; preds = %325
  %341 = load i8*, i8** %17, align 8
  %342 = load %struct.TYPE_28__*, %struct.TYPE_28__** %25, align 8
  %343 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %342, i32 0, i32 2
  store i8* %341, i8** %343, align 8
  %344 = load i32, i32* %18, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %350

346:                                              ; preds = %340
  %347 = load %struct.TYPE_28__*, %struct.TYPE_28__** %25, align 8
  %348 = load i32, i32* %18, align 4
  %349 = call i32 @element_apply_orientation(%struct.TYPE_28__* %347, i32 %348)
  br label %350

350:                                              ; preds = %346, %340
  %351 = load i32, i32* %11, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %361, label %353

353:                                              ; preds = %350
  %354 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %355 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %354, i32 0, i32 0
  %356 = load %struct.TYPE_28__*, %struct.TYPE_28__** %25, align 8
  %357 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %356, i32 0, i32 2
  %358 = call i8* @bounds_union(i8** %355, i8** %357)
  %359 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %360 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %359, i32 0, i32 0
  store i8* %358, i8** %360, align 8
  br label %361

361:                                              ; preds = %353, %350
  br label %362

362:                                              ; preds = %361, %228
  br label %363

363:                                              ; preds = %362, %157
  br label %364

364:                                              ; preds = %363, %168, %69, %62
  %365 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %366 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %365, i32 0, i32 1
  %367 = load %struct.TYPE_27__*, %struct.TYPE_27__** %366, align 8
  store %struct.TYPE_27__* %367, %struct.TYPE_27__** %12, align 8
  br label %47

368:                                              ; preds = %47
  %369 = load i32, i32* %10, align 4
  store i32 %369, i32* %5, align 4
  br label %370

370:                                              ; preds = %368, %35
  %371 = load i32, i32* %5, align 4
  ret i32 %371
}

declare dso_local i8* @rxml_node_attrib(%struct.TYPE_27__*, i8*) #1

declare dso_local i32 @RARCH_LOG(i8*, ...) #1

declare dso_local i32 @view_init(%struct.TYPE_26__*, i32*) #1

declare dso_local i32* @scope_eval(i32*, i8*) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

declare dso_local i32 @load_param(i32*, %struct.TYPE_27__*, i32) #1

declare dso_local i8* @parse_bounds(i32*, %struct.TYPE_27__*) #1

declare dso_local i32 @make_color_white(...) #1

declare dso_local i8* @make_bounds(...) #1

declare dso_local i32 @parse_color(i32*, %struct.TYPE_27__*) #1

declare dso_local i32 @parse_orientation(i32*, %struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_26__* @scope_find_group(i32*, i32*) #1

declare dso_local i32 @merge_group(i32*, %struct.TYPE_26__*, %struct.TYPE_26__*, i32, i8*, i32, i32) #1

declare dso_local i8* @get_int(i32*) #1

declare dso_local i32 @scope_push(i32*) #1

declare dso_local i32 @view_deinit(%struct.TYPE_26__*) #1

declare dso_local i32 @scope_repeat(i32*) #1

declare dso_local i32 @scope_pop(i32*) #1

declare dso_local i32* @view_emplace_layer(%struct.TYPE_26__*, i32*) #1

declare dso_local %struct.TYPE_28__* @layer_add_element(i32*) #1

declare dso_local i32 @load_screen(i32*, %struct.TYPE_28__*, %struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_28__* @scope_find_element(i32*, i8*) #1

declare dso_local i32 @element_copy(%struct.TYPE_28__*, %struct.TYPE_28__*) #1

declare dso_local i8* @video_layout_io_find(i32*) #1

declare dso_local i32 @color_mod(i32*, i32*) #1

declare dso_local i32 @element_apply_orientation(%struct.TYPE_28__*, i32) #1

declare dso_local i8* @bounds_union(i8**, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
