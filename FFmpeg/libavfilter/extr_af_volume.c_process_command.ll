; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_volume.c_process_command.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_volume.c_process_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32 }

@ENOSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"volume\00", align 1
@EVAL_MODE_ONCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i8*, i8*, i32, i32)* @process_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_command(%struct.TYPE_7__* %0, i8* %1, i8* %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %14, align 8
  %19 = load i32, i32* @ENOSYS, align 4
  %20 = call i32 @AVERROR(i32 %19)
  store i32 %20, i32* %15, align 4
  %21 = load i8*, i8** %9, align 8
  %22 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %43, label %24

24:                                               ; preds = %6
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i8*, i8** %10, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %29 = call i32 @set_expr(i32* %26, i8* %27, %struct.TYPE_7__* %28)
  store i32 %29, i32* %15, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %15, align 4
  store i32 %32, i32* %7, align 4
  br label %45

33:                                               ; preds = %24
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @EVAL_MODE_ONCE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %41 = call i32 @set_volume(%struct.TYPE_7__* %40)
  br label %42

42:                                               ; preds = %39, %33
  br label %43

43:                                               ; preds = %42, %6
  %44 = load i32, i32* %15, align 4
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %43, %31
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @set_expr(i32*, i8*, %struct.TYPE_7__*) #1

declare dso_local i32 @set_volume(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
