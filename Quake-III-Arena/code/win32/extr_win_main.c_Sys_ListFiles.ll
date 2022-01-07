; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_main.c_Sys_ListFiles.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_main.c_Sys_ListFiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._finddata_t = type { i32, i32 }

@MAX_OSPATH = common dso_local global i32 0, align 4
@MAX_FOUND_FILES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_A_SUBDIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s\\*%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @Sys_ListFiles(i8* %0, i8* %1, i8* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8**, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct._finddata_t, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %23 = load i32, i32* @MAX_OSPATH, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %12, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %13, align 8
  %27 = load i32, i32* @MAX_FOUND_FILES, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i8*, i64 %28, align 16
  store i64 %28, i64* %16, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %73

32:                                               ; preds = %5
  store i32 0, i32* %14, align 4
  %33 = load i8*, i8** %7, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @Sys_ListFilteredFiles(i8* %33, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %34, i8** %29, i32* %14)
  %36 = load i32, i32* %14, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %29, i64 %37
  store i8* null, i8** %38, align 8
  %39 = load i32, i32* %14, align 4
  %40 = load i32*, i32** %10, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %32
  store i8** null, i8*** %6, align 8
  store i32 1, i32* %21, align 4
  br label %233

44:                                               ; preds = %32
  %45 = load i32, i32* %14, align 4
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 8
  %49 = trunc i64 %48 to i32
  %50 = call i8** @Z_Malloc(i32 %49)
  store i8** %50, i8*** %15, align 8
  store i32 0, i32* %20, align 4
  br label %51

51:                                               ; preds = %64, %44
  %52 = load i32, i32* %20, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %51
  %56 = load i32, i32* %20, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %29, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = load i8**, i8*** %15, align 8
  %61 = load i32, i32* %20, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  store i8* %59, i8** %63, align 8
  br label %64

64:                                               ; preds = %55
  %65 = load i32, i32* %20, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %20, align 4
  br label %51

67:                                               ; preds = %51
  %68 = load i8**, i8*** %15, align 8
  %69 = load i32, i32* %20, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  store i8* null, i8** %71, align 8
  %72 = load i8**, i8*** %15, align 8
  store i8** %72, i8*** %6, align 8
  store i32 1, i32* %21, align 4
  br label %233

73:                                               ; preds = %5
  %74 = load i8*, i8** %8, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %77

77:                                               ; preds = %76, %73
  %78 = load i8*, i8** %8, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 0
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 47
  br i1 %82, label %83, label %90

83:                                               ; preds = %77
  %84 = load i8*, i8** %8, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  store i32 0, i32* %19, align 4
  br label %92

90:                                               ; preds = %83, %77
  %91 = load i32, i32* @_A_SUBDIR, align 4
  store i32 %91, i32* %19, align 4
  br label %92

92:                                               ; preds = %90, %89
  %93 = trunc i64 %24 to i32
  %94 = load i8*, i8** %7, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = call i32 @Com_sprintf(i8* %26, i32 %93, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %94, i8* %95)
  store i32 0, i32* %14, align 4
  %97 = call i32 @_findfirst(i8* %26, %struct._finddata_t* %17)
  store i32 %97, i32* %18, align 4
  %98 = load i32, i32* %18, align 4
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %100, label %102

100:                                              ; preds = %92
  %101 = load i32*, i32** %10, align 8
  store i32 0, i32* %101, align 4
  store i8** null, i8*** %6, align 8
  store i32 1, i32* %21, align 4
  br label %233

102:                                              ; preds = %92
  br label %103

103:                                              ; preds = %139, %102
  %104 = load i64, i64* %11, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %114, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* %19, align 4
  %108 = getelementptr inbounds %struct._finddata_t, %struct._finddata_t* %17, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @_A_SUBDIR, align 4
  %111 = and i32 %109, %110
  %112 = xor i32 %107, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %123, label %114

114:                                              ; preds = %106, %103
  %115 = load i64, i64* %11, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %138

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct._finddata_t, %struct._finddata_t* %17, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @_A_SUBDIR, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %138

123:                                              ; preds = %117, %106
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* @MAX_FOUND_FILES, align 4
  %126 = sub nsw i32 %125, 1
  %127 = icmp eq i32 %124, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  br label %143

129:                                              ; preds = %123
  %130 = getelementptr inbounds %struct._finddata_t, %struct._finddata_t* %17, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i8* @CopyString(i32 %131)
  %133 = load i32, i32* %14, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8*, i8** %29, i64 %134
  store i8* %132, i8** %135, align 8
  %136 = load i32, i32* %14, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %14, align 4
  br label %138

138:                                              ; preds = %129, %117, %114
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %18, align 4
  %141 = call i32 @_findnext(i32 %140, %struct._finddata_t* %17)
  %142 = icmp ne i32 %141, -1
  br i1 %142, label %103, label %143

143:                                              ; preds = %139, %128
  %144 = load i32, i32* %14, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8*, i8** %29, i64 %145
  store i8* null, i8** %146, align 8
  %147 = load i32, i32* %18, align 4
  %148 = call i32 @_findclose(i32 %147)
  %149 = load i32, i32* %14, align 4
  %150 = load i32*, i32** %10, align 8
  store i32 %149, i32* %150, align 4
  %151 = load i32, i32* %14, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %143
  store i8** null, i8*** %6, align 8
  store i32 1, i32* %21, align 4
  br label %233

154:                                              ; preds = %143
  %155 = load i32, i32* %14, align 4
  %156 = add nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = mul i64 %157, 8
  %159 = trunc i64 %158 to i32
  %160 = call i8** @Z_Malloc(i32 %159)
  store i8** %160, i8*** %15, align 8
  store i32 0, i32* %20, align 4
  br label %161

161:                                              ; preds = %174, %154
  %162 = load i32, i32* %20, align 4
  %163 = load i32, i32* %14, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %177

165:                                              ; preds = %161
  %166 = load i32, i32* %20, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8*, i8** %29, i64 %167
  %169 = load i8*, i8** %168, align 8
  %170 = load i8**, i8*** %15, align 8
  %171 = load i32, i32* %20, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8*, i8** %170, i64 %172
  store i8* %169, i8** %173, align 8
  br label %174

174:                                              ; preds = %165
  %175 = load i32, i32* %20, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %20, align 4
  br label %161

177:                                              ; preds = %161
  %178 = load i8**, i8*** %15, align 8
  %179 = load i32, i32* %20, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8*, i8** %178, i64 %180
  store i8* null, i8** %181, align 8
  br label %182

182:                                              ; preds = %228, %177
  store i32 0, i32* %19, align 4
  store i32 1, i32* %20, align 4
  br label %183

183:                                              ; preds = %224, %182
  %184 = load i32, i32* %20, align 4
  %185 = load i32, i32* %14, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %227

187:                                              ; preds = %183
  %188 = load i8**, i8*** %15, align 8
  %189 = load i32, i32* %20, align 4
  %190 = sub nsw i32 %189, 1
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8*, i8** %188, i64 %191
  %193 = load i8*, i8** %192, align 8
  %194 = load i8**, i8*** %15, align 8
  %195 = load i32, i32* %20, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8*, i8** %194, i64 %196
  %198 = load i8*, i8** %197, align 8
  %199 = call i64 @strgtr(i8* %193, i8* %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %223

201:                                              ; preds = %187
  %202 = load i8**, i8*** %15, align 8
  %203 = load i32, i32* %20, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8*, i8** %202, i64 %204
  %206 = load i8*, i8** %205, align 8
  store i8* %206, i8** %22, align 8
  %207 = load i8**, i8*** %15, align 8
  %208 = load i32, i32* %20, align 4
  %209 = sub nsw i32 %208, 1
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8*, i8** %207, i64 %210
  %212 = load i8*, i8** %211, align 8
  %213 = load i8**, i8*** %15, align 8
  %214 = load i32, i32* %20, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8*, i8** %213, i64 %215
  store i8* %212, i8** %216, align 8
  %217 = load i8*, i8** %22, align 8
  %218 = load i8**, i8*** %15, align 8
  %219 = load i32, i32* %20, align 4
  %220 = sub nsw i32 %219, 1
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i8*, i8** %218, i64 %221
  store i8* %217, i8** %222, align 8
  store i32 1, i32* %19, align 4
  br label %223

223:                                              ; preds = %201, %187
  br label %224

224:                                              ; preds = %223
  %225 = load i32, i32* %20, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %20, align 4
  br label %183

227:                                              ; preds = %183
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %19, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %182, label %231

231:                                              ; preds = %228
  %232 = load i8**, i8*** %15, align 8
  store i8** %232, i8*** %6, align 8
  store i32 1, i32* %21, align 4
  br label %233

233:                                              ; preds = %231, %153, %100, %67, %43
  %234 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %234)
  %235 = load i8**, i8*** %6, align 8
  ret i8** %235
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Sys_ListFilteredFiles(i8*, i8*, i8*, i8**, i32*) #2

declare dso_local i8** @Z_Malloc(i32) #2

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @_findfirst(i8*, %struct._finddata_t*) #2

declare dso_local i8* @CopyString(i32) #2

declare dso_local i32 @_findnext(i32, %struct._finddata_t*) #2

declare dso_local i32 @_findclose(i32) #2

declare dso_local i64 @strgtr(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
