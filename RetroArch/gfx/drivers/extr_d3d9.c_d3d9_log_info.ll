; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_d3d9.c_d3d9_log_info.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_d3d9.c_d3d9_log_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LinkInfo = type { i8*, i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i8*, i8*, i32, i8*, i8* }

@.str = private unnamed_addr constant [27 x i8] c"[D3D9]: Render pass info:\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"\09Texture width: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"\09Texture height: %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"\09Scale type (X): \00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Relative @ %fx\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Viewport @ %fx\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Absolute @ %u px\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"\09Scale type (Y): \00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"\09Bilinear filter: %s\0A\00", align 1
@RARCH_FILTER_LINEAR = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.LinkInfo*)* @d3d9_log_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d3d9_log_info(%struct.LinkInfo* %0) #0 {
  %2 = alloca %struct.LinkInfo*, align 8
  store %struct.LinkInfo* %0, %struct.LinkInfo** %2, align 8
  %3 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.LinkInfo*, %struct.LinkInfo** %2, align 8
  %5 = getelementptr inbounds %struct.LinkInfo, %struct.LinkInfo* %4, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %6)
  %8 = load %struct.LinkInfo*, %struct.LinkInfo** %2, align 8
  %9 = getelementptr inbounds %struct.LinkInfo, %struct.LinkInfo* %8, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8
  %11 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %10)
  %12 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %13 = load %struct.LinkInfo*, %struct.LinkInfo** %2, align 8
  %14 = getelementptr inbounds %struct.LinkInfo, %struct.LinkInfo* %13, i32 0, i32 2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %43 [
    i32 129, label %19
    i32 128, label %27
    i32 130, label %35
  ]

19:                                               ; preds = %1
  %20 = load %struct.LinkInfo*, %struct.LinkInfo** %2, align 8
  %21 = getelementptr inbounds %struct.LinkInfo, %struct.LinkInfo* %20, i32 0, i32 2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %25)
  br label %43

27:                                               ; preds = %1
  %28 = load %struct.LinkInfo*, %struct.LinkInfo** %2, align 8
  %29 = getelementptr inbounds %struct.LinkInfo, %struct.LinkInfo* %28, i32 0, i32 2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* %33)
  br label %43

35:                                               ; preds = %1
  %36 = load %struct.LinkInfo*, %struct.LinkInfo** %2, align 8
  %37 = getelementptr inbounds %struct.LinkInfo, %struct.LinkInfo* %36, i32 0, i32 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %1, %35, %27, %19
  %44 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %45 = load %struct.LinkInfo*, %struct.LinkInfo** %2, align 8
  %46 = getelementptr inbounds %struct.LinkInfo, %struct.LinkInfo* %45, i32 0, i32 2
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %75 [
    i32 129, label %51
    i32 128, label %59
    i32 130, label %67
  ]

51:                                               ; preds = %43
  %52 = load %struct.LinkInfo*, %struct.LinkInfo** %2, align 8
  %53 = getelementptr inbounds %struct.LinkInfo, %struct.LinkInfo* %52, i32 0, i32 2
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 4
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %57)
  br label %75

59:                                               ; preds = %43
  %60 = load %struct.LinkInfo*, %struct.LinkInfo** %2, align 8
  %61 = getelementptr inbounds %struct.LinkInfo, %struct.LinkInfo* %60, i32 0, i32 2
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 4
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* %65)
  br label %75

67:                                               ; preds = %43
  %68 = load %struct.LinkInfo*, %struct.LinkInfo** %2, align 8
  %69 = getelementptr inbounds %struct.LinkInfo, %struct.LinkInfo* %68, i32 0, i32 2
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 5
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %73)
  br label %75

75:                                               ; preds = %43, %67, %59, %51
  %76 = load %struct.LinkInfo*, %struct.LinkInfo** %2, align 8
  %77 = getelementptr inbounds %struct.LinkInfo, %struct.LinkInfo* %76, i32 0, i32 2
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @RARCH_FILTER_LINEAR, align 8
  %82 = icmp eq i64 %80, %81
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0)
  %85 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* %84)
  ret void
}

declare dso_local i32 @RARCH_LOG(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
