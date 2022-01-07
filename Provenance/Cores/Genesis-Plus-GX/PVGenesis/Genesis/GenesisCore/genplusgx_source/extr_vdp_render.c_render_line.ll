; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_render.c_render_line.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_render.c_render_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@bitmap = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@reg = common dso_local global i32* null, align 8
@bg_list_index = common dso_local global i64 0, align 8
@system_hw = common dso_local global i64 0, align 8
@SYSTEM_SG = common dso_local global i64 0, align 8
@linebuf = common dso_local global i32** null, align 8
@SYSTEM_MD = common dso_local global i64 0, align 8
@spr_ovr = common dso_local global i32 0, align 4
@status = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @render_line(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bitmap, i32 0, i32 0, i32 0), align 4
  store i32 %5, i32* %3, align 4
  %6 = load i32*, i32** @reg, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 1
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %8, 64
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %48

11:                                               ; preds = %1
  %12 = load i64, i64* @bg_list_index, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i64, i64* @bg_list_index, align 8
  %16 = call i32 @update_bg_pattern_cache(i64 %15)
  store i64 0, i64* @bg_list_index, align 8
  br label %17

17:                                               ; preds = %14, %11
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @render_bg(i32 %18, i32 %19)
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @render_obj(i32 %21)
  %23 = load i32*, i32** @reg, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %17
  %29 = load i64, i64* @system_hw, align 8
  %30 = load i64, i64* @SYSTEM_SG, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load i32**, i32*** @linebuf, align 8
  %34 = getelementptr inbounds i32*, i32** %33, i64 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 32
  %37 = call i32 @memset(i32* %36, i32 64, i32 8)
  br label %38

38:                                               ; preds = %32, %28
  br label %39

39:                                               ; preds = %38, %17
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bitmap, i32 0, i32 0, i32 1), align 4
  %42 = sub nsw i32 %41, 1
  %43 = icmp slt i32 %40, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @parse_satb(i32 %45)
  br label %47

47:                                               ; preds = %44, %39
  br label %65

48:                                               ; preds = %1
  %49 = load i64, i64* @system_hw, align 8
  %50 = load i64, i64* @SYSTEM_MD, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load i32, i32* @spr_ovr, align 4
  %54 = load i32, i32* @status, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* @status, align 4
  store i32 0, i32* @spr_ovr, align 4
  %56 = load i32, i32* %2, align 4
  %57 = call i32 @parse_satb(i32 %56)
  br label %58

58:                                               ; preds = %52, %48
  %59 = load i32**, i32*** @linebuf, align 8
  %60 = getelementptr inbounds i32*, i32** %59, i64 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 32
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @memset(i32* %62, i32 64, i32 %63)
  br label %65

65:                                               ; preds = %58, %47
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bitmap, i32 0, i32 0, i32 2), align 4
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %88

69:                                               ; preds = %65
  %70 = load i32**, i32*** @linebuf, align 8
  %71 = getelementptr inbounds i32*, i32** %70, i64 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sub nsw i32 32, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @memset(i32* %76, i32 64, i32 %77)
  %79 = load i32**, i32*** @linebuf, align 8
  %80 = getelementptr inbounds i32*, i32** %79, i64 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %3, align 4
  %83 = add nsw i32 32, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @memset(i32* %85, i32 64, i32 %86)
  br label %88

88:                                               ; preds = %69, %65
  %89 = load i32, i32* %2, align 4
  %90 = call i32 @remap_line(i32 %89)
  ret void
}

declare dso_local i32 @update_bg_pattern_cache(i64) #1

declare dso_local i32 @render_bg(i32, i32) #1

declare dso_local i32 @render_obj(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @parse_satb(i32) #1

declare dso_local i32 @remap_line(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
