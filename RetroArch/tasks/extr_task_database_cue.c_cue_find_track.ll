; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_database_cue.c_cue_find_track.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_database_cue.c_cue_find_track.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@MAX_TOKEN_LEN = common dso_local global i64 0, align 8
@PATH_MAX_LENGTH = common dso_local global i64 0, align 8
@INTFSTREAM_FILE = common dso_local global i32 0, align 4
@RETRO_VFS_FILE_ACCESS_READ = common dso_local global i32 0, align 4
@RETRO_VFS_FILE_ACCESS_HINT_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Could not open CUE file '%s': %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Parsing CUE file '%s'...\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"FILE\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"TRACK\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"AUDIO\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"INDEX\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"%02d:%02d:%02d\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Error parsing time stamp '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cue_find_track(i8* %0, i32 %1, i32* %2, i32* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_3__, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %30 = load i64, i64* @MAX_TOKEN_LEN, align 8
  %31 = call i64 @malloc(i64 %30)
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** %16, align 8
  %33 = load i64, i64* @PATH_MAX_LENGTH, align 8
  %34 = add nsw i64 %33, 1
  %35 = call i64 @malloc(i64 %34)
  %36 = inttoptr i64 %35 to i8*
  store i8* %36, i8** %17, align 8
  store i8* null, i8** %18, align 8
  store i32 -1, i32* %19, align 4
  store i32 -1, i32* %20, align 4
  store i32 -1, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store volatile i32 -1, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %37 = load i64, i64* @PATH_MAX_LENGTH, align 8
  %38 = call i64 @malloc(i64 %37)
  %39 = inttoptr i64 %38 to i8*
  store i8* %39, i8** %26, align 8
  %40 = load i8*, i8** %26, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  store i8 0, i8* %41, align 1
  %42 = load i8*, i8** %26, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load i64, i64* @PATH_MAX_LENGTH, align 8
  %45 = call i32 @fill_pathname_basedir(i8* %42, i8* %43, i64 %44)
  %46 = load i32, i32* @INTFSTREAM_FILE, align 4
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = call i64 @intfstream_init(%struct.TYPE_3__* %15)
  %49 = inttoptr i64 %48 to i8*
  store i8* %49, i8** %18, align 8
  %50 = load i8*, i8** %18, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %6
  br label %226

53:                                               ; preds = %6
  %54 = load i8*, i8** %18, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = load i32, i32* @RETRO_VFS_FILE_ACCESS_READ, align 4
  %57 = load i32, i32* @RETRO_VFS_FILE_ACCESS_HINT_NONE, align 4
  %58 = call i32 @intfstream_open(i8* %54, i8* %55, i32 %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %53
  %61 = load i8*, i8** %8, align 8
  %62 = load i32, i32* @errno, align 4
  %63 = call i32 @strerror(i32 %62)
  %64 = call i32 (i8*, i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %61, i32 %63)
  br label %226

65:                                               ; preds = %53
  %66 = load i8*, i8** %8, align 8
  %67 = call i32 (i8*, i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %66)
  %68 = load i8*, i8** %16, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  store i8 0, i8* %69, align 1
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %14, align 4
  br label %72

72:                                               ; preds = %198, %188, %65
  %73 = load i8*, i8** %18, align 8
  %74 = load i8*, i8** %16, align 8
  %75 = load i64, i64* @MAX_TOKEN_LEN, align 8
  %76 = call i64 @get_token(i8* %73, i8* %74, i64 %75)
  %77 = icmp sgt i64 %76, 0
  br i1 %77, label %78, label %199

78:                                               ; preds = %72
  %79 = load i8*, i8** %16, align 8
  %80 = call i64 @string_is_equal_noncase(i8* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %116

82:                                               ; preds = %78
  %83 = load volatile i32, i32* %24, align 4
  %84 = icmp ne i32 %83, -1
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load volatile i32, i32* %24, align 4
  store i32 %86, i32* %19, align 4
  br label %87

87:                                               ; preds = %85, %82
  %88 = load i8*, i8** %17, align 8
  %89 = load i32*, i32** %10, align 8
  %90 = load i32*, i32** %11, align 8
  %91 = load i8*, i8** %12, align 8
  %92 = load i32, i32* %13, align 4
  %93 = call i64 @update_cand(i32* %20, i32* %19, i32* %23, i8* %88, i32* %89, i32* %90, i8* %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %87
  store i32 0, i32* %14, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  br label %214

99:                                               ; preds = %95
  br label %100

100:                                              ; preds = %99, %87
  %101 = load i8*, i8** %18, align 8
  %102 = load i8*, i8** %16, align 8
  %103 = load i64, i64* @MAX_TOKEN_LEN, align 8
  %104 = call i64 @get_token(i8* %101, i8* %102, i64 %103)
  %105 = load i8*, i8** %17, align 8
  %106 = load i8*, i8** %26, align 8
  %107 = load i8*, i8** %16, align 8
  %108 = load i64, i64* @PATH_MAX_LENGTH, align 8
  %109 = call i32 @fill_pathname_join(i8* %105, i8* %106, i8* %107, i64 %108)
  %110 = load i8*, i8** %17, align 8
  %111 = call i32 @intfstream_get_file_size(i8* %110)
  store volatile i32 %111, i32* %24, align 4
  %112 = load i8*, i8** %18, align 8
  %113 = load i8*, i8** %16, align 8
  %114 = load i64, i64* @MAX_TOKEN_LEN, align 8
  %115 = call i64 @get_token(i8* %112, i8* %113, i64 %114)
  br label %198

116:                                              ; preds = %78
  %117 = load i8*, i8** %16, align 8
  %118 = call i64 @string_is_equal_noncase(i8* %117, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %136

120:                                              ; preds = %116
  %121 = load i8*, i8** %18, align 8
  %122 = load i8*, i8** %16, align 8
  %123 = load i64, i64* @MAX_TOKEN_LEN, align 8
  %124 = call i64 @get_token(i8* %121, i8* %122, i64 %123)
  %125 = load i8*, i8** %18, align 8
  %126 = load i8*, i8** %16, align 8
  %127 = load i64, i64* @MAX_TOKEN_LEN, align 8
  %128 = call i64 @get_token(i8* %125, i8* %126, i64 %127)
  %129 = load i8*, i8** %16, align 8
  %130 = call i64 @string_is_equal_noncase(i8* %129, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %131 = icmp ne i64 %130, 0
  %132 = xor i1 %131, true
  %133 = zext i1 %132 to i32
  store i32 %133, i32* %25, align 4
  %134 = load i32, i32* %22, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %22, align 4
  br label %197

136:                                              ; preds = %116
  %137 = load i8*, i8** %16, align 8
  %138 = call i64 @string_is_equal_noncase(i8* %137, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %196

140:                                              ; preds = %136
  %141 = load i8*, i8** %18, align 8
  %142 = load i8*, i8** %16, align 8
  %143 = load i64, i64* @MAX_TOKEN_LEN, align 8
  %144 = call i64 @get_token(i8* %141, i8* %142, i64 %143)
  %145 = load i8*, i8** %18, align 8
  %146 = load i8*, i8** %16, align 8
  %147 = load i64, i64* @MAX_TOKEN_LEN, align 8
  %148 = call i64 @get_token(i8* %145, i8* %146, i64 %147)
  %149 = load i8*, i8** %16, align 8
  %150 = call i32 @sscanf(i8* %149, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32* %27, i32* %28, i32* %29)
  %151 = icmp slt i32 %150, 3
  br i1 %151, label %152, label %155

152:                                              ; preds = %140
  %153 = load i8*, i8** %16, align 8
  %154 = call i32 (i8*, i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8* %153)
  br label %226

155:                                              ; preds = %140
  %156 = load i32, i32* %27, align 4
  %157 = mul nsw i32 %156, 60
  %158 = load i32, i32* %28, align 4
  %159 = add nsw i32 %157, %158
  %160 = mul nsw i32 %159, 75
  %161 = load i32, i32* %29, align 4
  %162 = add nsw i32 %160, %161
  %163 = sext i32 %162 to i64
  %164 = mul i64 %163, 2352
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %19, align 4
  %166 = load i32, i32* %21, align 4
  %167 = icmp ne i32 %166, -1
  br i1 %167, label %168, label %185

168:                                              ; preds = %155
  %169 = load i32, i32* %22, align 4
  %170 = load i32, i32* %21, align 4
  %171 = icmp ne i32 %169, %170
  br i1 %171, label %172, label %185

172:                                              ; preds = %168
  %173 = load i8*, i8** %17, align 8
  %174 = load i32*, i32** %10, align 8
  %175 = load i32*, i32** %11, align 8
  %176 = load i8*, i8** %12, align 8
  %177 = load i32, i32* %13, align 4
  %178 = call i64 @update_cand(i32* %20, i32* %19, i32* %23, i8* %173, i32* %174, i32* %175, i8* %176, i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %172
  store i32 0, i32* %14, align 4
  %181 = load i32, i32* %9, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %180
  br label %214

184:                                              ; preds = %180
  br label %185

185:                                              ; preds = %184, %172, %168, %155
  %186 = load i32, i32* %25, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %189, label %188

188:                                              ; preds = %185
  br label %72

189:                                              ; preds = %185
  %190 = load i32, i32* %20, align 4
  %191 = icmp eq i32 %190, -1
  br i1 %191, label %192, label %195

192:                                              ; preds = %189
  %193 = load i32, i32* %19, align 4
  store i32 %193, i32* %20, align 4
  %194 = load i32, i32* %22, align 4
  store i32 %194, i32* %21, align 4
  br label %195

195:                                              ; preds = %192, %189
  br label %196

196:                                              ; preds = %195, %136
  br label %197

197:                                              ; preds = %196, %120
  br label %198

198:                                              ; preds = %197, %100
  br label %72

199:                                              ; preds = %72
  %200 = load volatile i32, i32* %24, align 4
  %201 = icmp ne i32 %200, -1
  br i1 %201, label %202, label %204

202:                                              ; preds = %199
  %203 = load volatile i32, i32* %24, align 4
  store i32 %203, i32* %19, align 4
  br label %204

204:                                              ; preds = %202, %199
  %205 = load i8*, i8** %17, align 8
  %206 = load i32*, i32** %10, align 8
  %207 = load i32*, i32** %11, align 8
  %208 = load i8*, i8** %12, align 8
  %209 = load i32, i32* %13, align 4
  %210 = call i64 @update_cand(i32* %20, i32* %19, i32* %23, i8* %205, i32* %206, i32* %207, i8* %208, i32 %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %204
  store i32 0, i32* %14, align 4
  br label %213

213:                                              ; preds = %212, %204
  br label %214

214:                                              ; preds = %213, %183, %98
  %215 = load i8*, i8** %26, align 8
  %216 = call i32 @free(i8* %215)
  %217 = load i8*, i8** %16, align 8
  %218 = call i32 @free(i8* %217)
  %219 = load i8*, i8** %17, align 8
  %220 = call i32 @free(i8* %219)
  %221 = load i8*, i8** %18, align 8
  %222 = call i32 @intfstream_close(i8* %221)
  %223 = load i8*, i8** %18, align 8
  %224 = call i32 @free(i8* %223)
  %225 = load i32, i32* %14, align 4
  store i32 %225, i32* %7, align 4
  br label %243

226:                                              ; preds = %152, %60, %52
  %227 = load i8*, i8** %26, align 8
  %228 = call i32 @free(i8* %227)
  %229 = load i8*, i8** %16, align 8
  %230 = call i32 @free(i8* %229)
  %231 = load i8*, i8** %17, align 8
  %232 = call i32 @free(i8* %231)
  %233 = load i8*, i8** %18, align 8
  %234 = icmp ne i8* %233, null
  br i1 %234, label %235, label %240

235:                                              ; preds = %226
  %236 = load i8*, i8** %18, align 8
  %237 = call i32 @intfstream_close(i8* %236)
  %238 = load i8*, i8** %18, align 8
  %239 = call i32 @free(i8* %238)
  br label %240

240:                                              ; preds = %235, %226
  %241 = load i32, i32* @errno, align 4
  %242 = sub nsw i32 0, %241
  store i32 %242, i32* %7, align 4
  br label %243

243:                                              ; preds = %240, %214
  %244 = load i32, i32* %7, align 4
  ret i32 %244
}

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @fill_pathname_basedir(i8*, i8*, i64) #1

declare dso_local i64 @intfstream_init(%struct.TYPE_3__*) #1

declare dso_local i32 @intfstream_open(i8*, i8*, i32, i32) #1

declare dso_local i32 @RARCH_LOG(i8*, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @get_token(i8*, i8*, i64) #1

declare dso_local i64 @string_is_equal_noncase(i8*, i8*) #1

declare dso_local i64 @update_cand(i32*, i32*, i32*, i8*, i32*, i32*, i8*, i32) #1

declare dso_local i32 @fill_pathname_join(i8*, i8*, i8*, i64) #1

declare dso_local i32 @intfstream_get_file_size(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @intfstream_close(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
