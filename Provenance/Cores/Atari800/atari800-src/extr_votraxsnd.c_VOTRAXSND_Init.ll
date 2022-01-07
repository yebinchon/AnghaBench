; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_votraxsnd.c_VOTRAXSND_Init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_votraxsnd.c_VOTRAXSND_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Votrax_interface = type { i32, i32 }

@VOTRAXSND_Init.vi = internal global %struct.Votrax_interface zeroinitializer, align 4
@bit16 = common dso_local global i32 0, align 4
@dsprate = common dso_local global i32 0, align 4
@num_pokeys = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"VOTRAXSND_Init: cannot handle num_pokeys=%d\00", align 1
@VOTRAXSND_busy_callback_async = common dso_local global i32 0, align 4
@Atari800_tv_mode = common dso_local global i64 0, align 8
@Atari800_TV_PAL = common dso_local global i64 0, align 8
@samples_per_frame = common dso_local global i32 0, align 4
@VTRX_RATE = common dso_local global i64 0, align 8
@ratio = common dso_local global i32 0, align 4
@VTRX_BLOCK_SIZE = common dso_local global i32 0, align 4
@temp_votrax_buffer = common dso_local global i32* null, align 8
@votrax_buffer = common dso_local global i32* null, align 8
@FALSE = common dso_local global i8* null, align 8
@VOTRAXSND_busy = common dso_local global i8* null, align 8
@votrax_sync_samples = common dso_local global i64 0, align 8
@PBI_XLD_v_enabled = common dso_local global i8* null, align 8
@VOICEBOX_BASEAUDF = common dso_local global i32 0, align 4
@VOICEBOX_enabled = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VOTRAXSND_Init(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  store i32 %8, i32* @bit16, align 4
  %9 = load i32, i32* %4, align 4
  store i32 %9, i32* @dsprate, align 4
  %10 = load i32, i32* %5, align 4
  store i32 %10, i32* @num_pokeys, align 4
  %11 = call i32 (...) @votraxsnd_enabled()
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %61

14:                                               ; preds = %3
  %15 = load i32, i32* @num_pokeys, align 4
  %16 = icmp ne i32 %15, 1
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load i32, i32* @num_pokeys, align 4
  %19 = icmp ne i32 %18, 2
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* @num_pokeys, align 4
  %22 = call i32 @Log_print(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %61

23:                                               ; preds = %17, %14
  store i32 1, i32* getelementptr inbounds (%struct.Votrax_interface, %struct.Votrax_interface* @VOTRAXSND_Init.vi, i32 0, i32 0), align 4
  %24 = load i32, i32* @VOTRAXSND_busy_callback_async, align 4
  store i32 %24, i32* getelementptr inbounds (%struct.Votrax_interface, %struct.Votrax_interface* @VOTRAXSND_Init.vi, i32 0, i32 1), align 4
  %25 = call i32 (...) @Votrax_Stop()
  %26 = call i32 @Votrax_Start(i8* bitcast (%struct.Votrax_interface* @VOTRAXSND_Init.vi to i8*))
  %27 = load i32, i32* @dsprate, align 4
  %28 = load i64, i64* @Atari800_tv_mode, align 8
  %29 = load i64, i64* @Atari800_TV_PAL, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 50, i32 60
  %33 = sdiv i32 %27, %32
  store i32 %33, i32* @samples_per_frame, align 4
  %34 = load i64, i64* @VTRX_RATE, align 8
  %35 = sitofp i64 %34 to double
  %36 = load i32, i32* @dsprate, align 4
  %37 = sitofp i32 %36 to double
  %38 = fdiv double %35, %37
  %39 = fptosi double %38 to i32
  store i32 %39, i32* @ratio, align 4
  %40 = load i32, i32* @VTRX_BLOCK_SIZE, align 4
  %41 = load i32, i32* @ratio, align 4
  %42 = mul nsw i32 %40, %41
  %43 = add nsw i32 %42, 10
  store i32 %43, i32* %7, align 4
  %44 = load i32*, i32** @temp_votrax_buffer, align 8
  %45 = call i32 @free(i32* %44)
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 4
  %49 = trunc i64 %48 to i32
  %50 = call i64 @Util_malloc(i32 %49)
  %51 = inttoptr i64 %50 to i32*
  store i32* %51, i32** @temp_votrax_buffer, align 8
  %52 = load i32*, i32** @votrax_buffer, align 8
  %53 = call i32 @free(i32* %52)
  %54 = load i32, i32* @VTRX_BLOCK_SIZE, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 %55, 4
  %57 = trunc i64 %56 to i32
  %58 = call i64 @Util_malloc(i32 %57)
  %59 = inttoptr i64 %58 to i32*
  store i32* %59, i32** @votrax_buffer, align 8
  %60 = load i8*, i8** @FALSE, align 8
  store i8* %60, i8** @VOTRAXSND_busy, align 8
  store i64 0, i64* @votrax_sync_samples, align 8
  br label %61

61:                                               ; preds = %23, %20, %13
  ret void
}

declare dso_local i32 @votraxsnd_enabled(...) #1

declare dso_local i32 @Log_print(i8*, i32) #1

declare dso_local i32 @Votrax_Stop(...) #1

declare dso_local i32 @Votrax_Start(i8*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @Util_malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
