; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/dtoverlay/extr_dtoverlay_main.c_dtoverlay_list_all.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/dtoverlay/extr_dtoverlay_main.c_dtoverlay_list_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i8* }
%struct.dirent = type { i8* }
%struct.TYPE_11__ = type { i8**, i32 }

@overlay_src_dir = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c".dtbo\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Internal error\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"dtparam\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"No overlays found\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"All overlays (* = loaded):\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%c %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @dtoverlay_list_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtoverlay_list_all(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dirent*, align 8
  %7 = alloca %struct.TYPE_11__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %16 = call i32 @string_vec_init(%struct.TYPE_11__* %7)
  %17 = load i32, i32* @overlay_src_dir, align 4
  %18 = call i32* @opendir(i32 %17)
  store i32* %18, i32** %5, align 8
  br label %19

19:                                               ; preds = %56, %1
  %20 = load i32*, i32** %5, align 8
  %21 = call %struct.dirent* @readdir(i32* %20)
  store %struct.dirent* %21, %struct.dirent** %6, align 8
  %22 = icmp ne %struct.dirent* %21, null
  br i1 %22, label %23, label %57

23:                                               ; preds = %19
  %24 = load %struct.dirent*, %struct.dirent** %6, align 8
  %25 = getelementptr inbounds %struct.dirent, %struct.dirent* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @strlen(i8* %26)
  %28 = sub nsw i32 %27, 5
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %23
  %32 = load %struct.dirent*, %struct.dirent** %6, align 8
  %33 = getelementptr inbounds %struct.dirent, %struct.dirent* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %31
  %41 = load %struct.dirent*, %struct.dirent** %6, align 8
  %42 = getelementptr inbounds %struct.dirent, %struct.dirent* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 2
  %46 = call i8* @string_vec_add(%struct.TYPE_11__* %7, i8* %43, i32 %45)
  store i8* %46, i8** %9, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  store i8 0, i8* %50, align 1
  %51 = load i8*, i8** %9, align 8
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %51, i64 %54
  store i8 32, i8* %55, align 1
  br label %56

56:                                               ; preds = %40, %31, %23
  br label %19

57:                                               ; preds = %19
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @closedir(i32* %58)
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %134, %57
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %137

66:                                               ; preds = %60
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %69, i64 %71
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i8* @strchr(i8* %75, i8 signext 95)
  store i8* %76, i8** %10, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %66
  %80 = call i32 @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 %80, i32* %2, align 4
  br label %174

81:                                               ; preds = %66
  %82 = load i8*, i8** %10, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %10, align 8
  %84 = load i8*, i8** %10, align 8
  %85 = call i8* @strchr(i8* %84, i8 signext 46)
  store i8* %85, i8** %11, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %81
  %89 = call i32 @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 %89, i32* %2, align 4
  br label %174

90:                                               ; preds = %81
  %91 = load i8*, i8** %11, align 8
  %92 = load i8*, i8** %10, align 8
  %93 = ptrtoint i8* %91 to i64
  %94 = ptrtoint i8* %92 to i64
  %95 = sub i64 %93, %94
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %13, align 4
  %98 = icmp eq i32 %97, 7
  br i1 %98, label %99, label %104

99:                                               ; preds = %90
  %100 = load i8*, i8** %10, align 8
  %101 = call i64 @memcmp(i8* %100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  br label %134

104:                                              ; preds = %99, %90
  %105 = load i8*, i8** %10, align 8
  %106 = load i32, i32* %13, align 4
  %107 = call i32 @string_vec_find(%struct.TYPE_11__* %7, i8* %105, i32 %106)
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* %14, align 4
  %109 = icmp sge i32 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %112 = load i8**, i8*** %111, align 8
  %113 = load i32, i32* %14, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8*, i8** %112, i64 %114
  %116 = load i8*, i8** %115, align 8
  store i8* %116, i8** %12, align 8
  %117 = load i8*, i8** %12, align 8
  %118 = call i32 @strlen(i8* %117)
  store i32 %118, i32* %13, align 4
  br label %128

119:                                              ; preds = %104
  %120 = load i8*, i8** %10, align 8
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %121, 2
  %123 = call i8* @string_vec_add(%struct.TYPE_11__* %7, i8* %120, i32 %122)
  store i8* %123, i8** %12, align 8
  %124 = load i8*, i8** %12, align 8
  %125 = load i32, i32* %13, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  store i8 0, i8* %127, align 1
  br label %128

128:                                              ; preds = %119, %110
  %129 = load i8*, i8** %12, align 8
  %130 = load i32, i32* %13, align 4
  %131 = add nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %129, i64 %132
  store i8 42, i8* %133, align 1
  br label %134

134:                                              ; preds = %128, %103
  %135 = load i32, i32* %4, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %4, align 4
  br label %60

137:                                              ; preds = %60
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %137
  %142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %172

143:                                              ; preds = %137
  %144 = call i32 @string_vec_sort(%struct.TYPE_11__* %7)
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %146

146:                                              ; preds = %168, %143
  %147 = load i32, i32* %4, align 4
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = icmp slt i32 %147, %149
  br i1 %150, label %151, label %171

151:                                              ; preds = %146
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %153 = load i8**, i8*** %152, align 8
  %154 = load i32, i32* %4, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8*, i8** %153, i64 %155
  %157 = load i8*, i8** %156, align 8
  store i8* %157, i8** %15, align 8
  %158 = load i8*, i8** %15, align 8
  %159 = load i8*, i8** %15, align 8
  %160 = call i32 @strlen(i8* %159)
  %161 = add nsw i32 %160, 1
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %158, i64 %162
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = load i8*, i8** %15, align 8
  %167 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %165, i8* %166)
  br label %168

168:                                              ; preds = %151
  %169 = load i32, i32* %4, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %4, align 4
  br label %146

171:                                              ; preds = %146
  br label %172

172:                                              ; preds = %171, %141
  %173 = call i32 @string_vec_uninit(%struct.TYPE_11__* %7)
  store i32 0, i32* %2, align 4
  br label %174

174:                                              ; preds = %172, %88, %79
  %175 = load i32, i32* %2, align 4
  ret i32 %175
}

declare dso_local i32 @string_vec_init(%struct.TYPE_11__*) #1

declare dso_local i32* @opendir(i32) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @string_vec_add(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @closedir(i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @string_vec_find(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @string_vec_sort(%struct.TYPE_11__*) #1

declare dso_local i32 @string_vec_uninit(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
