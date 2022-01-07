; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_playlist.c_playlist_push_runtime.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_playlist.c_playlist_push_runtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, %struct.playlist_entry* }
%struct.playlist_entry = type { i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"cannot push NULL or empty core path into the playlist.\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"DETECT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @playlist_push_runtime(%struct.TYPE_3__* %0, %struct.playlist_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.playlist_entry*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.playlist_entry, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.playlist_entry*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.playlist_entry* %1, %struct.playlist_entry** %5, align 8
  %15 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %19 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  %22 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 0, i8* %22, align 16
  %23 = getelementptr inbounds i8, i8* %21, i64 0
  store i8 0, i8* %23, align 16
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = icmp ne %struct.TYPE_3__* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %28 = icmp ne %struct.playlist_entry* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %26, %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %352

30:                                               ; preds = %26
  %31 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %32 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @string_is_empty(i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %352

38:                                               ; preds = %30
  %39 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %40 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @string_is_empty(i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %38
  %45 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %46 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = trunc i64 %16 to i32
  %49 = call i32 @strlcpy(i8* %18, i8* %47, i32 %48)
  %50 = trunc i64 %16 to i32
  %51 = call i32 @path_resolve_realpath(i8* %18, i32 %50, i32 1)
  br label %52

52:                                               ; preds = %44, %38
  %53 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %54 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = trunc i64 %20 to i32
  %57 = call i32 @strlcpy(i8* %21, i8* %55, i32 %56)
  %58 = call i32 @string_is_equal(i8* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %52
  %61 = trunc i64 %20 to i32
  %62 = call i32 @path_resolve_realpath(i8* %21, i32 %61, i32 1)
  br label %63

63:                                               ; preds = %60, %52
  %64 = call i64 @string_is_empty(i8* %21)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %352

68:                                               ; preds = %63
  store i64 0, i64* %6, align 8
  br label %69

69:                                               ; preds = %139, %68
  %70 = load i64, i64* %6, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ult i64 %70, %73
  br i1 %74, label %75, label %142

75:                                               ; preds = %69
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 3
  %78 = load %struct.playlist_entry*, %struct.playlist_entry** %77, align 8
  %79 = load i64, i64* %6, align 8
  %80 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %78, i64 %79
  %81 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  store i8* %82, i8** %12, align 8
  %83 = call i64 @string_is_empty(i8* %18)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %75
  %86 = load i8*, i8** %12, align 8
  %87 = call i64 @string_is_empty(i8* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %85, %75
  %90 = load i8*, i8** %12, align 8
  %91 = call i64 @playlist_path_equal(i8* %18, i8* %90)
  %92 = icmp ne i64 %91, 0
  br label %93

93:                                               ; preds = %89, %85
  %94 = phi i1 [ true, %85 ], [ %92, %89 ]
  %95 = zext i1 %94 to i32
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %13, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %93
  br label %139

99:                                               ; preds = %93
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 3
  %102 = load %struct.playlist_entry*, %struct.playlist_entry** %101, align 8
  %103 = load i64, i64* %6, align 8
  %104 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %102, i64 %103
  %105 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @playlist_core_path_equal(i8* %21, i8* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %99
  br label %139

110:                                              ; preds = %99
  %111 = load i64, i64* %6, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %352

114:                                              ; preds = %110
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 3
  %117 = load %struct.playlist_entry*, %struct.playlist_entry** %116, align 8
  %118 = load i64, i64* %6, align 8
  %119 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %117, i64 %118
  %120 = bitcast %struct.playlist_entry* %11 to i8*
  %121 = bitcast %struct.playlist_entry* %119 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %120, i8* align 8 %121, i64 72, i1 false)
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 3
  %124 = load %struct.playlist_entry*, %struct.playlist_entry** %123, align 8
  %125 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %124, i64 1
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 3
  %128 = load %struct.playlist_entry*, %struct.playlist_entry** %127, align 8
  %129 = load i64, i64* %6, align 8
  %130 = mul i64 %129, 72
  %131 = trunc i64 %130 to i32
  %132 = call i32 @memmove(%struct.playlist_entry* %125, %struct.playlist_entry* %128, i32 %131)
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 3
  %135 = load %struct.playlist_entry*, %struct.playlist_entry** %134, align 8
  %136 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %135, i64 0
  %137 = bitcast %struct.playlist_entry* %136 to i8*
  %138 = bitcast %struct.playlist_entry* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %137, i8* align 8 %138, i64 72, i1 false)
  br label %349

139:                                              ; preds = %109, %98
  %140 = load i64, i64* %6, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %6, align 8
  br label %69

142:                                              ; preds = %69
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  %150 = icmp eq i64 %145, %149
  br i1 %150, label %151, label %171

151:                                              ; preds = %142
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 3
  %154 = load %struct.playlist_entry*, %struct.playlist_entry** %153, align 8
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = sub nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %154, i64 %159
  store %struct.playlist_entry* %160, %struct.playlist_entry** %14, align 8
  %161 = load %struct.playlist_entry*, %struct.playlist_entry** %14, align 8
  %162 = icmp ne %struct.playlist_entry* %161, null
  br i1 %162, label %163, label %166

163:                                              ; preds = %151
  %164 = load %struct.playlist_entry*, %struct.playlist_entry** %14, align 8
  %165 = call i32 @playlist_free_entry(%struct.playlist_entry* %164)
  br label %166

166:                                              ; preds = %163, %151
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = add i64 %169, -1
  store i64 %170, i64* %168, align 8
  br label %171

171:                                              ; preds = %166, %142
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 3
  %174 = load %struct.playlist_entry*, %struct.playlist_entry** %173, align 8
  %175 = icmp ne %struct.playlist_entry* %174, null
  br i1 %175, label %176, label %344

176:                                              ; preds = %171
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 3
  %179 = load %struct.playlist_entry*, %struct.playlist_entry** %178, align 8
  %180 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %179, i64 1
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 3
  %183 = load %struct.playlist_entry*, %struct.playlist_entry** %182, align 8
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = sub nsw i32 %186, 1
  %188 = sext i32 %187 to i64
  %189 = mul i64 %188, 72
  %190 = trunc i64 %189 to i32
  %191 = call i32 @memmove(%struct.playlist_entry* %180, %struct.playlist_entry* %183, i32 %190)
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 3
  %194 = load %struct.playlist_entry*, %struct.playlist_entry** %193, align 8
  %195 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %194, i64 0
  %196 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %195, i32 0, i32 1
  store i8* null, i8** %196, align 8
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 3
  %199 = load %struct.playlist_entry*, %struct.playlist_entry** %198, align 8
  %200 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %199, i64 0
  %201 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %200, i32 0, i32 0
  store i8* null, i8** %201, align 8
  %202 = call i64 @string_is_empty(i8* %18)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %211, label %204

204:                                              ; preds = %176
  %205 = call i8* @strdup(i8* %18)
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 3
  %208 = load %struct.playlist_entry*, %struct.playlist_entry** %207, align 8
  %209 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %208, i64 0
  %210 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %209, i32 0, i32 1
  store i8* %205, i8** %210, align 8
  br label %211

211:                                              ; preds = %204, %176
  %212 = call i64 @string_is_empty(i8* %21)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %221, label %214

214:                                              ; preds = %211
  %215 = call i8* @strdup(i8* %21)
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 3
  %218 = load %struct.playlist_entry*, %struct.playlist_entry** %217, align 8
  %219 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %218, i64 0
  %220 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %219, i32 0, i32 0
  store i8* %215, i8** %220, align 8
  br label %221

221:                                              ; preds = %214, %211
  %222 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %223 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %222, i32 0, i32 13
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 3
  %227 = load %struct.playlist_entry*, %struct.playlist_entry** %226, align 8
  %228 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %227, i64 0
  %229 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %228, i32 0, i32 13
  store i32 %224, i32* %229, align 4
  %230 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %231 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %230, i32 0, i32 12
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 3
  %235 = load %struct.playlist_entry*, %struct.playlist_entry** %234, align 8
  %236 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %235, i64 0
  %237 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %236, i32 0, i32 12
  store i32 %232, i32* %237, align 8
  %238 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %239 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %238, i32 0, i32 11
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 3
  %243 = load %struct.playlist_entry*, %struct.playlist_entry** %242, align 8
  %244 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %243, i64 0
  %245 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %244, i32 0, i32 11
  store i32 %240, i32* %245, align 4
  %246 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %247 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %246, i32 0, i32 10
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i32 0, i32 3
  %251 = load %struct.playlist_entry*, %struct.playlist_entry** %250, align 8
  %252 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %251, i64 0
  %253 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %252, i32 0, i32 10
  store i32 %248, i32* %253, align 8
  %254 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %255 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %254, i32 0, i32 9
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %257, i32 0, i32 3
  %259 = load %struct.playlist_entry*, %struct.playlist_entry** %258, align 8
  %260 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %259, i64 0
  %261 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %260, i32 0, i32 9
  store i32 %256, i32* %261, align 4
  %262 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %263 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %262, i32 0, i32 8
  %264 = load i32, i32* %263, align 8
  %265 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %265, i32 0, i32 3
  %267 = load %struct.playlist_entry*, %struct.playlist_entry** %266, align 8
  %268 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %267, i64 0
  %269 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %268, i32 0, i32 8
  store i32 %264, i32* %269, align 8
  %270 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %271 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %270, i32 0, i32 7
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %273, i32 0, i32 3
  %275 = load %struct.playlist_entry*, %struct.playlist_entry** %274, align 8
  %276 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %275, i64 0
  %277 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %276, i32 0, i32 7
  store i32 %272, i32* %277, align 4
  %278 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %279 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %278, i32 0, i32 6
  %280 = load i32, i32* %279, align 8
  %281 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %281, i32 0, i32 3
  %283 = load %struct.playlist_entry*, %struct.playlist_entry** %282, align 8
  %284 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %283, i64 0
  %285 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %284, i32 0, i32 6
  store i32 %280, i32* %285, align 8
  %286 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %287 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %286, i32 0, i32 5
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %290 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %289, i32 0, i32 3
  %291 = load %struct.playlist_entry*, %struct.playlist_entry** %290, align 8
  %292 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %291, i64 0
  %293 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %292, i32 0, i32 5
  store i32 %288, i32* %293, align 4
  %294 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %295 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %294, i32 0, i32 4
  %296 = load i32, i32* %295, align 8
  %297 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %298 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %297, i32 0, i32 3
  %299 = load %struct.playlist_entry*, %struct.playlist_entry** %298, align 8
  %300 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %299, i64 0
  %301 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %300, i32 0, i32 4
  store i32 %296, i32* %301, align 8
  %302 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %303 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %302, i32 0, i32 3
  %304 = load %struct.playlist_entry*, %struct.playlist_entry** %303, align 8
  %305 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %304, i64 0
  %306 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %305, i32 0, i32 2
  store i8* null, i8** %306, align 8
  %307 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %308 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %307, i32 0, i32 3
  %309 = load %struct.playlist_entry*, %struct.playlist_entry** %308, align 8
  %310 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %309, i64 0
  %311 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %310, i32 0, i32 3
  store i8* null, i8** %311, align 8
  %312 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %313 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %312, i32 0, i32 2
  %314 = load i8*, i8** %313, align 8
  %315 = call i64 @string_is_empty(i8* %314)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %327, label %317

317:                                              ; preds = %221
  %318 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %319 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %318, i32 0, i32 2
  %320 = load i8*, i8** %319, align 8
  %321 = call i8* @strdup(i8* %320)
  %322 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %323 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %322, i32 0, i32 3
  %324 = load %struct.playlist_entry*, %struct.playlist_entry** %323, align 8
  %325 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %324, i64 0
  %326 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %325, i32 0, i32 2
  store i8* %321, i8** %326, align 8
  br label %327

327:                                              ; preds = %317, %221
  %328 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %329 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %328, i32 0, i32 3
  %330 = load i8*, i8** %329, align 8
  %331 = call i64 @string_is_empty(i8* %330)
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %343, label %333

333:                                              ; preds = %327
  %334 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %335 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %334, i32 0, i32 3
  %336 = load i8*, i8** %335, align 8
  %337 = call i8* @strdup(i8* %336)
  %338 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %339 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %338, i32 0, i32 3
  %340 = load %struct.playlist_entry*, %struct.playlist_entry** %339, align 8
  %341 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %340, i64 0
  %342 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %341, i32 0, i32 3
  store i8* %337, i8** %342, align 8
  br label %343

343:                                              ; preds = %333, %327
  br label %344

344:                                              ; preds = %343, %171
  %345 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %346 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %345, i32 0, i32 0
  %347 = load i64, i64* %346, align 8
  %348 = add i64 %347, 1
  store i64 %348, i64* %346, align 8
  br label %349

349:                                              ; preds = %344, %114
  %350 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %351 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %350, i32 0, i32 2
  store i32 1, i32* %351, align 4
  store i32 1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %352

352:                                              ; preds = %349, %113, %66, %36, %29
  %353 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %353)
  %354 = load i32, i32* %3, align 4
  ret i32 %354
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @string_is_empty(i8*) #2

declare dso_local i32 @RARCH_ERR(i8*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @path_resolve_realpath(i8*, i32, i32) #2

declare dso_local i32 @string_is_equal(i8*, i8*) #2

declare dso_local i64 @playlist_path_equal(i8*, i8*) #2

declare dso_local i32 @playlist_core_path_equal(i8*, i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @memmove(%struct.playlist_entry*, %struct.playlist_entry*, i32) #2

declare dso_local i32 @playlist_free_entry(%struct.playlist_entry*) #2

declare dso_local i8* @strdup(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
