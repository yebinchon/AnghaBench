; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_io.c_wiiuse_handshake_expansion.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_io.c_wiiuse_handshake_expansion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_t = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@WM_EXP_MEM_ENABLE1 = common dso_local global i32 0, align 4
@WM_EXP_MEM_ENABLE2 = common dso_local global i32 0, align 4
@EXP_HANDSHAKE_LEN = common dso_local global i32 0, align 4
@WM_EXP_MEM_CALIBR = common dso_local global i32 0, align 4
@WIIMOTE_STATE_EXP_HANDSHAKE = common dso_local global i32 0, align 4
@WIIMOTE_STATE_EXP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wiiuse_handshake_expansion(%struct.wiimote_t* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.wiimote_t*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.wiimote_t* %0, %struct.wiimote_t** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32* null, i32** %9, align 8
  %10 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %11 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %97 [
    i32 0, label %13
    i32 1, label %19
    i32 2, label %25
    i32 3, label %38
  ]

13:                                               ; preds = %3
  %14 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %15 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %14, i32 0, i32 0
  store i32 1, i32* %15, align 4
  store i32 85, i32* %8, align 4
  %16 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %17 = load i32, i32* @WM_EXP_MEM_ENABLE1, align 4
  %18 = call i32 @wiiuse_write_data(%struct.wiimote_t* %16, i32 %17, i32* %8, i32 1, void (%struct.wiimote_t*, i32*, i32)* @wiiuse_handshake_expansion)
  br label %97

19:                                               ; preds = %3
  %20 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %21 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %20, i32 0, i32 0
  store i32 2, i32* %21, align 4
  store i32 0, i32* %8, align 4
  %22 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %23 = load i32, i32* @WM_EXP_MEM_ENABLE2, align 4
  %24 = call i32 @wiiuse_write_data(%struct.wiimote_t* %22, i32 %23, i32* %8, i32 1, void (%struct.wiimote_t*, i32*, i32)* @wiiuse_handshake_expansion)
  br label %97

25:                                               ; preds = %3
  %26 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %27 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %26, i32 0, i32 0
  store i32 3, i32* %27, align 4
  %28 = load i32, i32* @EXP_HANDSHAKE_LEN, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 4, %29
  %31 = trunc i64 %30 to i32
  %32 = call i32* @__lwp_wkspace_allocate(i32 %31)
  store i32* %32, i32** %9, align 8
  %33 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* @WM_EXP_MEM_CALIBR, align 4
  %36 = load i32, i32* @EXP_HANDSHAKE_LEN, align 4
  %37 = call i32 @wiiuse_read_data(%struct.wiimote_t* %33, i32* %34, i32 %35, i32 %36, void (%struct.wiimote_t*, i32*, i32)* @wiiuse_handshake_expansion)
  br label %97

38:                                               ; preds = %3
  %39 = load i32*, i32** %5, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41, %38
  br label %97

45:                                               ; preds = %41
  %46 = load i32*, i32** %5, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 220
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @BIG_ENDIAN_LONG(i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  switch i32 %50, label %73 [
    i32 128, label %51
    i32 138, label %62
    i32 132, label %62
    i32 131, label %62
    i32 130, label %62
    i32 137, label %62
    i32 136, label %62
    i32 135, label %62
    i32 134, label %62
    i32 133, label %62
    i32 129, label %62
  ]

51:                                               ; preds = %45
  %52 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %53 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %54 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @nunchuk_handshake(%struct.wiimote_t* %52, i32* %55, i32* %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %51
  br label %97

61:                                               ; preds = %51
  br label %84

62:                                               ; preds = %45, %45, %45, %45, %45, %45, %45, %45, %45, %45
  %63 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %64 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %65 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @classic_ctrl_handshake(%struct.wiimote_t* %63, i32* %66, i32* %67, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %62
  br label %97

72:                                               ; preds = %62
  br label %84

73:                                               ; preds = %45
  %74 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %75 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %76 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32*, i32** %5, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @classic_ctrl_handshake(%struct.wiimote_t* %74, i32* %77, i32* %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %73
  br label %97

83:                                               ; preds = %73
  br label %84

84:                                               ; preds = %83, %72, %61
  %85 = load i32*, i32** %5, align 8
  %86 = call i32 @__lwp_wkspace_free(i32* %85)
  %87 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %88 = load i32, i32* @WIIMOTE_STATE_EXP_HANDSHAKE, align 4
  %89 = call i32 @WIIMOTE_DISABLE_STATE(%struct.wiimote_t* %87, i32 %88)
  %90 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %91 = load i32, i32* @WIIMOTE_STATE_EXP, align 4
  %92 = call i32 @WIIMOTE_ENABLE_STATE(%struct.wiimote_t* %90, i32 %91)
  %93 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %94 = call i32 @wiiuse_set_ir_mode(%struct.wiimote_t* %93)
  %95 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %96 = call i32 @wiiuse_status(%struct.wiimote_t* %95, i32* null)
  br label %97

97:                                               ; preds = %44, %60, %71, %82, %3, %84, %25, %19, %13
  ret void
}

declare dso_local i32 @wiiuse_write_data(%struct.wiimote_t*, i32, i32*, i32, void (%struct.wiimote_t*, i32*, i32)*) #1

declare dso_local i32* @__lwp_wkspace_allocate(i32) #1

declare dso_local i32 @wiiuse_read_data(%struct.wiimote_t*, i32*, i32, i32, void (%struct.wiimote_t*, i32*, i32)*) #1

declare dso_local i32 @BIG_ENDIAN_LONG(i32) #1

declare dso_local i32 @nunchuk_handshake(%struct.wiimote_t*, i32*, i32*, i32) #1

declare dso_local i32 @classic_ctrl_handshake(%struct.wiimote_t*, i32*, i32*, i32) #1

declare dso_local i32 @__lwp_wkspace_free(i32*) #1

declare dso_local i32 @WIIMOTE_DISABLE_STATE(%struct.wiimote_t*, i32) #1

declare dso_local i32 @WIIMOTE_ENABLE_STATE(%struct.wiimote_t*, i32) #1

declare dso_local i32 @wiiuse_set_ir_mode(%struct.wiimote_t*) #1

declare dso_local i32 @wiiuse_status(%struct.wiimote_t*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
