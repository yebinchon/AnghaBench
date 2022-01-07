; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashdec.c_copy_init_section.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashdec.c_copy_init_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.representation = type { i32, i32, i32, i32, i32 }

@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Cannot alloc memory for init_sec_buf\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.representation*, %struct.representation*)* @copy_init_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_init_section(%struct.representation* %0, %struct.representation* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.representation*, align 8
  %5 = alloca %struct.representation*, align 8
  store %struct.representation* %0, %struct.representation** %4, align 8
  store %struct.representation* %1, %struct.representation** %5, align 8
  %6 = load %struct.representation*, %struct.representation** %5, align 8
  %7 = getelementptr inbounds %struct.representation, %struct.representation* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @av_mallocz(i32 %8)
  %10 = load %struct.representation*, %struct.representation** %4, align 8
  %11 = getelementptr inbounds %struct.representation, %struct.representation* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 4
  %12 = load %struct.representation*, %struct.representation** %4, align 8
  %13 = getelementptr inbounds %struct.representation, %struct.representation* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %2
  %17 = load %struct.representation*, %struct.representation** %4, align 8
  %18 = getelementptr inbounds %struct.representation, %struct.representation* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @AV_LOG_WARNING, align 4
  %21 = call i32 @av_log(i32 %19, i32 %20, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = call i32 @AVERROR(i32 %22)
  store i32 %23, i32* %3, align 4
  br label %50

24:                                               ; preds = %2
  %25 = load %struct.representation*, %struct.representation** %4, align 8
  %26 = getelementptr inbounds %struct.representation, %struct.representation* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.representation*, %struct.representation** %5, align 8
  %29 = getelementptr inbounds %struct.representation, %struct.representation* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.representation*, %struct.representation** %5, align 8
  %32 = getelementptr inbounds %struct.representation, %struct.representation* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @memcpy(i32 %27, i32 %30, i32 %33)
  %35 = load %struct.representation*, %struct.representation** %5, align 8
  %36 = getelementptr inbounds %struct.representation, %struct.representation* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.representation*, %struct.representation** %4, align 8
  %39 = getelementptr inbounds %struct.representation, %struct.representation* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.representation*, %struct.representation** %5, align 8
  %41 = getelementptr inbounds %struct.representation, %struct.representation* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.representation*, %struct.representation** %4, align 8
  %44 = getelementptr inbounds %struct.representation, %struct.representation* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.representation*, %struct.representation** %5, align 8
  %46 = getelementptr inbounds %struct.representation, %struct.representation* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.representation*, %struct.representation** %4, align 8
  %49 = getelementptr inbounds %struct.representation, %struct.representation* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %24, %16
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @av_mallocz(i32) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
