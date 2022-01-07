; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_database_cue.c_gdi_find_track.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_database_cue.c_gdi_find_track.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@MAX_TOKEN_LEN = common dso_local global i64 0, align 8
@INTFSTREAM_FILE = common dso_local global i32 0, align 4
@RETRO_VFS_FILE_ACCESS_READ = common dso_local global i32 0, align 4
@RETRO_VFS_FILE_ACCESS_HINT_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Could not open GDI file '%s': %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Parsing GDI file '%s'...\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PATH_MAX_LENGTH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gdi_find_track(i8* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %20 = load i64, i64* @MAX_TOKEN_LEN, align 8
  %21 = call i64 @malloc(i64 %20)
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i64 0, i64* %14, align 8
  store i32 -1, i32* %15, align 4
  store i32 -1, i32* %16, align 4
  store i64 -1, i64* %17, align 8
  %23 = load i32, i32* @INTFSTREAM_FILE, align 4
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = call i64 @intfstream_init(%struct.TYPE_3__* %11)
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** %13, align 8
  %27 = load i8*, i8** %13, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %4
  br label %170

30:                                               ; preds = %4
  %31 = load i8*, i8** %13, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* @RETRO_VFS_FILE_ACCESS_READ, align 4
  %34 = load i32, i32* @RETRO_VFS_FILE_ACCESS_HINT_NONE, align 4
  %35 = call i32 @intfstream_open(i8* %31, i8* %32, i32 %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %30
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* @errno, align 4
  %40 = call i32 @strerror(i32 %39)
  %41 = call i32 (i8*, i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %38, i32 %40)
  br label %170

42:                                               ; preds = %30
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 (i8*, i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  %45 = load i8*, i8** %12, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  store i8 0, i8* %46, align 1
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %10, align 4
  %49 = load i8*, i8** %13, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = load i64, i64* @MAX_TOKEN_LEN, align 8
  %52 = call i64 @get_token(i8* %49, i8* %50, i64 %51)
  br label %53

53:                                               ; preds = %160, %42
  %54 = load i8*, i8** %13, align 8
  %55 = load i8*, i8** %12, align 8
  %56 = load i64, i64* @MAX_TOKEN_LEN, align 8
  %57 = call i64 @get_token(i8* %54, i8* %55, i64 %56)
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %161

59:                                               ; preds = %53
  %60 = load i8*, i8** %13, align 8
  %61 = load i8*, i8** %12, align 8
  %62 = load i64, i64* @MAX_TOKEN_LEN, align 8
  %63 = call i64 @get_token(i8* %60, i8* %61, i64 %62)
  %64 = icmp sle i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* @EINVAL, align 4
  store i32 %66, i32* @errno, align 4
  br label %170

67:                                               ; preds = %59
  %68 = load i8*, i8** %13, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = load i64, i64* @MAX_TOKEN_LEN, align 8
  %71 = call i64 @get_token(i8* %68, i8* %69, i64 %70)
  %72 = icmp sle i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* @EINVAL, align 4
  store i32 %74, i32* @errno, align 4
  br label %170

75:                                               ; preds = %67
  %76 = load i8*, i8** %12, align 8
  %77 = call i32 @atoi(i8* %76)
  store i32 %77, i32* %16, align 4
  %78 = load i8*, i8** %13, align 8
  %79 = load i8*, i8** %12, align 8
  %80 = load i64, i64* @MAX_TOKEN_LEN, align 8
  %81 = call i64 @get_token(i8* %78, i8* %79, i64 %80)
  %82 = icmp sle i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = load i32, i32* @EINVAL, align 4
  store i32 %84, i32* @errno, align 4
  br label %170

85:                                               ; preds = %75
  %86 = load i8*, i8** %12, align 8
  %87 = call i32 @atoi(i8* %86)
  store i32 %87, i32* %15, align 4
  %88 = load i8*, i8** %13, align 8
  %89 = load i8*, i8** %12, align 8
  %90 = load i64, i64* @MAX_TOKEN_LEN, align 8
  %91 = call i64 @get_token(i8* %88, i8* %89, i64 %90)
  %92 = icmp sle i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %85
  %94 = load i32, i32* @EINVAL, align 4
  store i32 %94, i32* @errno, align 4
  br label %170

95:                                               ; preds = %85
  %96 = load i32, i32* %16, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i32, i32* %15, align 4
  %100 = icmp eq i32 %99, 2352
  br i1 %100, label %152, label %101

101:                                              ; preds = %98, %95
  %102 = load i64, i64* @PATH_MAX_LENGTH, align 8
  %103 = add nsw i64 %102, 1
  %104 = call i64 @malloc(i64 %103)
  %105 = inttoptr i64 %104 to i8*
  store i8* %105, i8** %18, align 8
  %106 = load i64, i64* @PATH_MAX_LENGTH, align 8
  %107 = call i64 @malloc(i64 %106)
  %108 = inttoptr i64 %107 to i8*
  store i8* %108, i8** %19, align 8
  %109 = load i8*, i8** %19, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 0
  store i8 0, i8* %110, align 1
  %111 = load i8*, i8** %19, align 8
  %112 = load i8*, i8** %6, align 8
  %113 = load i64, i64* @PATH_MAX_LENGTH, align 8
  %114 = call i32 @fill_pathname_basedir(i8* %111, i8* %112, i64 %113)
  %115 = load i8*, i8** %18, align 8
  %116 = load i8*, i8** %19, align 8
  %117 = load i8*, i8** %12, align 8
  %118 = load i64, i64* @PATH_MAX_LENGTH, align 8
  %119 = call i32 @fill_pathname_join(i8* %115, i8* %116, i8* %117, i64 %118)
  %120 = load i8*, i8** %18, align 8
  %121 = call i64 @intfstream_get_file_size(i8* %120)
  store i64 %121, i64* %17, align 8
  %122 = load i64, i64* %17, align 8
  %123 = icmp slt i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %101
  %125 = load i8*, i8** %19, align 8
  %126 = call i32 @free(i8* %125)
  %127 = load i8*, i8** %18, align 8
  %128 = call i32 @free(i8* %127)
  br label %170

129:                                              ; preds = %101
  %130 = load i64, i64* %17, align 8
  %131 = load i64, i64* %14, align 8
  %132 = icmp sgt i64 %130, %131
  br i1 %132, label %133, label %147

133:                                              ; preds = %129
  %134 = load i8*, i8** %8, align 8
  %135 = load i8*, i8** %18, align 8
  %136 = load i64, i64* %9, align 8
  %137 = call i32 @strlcpy(i8* %134, i8* %135, i64 %136)
  store i32 0, i32* %10, align 4
  %138 = load i64, i64* %17, align 8
  store i64 %138, i64* %14, align 8
  %139 = load i32, i32* %7, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %133
  %142 = load i8*, i8** %19, align 8
  %143 = call i32 @free(i8* %142)
  %144 = load i8*, i8** %18, align 8
  %145 = call i32 @free(i8* %144)
  br label %162

146:                                              ; preds = %133
  br label %147

147:                                              ; preds = %146, %129
  %148 = load i8*, i8** %19, align 8
  %149 = call i32 @free(i8* %148)
  %150 = load i8*, i8** %18, align 8
  %151 = call i32 @free(i8* %150)
  br label %152

152:                                              ; preds = %147, %98
  %153 = load i8*, i8** %13, align 8
  %154 = load i8*, i8** %12, align 8
  %155 = load i64, i64* @MAX_TOKEN_LEN, align 8
  %156 = call i64 @get_token(i8* %153, i8* %154, i64 %155)
  %157 = icmp sle i64 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %152
  %159 = load i32, i32* @EINVAL, align 4
  store i32 %159, i32* @errno, align 4
  br label %170

160:                                              ; preds = %152
  br label %53

161:                                              ; preds = %53
  br label %162

162:                                              ; preds = %161, %141
  %163 = load i8*, i8** %12, align 8
  %164 = call i32 @free(i8* %163)
  %165 = load i8*, i8** %13, align 8
  %166 = call i32 @intfstream_close(i8* %165)
  %167 = load i8*, i8** %13, align 8
  %168 = call i32 @free(i8* %167)
  %169 = load i32, i32* %10, align 4
  store i32 %169, i32* %5, align 4
  br label %183

170:                                              ; preds = %158, %124, %93, %83, %73, %65, %37, %29
  %171 = load i8*, i8** %12, align 8
  %172 = call i32 @free(i8* %171)
  %173 = load i8*, i8** %13, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %175, label %180

175:                                              ; preds = %170
  %176 = load i8*, i8** %13, align 8
  %177 = call i32 @intfstream_close(i8* %176)
  %178 = load i8*, i8** %13, align 8
  %179 = call i32 @free(i8* %178)
  br label %180

180:                                              ; preds = %175, %170
  %181 = load i32, i32* @errno, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %5, align 4
  br label %183

183:                                              ; preds = %180, %162
  %184 = load i32, i32* %5, align 4
  ret i32 %184
}

declare dso_local i64 @malloc(i64) #1

declare dso_local i64 @intfstream_init(%struct.TYPE_3__*) #1

declare dso_local i32 @intfstream_open(i8*, i8*, i32, i32) #1

declare dso_local i32 @RARCH_LOG(i8*, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @get_token(i8*, i8*, i64) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @fill_pathname_basedir(i8*, i8*, i64) #1

declare dso_local i32 @fill_pathname_join(i8*, i8*, i8*, i64) #1

declare dso_local i64 @intfstream_get_file_size(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @intfstream_close(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
