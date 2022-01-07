; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_action_ok_add_to_favorites_playlist.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_action_ok_add_to_favorites_playlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.playlist_entry = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_7__ = type { i32 }
%struct.string_list = type { i32 }
%union.string_list_elem_attr = type { i64 }
%struct.TYPE_8__ = type { i8*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8* }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"DETECT\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CMD_EVENT_ADD_TO_FAVORITES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i64, i64)* @action_ok_add_to_favorites_playlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_ok_add_to_favorites_playlist(i8* %0, i8* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.playlist_entry*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.string_list*, align 8
  %17 = alloca %union.string_list_elem_attr, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.TYPE_8__, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %24 = call i32* (...) @playlist_get_cached()
  store i32* %24, i32** %12, align 8
  store %struct.playlist_entry* null, %struct.playlist_entry** %13, align 8
  %25 = call %struct.TYPE_7__* (...) @menu_driver_get_ptr()
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %14, align 8
  store i32 0, i32* %15, align 4
  %26 = load i32*, i32** %12, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %213

29:                                               ; preds = %5
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %31 = icmp ne %struct.TYPE_7__* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = call i32 (...) @menu_cbs_exit()
  store i32 %33, i32* %6, align 4
  br label %213

34:                                               ; preds = %29
  %35 = load i32*, i32** %12, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @playlist_get_index(i32* %35, i32 %38, %struct.playlist_entry** %13)
  %40 = load %struct.playlist_entry*, %struct.playlist_entry** %13, align 8
  %41 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @string_is_empty(i8* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %211, label %45

45:                                               ; preds = %34
  store %struct.string_list* null, %struct.string_list** %16, align 8
  %46 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %47 = zext i32 %46 to i64
  %48 = call i8* @llvm.stacksave()
  store i8* %48, i8** %18, align 8
  %49 = alloca i8, i64 %47, align 16
  store i64 %47, i64* %19, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  store i8 0, i8* %50, align 16
  %51 = bitcast %union.string_list_elem_attr* %17 to i64*
  store i64 0, i64* %51, align 8
  %52 = call %struct.string_list* (...) @string_list_new()
  store %struct.string_list* %52, %struct.string_list** %16, align 8
  %53 = load %struct.string_list*, %struct.string_list** %16, align 8
  %54 = icmp ne %struct.string_list* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %45
  store i32 0, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %207

56:                                               ; preds = %45
  %57 = load %struct.string_list*, %struct.string_list** %16, align 8
  %58 = load %struct.playlist_entry*, %struct.playlist_entry** %13, align 8
  %59 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %17, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @string_list_append(%struct.string_list* %57, i8* %60, i64 %62)
  %64 = load %struct.playlist_entry*, %struct.playlist_entry** %13, align 8
  %65 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @string_is_empty(i8* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %56
  %70 = load %struct.string_list*, %struct.string_list** %16, align 8
  %71 = load %struct.playlist_entry*, %struct.playlist_entry** %13, align 8
  %72 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %17, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @string_list_append(%struct.string_list* %70, i8* %73, i64 %75)
  br label %93

77:                                               ; preds = %56
  %78 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %79 = zext i32 %78 to i64
  %80 = call i8* @llvm.stacksave()
  store i8* %80, i8** %21, align 8
  %81 = alloca i8, i64 %79, align 16
  store i64 %79, i64* %22, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 0
  store i8 0, i8* %82, align 16
  %83 = load %struct.playlist_entry*, %struct.playlist_entry** %13, align 8
  %84 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = trunc i64 %79 to i32
  %87 = call i32 @fill_short_pathname_representation(i8* %81, i8* %85, i32 %86)
  %88 = load %struct.string_list*, %struct.string_list** %16, align 8
  %89 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %17, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @string_list_append(%struct.string_list* %88, i8* %81, i64 %90)
  %92 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %92)
  br label %93

93:                                               ; preds = %77, %69
  %94 = load %struct.playlist_entry*, %struct.playlist_entry** %13, align 8
  %95 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %94, i32 0, i32 2
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @string_is_empty(i8* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %155, label %99

99:                                               ; preds = %93
  %100 = load %struct.playlist_entry*, %struct.playlist_entry** %13, align 8
  %101 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %100, i32 0, i32 3
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @string_is_empty(i8* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %155, label %105

105:                                              ; preds = %99
  %106 = load %struct.string_list*, %struct.string_list** %16, align 8
  %107 = load %struct.playlist_entry*, %struct.playlist_entry** %13, align 8
  %108 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %107, i32 0, i32 2
  %109 = load i8*, i8** %108, align 8
  %110 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %17, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @string_list_append(%struct.string_list* %106, i8* %109, i64 %111)
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %113, align 8
  %114 = load %struct.playlist_entry*, %struct.playlist_entry** %13, align 8
  %115 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %114, i32 0, i32 2
  %116 = load i8*, i8** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  store i8* %116, i8** %117, align 8
  %118 = load %struct.playlist_entry*, %struct.playlist_entry** %13, align 8
  %119 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %118, i32 0, i32 2
  %120 = load i8*, i8** %119, align 8
  %121 = call i64 @core_info_find(%struct.TYPE_8__* %23, i8* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %138

123:                                              ; preds = %105
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @string_is_empty(i8* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %137, label %130

130:                                              ; preds = %123
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = trunc i64 %47 to i32
  %136 = call i32 @strlcpy(i8* %49, i8* %134, i32 %135)
  br label %137

137:                                              ; preds = %130, %123
  br label %138

138:                                              ; preds = %137, %105
  %139 = call i32 @string_is_empty(i8* %49)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %146, label %141

141:                                              ; preds = %138
  %142 = load %struct.string_list*, %struct.string_list** %16, align 8
  %143 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %17, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @string_list_append(%struct.string_list* %142, i8* %49, i64 %144)
  br label %154

146:                                              ; preds = %138
  %147 = load %struct.string_list*, %struct.string_list** %16, align 8
  %148 = load %struct.playlist_entry*, %struct.playlist_entry** %13, align 8
  %149 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %148, i32 0, i32 3
  %150 = load i8*, i8** %149, align 8
  %151 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %17, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @string_list_append(%struct.string_list* %147, i8* %150, i64 %152)
  br label %154

154:                                              ; preds = %146, %141
  br label %164

155:                                              ; preds = %99, %93
  %156 = load %struct.string_list*, %struct.string_list** %16, align 8
  %157 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %17, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = call i32 @string_list_append(%struct.string_list* %156, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %158)
  %160 = load %struct.string_list*, %struct.string_list** %16, align 8
  %161 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %17, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @string_list_append(%struct.string_list* %160, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %162)
  br label %164

164:                                              ; preds = %155, %154
  %165 = load %struct.string_list*, %struct.string_list** %16, align 8
  %166 = load %struct.playlist_entry*, %struct.playlist_entry** %13, align 8
  %167 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %166, i32 0, i32 4
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 @string_is_empty(i8* %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %175, label %171

171:                                              ; preds = %164
  %172 = load %struct.playlist_entry*, %struct.playlist_entry** %13, align 8
  %173 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %172, i32 0, i32 4
  %174 = load i8*, i8** %173, align 8
  br label %176

175:                                              ; preds = %164
  br label %176

176:                                              ; preds = %175, %171
  %177 = phi i8* [ %174, %171 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %175 ]
  %178 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %17, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = call i32 @string_list_append(%struct.string_list* %165, i8* %177, i64 %179)
  %181 = load %struct.string_list*, %struct.string_list** %16, align 8
  %182 = load %struct.playlist_entry*, %struct.playlist_entry** %13, align 8
  %183 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %182, i32 0, i32 5
  %184 = load i8*, i8** %183, align 8
  %185 = call i32 @string_is_empty(i8* %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %191, label %187

187:                                              ; preds = %176
  %188 = load %struct.playlist_entry*, %struct.playlist_entry** %13, align 8
  %189 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %188, i32 0, i32 5
  %190 = load i8*, i8** %189, align 8
  br label %192

191:                                              ; preds = %176
  br label %192

192:                                              ; preds = %191, %187
  %193 = phi i8* [ %190, %187 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %191 ]
  %194 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %17, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = call i32 @string_list_append(%struct.string_list* %181, i8* %193, i64 %195)
  %197 = load i32, i32* @CMD_EVENT_ADD_TO_FAVORITES, align 4
  %198 = load %struct.string_list*, %struct.string_list** %16, align 8
  %199 = bitcast %struct.string_list* %198 to i8*
  %200 = call i32 @command_event(i32 %197, i8* %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %204, label %202

202:                                              ; preds = %192
  %203 = call i32 (...) @menu_cbs_exit()
  store i32 %203, i32* %15, align 4
  br label %204

204:                                              ; preds = %202, %192
  %205 = load %struct.string_list*, %struct.string_list** %16, align 8
  %206 = call i32 @string_list_free(%struct.string_list* %205)
  store %struct.string_list* null, %struct.string_list** %16, align 8
  store i32 0, i32* %20, align 4
  br label %207

207:                                              ; preds = %204, %55
  %208 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %208)
  %209 = load i32, i32* %20, align 4
  switch i32 %209, label %215 [
    i32 0, label %210
    i32 1, label %213
  ]

210:                                              ; preds = %207
  br label %211

211:                                              ; preds = %210, %34
  %212 = load i32, i32* %15, align 4
  store i32 %212, i32* %6, align 4
  br label %213

213:                                              ; preds = %211, %207, %32, %28
  %214 = load i32, i32* %6, align 4
  ret i32 %214

215:                                              ; preds = %207
  unreachable
}

declare dso_local i32* @playlist_get_cached(...) #1

declare dso_local %struct.TYPE_7__* @menu_driver_get_ptr(...) #1

declare dso_local i32 @menu_cbs_exit(...) #1

declare dso_local i32 @playlist_get_index(i32*, i32, %struct.playlist_entry**) #1

declare dso_local i32 @string_is_empty(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.string_list* @string_list_new(...) #1

declare dso_local i32 @string_list_append(%struct.string_list*, i8*, i64) #1

declare dso_local i32 @fill_short_pathname_representation(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @core_info_find(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @command_event(i32, i8*) #1

declare dso_local i32 @string_list_free(%struct.string_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
