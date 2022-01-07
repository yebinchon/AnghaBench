; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/utils/extr_oggplayer.c_PlayOgg.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/utils/extr_oggplayer.c_PlayOgg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i64, i64 }

@private_ogg = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@callbacks = common dso_local global i32 0, align 4
@ogg_thread_running = common dso_local global i64 0, align 8
@h_oggplayer = common dso_local global i32 0, align 4
@ogg_player_thread = common dso_local global i64 0, align 8
@oggplayer_stack = common dso_local global i32 0, align 4
@STACKSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PlayOgg(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = call i32 (...) @StopOgg()
  %11 = load i8*, i8** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @mem_open(i8* %11, i32 %12)
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @private_ogg, i32 0, i32 0), align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @private_ogg, i32 0, i32 0), align 8
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @private_ogg, i32 0, i32 0), align 8
  store i32 -1, i32* %5, align 4
  br label %40

17:                                               ; preds = %4
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @private_ogg, i32 0, i32 1), align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @private_ogg, i32 0, i32 6), align 8
  store i32 127, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @private_ogg, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @private_ogg, i32 0, i32 5), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @private_ogg, i32 0, i32 3), align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @private_ogg, i32 0, i32 3), align 4
  br label %23

23:                                               ; preds = %21, %17
  %24 = load i32, i32* @callbacks, align 4
  %25 = call i64 @ov_open_callbacks(i8* bitcast (%struct.TYPE_3__* @private_ogg to i8*), i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @private_ogg, i32 0, i32 4), i32* null, i32 0, i32 %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @private_ogg, i32 0, i32 0), align 8
  %29 = call i32 @mem_close(i32 %28)
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @private_ogg, i32 0, i32 0), align 8
  store i64 0, i64* @ogg_thread_running, align 8
  store i32 -1, i32* %5, align 4
  br label %40

30:                                               ; preds = %23
  %31 = load i64, i64* @ogg_player_thread, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = load i32, i32* @oggplayer_stack, align 4
  %34 = load i32, i32* @STACKSIZE, align 4
  %35 = call i32 @LWP_CreateThread(i32* @h_oggplayer, i8* %32, %struct.TYPE_3__* @private_ogg, i32 %33, i32 %34, i32 80)
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  store i64 0, i64* @ogg_thread_running, align 8
  %38 = call i32 @ov_clear(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @private_ogg, i32 0, i32 4))
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @private_ogg, i32 0, i32 0), align 8
  store i32 -1, i32* %5, align 4
  br label %40

39:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %39, %37, %27, %16
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @StopOgg(...) #1

declare dso_local i32 @mem_open(i8*, i32) #1

declare dso_local i64 @ov_open_callbacks(i8*, i32*, i32*, i32, i32) #1

declare dso_local i32 @mem_close(i32) #1

declare dso_local i32 @LWP_CreateThread(i32*, i8*, %struct.TYPE_3__*, i32, i32, i32) #1

declare dso_local i32 @ov_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
