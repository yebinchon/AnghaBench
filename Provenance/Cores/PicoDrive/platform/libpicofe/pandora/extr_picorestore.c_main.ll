; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/pandora/extr_picorestore.c_main.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/pandora/extr_picorestore.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omapfb_plane_info = type { i64, i64, i64 }
%struct.fb_var_screeninfo = type { i64, i64, i64 }
%struct.omapfb_mem_info = type { i64, i64, i64 }

@.str = private unnamed_addr constant [9 x i8] c"/dev/fb0\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"open fb0\00", align 1
@FBIOGET_VSCREENINFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"FBIOGET_VSCREENINFO ioctl\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"fixing yoffset.. \00", align 1
@FBIOPAN_DISPLAY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"ioctl FBIOPAN_DISPLAY\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ok\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"/dev/fb1\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"open fb1\00", align 1
@OMAPFB_QUERY_PLANE = common dso_local global i32 0, align 4
@OMAPFB_QUERY_MEM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"QUERY_*\00", align 1
@OMAPFB_SETUP_PLANE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"SETUP_PLANE\00", align 1
@OMAPFB_SETUP_MEM = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"SETUP_MEM\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"/dev/tty\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"open /dev/tty\00", align 1
@KDSETMODE = common dso_local global i32 0, align 4
@KD_TEXT = common dso_local global %struct.omapfb_plane_info* null, align 8
@.str.13 = private unnamed_addr constant [18 x i8] c"KDSETMODE KD_TEXT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.fb_var_screeninfo, align 8
  %3 = alloca %struct.omapfb_plane_info, align 8
  %4 = alloca %struct.omapfb_mem_info, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %8 = load i32, i32* @O_RDWR, align 4
  %9 = call i32 @open(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %42

14:                                               ; preds = %0
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @FBIOGET_VSCREENINFO, align 4
  %17 = bitcast %struct.fb_var_screeninfo* %2 to %struct.omapfb_plane_info*
  %18 = call i32 @ioctl(i32 %15, i32 %16, %struct.omapfb_plane_info* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = call i32 @perror(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %42

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %2, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %23
  %28 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %29 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %2, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @FBIOPAN_DISPLAY, align 4
  %32 = bitcast %struct.fb_var_screeninfo* %2 to %struct.omapfb_plane_info*
  %33 = call i32 @ioctl(i32 %30, i32 %31, %struct.omapfb_plane_info* %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = call i32 @perror(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %40

38:                                               ; preds = %27
  %39 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %36
  br label %41

41:                                               ; preds = %40, %23
  br label %42

42:                                               ; preds = %41, %21, %12
  %43 = load i32, i32* %6, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @close(i32 %46)
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i32, i32* @O_RDWR, align 4
  %50 = call i32 @open(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  br label %89

55:                                               ; preds = %48
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @OMAPFB_QUERY_PLANE, align 4
  %58 = call i32 @ioctl(i32 %56, i32 %57, %struct.omapfb_plane_info* %3)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @OMAPFB_QUERY_MEM, align 4
  %61 = bitcast %struct.omapfb_mem_info* %4 to %struct.omapfb_plane_info*
  %62 = call i32 @ioctl(i32 %59, i32 %60, %struct.omapfb_plane_info* %61)
  %63 = load i32, i32* %5, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %55
  %68 = call i32 @perror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %55
  %70 = getelementptr inbounds %struct.omapfb_plane_info, %struct.omapfb_plane_info* %3, i32 0, i32 2
  store i64 0, i64* %70, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @OMAPFB_SETUP_PLANE, align 4
  %73 = call i32 @ioctl(i32 %71, i32 %72, %struct.omapfb_plane_info* %3)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %69
  %79 = getelementptr inbounds %struct.omapfb_mem_info, %struct.omapfb_mem_info* %4, i32 0, i32 1
  store i64 0, i64* %79, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @OMAPFB_SETUP_MEM, align 4
  %82 = bitcast %struct.omapfb_mem_info* %4 to %struct.omapfb_plane_info*
  %83 = call i32 @ioctl(i32 %80, i32 %81, %struct.omapfb_plane_info* %82)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %78
  %87 = call i32 @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %78
  br label %89

89:                                               ; preds = %88, %53
  %90 = load i32, i32* %6, align 4
  %91 = icmp sge i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @close(i32 %93)
  br label %95

95:                                               ; preds = %92, %89
  %96 = load i32, i32* @O_RDWR, align 4
  %97 = call i32 @open(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 %96)
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %113

102:                                              ; preds = %95
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @KDSETMODE, align 4
  %105 = load %struct.omapfb_plane_info*, %struct.omapfb_plane_info** @KD_TEXT, align 8
  %106 = call i32 @ioctl(i32 %103, i32 %104, %struct.omapfb_plane_info* %105)
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %108, label %110

108:                                              ; preds = %102
  %109 = call i32 @perror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %102
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @close(i32 %111)
  store i32 0, i32* %1, align 4
  br label %113

113:                                              ; preds = %110, %100
  %114 = load i32, i32* %1, align 4
  ret i32 %114
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @ioctl(i32, i32, %struct.omapfb_plane_info*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
