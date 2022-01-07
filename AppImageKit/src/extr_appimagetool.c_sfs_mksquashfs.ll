; ModuleID = '/home/carl/AnghaBench/AppImageKit/src/extr_appimagetool.c_sfs_mksquashfs.c'
source_filename = "/home/carl/AnghaBench/AppImageKit/src/extr_appimagetool.c_sfs_mksquashfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@sqfs_comp = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"xz\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"mksquashfs\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"-offset\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"-comp\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"-root-owned\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"-noappend\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"-Xdict-size\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"100%\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"-b\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"16384\00", align 1
@APPIMAGEIGNORE = common dso_local global i8* null, align 8
@F_OK = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [13 x i8] c"Including %s\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"-wildcards\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"-ef\00", align 1
@exclude_file = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [36 x i8] c"WARNING: exclude file %s not found!\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"-mkfs-time\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [25 x i8] c"mksquashfs commandline: \00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"execlp\00", align 1
@pathToMksquashfs = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sfs_mksquashfs(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca [32 x i8*], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8**, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = call i32 (...) @fork()
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %190

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @waitpid(i32 %24, i32* %9, i32 0)
  br label %188

26:                                               ; preds = %20
  %27 = load i32, i32* %7, align 4
  %28 = call i8* @g_strdup_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %27)
  store i8* %28, i8** %10, align 8
  %29 = load i8*, i8** @sqfs_comp, align 8
  %30 = call i64 @strcmp(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %31 = icmp sge i64 %30, 0
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %13, align 4
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds [32 x i8*], [32 x i8*]* %11, i64 0, i64 %35
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %36, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* %13, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %13, align 4
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds [32 x i8*], [32 x i8*]* %11, i64 0, i64 %40
  store i8* %37, i8** %41, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %13, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %13, align 4
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds [32 x i8*], [32 x i8*]* %11, i64 0, i64 %45
  store i8* %42, i8** %46, align 8
  %47 = load i32, i32* %13, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %13, align 4
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds [32 x i8*], [32 x i8*]* %11, i64 0, i64 %49
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %50, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = load i32, i32* %13, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %13, align 4
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds [32 x i8*], [32 x i8*]* %11, i64 0, i64 %54
  store i8* %51, i8** %55, align 8
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %13, align 4
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds [32 x i8*], [32 x i8*]* %11, i64 0, i64 %58
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %59, align 8
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %26
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %13, align 4
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds [32 x i8*], [32 x i8*]* %11, i64 0, i64 %65
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %66, align 8
  br label %73

67:                                               ; preds = %26
  %68 = load i8*, i8** @sqfs_comp, align 8
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %13, align 4
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds [32 x i8*], [32 x i8*]* %11, i64 0, i64 %71
  store i8* %68, i8** %72, align 8
  br label %73

73:                                               ; preds = %67, %62
  %74 = load i32, i32* %13, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %13, align 4
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds [32 x i8*], [32 x i8*]* %11, i64 0, i64 %76
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8** %77, align 8
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %13, align 4
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds [32 x i8*], [32 x i8*]* %11, i64 0, i64 %80
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8** %81, align 8
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %101

84:                                               ; preds = %73
  %85 = load i32, i32* %13, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %13, align 4
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds [32 x i8*], [32 x i8*]* %11, i64 0, i64 %87
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8** %88, align 8
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %13, align 4
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds [32 x i8*], [32 x i8*]* %11, i64 0, i64 %91
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8** %92, align 8
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %13, align 4
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds [32 x i8*], [32 x i8*]* %11, i64 0, i64 %95
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8** %96, align 8
  %97 = load i32, i32* %13, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %13, align 4
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds [32 x i8*], [32 x i8*]* %11, i64 0, i64 %99
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8** %100, align 8
  br label %101

101:                                              ; preds = %84, %73
  %102 = load i8*, i8** @APPIMAGEIGNORE, align 8
  %103 = load i32, i32* @F_OK, align 4
  %104 = call i64 @access(i8* %102, i32 %103)
  %105 = icmp sge i64 %104, 0
  br i1 %105, label %106, label %124

106:                                              ; preds = %101
  %107 = load i8*, i8** @APPIMAGEIGNORE, align 8
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i8* %107)
  %109 = load i32, i32* %13, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %13, align 4
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds [32 x i8*], [32 x i8*]* %11, i64 0, i64 %111
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8** %112, align 8
  %113 = load i32, i32* %13, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %13, align 4
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds [32 x i8*], [32 x i8*]* %11, i64 0, i64 %115
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8** %116, align 8
  %117 = load i8*, i8** @APPIMAGEIGNORE, align 8
  %118 = call i8* @strdup(i8* %117)
  store i8* %118, i8** %14, align 8
  %119 = load i8*, i8** %14, align 8
  %120 = load i32, i32* %13, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %13, align 4
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds [32 x i8*], [32 x i8*]* %11, i64 0, i64 %122
  store i8* %119, i8** %123, align 8
  br label %124

124:                                              ; preds = %106, %101
  %125 = load i8*, i8** @exclude_file, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %153

127:                                              ; preds = %124
  %128 = load i8*, i8** @exclude_file, align 8
  %129 = call i64 @strlen(i8* %128)
  %130 = icmp sgt i64 %129, 0
  br i1 %130, label %131, label %153

131:                                              ; preds = %127
  %132 = load i8*, i8** @exclude_file, align 8
  %133 = load i32, i32* @F_OK, align 4
  %134 = call i64 @access(i8* %132, i32 %133)
  %135 = icmp slt i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load i8*, i8** @exclude_file, align 8
  %138 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0), i8* %137)
  store i32 -1, i32* %4, align 4
  br label %190

139:                                              ; preds = %131
  %140 = load i32, i32* %13, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %13, align 4
  %142 = sext i32 %140 to i64
  %143 = getelementptr inbounds [32 x i8*], [32 x i8*]* %11, i64 0, i64 %142
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8** %143, align 8
  %144 = load i32, i32* %13, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %13, align 4
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds [32 x i8*], [32 x i8*]* %11, i64 0, i64 %146
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8** %147, align 8
  %148 = load i8*, i8** @exclude_file, align 8
  %149 = load i32, i32* %13, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %13, align 4
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds [32 x i8*], [32 x i8*]* %11, i64 0, i64 %151
  store i8* %148, i8** %152, align 8
  br label %153

153:                                              ; preds = %139, %127, %124
  %154 = load i32, i32* %13, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %13, align 4
  %156 = sext i32 %154 to i64
  %157 = getelementptr inbounds [32 x i8*], [32 x i8*]* %11, i64 0, i64 %156
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i8** %157, align 8
  %158 = load i32, i32* %13, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %13, align 4
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds [32 x i8*], [32 x i8*]* %11, i64 0, i64 %160
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i8** %161, align 8
  %162 = load i32, i32* %13, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %13, align 4
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds [32 x i8*], [32 x i8*]* %11, i64 0, i64 %164
  store i8* null, i8** %165, align 8
  %166 = load i64, i64* @verbose, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %184

168:                                              ; preds = %153
  %169 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0))
  %170 = getelementptr inbounds [32 x i8*], [32 x i8*]* %11, i64 0, i64 0
  store i8** %170, i8*** %15, align 8
  br label %171

171:                                              ; preds = %179, %168
  %172 = load i8**, i8*** %15, align 8
  %173 = load i8*, i8** %172, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %175, label %182

175:                                              ; preds = %171
  %176 = load i8**, i8*** %15, align 8
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* %177)
  br label %179

179:                                              ; preds = %175
  %180 = load i8**, i8*** %15, align 8
  %181 = getelementptr inbounds i8*, i8** %180, i32 1
  store i8** %181, i8*** %15, align 8
  br label %171

182:                                              ; preds = %171
  %183 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  br label %184

184:                                              ; preds = %182, %153
  %185 = getelementptr inbounds [32 x i8*], [32 x i8*]* %11, i64 0, i64 0
  %186 = call i32 @execvp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %185)
  %187 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %190

188:                                              ; preds = %23
  br label %189

189:                                              ; preds = %188
  store i32 0, i32* %4, align 4
  br label %190

190:                                              ; preds = %189, %184, %136, %19
  %191 = load i32, i32* %4, align 4
  ret i32 %191
}

declare dso_local i32 @fork(...) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i8* @g_strdup_printf(i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @execvp(i8*, i8**) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
