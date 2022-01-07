; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_vid_pollux.c_vid_pollux_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_vid_pollux.c_vid_pollux_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_fix_screeninfo = type { i8*, i32 }

@.str = private unnamed_addr constant [9 x i8] c"/dev/fb0\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@fbdev = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"can't open fbdev\00", align 1
@FBIOGET_FSCREENINFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"ioctl(fbdev) failed\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"framebuffer: \22%s\22 @ %08lx\0A\00", align 1
@fb_paddr = common dso_local global i32* null, align 8
@FB_MEM_SIZE = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@memdev = common dso_local global i32 0, align 4
@gp2x_screens = common dso_local global i8** null, align 8
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"mmap(gp2x_screens) failed\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"  %p -> %08x\0A\00", align 1
@FB_BUF_COUNT = common dso_local global i32 0, align 4
@fb_work_buf = common dso_local global i64 0, align 8
@g_screen_ptr = common dso_local global i8* null, align 8
@gp2x_video_flip_ = common dso_local global i32 0, align 4
@gp2x_video_flip = common dso_local global i32 0, align 4
@gp2x_video_flip2_ = common dso_local global i32 0, align 4
@gp2x_video_flip2 = common dso_local global i32 0, align 4
@gp2x_video_changemode_ll_ = common dso_local global i32 0, align 4
@gp2x_video_changemode_ll = common dso_local global i32 0, align 4
@gp2x_video_setpalette_ = common dso_local global i32 0, align 4
@gp2x_video_setpalette = common dso_local global i32 0, align 4
@gp2x_video_RGB_setscaling_ = common dso_local global i32 0, align 4
@gp2x_video_RGB_setscaling = common dso_local global i32 0, align 4
@gp2x_video_wait_vsync_ = common dso_local global i32 0, align 4
@gp2x_video_wait_vsync = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vid_pollux_init() #0 {
  %1 = alloca %struct.fb_fix_screeninfo, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @O_RDWR, align 4
  %5 = call i64 @open(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %4)
  store i64 %5, i64* @fbdev, align 8
  %6 = load i64, i64* @fbdev, align 8
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = call i32 @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %10 = call i32 @exit(i32 1) #3
  unreachable

11:                                               ; preds = %0
  %12 = load i64, i64* @fbdev, align 8
  %13 = load i32, i32* @FBIOGET_FSCREENINFO, align 4
  %14 = call i32 @ioctl(i64 %12, i32 %13, %struct.fb_fix_screeninfo* %1)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = call i32 @perror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %19 = call i32 @exit(i32 1) #3
  unreachable

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %1, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %1, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %22, i32 %24)
  %26 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %1, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32*, i32** @fb_paddr, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @FB_MEM_SIZE, align 4
  %31 = load i32, i32* @PROT_READ, align 4
  %32 = load i32, i32* @PROT_WRITE, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @MAP_SHARED, align 4
  %35 = load i32, i32* @memdev, align 4
  %36 = load i32*, i32** @fb_paddr, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @mmap(i32 0, i32 %30, i32 %33, i32 %34, i32 %35, i32 %38)
  %40 = load i8**, i8*** @gp2x_screens, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 0
  store i8* %39, i8** %41, align 8
  %42 = load i8**, i8*** @gp2x_screens, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i8*, i8** @MAP_FAILED, align 8
  %46 = icmp eq i8* %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %20
  %48 = call i32 @perror(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %49 = call i32 @exit(i32 1) #3
  unreachable

50:                                               ; preds = %20
  %51 = load i8**, i8*** @gp2x_screens, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i32, i32* @FB_MEM_SIZE, align 4
  %55 = call i32 @memset(i8* %53, i32 0, i32 %54)
  %56 = load i8**, i8*** @gp2x_screens, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 0
  %58 = load i8*, i8** %57, align 8
  %59 = load i32*, i32** @fb_paddr, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %58, i32 %61)
  store i32 1, i32* %2, align 4
  br label %63

63:                                               ; preds = %101, %50
  %64 = load i32, i32* %2, align 4
  %65 = load i32, i32* @FB_BUF_COUNT, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %104

67:                                               ; preds = %63
  %68 = load i32*, i32** @fb_paddr, align 8
  %69 = load i32, i32* %2, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 153600
  %75 = load i32*, i32** @fb_paddr, align 8
  %76 = load i32, i32* %2, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %74, i32* %78, align 4
  %79 = load i8**, i8*** @gp2x_screens, align 8
  %80 = load i32, i32* %2, align 4
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %79, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 153600
  %86 = load i8**, i8*** @gp2x_screens, align 8
  %87 = load i32, i32* %2, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  store i8* %85, i8** %89, align 8
  %90 = load i8**, i8*** @gp2x_screens, align 8
  %91 = load i32, i32* %2, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %90, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = load i32*, i32** @fb_paddr, align 8
  %96 = load i32, i32* %2, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %94, i32 %99)
  br label %101

101:                                              ; preds = %67
  %102 = load i32, i32* %2, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %2, align 4
  br label %63

104:                                              ; preds = %63
  store i64 0, i64* @fb_work_buf, align 8
  %105 = load i8**, i8*** @gp2x_screens, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 0
  %107 = load i8*, i8** %106, align 8
  store i8* %107, i8** @g_screen_ptr, align 8
  %108 = load i32, i32* @gp2x_video_flip_, align 4
  store i32 %108, i32* @gp2x_video_flip, align 4
  %109 = load i32, i32* @gp2x_video_flip2_, align 4
  store i32 %109, i32* @gp2x_video_flip2, align 4
  %110 = load i32, i32* @gp2x_video_changemode_ll_, align 4
  store i32 %110, i32* @gp2x_video_changemode_ll, align 4
  %111 = load i32, i32* @gp2x_video_setpalette_, align 4
  store i32 %111, i32* @gp2x_video_setpalette, align 4
  %112 = load i32, i32* @gp2x_video_RGB_setscaling_, align 4
  store i32 %112, i32* @gp2x_video_RGB_setscaling, align 4
  %113 = load i32, i32* @gp2x_video_wait_vsync_, align 4
  store i32 %113, i32* @gp2x_video_wait_vsync, align 4
  ret void
}

declare dso_local i64 @open(i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @ioctl(i64, i32, %struct.fb_fix_screeninfo*) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i8* @mmap(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
