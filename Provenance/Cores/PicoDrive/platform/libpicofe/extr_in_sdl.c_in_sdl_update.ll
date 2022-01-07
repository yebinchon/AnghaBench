; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/extr_in_sdl.c_in_sdl_update.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/extr_in_sdl.c_in_sdl_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_sdl_state = type { i32* }

@SDLK_LAST = common dso_local global i32 0, align 4
@KEYBITS_WORD_BITS = common dso_local global i32 0, align 4
@IN_BINDTYPE_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @in_sdl_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in_sdl_update(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.in_sdl_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.in_sdl_state*
  store %struct.in_sdl_state* %14, %struct.in_sdl_state** %7, align 8
  %15 = load %struct.in_sdl_state*, %struct.in_sdl_state** %7, align 8
  %16 = call i32 @collect_events(%struct.in_sdl_state* %15, i32* null, i32* null)
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %77, %3
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @SDLK_LAST, align 4
  %20 = load i32, i32* @KEYBITS_WORD_BITS, align 4
  %21 = sdiv i32 %19, %20
  %22 = add nsw i32 %21, 1
  %23 = icmp slt i32 %18, %22
  br i1 %23, label %24, label %80

24:                                               ; preds = %17
  %25 = load %struct.in_sdl_state*, %struct.in_sdl_state** %7, align 8
  %26 = getelementptr inbounds %struct.in_sdl_state, %struct.in_sdl_state* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %77

35:                                               ; preds = %24
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %71, %35
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %76

39:                                               ; preds = %36
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %71

44:                                               ; preds = %39
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @KEYBITS_WORD_BITS, align 4
  %47 = mul nsw i32 %45, %46
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %47, %48
  store i32 %49, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %50

50:                                               ; preds = %67, %44
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @IN_BINDTYPE_COUNT, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %50
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %12, align 4
  %58 = call i64 @IN_BIND_OFFS(i32 %56, i32 %57)
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %60
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %54
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %12, align 4
  br label %50

70:                                               ; preds = %50
  br label %71

71:                                               ; preds = %70, %43
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %8, align 4
  %75 = ashr i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %36

76:                                               ; preds = %36
  br label %77

77:                                               ; preds = %76, %34
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %17

80:                                               ; preds = %17
  ret i32 0
}

declare dso_local i32 @collect_events(%struct.in_sdl_state*, i32*, i32*) #1

declare dso_local i64 @IN_BIND_OFFS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
