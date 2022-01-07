; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_egl_common.c_egl_init_context.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_egl_common.c_egl_init_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64 }

@EGL_NO_DISPLAY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"[EGL]: Couldn't get EGL display.\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"[EGL]: EGL version: %d.%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"[EGL]: No configs to choose from.\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"[EGL]: No EGL configs with appropriate attributes.\0A\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"[EGL]: No EGL config found which satifies requirements.\0A\00", align 1
@g_egl_major = common dso_local global i32 0, align 4
@g_egl_minor = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @egl_init_context(%struct.TYPE_3__* %0, i32 %1, i8* %2, i32* %3, i32* %4, i32* %5, i32* %6, i64 (i8*, i64, i32)* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64 (i8*, i64, i32)*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %10, align 8
  store i32 %1, i32* %11, align 4
  store i8* %2, i8** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i64 (i8*, i64, i32)* %7, i64 (i8*, i64, i32)** %17, align 8
  store i32* null, i32** %19, align 8
  store i32 0, i32* %20, align 4
  store i32 -1, i32* %21, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i8*, i8** %12, align 8
  %25 = call i64 @get_egl_display(i32 %23, i8* %24)
  store i64 %25, i64* %22, align 8
  %26 = load i64, i64* %22, align 8
  %27 = load i64, i64* @EGL_NO_DISPLAY, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %8
  %30 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %137

31:                                               ; preds = %8
  %32 = load i64, i64* %22, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 3
  store i64 %32, i64* %34, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load i32*, i32** %13, align 8
  %39 = load i32*, i32** %14, align 8
  %40 = call i32 @eglInitialize(i64 %37, i32* %38, i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %31
  store i32 0, i32* %9, align 4
  br label %137

43:                                               ; preds = %31
  %44 = load i32*, i32** %13, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %14, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %47)
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load i32*, i32** %15, align 8
  %53 = call i32 @eglGetConfigs(i64 %51, i32* null, i32 0, i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %43
  %56 = load i32*, i32** %15, align 8
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %57, 1
  br i1 %58, label %59, label %61

59:                                               ; preds = %55, %43
  %60 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %137

61:                                               ; preds = %55
  %62 = load i32*, i32** %15, align 8
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 4
  %66 = trunc i64 %65 to i32
  %67 = call i64 @malloc(i32 %66)
  %68 = inttoptr i64 %67 to i32*
  store i32* %68, i32** %19, align 8
  %69 = load i32*, i32** %19, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %61
  store i32 0, i32* %9, align 4
  br label %137

72:                                               ; preds = %61
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = load i32*, i32** %16, align 8
  %77 = load i32*, i32** %19, align 8
  %78 = load i32*, i32** %15, align 8
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @eglChooseConfig(i64 %75, i32* %76, i32* %77, i32 %79, i32* %20)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %72
  %83 = load i32, i32* %20, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %82, %72
  %86 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %137

87:                                               ; preds = %82
  store i32 0, i32* %18, align 4
  br label %88

88:                                               ; preds = %118, %87
  %89 = load i32, i32* %18, align 4
  %90 = load i32*, i32** %15, align 8
  %91 = load i32, i32* %90, align 4
  %92 = icmp slt i32 %89, %91
  br i1 %92, label %93, label %121

93:                                               ; preds = %88
  %94 = load i64 (i8*, i64, i32)*, i64 (i8*, i64, i32)** %17, align 8
  %95 = icmp ne i64 (i8*, i64, i32)* %94, null
  br i1 %95, label %96, label %109

96:                                               ; preds = %93
  %97 = load i64 (i8*, i64, i32)*, i64 (i8*, i64, i32)** %17, align 8
  %98 = load i8*, i8** %12, align 8
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = load i32*, i32** %19, align 8
  %103 = load i32, i32* %18, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i64 %97(i8* %98, i64 %101, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %96, %93
  %110 = load i32*, i32** %19, align 8
  %111 = load i32, i32* %18, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  br label %121

117:                                              ; preds = %96
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %18, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %18, align 4
  br label %88

121:                                              ; preds = %109, %88
  %122 = load i32*, i32** %19, align 8
  %123 = call i32 @free(i32* %122)
  %124 = load i32, i32* %18, align 4
  %125 = load i32*, i32** %15, align 8
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %124, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %121
  %129 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %137

130:                                              ; preds = %121
  %131 = load i32, i32* @g_egl_major, align 4
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* @g_egl_minor, align 4
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  store i32 1, i32* %9, align 4
  br label %137

137:                                              ; preds = %130, %128, %85, %71, %59, %42, %29
  %138 = load i32, i32* %9, align 4
  ret i32 %138
}

declare dso_local i64 @get_egl_display(i32, i8*) #1

declare dso_local i32 @RARCH_ERR(i8*) #1

declare dso_local i32 @eglInitialize(i64, i32*, i32*) #1

declare dso_local i32 @RARCH_LOG(i8*, i32, i32) #1

declare dso_local i32 @eglGetConfigs(i64, i32*, i32, i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @eglChooseConfig(i64, i32*, i32*, i32, i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
