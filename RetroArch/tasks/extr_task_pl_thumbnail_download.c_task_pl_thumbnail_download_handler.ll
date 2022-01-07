; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_pl_thumbnail_download.c_task_pl_thumbnail_download_handler.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_pl_thumbnail_download.c_task_pl_thumbnail_download_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32 }

@COLLECTION_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @task_pl_thumbnail_download_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @task_pl_thumbnail_download_handler(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %6 = icmp ne %struct.TYPE_11__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %199

8:                                                ; preds = %1
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %3, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %14 = icmp ne %struct.TYPE_12__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %8
  br label %199

16:                                               ; preds = %8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %18 = call i64 @task_get_cancelled(%struct.TYPE_11__* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %199

21:                                               ; preds = %16
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %195 [
    i32 131, label %25
    i32 129, label %82
    i32 128, label %143
    i32 130, label %194
  ]

25:                                               ; preds = %21
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 8
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @path_is_valid(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %199

32:                                               ; preds = %25
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 8
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @COLLECTION_SIZE, align 4
  %37 = call i32 @playlist_init(i32 %35, i32 %36)
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 4
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %32
  br label %199

45:                                               ; preds = %32
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @playlist_size(i32 %48)
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %54, 1
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  br label %199

57:                                               ; preds = %45
  %58 = call i32 (...) @menu_thumbnail_path_init()
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %57
  br label %199

66:                                               ; preds = %57
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @menu_thumbnail_set_system(i32 %69, i32 %72, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %66
  br label %199

79:                                               ; preds = %66
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  store i32 129, i32* %81, align 8
  br label %198

82:                                               ; preds = %21
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @menu_thumbnail_set_content_playlist(i32 %85, i32 %88, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %126

94:                                               ; preds = %82
  store i8* null, i8** %4, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %96 = call i32 @task_free_title(%struct.TYPE_11__* %95)
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @menu_thumbnail_get_label(i32 %99, i8** %4)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %94
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %104 = load i8*, i8** %4, align 8
  %105 = call i32 @strdup(i8* %104)
  %106 = call i32 @task_set_title(%struct.TYPE_11__* %103, i32 %105)
  br label %111

107:                                              ; preds = %94
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %109 = call i32 @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %110 = call i32 @task_set_title(%struct.TYPE_11__* %108, i32 %109)
  br label %111

111:                                              ; preds = %107, %102
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = mul nsw i32 %115, 100
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = sdiv i32 %116, %119
  %121 = call i32 @task_set_progress(%struct.TYPE_11__* %112, i32 %120)
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 3
  store i32 1, i32* %123, align 4
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  store i32 128, i32* %125, align 8
  br label %142

126:                                              ; preds = %82
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 8
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp sge i32 %133, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %126
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  store i32 130, i32* %140, align 8
  br label %141

141:                                              ; preds = %138, %126
  br label %142

142:                                              ; preds = %141, %111
  br label %198

143:                                              ; preds = %21
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 4
  %146 = load i32*, i32** %145, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %148, label %159

148:                                              ; preds = %143
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 4
  %151 = load i32*, i32** %150, align 8
  %152 = call i32 @task_get_finished(i32* %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %148
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 4
  store i32* null, i32** %156, align 8
  br label %158

157:                                              ; preds = %148
  br label %198

158:                                              ; preds = %154
  br label %159

159:                                              ; preds = %158, %143
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = icmp sgt i32 %162, 3
  br i1 %163, label %164, label %183

164:                                              ; preds = %159
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 8
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = icmp slt i32 %171, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %164
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  store i32 129, i32* %178, align 8
  br label %182

179:                                              ; preds = %164
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 0
  store i32 130, i32* %181, align 8
  br label %182

182:                                              ; preds = %179, %176
  br label %198

183:                                              ; preds = %159
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %185 = icmp ne %struct.TYPE_12__* %184, null
  br i1 %185, label %186, label %189

186:                                              ; preds = %183
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %188 = call i32 @download_pl_thumbnail(%struct.TYPE_12__* %187)
  br label %189

189:                                              ; preds = %186, %183
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %191, align 4
  br label %198

194:                                              ; preds = %21
  br label %195

195:                                              ; preds = %21, %194
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %197 = call i32 @task_set_progress(%struct.TYPE_11__* %196, i32 100)
  br label %199

198:                                              ; preds = %189, %182, %157, %142, %79
  br label %208

199:                                              ; preds = %195, %78, %65, %56, %44, %31, %20, %15, %7
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %201 = icmp ne %struct.TYPE_11__* %200, null
  br i1 %201, label %202, label %205

202:                                              ; preds = %199
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %204 = call i32 @task_set_finished(%struct.TYPE_11__* %203, i32 1)
  br label %205

205:                                              ; preds = %202, %199
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %207 = call i32 @free_pl_thumb_handle(%struct.TYPE_12__* %206, i32 1)
  br label %208

208:                                              ; preds = %205, %198
  ret void
}

declare dso_local i64 @task_get_cancelled(%struct.TYPE_11__*) #1

declare dso_local i32 @path_is_valid(i32) #1

declare dso_local i32 @playlist_init(i32, i32) #1

declare dso_local i32 @playlist_size(i32) #1

declare dso_local i32 @menu_thumbnail_path_init(...) #1

declare dso_local i32 @menu_thumbnail_set_system(i32, i32, i32) #1

declare dso_local i32 @menu_thumbnail_set_content_playlist(i32, i32, i32) #1

declare dso_local i32 @task_free_title(%struct.TYPE_11__*) #1

declare dso_local i32 @menu_thumbnail_get_label(i32, i8**) #1

declare dso_local i32 @task_set_title(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @task_set_progress(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @task_get_finished(i32*) #1

declare dso_local i32 @download_pl_thumbnail(%struct.TYPE_12__*) #1

declare dso_local i32 @task_set_finished(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @free_pl_thumb_handle(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
