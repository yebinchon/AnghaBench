; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_pl_thumbnail_download.c_get_thumbnail_paths.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_pl_thumbnail_download.c_get_thumbnail_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32 }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"history\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"favorites\00", align 1
@FILE_PATH_CORE_THUMBNAILS_URL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i64, i8*, i64)* @get_thumbnail_paths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_thumbnail_paths(%struct.TYPE_3__* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca [2048 x i8], align 16
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  %22 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %17, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %18, align 8
  %26 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %20, align 8
  %29 = getelementptr inbounds i8, i8* %25, i64 0
  store i8 0, i8* %29, align 16
  %30 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  store i8 0, i8* %30, align 16
  %31 = getelementptr inbounds i8, i8* %28, i64 0
  store i8 0, i8* %31, align 16
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %150

37:                                               ; preds = %5
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @string_is_empty(i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %150

44:                                               ; preds = %37
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @menu_thumbnail_get_system(i32 %47, i8** %12)
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @menu_thumbnail_get_db_name(i32 %51, i8** %13)
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @menu_thumbnail_get_img_name(i32 %55, i8** %14)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %44
  store i32 0, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %150

59:                                               ; preds = %44
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @menu_thumbnail_get_sub_directory(i32 %62, i8** %15)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  store i32 0, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %150

66:                                               ; preds = %59
  %67 = load i8*, i8** %13, align 8
  %68 = call i64 @string_is_empty(i8* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %95

70:                                               ; preds = %66
  %71 = load i8*, i8** %12, align 8
  %72 = call i64 @string_is_empty(i8* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store i32 0, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %150

75:                                               ; preds = %70
  %76 = load i8*, i8** %12, align 8
  %77 = call i64 @string_is_equal(i8* %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = load i8*, i8** %12, align 8
  %81 = call i64 @string_is_equal(i8* %80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %79, %75
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = trunc i64 %23 to i32
  %88 = call i32 @menu_thumbnail_get_content_dir(i32 %86, i8* %25, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %83
  store i32 0, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %150

91:                                               ; preds = %83
  store i8* %25, i8** %16, align 8
  br label %94

92:                                               ; preds = %79
  %93 = load i8*, i8** %12, align 8
  store i8* %93, i8** %16, align 8
  br label %94

94:                                               ; preds = %92, %91
  br label %97

95:                                               ; preds = %66
  %96 = load i8*, i8** %13, align 8
  store i8* %96, i8** %16, align 8
  br label %97

97:                                               ; preds = %95, %94
  %98 = load i8*, i8** %8, align 8
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = load i8*, i8** %16, align 8
  %103 = load i64, i64* %9, align 8
  %104 = call i32 @fill_pathname_join(i8* %98, i8* %101, i8* %102, i64 %103)
  %105 = load i8*, i8** %8, align 8
  %106 = load i8*, i8** %15, align 8
  %107 = call i32 @fill_pathname_join(i8* %28, i8* %105, i8* %106, i64 %27)
  %108 = load i8*, i8** %8, align 8
  %109 = load i8*, i8** %14, align 8
  %110 = load i64, i64* %9, align 8
  %111 = call i32 @fill_pathname_join(i8* %108, i8* %28, i8* %109, i64 %110)
  %112 = load i8*, i8** %8, align 8
  %113 = call i64 @string_is_empty(i8* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %97
  store i32 0, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %150

116:                                              ; preds = %97
  %117 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %118 = load i32, i32* @FILE_PATH_CORE_THUMBNAILS_URL, align 4
  %119 = call i32 @file_path_str(i32 %118)
  %120 = call i32 @strlcpy(i8* %117, i32 %119, i32 2048)
  %121 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %122 = call i32 @strlcat(i8* %121, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 2048)
  %123 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %124 = load i8*, i8** %16, align 8
  %125 = call i32 @strlcat(i8* %123, i8* %124, i32 2048)
  %126 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %127 = call i32 @strlcat(i8* %126, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 2048)
  %128 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %129 = load i8*, i8** %15, align 8
  %130 = call i32 @strlcat(i8* %128, i8* %129, i32 2048)
  %131 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %132 = call i32 @strlcat(i8* %131, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 2048)
  %133 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %134 = load i8*, i8** %14, align 8
  %135 = call i32 @strlcat(i8* %133, i8* %134, i32 2048)
  %136 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %137 = call i64 @string_is_empty(i8* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %116
  store i32 0, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %150

140:                                              ; preds = %116
  %141 = load i8*, i8** %10, align 8
  %142 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i64 0, i64 0
  %143 = load i64, i64* %11, align 8
  %144 = call i32 @net_http_urlencode_full(i8* %141, i8* %142, i64 %143)
  %145 = load i8*, i8** %10, align 8
  %146 = call i64 @string_is_empty(i8* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %140
  store i32 0, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %150

149:                                              ; preds = %140
  store i32 1, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %150

150:                                              ; preds = %149, %148, %139, %115, %90, %74, %65, %58, %43, %36
  %151 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %151)
  %152 = load i32, i32* %6, align 4
  ret i32 %152
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @string_is_empty(i8*) #2

declare dso_local i32 @menu_thumbnail_get_system(i32, i8**) #2

declare dso_local i32 @menu_thumbnail_get_db_name(i32, i8**) #2

declare dso_local i32 @menu_thumbnail_get_img_name(i32, i8**) #2

declare dso_local i32 @menu_thumbnail_get_sub_directory(i32, i8**) #2

declare dso_local i64 @string_is_equal(i8*, i8*) #2

declare dso_local i32 @menu_thumbnail_get_content_dir(i32, i8*, i32) #2

declare dso_local i32 @fill_pathname_join(i8*, i8*, i8*, i64) #2

declare dso_local i32 @strlcpy(i8*, i32, i32) #2

declare dso_local i32 @file_path_str(i32) #2

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

declare dso_local i32 @net_http_urlencode_full(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
