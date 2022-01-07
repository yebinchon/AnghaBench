; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_wiiusb_hid.c_wiiusb_hid_add_adapter.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_wiiusb_hid.c_wiiusb_hid_add_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.wiiusb_adapter* }
%struct.wiiusb_adapter = type { i64, i32, i32, %struct.wiiusb_adapter*, i32, %struct.wiiusb_adapter*, %struct.TYPE_14__*, i8*, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Allocation of adapter failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Error opening device 0x%p (VID/PID: %04x:%04x).\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Retrode SNES mouse found (currently not supported)\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Could not find HID config for device.\0A\00", align 1
@WIIUSB_SC_NONE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Error creating send control buffer.\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"hid\00", align 1
@wiiusb_hid = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c" Interface not found.\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Interface found: [%s].\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"Device 0x%p attached (VID/PID: %04x:%04x).\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"Interface Retrode1 gamepad slot: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"No slot free for Retrode%d gamepad\0A\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"Interface Retrode%d gamepad slot: %d\0A\00", align 1
@wiiusb_hid_removal_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_15__*)* @wiiusb_hid_add_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wiiusb_hid_add_adapter(i8* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_16__, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.wiiusb_adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  store i8* null, i8** %7, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %13, %struct.TYPE_14__** %8, align 8
  %14 = call i64 @calloc(i32 1, i32 64)
  %15 = inttoptr i64 %14 to %struct.wiiusb_adapter*
  store %struct.wiiusb_adapter* %15, %struct.wiiusb_adapter** %9, align 8
  %16 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %9, align 8
  %17 = icmp ne %struct.wiiusb_adapter* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %247

19:                                               ; preds = %2
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %21 = icmp ne %struct.TYPE_14__* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %9, align 8
  %24 = call i32 @free(%struct.wiiusb_adapter* %23)
  %25 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %247

26:                                               ; preds = %19
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %9, align 8
  %37 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %36, i32 0, i32 2
  %38 = call i64 @USB_OpenDevice(i32 %29, i32 %32, i32 %35, i32* %37)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %26
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %46, i32 %49)
  %51 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %9, align 8
  %52 = call i32 @free(%struct.wiiusb_adapter* %51)
  store i32 -1, i32* %3, align 4
  br label %247

53:                                               ; preds = %26
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %9, align 8
  %58 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  %59 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %9, align 8
  %60 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @USB_GetDescriptors(i32 %61, %struct.TYPE_16__* %6)
  %63 = bitcast %struct.TYPE_16__* %6 to i64*
  %64 = load i64, i64* %63, align 4
  %65 = call i64 @isRetrodeMouse(i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %53
  %68 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %226

69:                                               ; preds = %53
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %71 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %9, align 8
  %72 = call i32 @wiiusb_get_description(%struct.TYPE_15__* %70, %struct.wiiusb_adapter* %71, %struct.TYPE_16__* %6)
  %73 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %9, align 8
  %74 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %226

79:                                               ; preds = %69
  %80 = load i32, i32* @WIIUSB_SC_NONE, align 4
  %81 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %9, align 8
  %82 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %81, i32 0, i32 8
  store i32 %80, i32* %82, align 8
  %83 = call i8* @memalign(i32 32, i32 128)
  %84 = bitcast i8* %83 to %struct.wiiusb_adapter*
  %85 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %9, align 8
  %86 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %85, i32 0, i32 3
  store %struct.wiiusb_adapter* %84, %struct.wiiusb_adapter** %86, align 8
  %87 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %9, align 8
  %88 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %87, i32 0, i32 3
  %89 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %88, align 8
  %90 = icmp ne %struct.wiiusb_adapter* %89, null
  br i1 %90, label %93, label %91

91:                                               ; preds = %79
  %92 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %226

93:                                               ; preds = %79
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %9, align 8
  %102 = call i8* @pad_connection_pad_init(i32 %96, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %98, i32 %100, %struct.wiiusb_adapter* %101, %struct.TYPE_17__* @wiiusb_hid)
  %103 = ptrtoint i8* %102 to i32
  %104 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %9, align 8
  %105 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 8
  %106 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %9, align 8
  %107 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = icmp eq i32 %108, -1
  br i1 %109, label %110, label %111

110:                                              ; preds = %93
  br label %226

111:                                              ; preds = %93
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %9, align 8
  %116 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @pad_connection_has_interface(i32 %114, i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %111
  %121 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %226

122:                                              ; preds = %111
  %123 = call i8* @memalign(i32 32, i32 128)
  %124 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %9, align 8
  %125 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %124, i32 0, i32 7
  store i8* %123, i8** %125, align 8
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %127 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %9, align 8
  %128 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %127, i32 0, i32 6
  store %struct.TYPE_14__* %126, %struct.TYPE_14__** %128, align 8
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 1
  %131 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %130, align 8
  %132 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %9, align 8
  %133 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %132, i32 0, i32 5
  store %struct.wiiusb_adapter* %131, %struct.wiiusb_adapter** %133, align 8
  %134 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %9, align 8
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 1
  store %struct.wiiusb_adapter* %134, %struct.wiiusb_adapter** %136, align 8
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %138 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %9, align 8
  %139 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = call i8* @wiiusb_hid_joypad_name(%struct.TYPE_14__* %137, i32 %140)
  store i8* %141, i8** %7, align 8
  %142 = load i8*, i8** %7, align 8
  %143 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8* %142)
  %144 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %9, align 8
  %145 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i32 %146, i32 %148, i32 %150)
  %152 = bitcast %struct.TYPE_16__* %6 to i64*
  %153 = load i64, i64* %152, align 4
  %154 = call i64 @isRetrodeGamepad(i64 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %207

156:                                              ; preds = %122
  %157 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %9, align 8
  %158 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %159)
  %161 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %9, align 8
  %162 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load i8*, i8** %7, align 8
  %165 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @wiiusb_hid, i32 0, i32 0), align 4
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @wiiusb_hid_device_add_autodetect(i32 %163, i8* %164, i32 %165, i32 %167, i32 %169)
  store i32 2, i32* %10, align 4
  br label %171

171:                                              ; preds = %203, %156
  %172 = load i32, i32* %10, align 4
  %173 = icmp sle i32 %172, 4
  br i1 %173, label %174, label %206

174:                                              ; preds = %171
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %9, align 8
  %183 = call i8* @pad_connection_pad_init(i32 %177, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %179, i32 %181, %struct.wiiusb_adapter* %182, %struct.TYPE_17__* @wiiusb_hid)
  %184 = ptrtoint i8* %183 to i32
  store i32 %184, i32* %11, align 4
  %185 = load i32, i32* %11, align 4
  %186 = icmp eq i32 %185, -1
  br i1 %186, label %187, label %190

187:                                              ; preds = %174
  %188 = load i32, i32* %10, align 4
  %189 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i32 %188)
  br label %202

190:                                              ; preds = %174
  %191 = load i32, i32* %10, align 4
  %192 = load i32, i32* %11, align 4
  %193 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), i32 %191, i32 %192)
  %194 = load i32, i32* %11, align 4
  %195 = load i8*, i8** %7, align 8
  %196 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @wiiusb_hid, i32 0, i32 0), align 4
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @wiiusb_hid_device_add_autodetect(i32 %194, i8* %195, i32 %196, i32 %198, i32 %200)
  br label %202

202:                                              ; preds = %190, %187
  br label %203

203:                                              ; preds = %202
  %204 = load i32, i32* %10, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %10, align 4
  br label %171

206:                                              ; preds = %171
  br label %218

207:                                              ; preds = %122
  %208 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %9, align 8
  %209 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = load i8*, i8** %7, align 8
  %212 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @wiiusb_hid, i32 0, i32 0), align 4
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @wiiusb_hid_device_add_autodetect(i32 %210, i8* %211, i32 %212, i32 %214, i32 %216)
  br label %218

218:                                              ; preds = %207, %206
  %219 = call i32 @USB_FreeDescriptors(%struct.TYPE_16__* %6)
  %220 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %9, align 8
  %221 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @wiiusb_hid_removal_cb, align 4
  %224 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %9, align 8
  %225 = call i32 @USB_DeviceRemovalNotifyAsync(i32 %222, i32 %223, %struct.wiiusb_adapter* %224)
  store i32 0, i32* %3, align 4
  br label %247

226:                                              ; preds = %120, %110, %91, %77, %67
  %227 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %9, align 8
  %228 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %227, i32 0, i32 3
  %229 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %228, align 8
  %230 = icmp ne %struct.wiiusb_adapter* %229, null
  br i1 %230, label %231, label %236

231:                                              ; preds = %226
  %232 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %9, align 8
  %233 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %232, i32 0, i32 3
  %234 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %233, align 8
  %235 = call i32 @free(%struct.wiiusb_adapter* %234)
  br label %236

236:                                              ; preds = %231, %226
  %237 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %9, align 8
  %238 = icmp ne %struct.wiiusb_adapter* %237, null
  br i1 %238, label %239, label %242

239:                                              ; preds = %236
  %240 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %9, align 8
  %241 = call i32 @free(%struct.wiiusb_adapter* %240)
  br label %242

242:                                              ; preds = %239, %236
  %243 = call i32 @USB_FreeDescriptors(%struct.TYPE_16__* %6)
  %244 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %9, align 8
  %245 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %244, i32 0, i32 2
  %246 = call i32 @USB_CloseDevice(i32* %245)
  store i32 -1, i32* %3, align 4
  br label %247

247:                                              ; preds = %242, %218, %40, %22, %18
  %248 = load i32, i32* %3, align 4
  ret i32 %248
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @free(%struct.wiiusb_adapter*) #1

declare dso_local i32 @RARCH_ERR(i8*, ...) #1

declare dso_local i64 @USB_OpenDevice(i32, i32, i32, i32*) #1

declare dso_local i32 @USB_GetDescriptors(i32, %struct.TYPE_16__*) #1

declare dso_local i64 @isRetrodeMouse(i64) #1

declare dso_local i32 @RARCH_LOG(i8*, ...) #1

declare dso_local i32 @wiiusb_get_description(%struct.TYPE_15__*, %struct.wiiusb_adapter*, %struct.TYPE_16__*) #1

declare dso_local i8* @memalign(i32, i32) #1

declare dso_local i8* @pad_connection_pad_init(i32, i8*, i32, i32, %struct.wiiusb_adapter*, %struct.TYPE_17__*) #1

declare dso_local i32 @pad_connection_has_interface(i32, i32) #1

declare dso_local i8* @wiiusb_hid_joypad_name(%struct.TYPE_14__*, i32) #1

declare dso_local i64 @isRetrodeGamepad(i64) #1

declare dso_local i32 @wiiusb_hid_device_add_autodetect(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @USB_FreeDescriptors(%struct.TYPE_16__*) #1

declare dso_local i32 @USB_DeviceRemovalNotifyAsync(i32, i32, %struct.wiiusb_adapter*) #1

declare dso_local i32 @USB_CloseDevice(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
