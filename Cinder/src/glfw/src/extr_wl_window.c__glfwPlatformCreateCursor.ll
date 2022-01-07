; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_wl_window.c__glfwPlatformCreateCursor.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_wl_window.c__glfwPlatformCreateCursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i64 }
%struct.wl_shm_pool = type { i32 }

@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Wayland: Creating a buffer file for %d B failed: %m\00", align 1
@GLFW_FALSE = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Wayland: Cursor mmap failed: %m\00", align 1
@_glfw = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@WL_SHM_FORMAT_ARGB8888 = common dso_local global i32 0, align 4
@GLFW_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_glfwPlatformCreateCursor(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.wl_shm_pool*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = mul nsw i32 %21, 4
  store i32 %22, i32* %11, align 4
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %25, %28
  %30 = mul nsw i32 %29, 4
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @createAnonymousFile(i32 %31)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %4
  %36 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %37 = load i32, i32* %12, align 4
  %38 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %36, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %39, i32* %5, align 4
  br label %163

40:                                               ; preds = %4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @PROT_READ, align 4
  %43 = load i32, i32* @PROT_WRITE, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @MAP_SHARED, align 4
  %46 = load i32, i32* %14, align 4
  %47 = call i8* @mmap(i32* null, i32 %41, i32 %44, i32 %45, i32 %46, i32 0)
  store i8* %47, i8** %13, align 8
  %48 = load i8*, i8** %13, align 8
  %49 = load i8*, i8** @MAP_FAILED, align 8
  %50 = icmp eq i8* %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %40
  %52 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %53 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %52, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* %14, align 4
  %55 = call i32 @close(i32 %54)
  %56 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %56, i32* %5, align 4
  br label %163

57:                                               ; preds = %40
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0, i32 0), align 4
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %12, align 4
  %61 = call %struct.wl_shm_pool* @wl_shm_create_pool(i32 %58, i32 %59, i32 %60)
  store %struct.wl_shm_pool* %61, %struct.wl_shm_pool** %10, align 8
  %62 = load i32, i32* %14, align 4
  %63 = call i32 @close(i32 %62)
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i8*
  store i8* %67, i8** %16, align 8
  %68 = load i8*, i8** %13, align 8
  store i8* %68, i8** %17, align 8
  store i32 0, i32* %15, align 4
  br label %69

69:                                               ; preds = %118, %57
  %70 = load i32, i32* %15, align 4
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = mul nsw i32 %73, %76
  %78 = icmp slt i32 %70, %77
  br i1 %78, label %79, label %123

79:                                               ; preds = %69
  %80 = load i8*, i8** %16, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 3
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  store i32 %83, i32* %18, align 4
  %84 = load i8*, i8** %16, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 2
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = load i32, i32* %18, align 4
  %89 = mul i32 %87, %88
  %90 = udiv i32 %89, 255
  %91 = trunc i32 %90 to i8
  %92 = load i8*, i8** %17, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %17, align 8
  store i8 %91, i8* %92, align 1
  %94 = load i8*, i8** %16, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = load i32, i32* %18, align 4
  %99 = mul i32 %97, %98
  %100 = udiv i32 %99, 255
  %101 = trunc i32 %100 to i8
  %102 = load i8*, i8** %17, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %17, align 8
  store i8 %101, i8* %102, align 1
  %104 = load i8*, i8** %16, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 0
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = load i32, i32* %18, align 4
  %109 = mul i32 %107, %108
  %110 = udiv i32 %109, 255
  %111 = trunc i32 %110 to i8
  %112 = load i8*, i8** %17, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %17, align 8
  store i8 %111, i8* %112, align 1
  %114 = load i32, i32* %18, align 4
  %115 = trunc i32 %114 to i8
  %116 = load i8*, i8** %17, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %17, align 8
  store i8 %115, i8* %116, align 1
  br label %118

118:                                              ; preds = %79
  %119 = load i32, i32* %15, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %15, align 4
  %121 = load i8*, i8** %16, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 4
  store i8* %122, i8** %16, align 8
  br label %69

123:                                              ; preds = %69
  %124 = load %struct.wl_shm_pool*, %struct.wl_shm_pool** %10, align 8
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* @WL_SHM_FORMAT_ARGB8888, align 4
  %133 = call i32 @wl_shm_pool_create_buffer(%struct.wl_shm_pool* %124, i32 0, i32 %127, i32 %130, i32 %131, i32 %132)
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 4
  store i32 %133, i32* %136, align 4
  %137 = load i8*, i8** %13, align 8
  %138 = load i32, i32* %12, align 4
  %139 = call i32 @munmap(i8* %137, i32 %138)
  %140 = load %struct.wl_shm_pool*, %struct.wl_shm_pool** %10, align 8
  %141 = call i32 @wl_shm_pool_destroy(%struct.wl_shm_pool* %140)
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  store i32 %144, i32* %147, align 4
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 1
  store i32 %150, i32* %153, align 4
  %154 = load i32, i32* %8, align 4
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 2
  store i32 %154, i32* %157, align 4
  %158 = load i32, i32* %9, align 4
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 3
  store i32 %158, i32* %161, align 4
  %162 = load i32, i32* @GLFW_TRUE, align 4
  store i32 %162, i32* %5, align 4
  br label %163

163:                                              ; preds = %123, %51, %35
  %164 = load i32, i32* %5, align 4
  ret i32 %164
}

declare dso_local i32 @createAnonymousFile(i32) #1

declare dso_local i32 @_glfwInputError(i32, i8*, ...) #1

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local %struct.wl_shm_pool* @wl_shm_create_pool(i32, i32, i32) #1

declare dso_local i32 @wl_shm_pool_create_buffer(%struct.wl_shm_pool*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @munmap(i8*, i32) #1

declare dso_local i32 @wl_shm_pool_destroy(%struct.wl_shm_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
