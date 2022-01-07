; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_menu.c_menu_opt3_preview.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_menu.c_menu_opt3_preview.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.TYPE_3__*, %struct.TYPE_3__*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }

@rom_loaded = common dso_local global i64 0, align 8
@Pico = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@bgdatac32_start = external dso_local global [0 x i8], align 1
@bgdatac40_start = external dso_local global [0 x i8], align 1
@bgdatac32_size = external dso_local global i32, align 4
@bgdatac40_size = external dso_local global i32, align 4
@bg_buffer = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"uncompress returned %i\0A\00", align 1
@psp_screen = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @menu_opt3_preview to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_opt3_preview(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i8* null, i8** %3, align 8
  %8 = load i64, i64* @rom_loaded, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 0), align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 12
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 1
  %15 = xor i32 %14, 1
  %16 = load i32, i32* %2, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %63

18:                                               ; preds = %10, %1
  %19 = load i32, i32* %2, align 4
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @bgdatac32_start, i64 0, i64 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @bgdatac40_start, i64 0, i64 0)
  store i8* %22, i8** %4, align 8
  %23 = load i32, i32* %2, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @bgdatac32_size, align 4
  br label %29

27:                                               ; preds = %18
  %28 = load i32, i32* @bgdatac40_size, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %5, align 8
  store i64 65856, i64* %6, align 8
  %32 = load i8*, i8** @bg_buffer, align 8
  %33 = bitcast i8* %32 to i32*
  %34 = load i8*, i8** %4, align 8
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @uncompress(i32* %33, i64* %6, i8* %34, i64 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %29
  %40 = load i64, i64* @rom_loaded, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = call i8* (...) @get_oldstate_for_preview()
  store i8* %43, i8** %3, align 8
  br label %44

44:                                               ; preds = %42, %39
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 3), align 8
  %46 = load i8*, i8** @bg_buffer, align 8
  %47 = call i32 @memcpy(%struct.TYPE_3__* %45, i8* %46, i32 8)
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 2), align 8
  %49 = load i8*, i8** @bg_buffer, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 65536
  %51 = call i32 @memcpy(%struct.TYPE_3__* %48, i8* %50, i32 128)
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 1), align 8
  %53 = load i8*, i8** @bg_buffer, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 65664
  %55 = call i32 @memcpy(%struct.TYPE_3__* %52, i8* %54, i32 128)
  %56 = load i8*, i8** @bg_buffer, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 65792
  %58 = call i32 @memcpy(%struct.TYPE_3__* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0), i8* %57, i32 64)
  br label %62

59:                                               ; preds = %29
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @lprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %59, %44
  br label %63

63:                                               ; preds = %62, %10
  %64 = load i32, i32* @psp_screen, align 4
  %65 = call i32 @memset32_uncached(i32 %64, i32 0, i32 69632)
  %66 = call i32 @emu_forcedFrame(i32 0)
  %67 = call i32 @menu_prepare_bg(i32 1, i32 0)
  %68 = load i8*, i8** %3, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load i8*, i8** %3, align 8
  %72 = call i32 @restore_oldstate(i8* %71)
  br label %73

73:                                               ; preds = %70, %63
  ret void
}

declare dso_local i32 @uncompress(i32*, i64*, i8*, i64) #1

declare dso_local i8* @get_oldstate_for_preview(...) #1

declare dso_local i32 @memcpy(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @lprintf(i8*, i32) #1

declare dso_local i32 @memset32_uncached(i32, i32, i32) #1

declare dso_local i32 @emu_forcedFrame(i32) #1

declare dso_local i32 @menu_prepare_bg(i32, i32) #1

declare dso_local i32 @restore_oldstate(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
