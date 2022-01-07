; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_ctr_gfx.c_ctr_free.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_ctr_gfx.c_ctr_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_11__*, %struct.TYPE_9__, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_8__, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_9__ = type { %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@GSPGPU_EVENT_VBlank0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ctr_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctr_free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %5, %struct.TYPE_11__** %3, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %7 = icmp ne %struct.TYPE_11__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %70

9:                                                ; preds = %1
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 10
  %12 = call i32 @aptUnhook(i32* %11)
  %13 = load i32, i32* @GSPGPU_EVENT_VBlank0, align 4
  %14 = call i32 @gspSetEventCallback(i32 %13, i32* null, i32* null, i32 1)
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 9
  %17 = call i32 @shaderProgramFree(i32* %16)
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @DVLB_Free(i32 %20)
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 7
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @vramFree(i32 %26)
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 6
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = call i32 @linearFree(%struct.TYPE_11__* %30)
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 5
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = call i32 @linearFree(%struct.TYPE_11__* %34)
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %39 = call i32 @linearFree(%struct.TYPE_11__* %38)
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = call i32 @linearFree(%struct.TYPE_11__* %42)
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  %48 = call i32 @linearFree(%struct.TYPE_11__* %47)
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = call i32 @linearFree(%struct.TYPE_11__* %52)
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = call i32 @linearFree(%struct.TYPE_11__* %57)
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = call i32 @linearFree(%struct.TYPE_11__* %61)
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = call i32 @linearFree(%struct.TYPE_11__* %66)
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %69 = call i32 @linearFree(%struct.TYPE_11__* %68)
  br label %70

70:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @aptUnhook(i32*) #1

declare dso_local i32 @gspSetEventCallback(i32, i32*, i32*, i32) #1

declare dso_local i32 @shaderProgramFree(i32*) #1

declare dso_local i32 @DVLB_Free(i32) #1

declare dso_local i32 @vramFree(i32) #1

declare dso_local i32 @linearFree(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
