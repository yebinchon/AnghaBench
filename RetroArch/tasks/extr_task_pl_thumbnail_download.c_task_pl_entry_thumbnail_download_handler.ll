; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_pl_thumbnail_download.c_task_pl_entry_thumbnail_download_handler.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_pl_thumbnail_download.c_task_pl_entry_thumbnail_download_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32 }

@MENU_THUMBNAIL_RIGHT = common dso_local global i32 0, align 4
@MENU_THUMBNAIL_LEFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @task_pl_entry_thumbnail_download_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @task_pl_entry_thumbnail_download_handler(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %8 = icmp ne %struct.TYPE_10__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %184

10:                                               ; preds = %1
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %3, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %16 = icmp ne %struct.TYPE_11__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  br label %178

18:                                               ; preds = %10
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %20 = call i64 @task_get_cancelled(%struct.TYPE_10__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %178

23:                                               ; preds = %18
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %174 [
    i32 130, label %27
    i32 128, label %130
    i32 129, label %173
  ]

27:                                               ; preds = %23
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %28 = call i32 (...) @menu_thumbnail_path_init()
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %27
  br label %178

36:                                               ; preds = %27
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 8
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @menu_thumbnail_set_system(i32 %39, i32 %42, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %36
  br label %178

49:                                               ; preds = %36
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @menu_thumbnail_set_content_playlist(i32 %52, i32 %55, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %49
  br label %178

62:                                               ; preds = %49
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  store i32 0, i32* %64, align 4
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @MENU_THUMBNAIL_RIGHT, align 4
  %69 = call i32 @menu_thumbnail_update_path(i32 %67, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %62
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @MENU_THUMBNAIL_RIGHT, align 4
  %76 = call i32 @menu_thumbnail_get_path(i32 %74, i32 %75, i8** %5)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %71
  %79 = load i8*, i8** %5, align 8
  %80 = call i8* @path_is_valid(i8* %79)
  %81 = ptrtoint i8* %80 to i32
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %78, %71
  br label %85

85:                                               ; preds = %84, %62
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 2
  store i32 0, i32* %87, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @MENU_THUMBNAIL_LEFT, align 4
  %92 = call i32 @menu_thumbnail_update_path(i32 %90, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %108

94:                                               ; preds = %85
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @MENU_THUMBNAIL_LEFT, align 4
  %99 = call i32 @menu_thumbnail_get_path(i32 %97, i32 %98, i8** %6)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %94
  %102 = load i8*, i8** %6, align 8
  %103 = call i8* @path_is_valid(i8* %102)
  %104 = ptrtoint i8* %103 to i32
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 8
  br label %107

107:                                              ; preds = %101, %94
  br label %108

108:                                              ; preds = %107, %85
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %110 = call i32 @task_free_title(%struct.TYPE_10__* %109)
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @menu_thumbnail_get_label(i32 %113, i8** %4)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %108
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %118 = load i8*, i8** %4, align 8
  %119 = call i32 @strdup(i8* %118)
  %120 = call i32 @task_set_title(%struct.TYPE_10__* %117, i32 %119)
  br label %125

121:                                              ; preds = %108
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %123 = call i32 @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %124 = call i32 @task_set_title(%struct.TYPE_10__* %122, i32 %123)
  br label %125

125:                                              ; preds = %121, %116
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %127 = call i32 @task_set_progress(%struct.TYPE_10__* %126, i32 0)
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  store i32 128, i32* %129, align 8
  br label %177

130:                                              ; preds = %23
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 4
  %133 = load i32*, i32** %132, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %135, label %146

135:                                              ; preds = %130
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 4
  %138 = load i32*, i32** %137, align 8
  %139 = call i32 @task_get_finished(i32* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %135
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 4
  store i32* null, i32** %143, align 8
  br label %145

144:                                              ; preds = %135
  br label %177

145:                                              ; preds = %141
  br label %146

146:                                              ; preds = %145, %130
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = icmp sgt i32 %149, 3
  br i1 %150, label %151, label %154

151:                                              ; preds = %146
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  store i32 129, i32* %153, align 8
  br label %177

154:                                              ; preds = %146
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = sub nsw i32 %158, 1
  %160 = mul nsw i32 %159, 100
  %161 = sdiv i32 %160, 3
  %162 = call i32 @task_set_progress(%struct.TYPE_10__* %155, i32 %161)
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %164 = icmp ne %struct.TYPE_11__* %163, null
  br i1 %164, label %165, label %168

165:                                              ; preds = %154
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %167 = call i32 @download_pl_thumbnail(%struct.TYPE_11__* %166)
  br label %168

168:                                              ; preds = %165, %154
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %170, align 4
  br label %177

173:                                              ; preds = %23
  br label %174

174:                                              ; preds = %23, %173
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %176 = call i32 @task_set_progress(%struct.TYPE_10__* %175, i32 100)
  br label %178

177:                                              ; preds = %168, %151, %144, %125
  br label %184

178:                                              ; preds = %174, %61, %48, %35, %22, %17
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %180 = icmp ne %struct.TYPE_10__* %179, null
  br i1 %180, label %181, label %184

181:                                              ; preds = %178
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %183 = call i32 @task_set_finished(%struct.TYPE_10__* %182, i32 1)
  br label %184

184:                                              ; preds = %9, %177, %181, %178
  ret void
}

declare dso_local i64 @task_get_cancelled(%struct.TYPE_10__*) #1

declare dso_local i32 @menu_thumbnail_path_init(...) #1

declare dso_local i32 @menu_thumbnail_set_system(i32, i32, i32) #1

declare dso_local i32 @menu_thumbnail_set_content_playlist(i32, i32, i32) #1

declare dso_local i32 @menu_thumbnail_update_path(i32, i32) #1

declare dso_local i32 @menu_thumbnail_get_path(i32, i32, i8**) #1

declare dso_local i8* @path_is_valid(i8*) #1

declare dso_local i32 @task_free_title(%struct.TYPE_10__*) #1

declare dso_local i32 @menu_thumbnail_get_label(i32, i8**) #1

declare dso_local i32 @task_set_title(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @task_set_progress(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @task_get_finished(i32*) #1

declare dso_local i32 @download_pl_thumbnail(%struct.TYPE_11__*) #1

declare dso_local i32 @task_set_finished(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
