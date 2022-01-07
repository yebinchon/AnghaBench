; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_wpad.c___wpad_eventCB.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_wpad.c___wpad_eventCB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._wpad_cb = type { i32, i64, i32, i32, i32, i32*, i32, i32*, %struct.wiimote_t*, i32, i32, i32 }
%struct.wiimote_t = type { i32 }

@__wpdcb = common dso_local global %struct._wpad_cb* null, align 8
@EVENTQUEUE_LENGTH = common dso_local global i32 0, align 4
@wpaddata = common dso_local global i32* null, align 8
@WIIMOTE_LED_1 = common dso_local global i32 0, align 4
@WPAD_BALANCE_BOARD = common dso_local global i32 0, align 4
@__wpads_active = common dso_local global i32 0, align 4
@__wpads_used = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiimote_t*, i32)* @__wpad_eventCB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__wpad_eventCB(%struct.wiimote_t* %0, i32 %1) #0 {
  %3 = alloca %struct.wiimote_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct._wpad_cb*, align 8
  store %struct.wiimote_t* %0, %struct.wiimote_t** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %7, align 8
  store %struct._wpad_cb* null, %struct._wpad_cb** %8, align 8
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %171 [
    i32 129, label %10
    i32 128, label %68
    i32 131, label %69
    i32 130, label %124
  ]

10:                                               ; preds = %2
  %11 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %12 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct._wpad_cb*, %struct._wpad_cb** @__wpdcb, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct._wpad_cb, %struct._wpad_cb* %14, i64 %16
  store %struct._wpad_cb* %17, %struct._wpad_cb** %8, align 8
  %18 = load i32, i32* @EVENTQUEUE_LENGTH, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct._wpad_cb*, %struct._wpad_cb** %8, align 8
  %20 = getelementptr inbounds %struct._wpad_cb, %struct._wpad_cb* %19, i32 0, i32 5
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct._wpad_cb*, %struct._wpad_cb** %8, align 8
  %23 = getelementptr inbounds %struct._wpad_cb, %struct._wpad_cb* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  store i32* %25, i32** %7, align 8
  %26 = load %struct._wpad_cb*, %struct._wpad_cb** %8, align 8
  %27 = getelementptr inbounds %struct._wpad_cb, %struct._wpad_cb* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %10
  %32 = load %struct._wpad_cb*, %struct._wpad_cb** %8, align 8
  %33 = getelementptr inbounds %struct._wpad_cb, %struct._wpad_cb* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load %struct._wpad_cb*, %struct._wpad_cb** %8, align 8
  %38 = getelementptr inbounds %struct._wpad_cb, %struct._wpad_cb* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = srem i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct._wpad_cb*, %struct._wpad_cb** %8, align 8
  %42 = getelementptr inbounds %struct._wpad_cb, %struct._wpad_cb* %41, i32 0, i32 11
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  br label %50

45:                                               ; preds = %10
  %46 = load %struct._wpad_cb*, %struct._wpad_cb** %8, align 8
  %47 = getelementptr inbounds %struct._wpad_cb, %struct._wpad_cb* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %45, %31
  %51 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = load %struct._wpad_cb*, %struct._wpad_cb** %8, align 8
  %54 = getelementptr inbounds %struct._wpad_cb, %struct._wpad_cb* %53, i32 0, i32 4
  %55 = load %struct._wpad_cb*, %struct._wpad_cb** %8, align 8
  %56 = getelementptr inbounds %struct._wpad_cb, %struct._wpad_cb* %55, i32 0, i32 10
  %57 = call i32 @__wpad_read_wiimote(%struct.wiimote_t* %51, i32* %52, i32* %54, i32* %56)
  %58 = load %struct._wpad_cb*, %struct._wpad_cb** %8, align 8
  %59 = getelementptr inbounds %struct._wpad_cb, %struct._wpad_cb* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %59, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = load %struct._wpad_cb*, %struct._wpad_cb** %8, align 8
  %65 = getelementptr inbounds %struct._wpad_cb, %struct._wpad_cb* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = urem i64 %66, %63
  store i64 %67, i64* %65, align 8
  br label %172

68:                                               ; preds = %2
  br label %172

69:                                               ; preds = %2
  %70 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %71 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %5, align 4
  %73 = load %struct._wpad_cb*, %struct._wpad_cb** @__wpdcb, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct._wpad_cb, %struct._wpad_cb* %73, i64 %75
  store %struct._wpad_cb* %76, %struct._wpad_cb** %8, align 8
  %77 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %78 = load %struct._wpad_cb*, %struct._wpad_cb** %8, align 8
  %79 = getelementptr inbounds %struct._wpad_cb, %struct._wpad_cb* %78, i32 0, i32 8
  store %struct.wiimote_t* %77, %struct.wiimote_t** %79, align 8
  %80 = load %struct._wpad_cb*, %struct._wpad_cb** %8, align 8
  %81 = getelementptr inbounds %struct._wpad_cb, %struct._wpad_cb* %80, i32 0, i32 3
  store i32 0, i32* %81, align 4
  %82 = load %struct._wpad_cb*, %struct._wpad_cb** %8, align 8
  %83 = getelementptr inbounds %struct._wpad_cb, %struct._wpad_cb* %82, i32 0, i32 1
  store i64 0, i64* %83, align 8
  %84 = load %struct._wpad_cb*, %struct._wpad_cb** %8, align 8
  %85 = getelementptr inbounds %struct._wpad_cb, %struct._wpad_cb* %84, i32 0, i32 2
  store i32 0, i32* %85, align 8
  %86 = load %struct._wpad_cb*, %struct._wpad_cb** %8, align 8
  %87 = getelementptr inbounds %struct._wpad_cb, %struct._wpad_cb* %86, i32 0, i32 4
  store i32 0, i32* %87, align 8
  %88 = load %struct._wpad_cb*, %struct._wpad_cb** %8, align 8
  %89 = getelementptr inbounds %struct._wpad_cb, %struct._wpad_cb* %88, i32 0, i32 6
  %90 = call i32 @memset(i32* %89, i32 0, i32 4)
  %91 = load i32*, i32** @wpaddata, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = call i32 @memset(i32* %94, i32 0, i32 4)
  %96 = load %struct._wpad_cb*, %struct._wpad_cb** %8, align 8
  %97 = getelementptr inbounds %struct._wpad_cb, %struct._wpad_cb* %96, i32 0, i32 5
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* @EVENTQUEUE_LENGTH, align 4
  %100 = sext i32 %99 to i64
  %101 = mul i64 4, %100
  %102 = trunc i64 %101 to i32
  %103 = call i32 @memset(i32* %98, i32 0, i32 %102)
  %104 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %105 = call i32 (...) @CONF_GetSensorBarPosition()
  %106 = xor i32 %105, 1
  %107 = call i32 @wiiuse_set_ir_position(%struct.wiimote_t* %104, i32 %106)
  %108 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %109 = call i32 (...) @CONF_GetIRSensitivity()
  %110 = call i32 @wiiuse_set_ir_sensitivity(%struct.wiimote_t* %108, i32 %109)
  %111 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %112 = load i32, i32* @WIIMOTE_LED_1, align 4
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* @WPAD_BALANCE_BOARD, align 4
  %115 = srem i32 %113, %114
  %116 = shl i32 %112, %115
  %117 = call i32 @wiiuse_set_leds(%struct.wiimote_t* %111, i32 %116, i32* null)
  %118 = load i32, i32* %5, align 4
  %119 = call i32 @__wpad_setfmt(i32 %118)
  %120 = load i32, i32* %5, align 4
  %121 = shl i32 1, %120
  %122 = load i32, i32* @__wpads_active, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* @__wpads_active, align 4
  br label %172

124:                                              ; preds = %2
  %125 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %126 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %5, align 4
  %128 = load %struct._wpad_cb*, %struct._wpad_cb** @__wpdcb, align 8
  %129 = load i32, i32* %5, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct._wpad_cb, %struct._wpad_cb* %128, i64 %130
  store %struct._wpad_cb* %131, %struct._wpad_cb** %8, align 8
  %132 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %133 = load %struct._wpad_cb*, %struct._wpad_cb** %8, align 8
  %134 = getelementptr inbounds %struct._wpad_cb, %struct._wpad_cb* %133, i32 0, i32 8
  store %struct.wiimote_t* %132, %struct.wiimote_t** %134, align 8
  %135 = load %struct._wpad_cb*, %struct._wpad_cb** %8, align 8
  %136 = getelementptr inbounds %struct._wpad_cb, %struct._wpad_cb* %135, i32 0, i32 3
  store i32 0, i32* %136, align 4
  %137 = load %struct._wpad_cb*, %struct._wpad_cb** %8, align 8
  %138 = getelementptr inbounds %struct._wpad_cb, %struct._wpad_cb* %137, i32 0, i32 1
  store i64 0, i64* %138, align 8
  %139 = load %struct._wpad_cb*, %struct._wpad_cb** %8, align 8
  %140 = getelementptr inbounds %struct._wpad_cb, %struct._wpad_cb* %139, i32 0, i32 2
  store i32 0, i32* %140, align 8
  %141 = load %struct._wpad_cb*, %struct._wpad_cb** %8, align 8
  %142 = getelementptr inbounds %struct._wpad_cb, %struct._wpad_cb* %141, i32 0, i32 0
  store i32 0, i32* %142, align 8
  %143 = load %struct._wpad_cb*, %struct._wpad_cb** %8, align 8
  %144 = getelementptr inbounds %struct._wpad_cb, %struct._wpad_cb* %143, i32 0, i32 4
  store i32 -1, i32* %144, align 8
  %145 = load %struct._wpad_cb*, %struct._wpad_cb** %8, align 8
  %146 = getelementptr inbounds %struct._wpad_cb, %struct._wpad_cb* %145, i32 0, i32 6
  %147 = call i32 @memset(i32* %146, i32 0, i32 4)
  %148 = load i32*, i32** @wpaddata, align 8
  %149 = load i32, i32* %5, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = call i32 @memset(i32* %151, i32 0, i32 4)
  %153 = load %struct._wpad_cb*, %struct._wpad_cb** %8, align 8
  %154 = getelementptr inbounds %struct._wpad_cb, %struct._wpad_cb* %153, i32 0, i32 5
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* @EVENTQUEUE_LENGTH, align 4
  %157 = sext i32 %156 to i64
  %158 = mul i64 4, %157
  %159 = trunc i64 %158 to i32
  %160 = call i32 @memset(i32* %155, i32 0, i32 %159)
  %161 = load i32, i32* %5, align 4
  %162 = shl i32 1, %161
  %163 = xor i32 %162, -1
  %164 = load i32, i32* @__wpads_active, align 4
  %165 = and i32 %164, %163
  store i32 %165, i32* @__wpads_active, align 4
  %166 = load i32, i32* %5, align 4
  %167 = shl i32 1, %166
  %168 = xor i32 %167, -1
  %169 = load i32, i32* @__wpads_used, align 4
  %170 = and i32 %169, %168
  store i32 %170, i32* @__wpads_used, align 4
  br label %172

171:                                              ; preds = %2
  br label %172

172:                                              ; preds = %171, %124, %69, %68, %50
  ret void
}

declare dso_local i32 @__wpad_read_wiimote(%struct.wiimote_t*, i32*, i32*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @wiiuse_set_ir_position(%struct.wiimote_t*, i32) #1

declare dso_local i32 @CONF_GetSensorBarPosition(...) #1

declare dso_local i32 @wiiuse_set_ir_sensitivity(%struct.wiimote_t*, i32) #1

declare dso_local i32 @CONF_GetIRSensitivity(...) #1

declare dso_local i32 @wiiuse_set_leds(%struct.wiimote_t*, i32, i32*) #1

declare dso_local i32 @__wpad_setfmt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
