; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/execperf/extr_printexecinfo.c_printdyldinfo.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/execperf/extr_printexecinfo.c_printdyldinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.dyld_all_image_infos = type { i64, i64 }

@TASK_DYLD_INFO_COUNT = common dso_local global i32 0, align 4
@TASK_DYLD_INFO = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"task_info: %s\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"      dyld load address = 0x%016llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"     shared cache slide = 0x%016llx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printdyldinfo() #0 {
  %1 = alloca %struct.TYPE_2__, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.dyld_all_image_infos*, align 8
  %5 = load i32, i32* @TASK_DYLD_INFO_COUNT, align 4
  store i32 %5, i32* %2, align 4
  %6 = call i32 (...) @mach_task_self()
  %7 = load i32, i32* @TASK_DYLD_INFO, align 4
  %8 = bitcast %struct.TYPE_2__* %1 to i8*
  %9 = call i64 @task_info(i32 %6, i32 %7, i8* %8, i32* %2)
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @KERN_SUCCESS, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %0
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @mach_error_string(i64 %14)
  %16 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %13, %0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.dyld_all_image_infos*
  store %struct.dyld_all_image_infos* %20, %struct.dyld_all_image_infos** %4, align 8
  %21 = load %struct.dyld_all_image_infos*, %struct.dyld_all_image_infos** %4, align 8
  %22 = getelementptr inbounds %struct.dyld_all_image_infos, %struct.dyld_all_image_infos* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load %struct.dyld_all_image_infos*, %struct.dyld_all_image_infos** %4, align 8
  %27 = getelementptr inbounds %struct.dyld_all_image_infos, %struct.dyld_all_image_infos* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  ret void
}

declare dso_local i64 @task_info(i32, i32, i8*, i32*) #1

declare dso_local i32 @mach_task_self(...) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @mach_error_string(i64) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
