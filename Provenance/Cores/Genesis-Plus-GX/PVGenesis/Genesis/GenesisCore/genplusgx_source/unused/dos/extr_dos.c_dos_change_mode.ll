; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/unused/dos/extr_dos.c_dos_change_mode.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/unused/dos/extr_dos.c_dos_change_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@option = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@GFX_TEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Error setting graphics mode (%dx%d %dbpp).\0AAllegro says: `%s'\0A\00", align 1
@allegro_error = common dso_local global i8* null, align 8
@bitmap = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@gen_pal = common dso_local global %struct.TYPE_5__* null, align 8
@screen = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dos_change_mode() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @option, i32 0, i32 0), align 8
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @option, i32 0, i32 1), align 4
  store i32 %6, i32* %3, align 4
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @option, i32 0, i32 4), align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load i32, i32* %3, align 4
  %11 = mul nsw i32 %10, 2
  store i32 %11, i32* %3, align 4
  br label %12

12:                                               ; preds = %9, %0
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @option, i32 0, i32 3), align 4
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @set_gfx_mode(i32 %13, i32 %14, i32 %15, i32 0, i32 0)
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* %1, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %12
  %20 = load i32, i32* @GFX_TEXT, align 4
  %21 = call i32 @set_gfx_mode(i32 %20, i32 0, i32 0, i32 0, i32 0)
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @option, i32 0, i32 2), align 8
  %25 = load i8*, i8** @allegro_error, align 8
  %26 = call i32 @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23, i32 %24, i8* %25)
  %27 = call i32 @exit(i32 1) #3
  unreachable

28:                                               ; preds = %12
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @bitmap, i32 0, i32 0), align 8
  %30 = icmp eq i32 %29, 8
  br i1 %30, label %31, label %90

31:                                               ; preds = %28
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @bitmap, i32 0, i32 1), align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %72

34:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %66, %34
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %36, 256
  br i1 %37, label %38, label %69

38:                                               ; preds = %35
  %39 = load i32, i32* %4, align 4
  %40 = ashr i32 %39, 5
  %41 = and i32 %40, 7
  %42 = shl i32 %41, 3
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** @gen_pal, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32 %42, i32* %47, align 4
  %48 = load i32, i32* %4, align 4
  %49 = ashr i32 %48, 2
  %50 = and i32 %49, 7
  %51 = shl i32 %50, 3
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** @gen_pal, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  store i32 %51, i32* %56, align 4
  %57 = load i32, i32* %4, align 4
  %58 = ashr i32 %57, 0
  %59 = and i32 %58, 3
  %60 = shl i32 %59, 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** @gen_pal, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  store i32 %60, i32* %65, align 4
  br label %66

66:                                               ; preds = %38
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %4, align 4
  br label %35

69:                                               ; preds = %35
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** @gen_pal, align 8
  %71 = call i32 @set_palette(%struct.TYPE_5__* %70)
  br label %89

72:                                               ; preds = %31
  %73 = load i32, i32* @screen, align 4
  %74 = call i32 @clear_to_color(i32 %73, i32 255)
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** @gen_pal, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 254
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  store i32 255, i32* %77, align 4
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** @gen_pal, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i64 254
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  store i32 255, i32* %80, align 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** @gen_pal, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i64 254
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  store i32 255, i32* %83, align 4
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** @gen_pal, align 8
  %85 = call i32 @set_palette(%struct.TYPE_5__* %84)
  %86 = call i32 @inp(i32 986)
  %87 = call i32 @outp(i32 960, i32 49)
  %88 = call i32 @outp(i32 960, i32 255)
  br label %89

89:                                               ; preds = %72, %69
  br label %93

90:                                               ; preds = %28
  %91 = load i32, i32* @screen, align 4
  %92 = call i32 @clear(i32 %91)
  br label %93

93:                                               ; preds = %90, %89
  ret void
}

declare dso_local i32 @set_gfx_mode(i32, i32, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @set_palette(%struct.TYPE_5__*) #1

declare dso_local i32 @clear_to_color(i32, i32) #1

declare dso_local i32 @inp(i32) #1

declare dso_local i32 @outp(i32, i32) #1

declare dso_local i32 @clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
