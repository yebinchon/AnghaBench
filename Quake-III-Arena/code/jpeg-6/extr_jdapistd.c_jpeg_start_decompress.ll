; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/jpeg-6/extr_jdapistd.c_jpeg_start_decompress.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/jpeg-6/extr_jdapistd.c_jpeg_start_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, i32, i64, %struct.TYPE_11__*, %struct.TYPE_10__*, i64 }
%struct.TYPE_11__ = type { i64, i64, i32 (i32)* }
%struct.TYPE_10__ = type { {}*, i64 }

@DSTATE_READY = common dso_local global i64 0, align 8
@DSTATE_BUFIMAGE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@DSTATE_PRELOAD = common dso_local global i64 0, align 8
@JERR_NOT_COMPILED = common dso_local global i32 0, align 4
@DSTATE_PRESCAN = common dso_local global i64 0, align 8
@JERR_BAD_STATE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@JPEG_REACHED_EOI = common dso_local global i32 0, align 4
@JPEG_REACHED_SOS = common dso_local global i32 0, align 4
@JPEG_ROW_COMPLETED = common dso_local global i32 0, align 4
@JPEG_SUSPENDED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jpeg_start_decompress(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %4 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @DSTATE_READY, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %25

9:                                                ; preds = %1
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %11 = call i32 @jinit_master_decompress(%struct.TYPE_12__* %10)
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 6
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %9
  %17 = load i64, i64* @DSTATE_BUFIMAGE, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load i32, i32* @TRUE, align 4
  store i32 %20, i32* %2, align 4
  br label %65

21:                                               ; preds = %9
  %22 = load i64, i64* @DSTATE_PRELOAD, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  br label %25

25:                                               ; preds = %21, %1
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @DSTATE_PRELOAD, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %25
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 5
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %40 = load i32, i32* @JERR_NOT_COMPILED, align 4
  %41 = call i32 @ERREXIT(%struct.TYPE_12__* %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %31
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  br label %62

48:                                               ; preds = %25
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @DSTATE_PRESCAN, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %56 = load i32, i32* @JERR_BAD_STATE, align 4
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @ERREXIT1(%struct.TYPE_12__* %55, i32 %56, i64 %59)
  br label %61

61:                                               ; preds = %54, %48
  br label %62

62:                                               ; preds = %61, %42
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %64 = call i32 @output_pass_setup(%struct.TYPE_12__* %63)
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %62, %16
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @jinit_master_decompress(%struct.TYPE_12__*) #1

declare dso_local i32 @ERREXIT(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @ERREXIT1(%struct.TYPE_12__*, i32, i64) #1

declare dso_local i32 @output_pass_setup(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
