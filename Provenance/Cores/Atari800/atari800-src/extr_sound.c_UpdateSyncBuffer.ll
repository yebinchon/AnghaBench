; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_sound.c_UpdateSyncBuffer.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_sound.c_UpdateSyncBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i64 }

@sync_write_pos = common dso_local global i32 0, align 4
@sync_read_pos = common dso_local global i32 0, align 4
@last_audio_write_time = common dso_local global i32 0, align 4
@Sound_out = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@sync_est_fill = common dso_local global i32 0, align 4
@Atari800_turbo = common dso_local global i64 0, align 8
@sync_max_fill = common dso_local global i32 0, align 4
@sync_buffer_size = common dso_local global i32 0, align 4
@sync_buffer = common dso_local global i64 0, align 8
@POKEYSND_process_buffer = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @UpdateSyncBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UpdateSyncBuffer() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 (...) @PLATFORM_SoundLock()
  %8 = load i32, i32* @sync_write_pos, align 4
  %9 = load i32, i32* @sync_read_pos, align 4
  %10 = sub i32 %8, %9
  store i32 %10, i32* %3, align 4
  %11 = call i32 (...) @Util_time()
  %12 = load i32, i32* @last_audio_write_time, align 4
  %13 = sub i32 %11, %12
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Sound_out, i32 0, i32 0), align 8
  %15 = mul i32 %13, %14
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Sound_out, i32 0, i32 1), align 4
  %17 = mul i32 %15, %16
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Sound_out, i32 0, i32 2), align 8
  %19 = mul i32 %17, %18
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %0
  store i32 0, i32* @sync_est_fill, align 4
  br label %28

24:                                               ; preds = %0
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sub i32 %25, %26
  store i32 %27, i32* @sync_est_fill, align 4
  br label %28

28:                                               ; preds = %24, %23
  %29 = load i64, i64* @Atari800_turbo, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i32, i32* @sync_est_fill, align 4
  %33 = load i32, i32* @sync_max_fill, align 4
  %34 = icmp ugt i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 (...) @PLATFORM_SoundUnlock()
  br label %126

37:                                               ; preds = %31, %28
  %38 = call i32 (...) @POKEYSND_UpdateProcessBuffer()
  store i32 %38, i32* %2, align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Sound_out, i32 0, i32 2), align 8
  %40 = load i32, i32* %2, align 4
  %41 = mul i32 %39, %40
  store i32 %41, i32* %1, align 4
  %42 = load i32, i32* %1, align 4
  %43 = load i32, i32* @sync_buffer_size, align 4
  %44 = load i32, i32* %3, align 4
  %45 = sub i32 %43, %44
  %46 = icmp ugt i32 %42, %45
  br i1 %46, label %47, label %68

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %61, %47
  %49 = call i32 (...) @PLATFORM_SoundUnlock()
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Sound_out, i32 0, i32 3), align 8
  %51 = sitofp i64 %50 to double
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Sound_out, i32 0, i32 0), align 8
  %53 = uitofp i32 %52 to double
  %54 = fdiv double %51, %53
  %55 = call i32 @Util_sleep(double %54)
  %56 = call i32 (...) @PLATFORM_SoundLock()
  %57 = call i32 (...) @WriteOut()
  %58 = load i32, i32* @sync_write_pos, align 4
  %59 = load i32, i32* @sync_read_pos, align 4
  %60 = sub i32 %58, %59
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %48
  %62 = load i32, i32* %1, align 4
  %63 = load i32, i32* @sync_buffer_size, align 4
  %64 = load i32, i32* %3, align 4
  %65 = sub i32 %63, %64
  %66 = icmp ugt i32 %62, %65
  br i1 %66, label %48, label %67

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %67, %37
  %69 = load i32, i32* @sync_write_pos, align 4
  %70 = load i32, i32* %1, align 4
  %71 = add i32 %69, %70
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @sync_buffer_size, align 4
  %74 = udiv i32 %72, %73
  %75 = load i32, i32* @sync_write_pos, align 4
  %76 = load i32, i32* @sync_buffer_size, align 4
  %77 = udiv i32 %75, %76
  %78 = icmp eq i32 %74, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %68
  %80 = load i64, i64* @sync_buffer, align 8
  %81 = load i32, i32* @sync_write_pos, align 4
  %82 = load i32, i32* @sync_buffer_size, align 4
  %83 = urem i32 %81, %82
  %84 = zext i32 %83 to i64
  %85 = add nsw i64 %80, %84
  %86 = load i64, i64* @POKEYSND_process_buffer, align 8
  %87 = load i32, i32* %1, align 4
  %88 = call i32 @memcpy(i64 %85, i64 %86, i32 %87)
  br label %113

89:                                               ; preds = %68
  %90 = load i32, i32* @sync_buffer_size, align 4
  %91 = load i32, i32* @sync_write_pos, align 4
  %92 = load i32, i32* @sync_buffer_size, align 4
  %93 = urem i32 %91, %92
  %94 = sub i32 %90, %93
  store i32 %94, i32* %6, align 4
  %95 = load i64, i64* @sync_buffer, align 8
  %96 = load i32, i32* @sync_write_pos, align 4
  %97 = load i32, i32* @sync_buffer_size, align 4
  %98 = urem i32 %96, %97
  %99 = zext i32 %98 to i64
  %100 = add nsw i64 %95, %99
  %101 = load i64, i64* @POKEYSND_process_buffer, align 8
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @memcpy(i64 %100, i64 %101, i32 %102)
  %104 = load i64, i64* @sync_buffer, align 8
  %105 = load i64, i64* @POKEYSND_process_buffer, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %105, %107
  %109 = load i32, i32* %1, align 4
  %110 = load i32, i32* %6, align 4
  %111 = sub i32 %109, %110
  %112 = call i32 @memcpy(i64 %104, i64 %108, i32 %111)
  br label %113

113:                                              ; preds = %89, %79
  %114 = load i32, i32* %4, align 4
  store i32 %114, i32* @sync_write_pos, align 4
  %115 = load i32, i32* @sync_write_pos, align 4
  %116 = load i32, i32* @sync_read_pos, align 4
  %117 = load i32, i32* @sync_buffer_size, align 4
  %118 = add i32 %116, %117
  %119 = icmp ugt i32 %115, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %113
  %121 = load i32, i32* @sync_buffer_size, align 4
  %122 = load i32, i32* @sync_write_pos, align 4
  %123 = sub i32 %122, %121
  store i32 %123, i32* @sync_write_pos, align 4
  br label %124

124:                                              ; preds = %120, %113
  %125 = call i32 (...) @PLATFORM_SoundUnlock()
  br label %126

126:                                              ; preds = %124, %35
  ret void
}

declare dso_local i32 @PLATFORM_SoundLock(...) #1

declare dso_local i32 @Util_time(...) #1

declare dso_local i32 @PLATFORM_SoundUnlock(...) #1

declare dso_local i32 @POKEYSND_UpdateProcessBuffer(...) #1

declare dso_local i32 @Util_sleep(double) #1

declare dso_local i32 @WriteOut(...) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
