; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/libs/vgfont/extr_font.c_gx_priv_font_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/libs/vgfont/extr_font.c_gx_priv_font_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i64, i32 }

@VCOS_ENOMEM = common dso_local global i32 0, align 4
@fname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@default_font = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Could not open font file '%s'\00", align 1
@VCOS_ENOENT = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"No memory for font %s\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Could not read font %s\00", align 1
@VCOS_EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"Opened font file '%s'\00", align 1
@inited = common dso_local global i32 0, align 4
@VCOS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gx_priv_font_init(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = call i64 (...) @vgft_init()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @VCOS_ENOMEM, align 4
  store i32 %11, i32* %4, align 4
  br label %74

12:                                               ; preds = %1
  store i32 -1, i32* %7, align 4
  %13 = load i8*, i8** @fname, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_font, i32 0, i32 0), align 8
  %16 = call i32 @sprintf(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %14, i8* %15)
  %17 = load i8*, i8** @fname, align 8
  %18 = load i32, i32* @O_RDONLY, align 4
  %19 = call i32 @open(i8* %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %12
  %23 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_font, i32 0, i32 0), align 8
  %24 = call i32 @GX_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %25 = load i32, i32* @VCOS_ENOENT, align 4
  store i32 %25, i32* %4, align 4
  br label %72

26:                                               ; preds = %12
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @SEEK_END, align 4
  %29 = call i64 @lseek(i32 %27, i32 0, i32 %28)
  store i64 %29, i64* %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @SEEK_SET, align 4
  %32 = call i64 @lseek(i32 %30, i32 0, i32 %31)
  %33 = load i64, i64* %5, align 8
  %34 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_font, i32 0, i32 0), align 8
  %35 = call i32 @vcos_malloc(i64 %33, i8* %34)
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_font, i32 0, i32 2), align 8
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_font, i32 0, i32 2), align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %26
  %39 = load i8*, i8** @fname, align 8
  %40 = call i32 @GX_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %39)
  %41 = load i32, i32* @VCOS_ENOMEM, align 4
  store i32 %41, i32* %4, align 4
  br label %65

42:                                               ; preds = %26
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_font, i32 0, i32 2), align 8
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @read(i32 %43, i32 %44, i64 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* %5, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load i8*, i8** @fname, align 8
  %53 = call i32 @GX_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %52)
  %54 = load i32, i32* @VCOS_EINVAL, align 4
  store i32 %54, i32* %4, align 4
  br label %62

55:                                               ; preds = %42
  %56 = load i64, i64* %5, align 8
  store i64 %56, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_font, i32 0, i32 1), align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @close(i32 %57)
  %59 = load i8*, i8** @fname, align 8
  %60 = call i32 @GX_TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %59)
  store i32 1, i32* @inited, align 4
  %61 = load i32, i32* @VCOS_SUCCESS, align 4
  store i32 %61, i32* %2, align 4
  br label %76

62:                                               ; preds = %51
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_font, i32 0, i32 2), align 8
  %64 = call i32 @vcos_free(i32 %63)
  br label %65

65:                                               ; preds = %62, %38
  %66 = load i32, i32* %7, align 4
  %67 = icmp sge i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @close(i32 %69)
  br label %71

71:                                               ; preds = %68, %65
  br label %72

72:                                               ; preds = %71, %22
  %73 = call i32 (...) @vgft_term()
  br label %74

74:                                               ; preds = %72, %10
  %75 = load i32, i32* %4, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %74, %55
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i64 @vgft_init(...) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @GX_ERROR(i8*, i8*) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i32 @vcos_malloc(i64, i8*) #1

declare dso_local i32 @read(i32, i32, i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @GX_TRACE(i8*, i8*) #1

declare dso_local i32 @vcos_free(i32) #1

declare dso_local i32 @vgft_term(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
