; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_sdl_gl_ctx.c_sdl_ctx_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_sdl_gl_ctx.c_sdl_ctx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SDL_INIT_VIDEO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"[SDL_GL] SDL %i.%i.%i gfx context driver initialized.\0A\00", align 1
@SDL_MAJOR_VERSION = common dso_local global i32 0, align 4
@SDL_MINOR_VERSION = common dso_local global i32 0, align 4
@SDL_PATCHLEVEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"[SDL_GL]: Failed to initialize SDL gfx context driver: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*)* @sdl_ctx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @sdl_ctx_init(i32* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = call i64 @calloc(i32 1, i32 1)
  %8 = inttoptr i64 %7 to i8*
  store i8* %8, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %44

12:                                               ; preds = %2
  %13 = call i64 @SDL_WasInit(i32 0)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load i32, i32* @SDL_INIT_VIDEO, align 4
  %17 = call i64 @SDL_Init(i32 %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %33

20:                                               ; preds = %15
  br label %27

21:                                               ; preds = %12
  %22 = load i32, i32* @SDL_INIT_VIDEO, align 4
  %23 = call i64 @SDL_InitSubSystem(i32 %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %33

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %26, %20
  %28 = load i32, i32* @SDL_MAJOR_VERSION, align 4
  %29 = load i32, i32* @SDL_MINOR_VERSION, align 4
  %30 = load i32, i32* @SDL_PATCHLEVEL, align 4
  %31 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29, i32 %30)
  %32 = load i8*, i8** %6, align 8
  store i8* %32, i8** %3, align 8
  br label %44

33:                                               ; preds = %25, %19
  %34 = call i32 (...) @SDL_GetError()
  %35 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @sdl_ctx_destroy_resources(i8* %36)
  %38 = load i8*, i8** %6, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @free(i8* %41)
  br label %43

43:                                               ; preds = %40, %33
  store i8* null, i8** %3, align 8
  br label %44

44:                                               ; preds = %43, %27, %11
  %45 = load i8*, i8** %3, align 8
  ret i8* %45
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i64 @SDL_WasInit(i32) #1

declare dso_local i64 @SDL_Init(i32) #1

declare dso_local i64 @SDL_InitSubSystem(i32) #1

declare dso_local i32 @RARCH_LOG(i8*, i32, i32, i32) #1

declare dso_local i32 @RARCH_WARN(i8*, i32) #1

declare dso_local i32 @SDL_GetError(...) #1

declare dso_local i32 @sdl_ctx_destroy_resources(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
