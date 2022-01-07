; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/unix/extr_unix_shared.c_Sys_ListFiles.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/unix/extr_unix_shared.c_Sys_ListFiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8* }
%struct.stat = type { i32 }

@MAX_OSPATH = common dso_local global i32 0, align 4
@MAX_FOUND_FILES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@qtrue = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@S_IFDIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @Sys_ListFiles(i8* %0, i8* %1, i8* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.dirent*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8**, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.stat, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %24 = load i64, i64* %11, align 8
  store i64 %24, i64* %14, align 8
  %25 = load i32, i32* @MAX_OSPATH, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %15, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %16, align 8
  %29 = load i32, i32* @MAX_FOUND_FILES, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i8*, i64 %30, align 16
  store i64 %30, i64* %19, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %75

34:                                               ; preds = %5
  store i32 0, i32* %17, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 @Sys_ListFilteredFiles(i8* %35, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %36, i8** %31, i32* %17)
  %38 = load i32, i32* %17, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %31, i64 %39
  store i8* null, i8** %40, align 8
  %41 = load i32, i32* %17, align 4
  %42 = load i32*, i32** %10, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %17, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %34
  store i8** null, i8*** %6, align 8
  store i32 1, i32* %23, align 4
  br label %223

46:                                               ; preds = %34
  %47 = load i32, i32* %17, align 4
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 8
  %51 = trunc i64 %50 to i32
  %52 = call i8** @Z_Malloc(i32 %51)
  store i8** %52, i8*** %18, align 8
  store i32 0, i32* %20, align 4
  br label %53

53:                                               ; preds = %66, %46
  %54 = load i32, i32* %20, align 4
  %55 = load i32, i32* %17, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %53
  %58 = load i32, i32* %20, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %31, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = load i8**, i8*** %18, align 8
  %63 = load i32, i32* %20, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  store i8* %61, i8** %65, align 8
  br label %66

66:                                               ; preds = %57
  %67 = load i32, i32* %20, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %20, align 4
  br label %53

69:                                               ; preds = %53
  %70 = load i8**, i8*** %18, align 8
  %71 = load i32, i32* %20, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  store i8* null, i8** %73, align 8
  %74 = load i8**, i8*** %18, align 8
  store i8** %74, i8*** %6, align 8
  store i32 1, i32* %23, align 4
  br label %223

75:                                               ; preds = %5
  %76 = load i8*, i8** %8, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %79

79:                                               ; preds = %78, %75
  %80 = load i8*, i8** %8, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 47
  br i1 %84, label %85, label %93

85:                                               ; preds = %79
  %86 = load i8*, i8** %8, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %92 = load i64, i64* @qtrue, align 8
  store i64 %92, i64* %14, align 8
  br label %93

93:                                               ; preds = %91, %85, %79
  %94 = load i8*, i8** %8, align 8
  %95 = call i32 @strlen(i8* %94)
  store i32 %95, i32* %22, align 4
  store i32 0, i32* %17, align 4
  %96 = load i8*, i8** %7, align 8
  %97 = call i32* @opendir(i8* %96)
  store i32* %97, i32** %13, align 8
  %98 = icmp eq i32* %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = load i32*, i32** %10, align 8
  store i32 0, i32* %100, align 4
  store i8** null, i8*** %6, align 8
  store i32 1, i32* %23, align 4
  br label %223

101:                                              ; preds = %93
  br label %102

102:                                              ; preds = %173, %165, %134, %115, %101
  %103 = load i32*, i32** %13, align 8
  %104 = call %struct.dirent* @readdir(i32* %103)
  store %struct.dirent* %104, %struct.dirent** %12, align 8
  %105 = icmp ne %struct.dirent* %104, null
  br i1 %105, label %106, label %183

106:                                              ; preds = %102
  %107 = trunc i64 %26 to i32
  %108 = load i8*, i8** %7, align 8
  %109 = load %struct.dirent*, %struct.dirent** %12, align 8
  %110 = getelementptr inbounds %struct.dirent, %struct.dirent* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @Com_sprintf(i8* %28, i32 %107, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %108, i8* %111)
  %113 = call i32 @stat(i8* %28, %struct.stat* %21)
  %114 = icmp eq i32 %113, -1
  br i1 %114, label %115, label %116

115:                                              ; preds = %106
  br label %102

116:                                              ; preds = %106
  %117 = load i64, i64* %14, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.stat, %struct.stat* %21, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @S_IFDIR, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %119, %116
  %126 = load i64, i64* %14, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %135, label %128

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.stat, %struct.stat* %21, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @S_IFDIR, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %128, %119
  br label %102

135:                                              ; preds = %128, %125
  %136 = load i8*, i8** %8, align 8
  %137 = load i8, i8* %136, align 1
  %138 = icmp ne i8 %137, 0
  br i1 %138, label %139, label %167

139:                                              ; preds = %135
  %140 = load %struct.dirent*, %struct.dirent** %12, align 8
  %141 = getelementptr inbounds %struct.dirent, %struct.dirent* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @strlen(i8* %142)
  %144 = load i8*, i8** %8, align 8
  %145 = call i32 @strlen(i8* %144)
  %146 = icmp slt i32 %143, %145
  br i1 %146, label %165, label %147

147:                                              ; preds = %139
  %148 = load %struct.dirent*, %struct.dirent** %12, align 8
  %149 = getelementptr inbounds %struct.dirent, %struct.dirent* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = load %struct.dirent*, %struct.dirent** %12, align 8
  %152 = getelementptr inbounds %struct.dirent, %struct.dirent* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @strlen(i8* %153)
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %150, i64 %155
  %157 = load i8*, i8** %8, align 8
  %158 = call i32 @strlen(i8* %157)
  %159 = sext i32 %158 to i64
  %160 = sub i64 0, %159
  %161 = getelementptr inbounds i8, i8* %156, i64 %160
  %162 = load i8*, i8** %8, align 8
  %163 = call i64 @Q_stricmp(i8* %161, i8* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %147, %139
  br label %102

166:                                              ; preds = %147
  br label %167

167:                                              ; preds = %166, %135
  %168 = load i32, i32* %17, align 4
  %169 = load i32, i32* @MAX_FOUND_FILES, align 4
  %170 = sub nsw i32 %169, 1
  %171 = icmp eq i32 %168, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %167
  br label %183

173:                                              ; preds = %167
  %174 = load %struct.dirent*, %struct.dirent** %12, align 8
  %175 = getelementptr inbounds %struct.dirent, %struct.dirent* %174, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = call i8* @CopyString(i8* %176)
  %178 = load i32, i32* %17, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8*, i8** %31, i64 %179
  store i8* %177, i8** %180, align 8
  %181 = load i32, i32* %17, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %17, align 4
  br label %102

183:                                              ; preds = %172, %102
  %184 = load i32, i32* %17, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8*, i8** %31, i64 %185
  store i8* null, i8** %186, align 8
  %187 = load i32*, i32** %13, align 8
  %188 = call i32 @closedir(i32* %187)
  %189 = load i32, i32* %17, align 4
  %190 = load i32*, i32** %10, align 8
  store i32 %189, i32* %190, align 4
  %191 = load i32, i32* %17, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %194, label %193

193:                                              ; preds = %183
  store i8** null, i8*** %6, align 8
  store i32 1, i32* %23, align 4
  br label %223

194:                                              ; preds = %183
  %195 = load i32, i32* %17, align 4
  %196 = add nsw i32 %195, 1
  %197 = sext i32 %196 to i64
  %198 = mul i64 %197, 8
  %199 = trunc i64 %198 to i32
  %200 = call i8** @Z_Malloc(i32 %199)
  store i8** %200, i8*** %18, align 8
  store i32 0, i32* %20, align 4
  br label %201

201:                                              ; preds = %214, %194
  %202 = load i32, i32* %20, align 4
  %203 = load i32, i32* %17, align 4
  %204 = icmp slt i32 %202, %203
  br i1 %204, label %205, label %217

205:                                              ; preds = %201
  %206 = load i32, i32* %20, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8*, i8** %31, i64 %207
  %209 = load i8*, i8** %208, align 8
  %210 = load i8**, i8*** %18, align 8
  %211 = load i32, i32* %20, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i8*, i8** %210, i64 %212
  store i8* %209, i8** %213, align 8
  br label %214

214:                                              ; preds = %205
  %215 = load i32, i32* %20, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %20, align 4
  br label %201

217:                                              ; preds = %201
  %218 = load i8**, i8*** %18, align 8
  %219 = load i32, i32* %20, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8*, i8** %218, i64 %220
  store i8* null, i8** %221, align 8
  %222 = load i8**, i8*** %18, align 8
  store i8** %222, i8*** %6, align 8
  store i32 1, i32* %23, align 4
  br label %223

223:                                              ; preds = %217, %193, %99, %69, %45
  %224 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %224)
  %225 = load i8**, i8*** %6, align 8
  ret i8** %225
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Sys_ListFilteredFiles(i8*, i8*, i8*, i8**, i32*) #2

declare dso_local i8** @Z_Malloc(i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32* @opendir(i8*) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @stat(i8*, %struct.stat*) #2

declare dso_local i64 @Q_stricmp(i8*, i8*) #2

declare dso_local i8* @CopyString(i8*) #2

declare dso_local i32 @closedir(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
