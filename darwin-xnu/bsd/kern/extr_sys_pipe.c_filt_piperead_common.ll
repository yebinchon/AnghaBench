; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_pipe.c_filt_piperead_common.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_pipe.c_filt_piperead_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i64, i32, i64, i32 }
%struct.pipe = type { i32, %struct.TYPE_2__, %struct.pipe* }
%struct.TYPE_2__ = type { i64, i64 }

@PIPE_DRAIN = common dso_local global i32 0, align 4
@PIPE_EOF = common dso_local global i32 0, align 4
@EV_EOF = common dso_local global i32 0, align 4
@NOTE_LOWAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*, %struct.pipe*)* @filt_piperead_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filt_piperead_common(%struct.knote* %0, %struct.pipe* %1) #0 {
  %3 = alloca %struct.knote*, align 8
  %4 = alloca %struct.pipe*, align 8
  %5 = alloca %struct.pipe*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.knote* %0, %struct.knote** %3, align 8
  store %struct.pipe* %1, %struct.pipe** %4, align 8
  %8 = load %struct.pipe*, %struct.pipe** %4, align 8
  %9 = getelementptr inbounds %struct.pipe, %struct.pipe* %8, i32 0, i32 2
  %10 = load %struct.pipe*, %struct.pipe** %9, align 8
  store %struct.pipe* %10, %struct.pipe** %5, align 8
  %11 = load %struct.pipe*, %struct.pipe** %4, align 8
  %12 = getelementptr inbounds %struct.pipe, %struct.pipe* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.knote*, %struct.knote** %3, align 8
  %16 = getelementptr inbounds %struct.knote, %struct.knote* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.pipe*, %struct.pipe** %4, align 8
  %18 = getelementptr inbounds %struct.pipe, %struct.pipe* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @PIPE_DRAIN, align 4
  %21 = load i32, i32* @PIPE_EOF, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %2
  %26 = load %struct.pipe*, %struct.pipe** %5, align 8
  %27 = icmp eq %struct.pipe* %26, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %25
  %29 = load %struct.pipe*, %struct.pipe** %5, align 8
  %30 = getelementptr inbounds %struct.pipe, %struct.pipe* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @PIPE_DRAIN, align 4
  %33 = load i32, i32* @PIPE_EOF, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %31, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %28, %25, %2
  %38 = load i32, i32* @EV_EOF, align 4
  %39 = load %struct.knote*, %struct.knote** %3, align 8
  %40 = getelementptr inbounds %struct.knote, %struct.knote* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  store i32 1, i32* %6, align 4
  br label %85

43:                                               ; preds = %28
  store i64 1, i64* %7, align 8
  %44 = load %struct.knote*, %struct.knote** %3, align 8
  %45 = getelementptr inbounds %struct.knote, %struct.knote* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @NOTE_LOWAT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %78

50:                                               ; preds = %43
  %51 = load %struct.pipe*, %struct.pipe** %4, align 8
  %52 = getelementptr inbounds %struct.pipe, %struct.pipe* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %50
  %57 = load %struct.knote*, %struct.knote** %3, align 8
  %58 = getelementptr inbounds %struct.knote, %struct.knote* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.pipe*, %struct.pipe** %4, align 8
  %61 = call i64 @MAX_PIPESIZE(%struct.pipe* %60)
  %62 = icmp sgt i64 %59, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load %struct.pipe*, %struct.pipe** %4, align 8
  %65 = call i64 @MAX_PIPESIZE(%struct.pipe* %64)
  store i64 %65, i64* %7, align 8
  br label %77

66:                                               ; preds = %56, %50
  %67 = load %struct.knote*, %struct.knote** %3, align 8
  %68 = getelementptr inbounds %struct.knote, %struct.knote* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %7, align 8
  %71 = icmp sgt i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load %struct.knote*, %struct.knote** %3, align 8
  %74 = getelementptr inbounds %struct.knote, %struct.knote* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %7, align 8
  br label %76

76:                                               ; preds = %72, %66
  br label %77

77:                                               ; preds = %76, %63
  br label %78

78:                                               ; preds = %77, %43
  %79 = load %struct.knote*, %struct.knote** %3, align 8
  %80 = getelementptr inbounds %struct.knote, %struct.knote* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %7, align 8
  %83 = icmp sge i64 %81, %82
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %78, %37
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local i64 @MAX_PIPESIZE(%struct.pipe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
