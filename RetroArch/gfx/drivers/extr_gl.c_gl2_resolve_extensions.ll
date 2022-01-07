; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl.c_gl2_resolve_extensions.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl.c_gl2_resolve_extensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@GL_CAPS_FULL_NPOT_SUPPORT = common dso_local global i32 0, align 4
@GL_CAPS_MIPMAP = common dso_local global i32 0, align 4
@GL_CAPS_ES2_COMPAT = common dso_local global i32 0, align 4
@GL_CAPS_UNPACK_ROW_LENGTH = common dso_local global i32 0, align 4
@GL_CAPS_SYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"[GL]: Using ARB_sync to reduce latency.\0A\00", align 1
@GL_CAPS_BGRA8888 = common dso_local global i32 0, align 4
@GL_EXTENSIONS = common dso_local global i32 0, align 4
@GL_NUM_EXTENSIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*, i32*)* @gl2_resolve_extensions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl2_resolve_extensions(%struct.TYPE_11__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = call %struct.TYPE_10__* (...) @config_get_ptr()
  store %struct.TYPE_10__* %8, %struct.TYPE_10__** %7, align 8
  %9 = load i32, i32* @GL_CAPS_FULL_NPOT_SUPPORT, align 4
  %10 = call i8* @gl_check_capability(i32 %9)
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 6
  store i8* %10, i8** %12, align 8
  %13 = load i32, i32* @GL_CAPS_MIPMAP, align 4
  %14 = call i8* @gl_check_capability(i32 %13)
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 5
  store i8* %14, i8** %16, align 8
  %17 = load i32, i32* @GL_CAPS_ES2_COMPAT, align 4
  %18 = call i8* @gl_check_capability(i32 %17)
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 4
  store i8* %18, i8** %20, align 8
  %21 = load i32, i32* @GL_CAPS_UNPACK_ROW_LENGTH, align 4
  %22 = call i8* @gl_check_capability(i32 %21)
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 3
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* @GL_CAPS_SYNC, align 4
  %26 = call i8* @gl_check_capability(i32 %25)
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 2
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %3
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %33, %3
  %42 = call i32 (...) @video_driver_unset_rgba()
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i32*
  %48 = load i8*, i8** %5, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @gl2_renderchain_resolve_extensions(%struct.TYPE_11__* %43, i32* %47, i8* %48, i32* %49)
  ret i32 1
}

declare dso_local %struct.TYPE_10__* @config_get_ptr(...) #1

declare dso_local i8* @gl_check_capability(i32) #1

declare dso_local i32 @RARCH_LOG(i8*, ...) #1

declare dso_local i32 @video_driver_unset_rgba(...) #1

declare dso_local i32 @gl2_renderchain_resolve_extensions(%struct.TYPE_11__*, i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
