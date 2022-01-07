; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/client/brcmjpeg/extr_brcmjpeg.c_brcmjpeg_create.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/client/brcmjpeg/extr_brcmjpeg.c_brcmjpeg_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i64 }

@BRCMJPEG_SUCCESS = common dso_local global i64 0, align 8
@BRCMJPEG_TYPE_ENCODER = common dso_local global i64 0, align 8
@brcmjpeg_encoder = common dso_local global %struct.TYPE_12__* null, align 8
@brcmjpeg_decoder = common dso_local global %struct.TYPE_12__* null, align 8
@once = common dso_local global i32 0, align 4
@brcmjpeg_init_once = common dso_local global i32 0, align 4
@BRCMJPEG_ERROR_NOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"brcmjpeg lock\00", align 1
@VCOS_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"brcmjpeg process lock\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"brcmjpeg sema\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @brcmjpeg_create(i64 %0, %struct.TYPE_12__** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_12__**, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_12__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_12__** %1, %struct.TYPE_12__*** %5, align 8
  %11 = load i64, i64* @BRCMJPEG_SUCCESS, align 8
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @BRCMJPEG_TYPE_ENCODER, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store %struct.TYPE_12__** @brcmjpeg_encoder, %struct.TYPE_12__*** %7, align 8
  br label %17

16:                                               ; preds = %2
  store %struct.TYPE_12__** @brcmjpeg_decoder, %struct.TYPE_12__*** %7, align 8
  br label %17

17:                                               ; preds = %16, %15
  %18 = load i32, i32* @brcmjpeg_init_once, align 4
  %19 = call i32 @vcos_once(i32* @once, i32 %18)
  %20 = call i32 (...) @LOCK()
  %21 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = icmp ne %struct.TYPE_12__* %22, null
  br i1 %23, label %95, label %24

24:                                               ; preds = %17
  %25 = call %struct.TYPE_12__* @calloc(i32 32, i32 1)
  %26 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  store %struct.TYPE_12__* %25, %struct.TYPE_12__** %26, align 8
  %27 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = icmp ne %struct.TYPE_12__* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = call i32 (...) @UNLOCK()
  %32 = load i64, i64* @BRCMJPEG_ERROR_NOMEM, align 8
  store i64 %32, i64* %3, align 8
  br label %146

33:                                               ; preds = %24
  %34 = load i64, i64* %4, align 8
  %35 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 5
  store i64 %34, i64* %37, align 8
  %38 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 4
  %41 = call i64 @vcos_mutex_create(i32* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %42 = load i64, i64* @VCOS_SUCCESS, align 8
  %43 = icmp ne i64 %41, %42
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %8, align 4
  %45 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 3
  %48 = call i64 @vcos_mutex_create(i32* %47, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i64, i64* @VCOS_SUCCESS, align 8
  %50 = icmp ne i64 %48, %49
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %9, align 4
  %52 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 2
  %55 = call i64 @vcos_semaphore_create(i32* %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %56 = load i64, i64* @VCOS_SUCCESS, align 8
  %57 = icmp ne i64 %55, %56
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %10, align 4
  %63 = or i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %94

65:                                               ; preds = %33
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 4
  %72 = call i32 @vcos_mutex_delete(i32* %71)
  br label %73

73:                                               ; preds = %68, %65
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 3
  %80 = call i32 @vcos_mutex_delete(i32* %79)
  br label %81

81:                                               ; preds = %76, %73
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 2
  %88 = call i32 @vcos_semaphore_delete(i32* %87)
  br label %89

89:                                               ; preds = %84, %81
  %90 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %91 = call i32 @free(%struct.TYPE_12__** %90)
  %92 = call i32 (...) @UNLOCK()
  %93 = load i64, i64* @BRCMJPEG_ERROR_NOMEM, align 8
  store i64 %93, i64* %3, align 8
  br label %146

94:                                               ; preds = %33
  br label %95

95:                                               ; preds = %94, %17
  %96 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4
  %101 = call i32 (...) @UNLOCK()
  %102 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %102, align 8
  %104 = call i32 @LOCK_COMP(%struct.TYPE_12__* %103)
  %105 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %130, label %110

110:                                              ; preds = %95
  %111 = load i64, i64* %4, align 8
  %112 = load i64, i64* @BRCMJPEG_TYPE_ENCODER, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %115, align 8
  %117 = call i64 @brcmjpeg_init_encoder(%struct.TYPE_12__* %116)
  store i64 %117, i64* %6, align 8
  br label %122

118:                                              ; preds = %110
  %119 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %119, align 8
  %121 = call i64 @brcmjpeg_init_decoder(%struct.TYPE_12__* %120)
  store i64 %121, i64* %6, align 8
  br label %122

122:                                              ; preds = %118, %114
  %123 = load i64, i64* %6, align 8
  %124 = load i64, i64* @BRCMJPEG_SUCCESS, align 8
  %125 = icmp eq i64 %123, %124
  %126 = zext i1 %125 to i32
  %127 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  store i32 %126, i32* %129, align 8
  br label %130

130:                                              ; preds = %122, %95
  %131 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %131, align 8
  %133 = call i32 @UNLOCK_COMP(%struct.TYPE_12__* %132)
  %134 = load i64, i64* %6, align 8
  %135 = load i64, i64* @BRCMJPEG_SUCCESS, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %130
  %138 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %138, align 8
  %140 = call i32 @brcmjpeg_release(%struct.TYPE_12__* %139)
  br label %141

141:                                              ; preds = %137, %130
  %142 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %142, align 8
  %144 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  store %struct.TYPE_12__* %143, %struct.TYPE_12__** %144, align 8
  %145 = load i64, i64* %6, align 8
  store i64 %145, i64* %3, align 8
  br label %146

146:                                              ; preds = %141, %89, %30
  %147 = load i64, i64* %3, align 8
  ret i64 %147
}

declare dso_local i32 @vcos_once(i32*, i32) #1

declare dso_local i32 @LOCK(...) #1

declare dso_local %struct.TYPE_12__* @calloc(i32, i32) #1

declare dso_local i32 @UNLOCK(...) #1

declare dso_local i64 @vcos_mutex_create(i32*, i8*) #1

declare dso_local i64 @vcos_semaphore_create(i32*, i8*, i32) #1

declare dso_local i32 @vcos_mutex_delete(i32*) #1

declare dso_local i32 @vcos_semaphore_delete(i32*) #1

declare dso_local i32 @free(%struct.TYPE_12__**) #1

declare dso_local i32 @LOCK_COMP(%struct.TYPE_12__*) #1

declare dso_local i64 @brcmjpeg_init_encoder(%struct.TYPE_12__*) #1

declare dso_local i64 @brcmjpeg_init_decoder(%struct.TYPE_12__*) #1

declare dso_local i32 @UNLOCK_COMP(%struct.TYPE_12__*) #1

declare dso_local i32 @brcmjpeg_release(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
