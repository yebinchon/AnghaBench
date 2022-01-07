; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_iohidmanager_hid.c_iohidmanager_hid_device_remove.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_iohidmanager_hid.c_iohidmanager_hid_device_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iohidmanager_hid_adapter = type { i64, %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter*, i32 }
%struct.TYPE_2__ = type { i32*, i32*, i64* }

@MAX_USERS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*)* @iohidmanager_hid_device_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iohidmanager_hid_device_remove(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.iohidmanager_hid_adapter*, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca %struct.iohidmanager_hid_adapter*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.iohidmanager_hid_adapter*
  store %struct.iohidmanager_hid_adapter* %11, %struct.iohidmanager_hid_adapter** %7, align 8
  %12 = call i64 (...) @hid_driver_get_data()
  %13 = inttoptr i64 %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %8, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %15 = icmp ne %struct.TYPE_2__* %14, null
  br i1 %15, label %16, label %60

16:                                               ; preds = %3
  %17 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %7, align 8
  %18 = icmp ne %struct.iohidmanager_hid_adapter* %17, null
  br i1 %18, label %19, label %60

19:                                               ; preds = %16
  %20 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %7, align 8
  %21 = getelementptr inbounds %struct.iohidmanager_hid_adapter, %struct.iohidmanager_hid_adapter* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MAX_USERS, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %60

25:                                               ; preds = %19
  %26 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %7, align 8
  %27 = getelementptr inbounds %struct.iohidmanager_hid_adapter, %struct.iohidmanager_hid_adapter* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %7, align 8
  %30 = getelementptr inbounds %struct.iohidmanager_hid_adapter, %struct.iohidmanager_hid_adapter* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @input_autoconfigure_disconnect(i64 %28, i32 %31)
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i64*, i64** %34, align 8
  %36 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %7, align 8
  %37 = getelementptr inbounds %struct.iohidmanager_hid_adapter, %struct.iohidmanager_hid_adapter* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i64, i64* %35, i64 %38
  store i64 0, i64* %39, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %7, align 8
  %44 = getelementptr inbounds %struct.iohidmanager_hid_adapter, %struct.iohidmanager_hid_adapter* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @memset(i32 %47, i32 0, i32 8)
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %7, align 8
  %53 = getelementptr inbounds %struct.iohidmanager_hid_adapter, %struct.iohidmanager_hid_adapter* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %7, align 8
  %57 = getelementptr inbounds %struct.iohidmanager_hid_adapter, %struct.iohidmanager_hid_adapter* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @pad_connection_pad_deinit(i32* %55, i64 %58)
  br label %60

60:                                               ; preds = %25, %19, %16, %3
  %61 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %7, align 8
  %62 = icmp ne %struct.iohidmanager_hid_adapter* %61, null
  br i1 %62, label %63, label %123

63:                                               ; preds = %60
  store %struct.iohidmanager_hid_adapter* null, %struct.iohidmanager_hid_adapter** %9, align 8
  br label %64

64:                                               ; preds = %69, %63
  %65 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %7, align 8
  %66 = getelementptr inbounds %struct.iohidmanager_hid_adapter, %struct.iohidmanager_hid_adapter* %65, i32 0, i32 4
  %67 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %66, align 8
  %68 = icmp ne %struct.iohidmanager_hid_adapter* %67, null
  br i1 %68, label %69, label %82

69:                                               ; preds = %64
  %70 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %7, align 8
  %71 = getelementptr inbounds %struct.iohidmanager_hid_adapter, %struct.iohidmanager_hid_adapter* %70, i32 0, i32 4
  %72 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %71, align 8
  store %struct.iohidmanager_hid_adapter* %72, %struct.iohidmanager_hid_adapter** %9, align 8
  %73 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %7, align 8
  %74 = getelementptr inbounds %struct.iohidmanager_hid_adapter, %struct.iohidmanager_hid_adapter* %73, i32 0, i32 4
  %75 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %74, align 8
  %76 = getelementptr inbounds %struct.iohidmanager_hid_adapter, %struct.iohidmanager_hid_adapter* %75, i32 0, i32 1
  %77 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %76, align 8
  %78 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %7, align 8
  %79 = getelementptr inbounds %struct.iohidmanager_hid_adapter, %struct.iohidmanager_hid_adapter* %78, i32 0, i32 4
  store %struct.iohidmanager_hid_adapter* %77, %struct.iohidmanager_hid_adapter** %79, align 8
  %80 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %9, align 8
  %81 = call i32 @free(%struct.iohidmanager_hid_adapter* %80)
  br label %64

82:                                               ; preds = %64
  br label %83

83:                                               ; preds = %88, %82
  %84 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %7, align 8
  %85 = getelementptr inbounds %struct.iohidmanager_hid_adapter, %struct.iohidmanager_hid_adapter* %84, i32 0, i32 3
  %86 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %85, align 8
  %87 = icmp ne %struct.iohidmanager_hid_adapter* %86, null
  br i1 %87, label %88, label %101

88:                                               ; preds = %83
  %89 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %7, align 8
  %90 = getelementptr inbounds %struct.iohidmanager_hid_adapter, %struct.iohidmanager_hid_adapter* %89, i32 0, i32 3
  %91 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %90, align 8
  store %struct.iohidmanager_hid_adapter* %91, %struct.iohidmanager_hid_adapter** %9, align 8
  %92 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %7, align 8
  %93 = getelementptr inbounds %struct.iohidmanager_hid_adapter, %struct.iohidmanager_hid_adapter* %92, i32 0, i32 3
  %94 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %93, align 8
  %95 = getelementptr inbounds %struct.iohidmanager_hid_adapter, %struct.iohidmanager_hid_adapter* %94, i32 0, i32 1
  %96 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %95, align 8
  %97 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %7, align 8
  %98 = getelementptr inbounds %struct.iohidmanager_hid_adapter, %struct.iohidmanager_hid_adapter* %97, i32 0, i32 3
  store %struct.iohidmanager_hid_adapter* %96, %struct.iohidmanager_hid_adapter** %98, align 8
  %99 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %9, align 8
  %100 = call i32 @free(%struct.iohidmanager_hid_adapter* %99)
  br label %83

101:                                              ; preds = %83
  br label %102

102:                                              ; preds = %107, %101
  %103 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %7, align 8
  %104 = getelementptr inbounds %struct.iohidmanager_hid_adapter, %struct.iohidmanager_hid_adapter* %103, i32 0, i32 2
  %105 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %104, align 8
  %106 = icmp ne %struct.iohidmanager_hid_adapter* %105, null
  br i1 %106, label %107, label %120

107:                                              ; preds = %102
  %108 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %7, align 8
  %109 = getelementptr inbounds %struct.iohidmanager_hid_adapter, %struct.iohidmanager_hid_adapter* %108, i32 0, i32 2
  %110 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %109, align 8
  store %struct.iohidmanager_hid_adapter* %110, %struct.iohidmanager_hid_adapter** %9, align 8
  %111 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %7, align 8
  %112 = getelementptr inbounds %struct.iohidmanager_hid_adapter, %struct.iohidmanager_hid_adapter* %111, i32 0, i32 2
  %113 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %112, align 8
  %114 = getelementptr inbounds %struct.iohidmanager_hid_adapter, %struct.iohidmanager_hid_adapter* %113, i32 0, i32 1
  %115 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %114, align 8
  %116 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %7, align 8
  %117 = getelementptr inbounds %struct.iohidmanager_hid_adapter, %struct.iohidmanager_hid_adapter* %116, i32 0, i32 2
  store %struct.iohidmanager_hid_adapter* %115, %struct.iohidmanager_hid_adapter** %117, align 8
  %118 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %9, align 8
  %119 = call i32 @free(%struct.iohidmanager_hid_adapter* %118)
  br label %102

120:                                              ; preds = %102
  %121 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %7, align 8
  %122 = call i32 @free(%struct.iohidmanager_hid_adapter* %121)
  br label %123

123:                                              ; preds = %120, %60
  ret void
}

declare dso_local i64 @hid_driver_get_data(...) #1

declare dso_local i32 @input_autoconfigure_disconnect(i64, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @pad_connection_pad_deinit(i32*, i64) #1

declare dso_local i32 @free(%struct.iohidmanager_hid_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
