; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/tvservice/extr_tvservice.c_dump_edid.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/tvservice/extr_tvservice.c_dump_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Written %d bytes to %s\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Nothing written!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @dump_edid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_edid(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [128 x i32], align 16
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i32 0, i32* %7, align 4
  store i32* null, i32** %8, align 8
  %10 = load i64, i64* %5, align 8
  %11 = getelementptr inbounds [128 x i32], [128 x i32]* %3, i64 0, i64 0
  %12 = call i32 @vc_tv_hdmi_ddc_read(i64 %10, i32 512, i32* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i64, i64* %5, align 8
  %14 = add i64 %13, 512
  store i64 %14, i64* %5, align 8
  %15 = load i32, i32* %9, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp eq i64 %16, 512
  br i1 %17, label %18, label %55

18:                                               ; preds = %1
  %19 = load i8*, i8** %2, align 8
  %20 = call i32* @fopen(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %20, i32** %8, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %55

22:                                               ; preds = %18
  %23 = getelementptr inbounds [128 x i32], [128 x i32]* %3, i64 0, i64 0
  %24 = load i32*, i32** %8, align 8
  %25 = call i64 @fwrite(i32* %23, i32 1, i32 512, i32* %24)
  %26 = load i64, i64* %4, align 8
  %27 = add i64 %26, %25
  store i64 %27, i64* %4, align 8
  %28 = getelementptr inbounds [128 x i32], [128 x i32]* %3, i64 0, i64 126
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %49, %22
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %30
  %35 = load i64, i64* %5, align 8
  %36 = getelementptr inbounds [128 x i32], [128 x i32]* %3, i64 0, i64 0
  %37 = call i32 @vc_tv_hdmi_ddc_read(i64 %35, i32 512, i32* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = icmp eq i64 %39, 512
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = getelementptr inbounds [128 x i32], [128 x i32]* %3, i64 0, i64 0
  %43 = load i32*, i32** %8, align 8
  %44 = call i64 @fwrite(i32* %42, i32 1, i32 512, i32* %43)
  %45 = load i64, i64* %4, align 8
  %46 = add i64 %45, %44
  store i64 %46, i64* %4, align 8
  br label %48

47:                                               ; preds = %34
  br label %54

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  %52 = load i64, i64* %5, align 8
  %53 = add i64 %52, 512
  store i64 %53, i64* %5, align 8
  br label %30

54:                                               ; preds = %47, %30
  br label %55

55:                                               ; preds = %54, %18, %1
  %56 = load i32*, i32** %8, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @fclose(i32* %59)
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i64, i64* %4, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i64, i64* %4, align 8
  %66 = load i8*, i8** %2, align 8
  %67 = call i32 (i8*, ...) @LOG_STD(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %65, i8* %66)
  br label %70

68:                                               ; preds = %61
  %69 = call i32 (i8*, ...) @LOG_STD(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %64
  %71 = load i64, i64* %4, align 8
  %72 = icmp ult i64 %71, 512
  %73 = zext i1 %72 to i32
  ret i32 %73
}

declare dso_local i32 @vc_tv_hdmi_ddc_read(i64, i32, i32*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @fwrite(i32*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @LOG_STD(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
