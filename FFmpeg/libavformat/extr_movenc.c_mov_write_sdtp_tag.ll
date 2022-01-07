; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_sdtp_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_sdtp_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"sdtp\00", align 1
@MOV_SAMPLE_DEPENDENCY_YES = common dso_local global i32 0, align 4
@MOV_SAMPLE_DEPENDENCY_UNKNOWN = common dso_local global i32 0, align 4
@MOV_DISPOSABLE_SAMPLE = common dso_local global i32 0, align 4
@MOV_SAMPLE_DEPENDENCY_NO = common dso_local global i32 0, align 4
@MOV_SYNC_SAMPLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*)* @mov_write_sdtp_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_write_sdtp_tag(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @avio_tell(i32* %11)
  store i32 %12, i32* %10, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @avio_wb32(i32* %13, i32 0)
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @ffio_wfourcc(i32* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @avio_wb32(i32* %17, i32 0)
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %68, %2
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %71

25:                                               ; preds = %19
  %26 = load i32, i32* @MOV_SAMPLE_DEPENDENCY_YES, align 4
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* @MOV_SAMPLE_DEPENDENCY_UNKNOWN, align 4
  store i32 %27, i32* %9, align 4
  store i32 %27, i32* %8, align 4
  store i32 %27, i32* %6, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MOV_DISPOSABLE_SAMPLE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %25
  %40 = load i32, i32* @MOV_SAMPLE_DEPENDENCY_NO, align 4
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %39, %25
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @MOV_SYNC_SAMPLE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %41
  %54 = load i32, i32* @MOV_SAMPLE_DEPENDENCY_NO, align 4
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %53, %41
  %56 = load i32*, i32** %3, align 8
  %57 = load i32, i32* %6, align 4
  %58 = shl i32 %57, 6
  %59 = load i32, i32* %7, align 4
  %60 = shl i32 %59, 4
  %61 = or i32 %58, %60
  %62 = load i32, i32* %8, align 4
  %63 = shl i32 %62, 2
  %64 = or i32 %61, %63
  %65 = load i32, i32* %9, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @avio_w8(i32* %56, i32 %66)
  br label %68

68:                                               ; preds = %55
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %19

71:                                               ; preds = %19
  %72 = load i32*, i32** %3, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @update_size(i32* %72, i32 %73)
  ret i32 %74
}

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @ffio_wfourcc(i32*, i8*) #1

declare dso_local i32 @avio_w8(i32*, i32) #1

declare dso_local i32 @update_size(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
