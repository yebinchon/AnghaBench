; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/extr_librsound.c_rsd_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/extr_librsound.c_rsd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, i8*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i8*, i8* }
%struct.TYPE_7__ = type { i32, i32 }

@RSD_S16_LE = common dso_local global i32 0, align 4
@RSD_FORMAT = common dso_local global i32 0, align 4
@RSD_HOST = common dso_local global i32 0, align 4
@RSD_DEFAULT_HOST = common dso_local global i32* null, align 8
@RSD_PORT = common dso_local global i32 0, align 4
@RSD_DEFAULT_PORT = common dso_local global i32* null, align 8
@CELL_SYSMODULE_NET = common dso_local global i32 0, align 4
@init_count = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsd_init(%struct.TYPE_9__** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__**, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_9__** %0, %struct.TYPE_9__*** %3, align 8
  %5 = call %struct.TYPE_9__* @calloc(i32 1, i32 40)
  %6 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  store %struct.TYPE_9__* %5, %struct.TYPE_9__** %6, align 8
  %7 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %9 = icmp eq %struct.TYPE_9__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %58

11:                                               ; preds = %1
  %12 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %13 = icmp ne %struct.TYPE_9__** %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @retro_assert(i32 %14)
  %16 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store i32 -1, i32* %19, align 8
  %20 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  store i32 -1, i32* %23, align 4
  %24 = call i8* (...) @slock_new()
  %25 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  store i8* %24, i8** %28, align 8
  %29 = call i8* (...) @slock_new()
  %30 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  store i8* %29, i8** %33, align 8
  %34 = call i8* (...) @slock_new()
  %35 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  store i8* %34, i8** %37, align 8
  %38 = call i32 (...) @scond_new()
  %39 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  store i32 %38, i32* %42, align 8
  %43 = load i32, i32* @RSD_S16_LE, align 4
  store i32 %43, i32* %4, align 4
  %44 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = load i32, i32* @RSD_FORMAT, align 4
  %47 = call i32 @rsd_set_param(%struct.TYPE_9__* %45, i32 %46, i32* %4)
  %48 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = load i32, i32* @RSD_HOST, align 4
  %51 = load i32*, i32** @RSD_DEFAULT_HOST, align 8
  %52 = call i32 @rsd_set_param(%struct.TYPE_9__* %49, i32 %50, i32* %51)
  %53 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = load i32, i32* @RSD_PORT, align 4
  %56 = load i32*, i32** @RSD_DEFAULT_PORT, align 8
  %57 = call i32 @rsd_set_param(%struct.TYPE_9__* %54, i32 %55, i32* %56)
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %11, %10
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.TYPE_9__* @calloc(i32, i32) #1

declare dso_local i32 @retro_assert(i32) #1

declare dso_local i8* @slock_new(...) #1

declare dso_local i32 @scond_new(...) #1

declare dso_local i32 @rsd_set_param(%struct.TYPE_9__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
