; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_libusb_hid.c_libusb_get_description.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_libusb_hid.c_libusb_get_description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb_device = type { i32 }
%struct.libusb_adapter = type { i32, i32, i32, i32, i32 }
%struct.libusb_config_descriptor = type { %struct.libusb_interface*, i64 }
%struct.libusb_interface = type { i32, %struct.libusb_interface_descriptor* }
%struct.libusb_interface_descriptor = type { i64, %struct.libusb_endpoint_descriptor*, i64, i64 }
%struct.libusb_endpoint_descriptor = type { i32, i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"Error %d getting libusb config descriptor\0A\00", align 1
@LIBUSB_TRANSFER_TYPE_MASK = common dso_local global i32 0, align 4
@LIBUSB_TRANSFER_TYPE_INTERRUPT = common dso_local global i32 0, align 4
@LIBUSB_ENDPOINT_DIR_MASK = common dso_local global i32 0, align 4
@LIBUSB_ENDPOINT_OUT = common dso_local global i32 0, align 4
@LIBUSB_ENDPOINT_IN = common dso_local global i32 0, align 4
@LIBUSB_CLASS_HID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.libusb_device*, %struct.libusb_adapter*)* @libusb_get_description to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @libusb_get_description(%struct.libusb_device* %0, %struct.libusb_adapter* %1) #0 {
  %3 = alloca %struct.libusb_device*, align 8
  %4 = alloca %struct.libusb_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.libusb_config_descriptor*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.libusb_interface*, align 8
  %11 = alloca %struct.libusb_interface_descriptor*, align 8
  %12 = alloca %struct.libusb_endpoint_descriptor*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.libusb_device* %0, %struct.libusb_device** %3, align 8
  store %struct.libusb_adapter* %1, %struct.libusb_adapter** %4, align 8
  %16 = load %struct.libusb_device*, %struct.libusb_device** %3, align 8
  %17 = call i32 @libusb_get_config_descriptor(%struct.libusb_device* %16, i32 0, %struct.libusb_config_descriptor** %8)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %142

23:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %135, %23
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.libusb_config_descriptor*, %struct.libusb_config_descriptor** %8, align 8
  %27 = getelementptr inbounds %struct.libusb_config_descriptor, %struct.libusb_config_descriptor* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = icmp ult i32 %25, %29
  br i1 %30, label %31, label %138

31:                                               ; preds = %24
  %32 = load %struct.libusb_config_descriptor*, %struct.libusb_config_descriptor** %8, align 8
  %33 = getelementptr inbounds %struct.libusb_config_descriptor, %struct.libusb_config_descriptor* %32, i32 0, i32 0
  %34 = load %struct.libusb_interface*, %struct.libusb_interface** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.libusb_interface, %struct.libusb_interface* %34, i64 %36
  store %struct.libusb_interface* %37, %struct.libusb_interface** %10, align 8
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %131, %31
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.libusb_interface*, %struct.libusb_interface** %10, align 8
  %41 = getelementptr inbounds %struct.libusb_interface, %struct.libusb_interface* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %134

44:                                               ; preds = %38
  %45 = load %struct.libusb_interface*, %struct.libusb_interface** %10, align 8
  %46 = getelementptr inbounds %struct.libusb_interface, %struct.libusb_interface* %45, i32 0, i32 1
  %47 = load %struct.libusb_interface_descriptor*, %struct.libusb_interface_descriptor** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.libusb_interface_descriptor, %struct.libusb_interface_descriptor* %47, i64 %49
  store %struct.libusb_interface_descriptor* %50, %struct.libusb_interface_descriptor** %11, align 8
  %51 = load %struct.libusb_interface_descriptor*, %struct.libusb_interface_descriptor** %11, align 8
  %52 = getelementptr inbounds %struct.libusb_interface_descriptor, %struct.libusb_interface_descriptor* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = load %struct.libusb_adapter*, %struct.libusb_adapter** %4, align 8
  %56 = getelementptr inbounds %struct.libusb_adapter, %struct.libusb_adapter* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %127, %44
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.libusb_interface_descriptor*, %struct.libusb_interface_descriptor** %11, align 8
  %60 = getelementptr inbounds %struct.libusb_interface_descriptor, %struct.libusb_interface_descriptor* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = icmp ult i32 %58, %62
  br i1 %63, label %64, label %130

64:                                               ; preds = %57
  %65 = load %struct.libusb_interface_descriptor*, %struct.libusb_interface_descriptor** %11, align 8
  %66 = getelementptr inbounds %struct.libusb_interface_descriptor, %struct.libusb_interface_descriptor* %65, i32 0, i32 1
  %67 = load %struct.libusb_endpoint_descriptor*, %struct.libusb_endpoint_descriptor** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.libusb_endpoint_descriptor, %struct.libusb_endpoint_descriptor* %67, i64 %69
  store %struct.libusb_endpoint_descriptor* %70, %struct.libusb_endpoint_descriptor** %12, align 8
  %71 = load %struct.libusb_endpoint_descriptor*, %struct.libusb_endpoint_descriptor** %12, align 8
  %72 = getelementptr inbounds %struct.libusb_endpoint_descriptor, %struct.libusb_endpoint_descriptor* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @LIBUSB_TRANSFER_TYPE_MASK, align 4
  %75 = and i32 %73, %74
  %76 = load i32, i32* @LIBUSB_TRANSFER_TYPE_INTERRUPT, align 4
  %77 = icmp eq i32 %75, %76
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %13, align 4
  %79 = load %struct.libusb_endpoint_descriptor*, %struct.libusb_endpoint_descriptor** %12, align 8
  %80 = getelementptr inbounds %struct.libusb_endpoint_descriptor, %struct.libusb_endpoint_descriptor* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @LIBUSB_ENDPOINT_DIR_MASK, align 4
  %83 = and i32 %81, %82
  %84 = load i32, i32* @LIBUSB_ENDPOINT_OUT, align 4
  %85 = icmp eq i32 %83, %84
  %86 = zext i1 %85 to i32
  store i32 %86, i32* %14, align 4
  %87 = load %struct.libusb_endpoint_descriptor*, %struct.libusb_endpoint_descriptor** %12, align 8
  %88 = getelementptr inbounds %struct.libusb_endpoint_descriptor, %struct.libusb_endpoint_descriptor* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @LIBUSB_ENDPOINT_DIR_MASK, align 4
  %91 = and i32 %89, %90
  %92 = load i32, i32* @LIBUSB_ENDPOINT_IN, align 4
  %93 = icmp eq i32 %91, %92
  %94 = zext i1 %93 to i32
  store i32 %94, i32* %15, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %126

97:                                               ; preds = %64
  %98 = load i32, i32* %15, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %97
  %101 = load %struct.libusb_endpoint_descriptor*, %struct.libusb_endpoint_descriptor** %12, align 8
  %102 = getelementptr inbounds %struct.libusb_endpoint_descriptor, %struct.libusb_endpoint_descriptor* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.libusb_adapter*, %struct.libusb_adapter** %4, align 8
  %105 = getelementptr inbounds %struct.libusb_adapter, %struct.libusb_adapter* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load %struct.libusb_endpoint_descriptor*, %struct.libusb_endpoint_descriptor** %12, align 8
  %107 = getelementptr inbounds %struct.libusb_endpoint_descriptor, %struct.libusb_endpoint_descriptor* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.libusb_adapter*, %struct.libusb_adapter** %4, align 8
  %110 = getelementptr inbounds %struct.libusb_adapter, %struct.libusb_adapter* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 4
  br label %111

111:                                              ; preds = %100, %97
  %112 = load i32, i32* %14, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %111
  %115 = load %struct.libusb_endpoint_descriptor*, %struct.libusb_endpoint_descriptor** %12, align 8
  %116 = getelementptr inbounds %struct.libusb_endpoint_descriptor, %struct.libusb_endpoint_descriptor* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.libusb_adapter*, %struct.libusb_adapter** %4, align 8
  %119 = getelementptr inbounds %struct.libusb_adapter, %struct.libusb_adapter* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 4
  %120 = load %struct.libusb_endpoint_descriptor*, %struct.libusb_endpoint_descriptor** %12, align 8
  %121 = getelementptr inbounds %struct.libusb_endpoint_descriptor, %struct.libusb_endpoint_descriptor* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.libusb_adapter*, %struct.libusb_adapter** %4, align 8
  %124 = getelementptr inbounds %struct.libusb_adapter, %struct.libusb_adapter* %123, i32 0, i32 3
  store i32 %122, i32* %124, align 4
  br label %125

125:                                              ; preds = %114, %111
  br label %126

126:                                              ; preds = %125, %64
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %7, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %7, align 4
  br label %57

130:                                              ; preds = %57
  br label %139

131:                                              ; No predecessors!
  %132 = load i32, i32* %5, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %5, align 4
  br label %38

134:                                              ; preds = %38
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %6, align 4
  %137 = add i32 %136, 1
  store i32 %137, i32* %6, align 4
  br label %24

138:                                              ; preds = %24
  br label %139

139:                                              ; preds = %138, %130
  %140 = load %struct.libusb_config_descriptor*, %struct.libusb_config_descriptor** %8, align 8
  %141 = call i32 @libusb_free_config_descriptor(%struct.libusb_config_descriptor* %140)
  br label %142

142:                                              ; preds = %139, %20
  ret void
}

declare dso_local i32 @libusb_get_config_descriptor(%struct.libusb_device*, i32, %struct.libusb_config_descriptor**) #1

declare dso_local i32 @RARCH_ERR(i8*, i32) #1

declare dso_local i32 @libusb_free_config_descriptor(%struct.libusb_config_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
