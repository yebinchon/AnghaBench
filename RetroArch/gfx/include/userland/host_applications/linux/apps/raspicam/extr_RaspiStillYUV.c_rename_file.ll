; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiStillYUV.c_rename_file.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiStillYUV.c_rename_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [38 x i8] c"Could not rename temp file to: %s; %s\00", align 1
@errno = common dso_local global i32 0, align 4
@MMAL_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Could not link as filename: %s; %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i8*, i8*, i32)* @rename_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rename_file(%struct.TYPE_3__* %0, i32* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @fclose(i32* %14)
  %16 = load i8*, i8** %9, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br label %21

21:                                               ; preds = %18, %5
  %22 = phi i1 [ false, %5 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @vcos_assert(i32 %23)
  %25 = load i8*, i8** %9, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call i64 @rename(i8* %25, i8* %26)
  %28 = icmp ne i64 0, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* @errno, align 4
  %32 = call i32 @strerror(i32 %31)
  %33 = call i32 @vcos_log_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %30, i32 %32)
  br label %34

34:                                               ; preds = %29, %21
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %83

39:                                               ; preds = %34
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @create_filenames(i8** %13, i8** %12, i8* %42, i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @MMAL_SUCCESS, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %63, label %48

48:                                               ; preds = %39
  %49 = load i8*, i8** %8, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = call i64 @link(i8* %49, i8* %50)
  %52 = icmp ne i64 0, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i8*, i8** %8, align 8
  %55 = load i8*, i8** %12, align 8
  %56 = call i64 @symlink(i8* %54, i8* %55)
  %57 = icmp ne i64 0, %56
  br i1 %57, label %63, label %58

58:                                               ; preds = %53, %48
  %59 = load i8*, i8** %12, align 8
  %60 = load i8*, i8** %13, align 8
  %61 = call i64 @rename(i8* %59, i8* %60)
  %62 = icmp ne i64 0, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %58, %53, %39
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load i32, i32* @errno, align 4
  %68 = call i32 @strerror(i32 %67)
  %69 = call i32 @vcos_log_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %66, i32 %68)
  br label %70

70:                                               ; preds = %63, %58
  %71 = load i8*, i8** %12, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i8*, i8** %12, align 8
  %75 = call i32 @free(i8* %74)
  br label %76

76:                                               ; preds = %73, %70
  %77 = load i8*, i8** %13, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i8*, i8** %13, align 8
  %81 = call i32 @free(i8* %80)
  br label %82

82:                                               ; preds = %79, %76
  br label %83

83:                                               ; preds = %82, %34
  ret void
}

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i64 @rename(i8*, i8*) #1

declare dso_local i32 @vcos_log_error(i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @create_filenames(i8**, i8**, i8*, i32) #1

declare dso_local i64 @link(i8*, i8*) #1

declare dso_local i64 @symlink(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
