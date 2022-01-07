; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_context_reset_horizontal_list.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_context_reset_horizontal_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { float, float, i32, i32, i32, i32, i64 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.texture_image = type { i32*, i32, i64, i64 }

@MENU_LIST_HORIZONTAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c".lpl\00", align 1
@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@APPLICATION_SPECIAL_DIRECTORY_ASSETS_XMB_ICONS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c".png\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@TEXTURE_FILTER_MIPMAP_LINEAR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"content.png\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @xmb_context_reset_horizontal_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmb_context_reset_horizontal_list(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.texture_image, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %14 = load i32, i32* @MENU_LIST_HORIZONTAL, align 4
  %15 = call i64 @xmb_list_get_size(%struct.TYPE_11__* %13, i32 %14)
  store i64 %15, i64* %5, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %18 = load float, float* %17, align 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 6
  %21 = load i64, i64* %20, align 8
  %22 = sitofp i64 %21 to float
  %23 = fneg float %22
  %24 = fmul float %18, %23
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  store float %24, float* %26, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = icmp sgt i32 %29, 1
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 2, i32 1
  store i32 %32, i32* %4, align 4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = mul nsw i32 %36, 2
  %38 = sub nsw i32 %37, 2
  %39 = sub nsw i32 0, %38
  %40 = mul nsw i32 %35, %39
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %231, %1
  %44 = load i32, i32* %3, align 4
  %45 = zext i32 %44 to i64
  %46 = load i64, i64* %5, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %234

48:                                               ; preds = %43
  store i8* null, i8** %6, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %50 = load i32, i32* %3, align 4
  %51 = call %struct.TYPE_10__* @xmb_get_userdata_from_horizontal_list(%struct.TYPE_11__* %49, i32 %50)
  store %struct.TYPE_10__* %51, %struct.TYPE_10__** %7, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %53 = icmp ne %struct.TYPE_10__* %52, null
  br i1 %53, label %62, label %54

54:                                               ; preds = %48
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %56 = load i32, i32* %3, align 4
  %57 = call %struct.TYPE_10__* @xmb_node_allocate_userdata(%struct.TYPE_11__* %55, i32 %56)
  store %struct.TYPE_10__* %57, %struct.TYPE_10__** %7, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %59 = icmp ne %struct.TYPE_10__* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %54
  br label %231

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61, %48
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @file_list_get_at_offset(i32 %65, i32 %66, i8** %6, i32* null, i32* null, i32* null)
  %68 = load i8*, i8** %6, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %62
  br label %231

71:                                               ; preds = %62
  %72 = load i8*, i8** %6, align 8
  %73 = call i32 @strstr(i8* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  br label %231

76:                                               ; preds = %71
  %77 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 1
  %80 = trunc i64 %79 to i32
  %81 = call i64 @malloc(i32 %80)
  %82 = inttoptr i64 %81 to i8*
  store i8* %82, i8** %9, align 8
  %83 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %84 = sext i32 %83 to i64
  %85 = mul i64 %84, 1
  %86 = trunc i64 %85 to i32
  %87 = call i64 @malloc(i32 %86)
  %88 = inttoptr i64 %87 to i8*
  store i8* %88, i8** %10, align 8
  %89 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %90 = sext i32 %89 to i64
  %91 = mul i64 %90, 1
  %92 = trunc i64 %91 to i32
  %93 = call i64 @malloc(i32 %92)
  %94 = inttoptr i64 %93 to i8*
  store i8* %94, i8** %11, align 8
  %95 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %96 = sext i32 %95 to i64
  %97 = mul i64 %96, 1
  %98 = trunc i64 %97 to i32
  %99 = call i64 @malloc(i32 %98)
  %100 = inttoptr i64 %99 to i8*
  store i8* %100, i8** %12, align 8
  %101 = load i8*, i8** %12, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 0
  store i8 0, i8* %102, align 1
  %103 = load i8*, i8** %11, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 0
  store i8 0, i8* %104, align 1
  %105 = load i8*, i8** %9, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 0
  store i8 0, i8* %106, align 1
  %107 = load i8*, i8** %10, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 0
  store i8 0, i8* %108, align 1
  %109 = load i8*, i8** %9, align 8
  %110 = load i8*, i8** %6, align 8
  %111 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %112 = sext i32 %111 to i64
  %113 = mul i64 %112, 1
  %114 = trunc i64 %113 to i32
  %115 = call i32 @fill_pathname_base_noext(i8* %109, i8* %110, i32 %114)
  %116 = load i8*, i8** %10, align 8
  %117 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %118 = sext i32 %117 to i64
  %119 = mul i64 %118, 1
  %120 = trunc i64 %119 to i32
  %121 = load i32, i32* @APPLICATION_SPECIAL_DIRECTORY_ASSETS_XMB_ICONS, align 4
  %122 = call i32 @fill_pathname_application_special(i8* %116, i32 %120, i32 %121)
  %123 = load i8*, i8** %11, align 8
  %124 = load i8*, i8** %10, align 8
  %125 = load i8*, i8** %9, align 8
  %126 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %127 = sext i32 %126 to i64
  %128 = mul i64 %127, 1
  %129 = trunc i64 %128 to i32
  %130 = call i32 @fill_pathname_join_concat(i8* %123, i8* %124, i8* %125, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %129)
  %131 = load i8*, i8** %11, align 8
  %132 = call i32 @path_is_valid(i8* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %142, label %134

134:                                              ; preds = %76
  %135 = load i8*, i8** %11, align 8
  %136 = load i8*, i8** %10, align 8
  %137 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %138 = sext i32 %137 to i64
  %139 = mul i64 %138, 1
  %140 = trunc i64 %139 to i32
  %141 = call i32 @fill_pathname_join_concat(i8* %135, i8* %136, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %140)
  br label %142

142:                                              ; preds = %134, %76
  %143 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %8, i32 0, i32 3
  store i64 0, i64* %143, align 8
  %144 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %8, i32 0, i32 2
  store i64 0, i64* %144, align 8
  %145 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %8, i32 0, i32 0
  store i32* null, i32** %145, align 8
  %146 = call i32 (...) @video_driver_supports_rgba()
  %147 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %8, i32 0, i32 1
  store i32 %146, i32* %147, align 8
  %148 = load i8*, i8** %11, align 8
  %149 = call i64 @image_texture_load(%struct.texture_image* %8, i8* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %165

151:                                              ; preds = %142
  %152 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %8, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = icmp ne i32* %153, null
  br i1 %154, label %155, label %163

155:                                              ; preds = %151
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 1
  %158 = call i32 @video_driver_texture_unload(i32* %157)
  %159 = load i32, i32* @TEXTURE_FILTER_MIPMAP_LINEAR, align 4
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 1
  %162 = call i32 @video_driver_texture_load(%struct.texture_image* %8, i32 %159, i32* %161)
  br label %163

163:                                              ; preds = %155, %151
  %164 = call i32 @image_texture_free(%struct.texture_image* %8)
  br label %165

165:                                              ; preds = %163, %142
  %166 = load i8*, i8** %9, align 8
  %167 = load i8*, i8** %9, align 8
  %168 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %169 = sext i32 %168 to i64
  %170 = mul i64 %169, 1
  %171 = trunc i64 %170 to i32
  %172 = call i32 @fill_pathname_join_delim(i8* %166, i8* %167, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8 signext 45, i32 %171)
  %173 = load i8*, i8** %12, align 8
  %174 = load i8*, i8** %10, align 8
  %175 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %176 = sext i32 %175 to i64
  %177 = mul i64 %176, 1
  %178 = trunc i64 %177 to i32
  %179 = call i32 @strlcat(i8* %173, i8* %174, i32 %178)
  %180 = load i8*, i8** %12, align 8
  %181 = load i8*, i8** %9, align 8
  %182 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %183 = sext i32 %182 to i64
  %184 = mul i64 %183, 1
  %185 = trunc i64 %184 to i32
  %186 = call i32 @strlcat(i8* %180, i8* %181, i32 %185)
  %187 = load i8*, i8** %12, align 8
  %188 = call i32 @path_is_valid(i8* %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %204, label %190

190:                                              ; preds = %165
  %191 = load i8*, i8** %10, align 8
  %192 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %193 = sext i32 %192 to i64
  %194 = mul i64 %193, 1
  %195 = trunc i64 %194 to i32
  %196 = call i32 @strlcat(i8* %191, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %195)
  %197 = load i8*, i8** %12, align 8
  %198 = load i8*, i8** %10, align 8
  %199 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %200 = sext i32 %199 to i64
  %201 = mul i64 %200, 1
  %202 = trunc i64 %201 to i32
  %203 = call i32 @fill_pathname_join_delim(i8* %197, i8* %198, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8 signext 45, i32 %202)
  br label %204

204:                                              ; preds = %190, %165
  %205 = load i8*, i8** %12, align 8
  %206 = call i64 @image_texture_load(%struct.texture_image* %8, i8* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %222

208:                                              ; preds = %204
  %209 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %8, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  %211 = icmp ne i32* %210, null
  br i1 %211, label %212, label %220

212:                                              ; preds = %208
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 0
  %215 = call i32 @video_driver_texture_unload(i32* %214)
  %216 = load i32, i32* @TEXTURE_FILTER_MIPMAP_LINEAR, align 4
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 0
  %219 = call i32 @video_driver_texture_load(%struct.texture_image* %8, i32 %216, i32* %218)
  br label %220

220:                                              ; preds = %212, %208
  %221 = call i32 @image_texture_free(%struct.texture_image* %8)
  br label %222

222:                                              ; preds = %220, %204
  %223 = load i8*, i8** %9, align 8
  %224 = call i32 @free(i8* %223)
  %225 = load i8*, i8** %10, align 8
  %226 = call i32 @free(i8* %225)
  %227 = load i8*, i8** %11, align 8
  %228 = call i32 @free(i8* %227)
  %229 = load i8*, i8** %12, align 8
  %230 = call i32 @free(i8* %229)
  br label %231

231:                                              ; preds = %222, %75, %70, %60
  %232 = load i32, i32* %3, align 4
  %233 = add i32 %232, 1
  store i32 %233, i32* %3, align 4
  br label %43

234:                                              ; preds = %43
  %235 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %236 = call i32 @xmb_toggle_horizontal_list(%struct.TYPE_11__* %235)
  ret void
}

declare dso_local i64 @xmb_list_get_size(%struct.TYPE_11__*, i32) #1

declare dso_local %struct.TYPE_10__* @xmb_get_userdata_from_horizontal_list(%struct.TYPE_11__*, i32) #1

declare dso_local %struct.TYPE_10__* @xmb_node_allocate_userdata(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @file_list_get_at_offset(i32, i32, i8**, i32*, i32*, i32*) #1

declare dso_local i32 @strstr(i8*, i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @fill_pathname_base_noext(i8*, i8*, i32) #1

declare dso_local i32 @fill_pathname_application_special(i8*, i32, i32) #1

declare dso_local i32 @fill_pathname_join_concat(i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @path_is_valid(i8*) #1

declare dso_local i32 @video_driver_supports_rgba(...) #1

declare dso_local i64 @image_texture_load(%struct.texture_image*, i8*) #1

declare dso_local i32 @video_driver_texture_unload(i32*) #1

declare dso_local i32 @video_driver_texture_load(%struct.texture_image*, i32, i32*) #1

declare dso_local i32 @image_texture_free(%struct.texture_image*) #1

declare dso_local i32 @fill_pathname_join_delim(i8*, i8*, i8*, i8 signext, i32) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @xmb_toggle_horizontal_list(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
