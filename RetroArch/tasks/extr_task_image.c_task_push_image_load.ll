; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_image.c_task_push_image_load.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_image.c_task_push_image_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8*, i32, i32, i32, %struct.TYPE_8__*, %struct.nbio_image_handle*, i32, i32, i64, i32*, i32*, i32*, i64, i32 }
%struct.nbio_image_handle = type { i32, i32, i32, i32, i32, %struct.TYPE_7__, i32*, i64, i64, i64, i32 }
%struct.TYPE_7__ = type { i32, i32*, i64, i64 }

@NBIO_TYPE_NONE = common dso_local global i32 0, align 4
@NBIO_STATUS_INIT = common dso_local global i32 0, align 4
@cb_nbio_image_thumbnail = common dso_local global i32 0, align 4
@NBIO_FLAG_IMAGE_SUPPORTS_RGBA = common dso_local global i32 0, align 4
@IMAGE_TYPE_NONE = common dso_local global i32 0, align 4
@IMAGE_STATUS_WAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c".png\00", align 1
@NBIO_TYPE_PNG = common dso_local global i32 0, align 4
@IMAGE_TYPE_PNG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c".jpeg\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".jpg\00", align 1
@NBIO_TYPE_JPEG = common dso_local global i32 0, align 4
@IMAGE_TYPE_JPEG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c".bmp\00", align 1
@NBIO_TYPE_BMP = common dso_local global i32 0, align 4
@IMAGE_TYPE_BMP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c".tga\00", align 1
@NBIO_TYPE_TGA = common dso_local global i32 0, align 4
@IMAGE_TYPE_TGA = common dso_local global i32 0, align 4
@task_file_load_handler = common dso_local global i32 0, align 4
@task_image_load_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @task_push_image_load(i8* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca %struct.nbio_image_handle*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %12, align 8
  store %struct.nbio_image_handle* null, %struct.nbio_image_handle** %13, align 8
  %15 = call %struct.TYPE_8__* (...) @task_init()
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %14, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %17 = icmp ne %struct.TYPE_8__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %177

19:                                               ; preds = %5
  %20 = call i64 @malloc(i32 104)
  %21 = inttoptr i64 %20 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %12, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %23 = icmp ne %struct.TYPE_8__* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %26 = call i32 @free(%struct.TYPE_8__* %25)
  store i32 0, i32* %6, align 4
  br label %177

27:                                               ; preds = %19
  %28 = load i32, i32* @NBIO_TYPE_NONE, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 7
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = load i32, i32* @NBIO_STATUS_INIT, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 14
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 13
  store i64 0, i64* %37, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 9
  store i64 0, i64* %39, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 6
  store %struct.nbio_image_handle* null, %struct.nbio_image_handle** %41, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 12
  store i32* null, i32** %43, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 11
  store i32* null, i32** %45, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 10
  store i32* @cb_nbio_image_thumbnail, i32** %47, align 8
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %27
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 9
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* @NBIO_FLAG_IMAGE_SUPPORTS_RGBA, align 4
  %55 = call i32 @BIT32_SET(i64 %53, i32 %54)
  br label %56

56:                                               ; preds = %50, %27
  %57 = call i64 @malloc(i32 96)
  %58 = inttoptr i64 %57 to %struct.nbio_image_handle*
  store %struct.nbio_image_handle* %58, %struct.nbio_image_handle** %13, align 8
  %59 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %13, align 8
  %60 = icmp ne %struct.nbio_image_handle* %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %63 = call i32 @free(%struct.TYPE_8__* %62)
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %65 = call i32 @free(%struct.TYPE_8__* %64)
  store i32 0, i32* %6, align 4
  br label %177

66:                                               ; preds = %56
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @strdup(i8* %67)
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 8
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @IMAGE_TYPE_NONE, align 4
  %72 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %13, align 8
  %73 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* @IMAGE_STATUS_WAIT, align 4
  %75 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %13, align 8
  %76 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %75, i32 0, i32 10
  store i32 %74, i32* %76, align 8
  %77 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %13, align 8
  %78 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %77, i32 0, i32 0
  store i32 0, i32* %78, align 8
  %79 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %13, align 8
  %80 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %79, i32 0, i32 1
  store i32 0, i32* %80, align 4
  %81 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %13, align 8
  %82 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %81, i32 0, i32 2
  store i32 0, i32* %82, align 8
  %83 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %13, align 8
  %84 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %83, i32 0, i32 9
  store i64 0, i64* %84, align 8
  %85 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %13, align 8
  %86 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %85, i32 0, i32 8
  store i64 0, i64* %86, align 8
  %87 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %13, align 8
  %88 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %87, i32 0, i32 7
  store i64 0, i64* %88, align 8
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %13, align 8
  %91 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 4
  %92 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %13, align 8
  %93 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %92, i32 0, i32 6
  store i32* null, i32** %93, align 8
  %94 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %13, align 8
  %95 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %94, i32 0, i32 5
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 3
  store i64 0, i64* %96, align 8
  %97 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %13, align 8
  %98 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %97, i32 0, i32 5
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 2
  store i64 0, i64* %99, align 8
  %100 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %13, align 8
  %101 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %100, i32 0, i32 5
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  store i32* null, i32** %102, align 8
  %103 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %13, align 8
  %104 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %103, i32 0, i32 5
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  store i32 0, i32* %105, align 8
  %106 = load i8*, i8** %7, align 8
  %107 = call i64 @strstr(i8* %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %66
  %110 = load i32, i32* @NBIO_TYPE_PNG, align 4
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 7
  store i32 %110, i32* %112, align 8
  %113 = load i32, i32* @IMAGE_TYPE_PNG, align 4
  %114 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %13, align 8
  %115 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %114, i32 0, i32 4
  store i32 %113, i32* %115, align 8
  br label %156

116:                                              ; preds = %66
  %117 = load i8*, i8** %7, align 8
  %118 = call i64 @strstr(i8* %117, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %116
  %121 = load i8*, i8** %7, align 8
  %122 = call i64 @strstr(i8* %121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %120, %116
  %125 = load i32, i32* @NBIO_TYPE_JPEG, align 4
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 7
  store i32 %125, i32* %127, align 8
  %128 = load i32, i32* @IMAGE_TYPE_JPEG, align 4
  %129 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %13, align 8
  %130 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %129, i32 0, i32 4
  store i32 %128, i32* %130, align 8
  br label %155

131:                                              ; preds = %120
  %132 = load i8*, i8** %7, align 8
  %133 = call i64 @strstr(i8* %132, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %131
  %136 = load i32, i32* @NBIO_TYPE_BMP, align 4
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 7
  store i32 %136, i32* %138, align 8
  %139 = load i32, i32* @IMAGE_TYPE_BMP, align 4
  %140 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %13, align 8
  %141 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %140, i32 0, i32 4
  store i32 %139, i32* %141, align 8
  br label %154

142:                                              ; preds = %131
  %143 = load i8*, i8** %7, align 8
  %144 = call i64 @strstr(i8* %143, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %142
  %147 = load i32, i32* @NBIO_TYPE_TGA, align 4
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 7
  store i32 %147, i32* %149, align 8
  %150 = load i32, i32* @IMAGE_TYPE_TGA, align 4
  %151 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %13, align 8
  %152 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %151, i32 0, i32 4
  store i32 %150, i32* %152, align 8
  br label %153

153:                                              ; preds = %146, %142
  br label %154

154:                                              ; preds = %153, %135
  br label %155

155:                                              ; preds = %154, %124
  br label %156

156:                                              ; preds = %155, %109
  %157 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %13, align 8
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 6
  store %struct.nbio_image_handle* %157, %struct.nbio_image_handle** %159, align 8
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 5
  store %struct.TYPE_8__* %160, %struct.TYPE_8__** %162, align 8
  %163 = load i32, i32* @task_file_load_handler, align 4
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 4
  store i32 %163, i32* %165, align 8
  %166 = load i32, i32* @task_image_load_free, align 4
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 3
  store i32 %166, i32* %168, align 4
  %169 = load i32, i32* %10, align 4
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 2
  store i32 %169, i32* %171, align 8
  %172 = load i8*, i8** %11, align 8
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 1
  store i8* %172, i8** %174, align 8
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %176 = call i32 @task_queue_push(%struct.TYPE_8__* %175)
  store i32 1, i32* %6, align 4
  br label %177

177:                                              ; preds = %156, %61, %24, %18
  %178 = load i32, i32* %6, align 4
  ret i32 %178
}

declare dso_local %struct.TYPE_8__* @task_init(...) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

declare dso_local i32 @BIT32_SET(i64, i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @task_queue_push(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
