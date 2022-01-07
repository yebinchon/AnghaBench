; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/vc/extr_mmal_vc_diag.c_do_imageconv_stats.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/vc/extr_mmal_vc_diag.c_do_imageconv_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64, double, double, double, double, double, double, double, double }

@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Unable to open videocore memory: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"imageconv_stats\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Could not get imageconv stats address\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Could not read imageconv stats address\0A\00", align 1
@IMAGECONV_STATS_MAGIC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Could not write stats at 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Could not read stats at 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Bad magic 0x%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"%-25s:\09%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"conversions\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"size requests\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"max vrf delay\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"vrf wait time\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"duplicate conversions\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"failures\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"%-25s:\09%ld\0A\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"convert time / image (us)\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"%-25s:\09%.1f\0A\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"client frame_rate\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"%-25s:\09%d us\0A\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"max delay to consume\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @do_imageconv_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_imageconv_stats(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_5__, align 8
  %11 = alloca i64, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp sgt i32 %15, 2
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 2
  %20 = load i8*, i8** %19, align 8
  %21 = call i64 @strcasecmp(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %14, align 4
  br label %24

24:                                               ; preds = %17, %2
  %25 = call i32 @OpenVideoCoreMemory(i32* %6)
  store i32 %25, i32* %13, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* @stderr, align 4
  %29 = load i32, i32* %13, align 4
  %30 = call i32 (i32, i8*, ...) @fprintf(i32 %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  store i32 -1, i32* %3, align 4
  br label %142

31:                                               ; preds = %24
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @LookupVideoCoreSymbol(i32 %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32* %7, i64* %9)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @stderr, align 4
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %139

38:                                               ; preds = %31
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @ReadVideoCoreUInt32(i32 %39, i32* %8, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @stderr, align 4
  %45 = call i32 (i32, i8*, ...) @fprintf(i32 %44, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %139

46:                                               ; preds = %38
  %47 = load i32, i32* %14, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %46
  %50 = call i32 @memset(%struct.TYPE_5__* %10, i32 0, i32 80)
  %51 = load i32, i32* @IMAGECONV_STATS_MAGIC, align 4
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i32 %51, i32* %52, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @WriteVideoCoreMemory(i32 %53, %struct.TYPE_5__* %10, i32 %54, i32 80)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %49
  %58 = load i32, i32* @stderr, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 (i32, i8*, ...) @fprintf(i32 %58, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %59)
  br label %139

61:                                               ; preds = %49
  br label %62

62:                                               ; preds = %61, %46
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @ReadVideoCoreMemory(i32 %63, %struct.TYPE_5__* %10, i32 %64, i32 80)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* @stderr, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 (i32, i8*, ...) @fprintf(i32 %68, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %69)
  br label %139

71:                                               ; preds = %62
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @IMAGECONV_STATS_MAGIC, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load i32, i32* @stderr, align 4
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 (i32, i8*, ...) @fprintf(i32 %77, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %79)
  br label %139

81:                                               ; preds = %71
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = sdiv i64 %87, %90
  store i64 %91, i64* %11, align 8
  br label %93

92:                                               ; preds = %81
  store i64 0, i64* %11, align 8
  br label %93

93:                                               ; preds = %92, %85
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = sitofp i32 %99 to double
  %101 = fmul double 1.000000e+06, %100
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  %103 = load double, double* %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 4
  %105 = load double, double* %104, align 8
  %106 = fsub double %103, %105
  %107 = fdiv double %101, %106
  store double %107, double* %12, align 8
  br label %109

108:                                              ; preds = %93
  store double 0.000000e+00, double* %12, align 8
  br label %109

109:                                              ; preds = %108, %97
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = sitofp i32 %111 to double
  %113 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), double %112)
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 5
  %115 = load double, double* %114, align 8
  %116 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), double %115)
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 6
  %118 = load double, double* %117, align 8
  %119 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), double %118)
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 7
  %121 = load double, double* %120, align 8
  %122 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), double %121)
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 8
  %124 = load double, double* %123, align 8
  %125 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), double %124)
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 9
  %127 = load double, double* %126, align 8
  %128 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), double %127)
  %129 = load i64, i64* %11, align 8
  %130 = sitofp i64 %129 to double
  %131 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0), double %130)
  %132 = load double, double* %12, align 8
  %133 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), double %132)
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 10
  %135 = load double, double* %134, align 8
  %136 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), double %135)
  %137 = load i32, i32* %6, align 4
  %138 = call i32 @CloseVideoCoreMemory(i32 %137)
  store i32 0, i32* %3, align 4
  br label %142

139:                                              ; preds = %76, %67, %57, %43, %35
  %140 = load i32, i32* %6, align 4
  %141 = call i32 @CloseVideoCoreMemory(i32 %140)
  store i32 -1, i32* %3, align 4
  br label %142

142:                                              ; preds = %139, %109, %27
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @OpenVideoCoreMemory(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @LookupVideoCoreSymbol(i32, i8*, i32*, i64*) #1

declare dso_local i32 @ReadVideoCoreUInt32(i32, i32*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @WriteVideoCoreMemory(i32, %struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @ReadVideoCoreMemory(i32, %struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*, double) #1

declare dso_local i32 @CloseVideoCoreMemory(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
