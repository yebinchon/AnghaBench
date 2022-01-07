; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_io.c_wiiuse_handshake.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_io.c_wiiuse_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_t = type { i32, i32, %struct.accel_t }
%struct.accel_t = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@WIIMOTE_LED_NONE = common dso_local global i32 0, align 4
@WM_CTRL_STATUS_BYTE1_ATTACHMENT = common dso_local global i32 0, align 4
@WM_EXP_ID = common dso_local global i32 0, align 4
@EXP_ID_CODE_CLASSIC_WIIU_PRO = common dso_local global i32 0, align 4
@WIIMOTE_STATE_WIIU_PRO = common dso_local global i32 0, align 4
@WM_MEM_OFFSET_CALIBRATION = common dso_local global i32 0, align 4
@WIIMOTE_STATE_HANDSHAKE = common dso_local global i32 0, align 4
@WIIMOTE_STATE_HANDSHAKE_COMPLETE = common dso_local global i32 0, align 4
@WIIUSE_CONNECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wiiuse_handshake(%struct.wiimote_t* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.wiimote_t*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.accel_t*, align 8
  store %struct.wiimote_t* %0, %struct.wiimote_t** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32* null, i32** %7, align 8
  %9 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %10 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %9, i32 0, i32 2
  store %struct.accel_t* %10, %struct.accel_t** %8, align 8
  %11 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %12 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %68 [
    i32 0, label %14
    i32 1, label %24
    i32 2, label %44
  ]

14:                                               ; preds = %3
  %15 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %16 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  %19 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %20 = load i32, i32* @WIIMOTE_LED_NONE, align 4
  %21 = call i32 @wiiuse_set_leds(%struct.wiimote_t* %19, i32 %20, i32* null)
  %22 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %23 = call i32 @wiiuse_status(%struct.wiimote_t* %22, void (%struct.wiimote_t*, i32*, i32)* @wiiuse_handshake)
  br label %173

24:                                               ; preds = %3
  %25 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %26 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = call i32* @__lwp_wkspace_allocate(i32 32)
  store i32* %29, i32** %7, align 8
  %30 = load i32, i32* %6, align 4
  %31 = icmp sgt i32 %30, 2
  br i1 %31, label %32, label %59

32:                                               ; preds = %24
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @WM_CTRL_STATUS_BYTE1_ATTACHMENT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %32
  %40 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* @WM_EXP_ID, align 4
  %43 = call i32 @wiiuse_read_data(%struct.wiimote_t* %40, i32* %41, i32 %42, i32 6, void (%struct.wiimote_t*, i32*, i32)* @wiiuse_handshake)
  br label %173

44:                                               ; preds = %3
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @BIG_ENDIAN_LONG(i32 %47)
  %49 = load i32, i32* @EXP_ID_CODE_CLASSIC_WIIU_PRO, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %44
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @memset(i32* %52, i32 0, i32 8)
  %54 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %55 = load i32, i32* @WIIMOTE_STATE_WIIU_PRO, align 4
  %56 = call i32 @WIIMOTE_ENABLE_STATE(%struct.wiimote_t* %54, i32 %55)
  br label %68

57:                                               ; preds = %44
  %58 = load i32*, i32** %5, align 8
  store i32* %58, i32** %7, align 8
  br label %59

59:                                               ; preds = %57, %32, %24
  %60 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %61 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  %64 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* @WM_MEM_OFFSET_CALIBRATION, align 4
  %67 = call i32 @wiiuse_read_data(%struct.wiimote_t* %64, i32* %65, i32 %66, i32 7, void (%struct.wiimote_t*, i32*, i32)* @wiiuse_handshake)
  br label %173

68:                                               ; preds = %3, %51
  %69 = load i32*, i32** %5, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 2
  %73 = load i32*, i32** %5, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 3
  %75 = load i32, i32* %74, align 4
  %76 = ashr i32 %75, 4
  %77 = and i32 %76, 3
  %78 = or i32 %72, %77
  %79 = load %struct.accel_t*, %struct.accel_t** %8, align 8
  %80 = getelementptr inbounds %struct.accel_t, %struct.accel_t* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 4
  %82 = load i32*, i32** %5, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %84, 2
  %86 = load i32*, i32** %5, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 3
  %88 = load i32, i32* %87, align 4
  %89 = ashr i32 %88, 2
  %90 = and i32 %89, 3
  %91 = or i32 %85, %90
  %92 = load %struct.accel_t*, %struct.accel_t** %8, align 8
  %93 = getelementptr inbounds %struct.accel_t, %struct.accel_t* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  store i32 %91, i32* %94, align 4
  %95 = load i32*, i32** %5, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 2
  %97 = load i32, i32* %96, align 4
  %98 = shl i32 %97, 2
  %99 = load i32*, i32** %5, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 3
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 3
  %103 = or i32 %98, %102
  %104 = load %struct.accel_t*, %struct.accel_t** %8, align 8
  %105 = getelementptr inbounds %struct.accel_t, %struct.accel_t* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  store i32 %103, i32* %106, align 4
  %107 = load i32*, i32** %5, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 4
  %109 = load i32, i32* %108, align 4
  %110 = shl i32 %109, 2
  %111 = load i32*, i32** %5, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 7
  %113 = load i32, i32* %112, align 4
  %114 = ashr i32 %113, 4
  %115 = and i32 %114, 3
  %116 = or i32 %110, %115
  %117 = load %struct.accel_t*, %struct.accel_t** %8, align 8
  %118 = getelementptr inbounds %struct.accel_t, %struct.accel_t* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = sub nsw i32 %116, %120
  %122 = load %struct.accel_t*, %struct.accel_t** %8, align 8
  %123 = getelementptr inbounds %struct.accel_t, %struct.accel_t* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  store i32 %121, i32* %124, align 4
  %125 = load i32*, i32** %5, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 5
  %127 = load i32, i32* %126, align 4
  %128 = shl i32 %127, 2
  %129 = load i32*, i32** %5, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 7
  %131 = load i32, i32* %130, align 4
  %132 = ashr i32 %131, 2
  %133 = and i32 %132, 3
  %134 = or i32 %128, %133
  %135 = load %struct.accel_t*, %struct.accel_t** %8, align 8
  %136 = getelementptr inbounds %struct.accel_t, %struct.accel_t* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = sub nsw i32 %134, %138
  %140 = load %struct.accel_t*, %struct.accel_t** %8, align 8
  %141 = getelementptr inbounds %struct.accel_t, %struct.accel_t* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 1
  store i32 %139, i32* %142, align 4
  %143 = load i32*, i32** %5, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 6
  %145 = load i32, i32* %144, align 4
  %146 = shl i32 %145, 2
  %147 = load i32*, i32** %5, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 7
  %149 = load i32, i32* %148, align 4
  %150 = and i32 %149, 3
  %151 = or i32 %146, %150
  %152 = load %struct.accel_t*, %struct.accel_t** %8, align 8
  %153 = getelementptr inbounds %struct.accel_t, %struct.accel_t* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = sub nsw i32 %151, %155
  %157 = load %struct.accel_t*, %struct.accel_t** %8, align 8
  %158 = getelementptr inbounds %struct.accel_t, %struct.accel_t* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 2
  store i32 %156, i32* %159, align 4
  %160 = load i32*, i32** %5, align 8
  %161 = call i32 @__lwp_wkspace_free(i32* %160)
  %162 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %163 = load i32, i32* @WIIMOTE_STATE_HANDSHAKE, align 4
  %164 = call i32 @WIIMOTE_DISABLE_STATE(%struct.wiimote_t* %162, i32 %163)
  %165 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %166 = load i32, i32* @WIIMOTE_STATE_HANDSHAKE_COMPLETE, align 4
  %167 = call i32 @WIIMOTE_ENABLE_STATE(%struct.wiimote_t* %165, i32 %166)
  %168 = load i32, i32* @WIIUSE_CONNECT, align 4
  %169 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %170 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 4
  %171 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %172 = call i32 @wiiuse_status(%struct.wiimote_t* %171, void (%struct.wiimote_t*, i32*, i32)* null)
  br label %173

173:                                              ; preds = %68, %59, %39, %14
  ret void
}

declare dso_local i32 @wiiuse_set_leds(%struct.wiimote_t*, i32, i32*) #1

declare dso_local i32 @wiiuse_status(%struct.wiimote_t*, void (%struct.wiimote_t*, i32*, i32)*) #1

declare dso_local i32* @__lwp_wkspace_allocate(i32) #1

declare dso_local i32 @wiiuse_read_data(%struct.wiimote_t*, i32*, i32, i32, void (%struct.wiimote_t*, i32*, i32)*) #1

declare dso_local i32 @BIG_ENDIAN_LONG(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @WIIMOTE_ENABLE_STATE(%struct.wiimote_t*, i32) #1

declare dso_local i32 @__lwp_wkspace_free(i32*) #1

declare dso_local i32 @WIIMOTE_DISABLE_STATE(%struct.wiimote_t*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
