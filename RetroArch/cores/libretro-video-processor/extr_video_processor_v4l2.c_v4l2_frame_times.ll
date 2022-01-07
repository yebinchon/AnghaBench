; ModuleID = '/home/carl/AnghaBench/RetroArch/cores/libretro-video-processor/extr_video_processor_v4l2.c_v4l2_frame_times.c'
source_filename = "/home/carl/AnghaBench/RetroArch/cores/libretro-video-processor/extr_video_processor_v4l2.c_v4l2_frame_times.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.v4l2_buffer = type { i32, i32, i32, %struct.TYPE_3__ }

@.str = private unnamed_addr constant [4 x i8] c"Off\00", align 1
@video_frame_times = common dso_local global i32 0, align 4
@ft_info = common dso_local global i8* null, align 8
@ft_prevtime = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@ft_prevtime2 = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Fields last %.2f seconds: %d\0A\00", align 1
@ft_fcount = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Average frame times: %.3fms\0A\00", align 1
@ft_favg = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Fields timestampdiffs last second:\0A%s\0A\00", align 1
@ft_info2 = common dso_local global i8* null, align 8
@ft_ftime = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"%s %6.d %d %d %.2fms%s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v4l2_frame_times(%struct.v4l2_buffer* byval(%struct.v4l2_buffer) align 8 %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = load i32, i32* @video_frame_times, align 4
  %5 = call i64 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %4)
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %109

8:                                                ; preds = %1
  %9 = load i8*, i8** @ft_info, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = call i64 @calloc(i32 5000, i32 1)
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** @ft_info, align 8
  br label %14

14:                                               ; preds = %11, %8
  %15 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %0, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ft_prevtime, i32 0, i32 0), align 4
  %19 = sub nsw i32 %17, %18
  %20 = icmp sge i32 %19, 1
  br i1 %20, label %21, label %64

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %0, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1000000
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ft_prevtime2, i32 0, i32 1), align 4
  %27 = sub nsw i32 %25, %26
  %28 = icmp sge i32 %27, 1000000
  br i1 %28, label %29, label %64

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %0, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sitofp i32 %32 to double
  %34 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %0, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sdiv i32 %36, 1000000
  %38 = sitofp i32 %37 to double
  %39 = fadd double %33, %38
  store double %39, double* %2, align 8
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ft_prevtime, i32 0, i32 0), align 4
  %41 = sitofp i32 %40 to double
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ft_prevtime, i32 0, i32 1), align 4
  %43 = sdiv i32 %42, 1000000
  %44 = sitofp i32 %43 to double
  %45 = fadd double %41, %44
  store double %45, double* %3, align 8
  %46 = load double, double* %2, align 8
  %47 = load double, double* %3, align 8
  %48 = fsub double %46, %47
  %49 = load i32, i32* @ft_fcount, align 4
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), double %48, i32 %49)
  %51 = load i32, i32* @ft_favg, align 4
  %52 = load i32, i32* @ft_fcount, align 4
  %53 = mul nsw i32 1000, %52
  %54 = sdiv i32 %51, %53
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  %56 = load i8*, i8** @ft_info, align 8
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %56)
  %58 = load i8*, i8** @ft_info, align 8
  %59 = call i32 @free(i8* %58)
  %60 = call i64 @calloc(i32 5000, i32 1)
  %61 = inttoptr i64 %60 to i8*
  store i8* %61, i8** @ft_info, align 8
  store i32 0, i32* @ft_fcount, align 4
  store i32 0, i32* @ft_favg, align 4
  %62 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %0, i32 0, i32 3
  %63 = bitcast %struct.TYPE_3__* %62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_3__* @ft_prevtime to i8*), i8* align 4 %63, i64 8, i1 false)
  br label %64

64:                                               ; preds = %29, %21, %14
  %65 = load i32, i32* @ft_fcount, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* @ft_fcount, align 4
  %67 = load i8*, i8** @ft_info, align 8
  %68 = call i8* @strdup(i8* %67)
  store i8* %68, i8** @ft_info2, align 8
  %69 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %0, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %0, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ft_prevtime2, i32 0, i32 0), align 4
  %76 = sub nsw i32 %74, %75
  %77 = icmp sge i32 %76, 1
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 1000000, i32 0
  %80 = add nsw i32 %71, %79
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ft_prevtime2, i32 0, i32 1), align 4
  %82 = sub nsw i32 %80, %81
  %83 = sitofp i32 %82 to double
  %84 = fptosi double %83 to i32
  store i32 %84, i32* @ft_ftime, align 4
  %85 = load i32, i32* @ft_ftime, align 4
  %86 = load i32, i32* @ft_favg, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* @ft_favg, align 4
  %88 = load i8*, i8** @ft_info, align 8
  %89 = load i8*, i8** @ft_info2, align 8
  %90 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %0, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %0, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %0, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @ft_ftime, align 4
  %97 = sdiv i32 %96, 1000
  %98 = load i32, i32* @ft_fcount, align 4
  %99 = srem i32 %98, 7
  %100 = icmp ne i32 %99, 0
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %104 = call i32 @snprintf(i8* %88, i32 5000, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %89, i32 %91, i32 %93, i32 %95, i32 %97, i8* %103)
  %105 = load i8*, i8** @ft_info2, align 8
  %106 = call i32 @free(i8* %105)
  %107 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %0, i32 0, i32 3
  %108 = bitcast %struct.TYPE_3__* %107 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_3__* @ft_prevtime2 to i8*), i8* align 4 %108, i64 8, i1 false)
  br label %109

109:                                              ; preds = %64, %7
  ret void
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @free(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
