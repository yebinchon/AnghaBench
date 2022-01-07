; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/unused/dos/extr_dos.c_dos_update_video.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/unused/dos/extr_dos.c_dos_update_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_5__ = type { i64, i64 }

@bitmap = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@interlaced = common dso_local global i64 0, align 8
@SCREEN_W = common dso_local global i32 0, align 4
@SCREEN_H = common dso_local global i32 0, align 4
@option = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@screen = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@frame_rate = common dso_local global i32 0, align 4
@gen_bmp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dos_update_video() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bitmap, i32 0, i32 1, i32 0), align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bitmap, i32 0, i32 1, i32 1), align 4
  %8 = mul nsw i32 2, %7
  %9 = add nsw i32 %6, %8
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bitmap, i32 0, i32 1, i32 2), align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bitmap, i32 0, i32 1, i32 3), align 4
  %12 = mul nsw i32 2, %11
  %13 = add nsw i32 %10, %12
  %14 = load i64, i64* @interlaced, align 8
  %15 = icmp ne i64 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 1, i32 0
  %18 = shl i32 %13, %17
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* @SCREEN_W, align 4
  %20 = load i32, i32* %1, align 4
  %21 = sub nsw i32 %19, %20
  %22 = sdiv i32 %21, 2
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* @SCREEN_H, align 4
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @option, i32 0, i32 0), align 8
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 4, i32 2
  %28 = sdiv i32 %23, %27
  %29 = load i32, i32* %2, align 4
  %30 = sdiv i32 %29, 2
  %31 = sub nsw i32 %28, %30
  store i32 %31, i32* %4, align 4
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @option, i32 0, i32 1), align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %0
  %35 = call i32 (...) @vsync()
  br label %36

36:                                               ; preds = %34, %0
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bitmap, i32 0, i32 1, i32 4), align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bitmap, i32 0, i32 1, i32 4), align 8
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bitmap, i32 0, i32 0), align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* @screen, align 4
  %44 = call i32 @clear(i32 %43)
  br label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @screen, align 4
  %47 = call i32 @clear_to_color(i32 %46, i32 255)
  br label %48

48:                                               ; preds = %45, %42
  br label %49

49:                                               ; preds = %48, %36
  %50 = load i32, i32* @frame_rate, align 4
  %51 = call i32 @msg_print(i32 2, i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @option, i32 0, i32 0), align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %74

54:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %70, %54
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %2, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %55
  %60 = load i32, i32* @gen_bmp, align 4
  %61 = load i32, i32* @screen, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %64, %65
  %67 = shl i32 %66, 1
  %68 = load i32, i32* %1, align 4
  %69 = call i32 @blit(i32 %60, i32 %61, i32 0, i32 %62, i32 %63, i32 %67, i32 %68, i32 1)
  br label %70

70:                                               ; preds = %59
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %55

73:                                               ; preds = %55
  br label %91

74:                                               ; preds = %49
  %75 = load i32, i32* @gen_bmp, align 4
  %76 = load i32, i32* @screen, align 4
  %77 = load i32, i32* %1, align 4
  %78 = load i32, i32* %2, align 4
  %79 = load i32, i32* @SCREEN_W, align 4
  %80 = sub nsw i32 %79, 352
  %81 = sdiv i32 %80, 2
  %82 = load i32, i32* @SCREEN_H, align 4
  %83 = sub nsw i32 %82, 240
  %84 = sdiv i32 %83, 2
  %85 = load i64, i64* @interlaced, align 8
  %86 = icmp ne i64 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 1, i32 0
  %89 = shl i32 240, %88
  %90 = call i32 @stretch_blit(i32 %75, i32 %76, i32 0, i32 0, i32 %77, i32 %78, i32 %81, i32 %84, i32 352, i32 %89)
  br label %91

91:                                               ; preds = %74, %73
  ret void
}

declare dso_local i32 @vsync(...) #1

declare dso_local i32 @clear(i32) #1

declare dso_local i32 @clear_to_color(i32, i32) #1

declare dso_local i32 @msg_print(i32, i32, i8*, i32) #1

declare dso_local i32 @blit(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @stretch_blit(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
