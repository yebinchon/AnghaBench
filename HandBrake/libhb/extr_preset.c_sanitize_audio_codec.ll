; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_sanitize_audio_codec.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_sanitize_audio_codec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@HB_ACODEC_AUTO_PASS = common dso_local global i32 0, align 4
@HB_ACODEC_PASS_FLAG = common dso_local global i32 0, align 4
@HB_ACODEC_PASS_MASK = common dso_local global i32 0, align 4
@HB_ACODEC_INVALID = common dso_local global i32 0, align 4
@HB_ACODEC_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32)* @sanitize_audio_codec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sanitize_audio_codec(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @HB_ACODEC_AUTO_PASS, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %5
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @hb_autopassthru_get_encoder(i32 %18, i32 %19, i32 %20, i32 %21)
  store i32 %22, i32* %11, align 4
  br label %45

23:                                               ; preds = %5
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @HB_ACODEC_PASS_FLAG, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @HB_ACODEC_PASS_MASK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @hb_audio_encoder_get_fallback_for_passthru(i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @HB_ACODEC_INVALID, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %41, %35
  br label %44

44:                                               ; preds = %43, %28, %23
  br label %45

45:                                               ; preds = %44, %17
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %12, align 8
  br label %46

46:                                               ; preds = %70, %45
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %48 = call %struct.TYPE_4__* @hb_audio_encoder_get_next(%struct.TYPE_4__* %47)
  store %struct.TYPE_4__* %48, %struct.TYPE_4__** %12, align 8
  %49 = icmp ne %struct.TYPE_4__* %48, null
  br i1 %49, label %50, label %71

50:                                               ; preds = %46
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %50
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @HB_ACODEC_NONE, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %56
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %10, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %60
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @hb_audio_encoder_get_default(i32 %68)
  store i32 %69, i32* %11, align 4
  br label %71

70:                                               ; preds = %60, %56, %50
  br label %46

71:                                               ; preds = %67, %46
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @HB_ACODEC_INVALID, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @hb_audio_encoder_get_default(i32 %76)
  store i32 %77, i32* %11, align 4
  br label %78

78:                                               ; preds = %75, %71
  %79 = load i32, i32* %11, align 4
  ret i32 %79
}

declare dso_local i32 @hb_autopassthru_get_encoder(i32, i32, i32, i32) #1

declare dso_local i32 @hb_audio_encoder_get_fallback_for_passthru(i32) #1

declare dso_local %struct.TYPE_4__* @hb_audio_encoder_get_next(%struct.TYPE_4__*) #1

declare dso_local i32 @hb_audio_encoder_get_default(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
