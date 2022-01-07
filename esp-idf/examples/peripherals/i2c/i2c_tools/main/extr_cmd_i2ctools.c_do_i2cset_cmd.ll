; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/i2c/i2c_tools/main/extr_cmd_i2ctools.c_do_i2cset_cmd.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/i2c/i2c_tools/main/extr_cmd_i2ctools.c_do_i2cset_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_6__ = type { i32*, i64 }
%struct.TYPE_5__ = type { i32* }

@i2cset_args = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@i2c_port = common dso_local global i32 0, align 4
@I2C_MODE_MASTER = common dso_local global i32 0, align 4
@I2C_MASTER_RX_BUF_DISABLE = common dso_local global i32 0, align 4
@I2C_MASTER_TX_BUF_DISABLE = common dso_local global i32 0, align 4
@WRITE_BIT = common dso_local global i32 0, align 4
@ACK_CHECK_EN = common dso_local global i32 0, align 4
@portTICK_RATE_MS = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Write OK\00", align 1
@ESP_ERR_TIMEOUT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"Bus is busy\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Write Failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @do_i2cset_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_i2cset_cmd(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = call i32 @arg_parse(i32 %13, i8** %14, i8** bitcast (%struct.TYPE_8__* @i2cset_args to i8**))
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load i32, i32* @stderr, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i2cset_args, i32 0, i32 3), align 8
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @arg_print_errors(i32 %19, i32 %20, i8* %23)
  store i32 0, i32* %3, align 4
  br label %119

25:                                               ; preds = %2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i2cset_args, i32 0, i32 2), align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i2cset_args, i32 0, i32 1), align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %25
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i2cset_args, i32 0, i32 1), align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %35, %25
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i2cset_args, i32 0, i32 0), align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %9, align 4
  %45 = call i32 (...) @i2c_master_driver_initialize()
  %46 = load i32, i32* @i2c_port, align 4
  %47 = load i32, i32* @I2C_MODE_MASTER, align 4
  %48 = load i32, i32* @I2C_MASTER_RX_BUF_DISABLE, align 4
  %49 = load i32, i32* @I2C_MASTER_TX_BUF_DISABLE, align 4
  %50 = call i32 @i2c_driver_install(i32 %46, i32 %47, i32 %48, i32 %49, i32 0)
  %51 = call i32 (...) @i2c_cmd_link_create()
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @i2c_master_start(i32 %52)
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %7, align 4
  %56 = shl i32 %55, 1
  %57 = load i32, i32* @WRITE_BIT, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @ACK_CHECK_EN, align 4
  %60 = call i32 @i2c_master_write_byte(i32 %54, i32 %58, i32 %59)
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i2cset_args, i32 0, i32 1), align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %41
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @ACK_CHECK_EN, align 4
  %69 = call i32 @i2c_master_write_byte(i32 %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %65, %41
  store i32 0, i32* %11, align 4
  br label %71

71:                                               ; preds = %86, %70
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %89

75:                                               ; preds = %71
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i2cset_args, i32 0, i32 0), align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @ACK_CHECK_EN, align 4
  %85 = call i32 @i2c_master_write_byte(i32 %76, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %75
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %11, align 4
  br label %71

89:                                               ; preds = %71
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @i2c_master_stop(i32 %90)
  %92 = load i32, i32* @i2c_port, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @portTICK_RATE_MS, align 4
  %95 = sdiv i32 1000, %94
  %96 = call i64 @i2c_master_cmd_begin(i32 %92, i32 %93, i32 %95)
  store i64 %96, i64* %12, align 8
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @i2c_cmd_link_delete(i32 %97)
  %99 = load i64, i64* %12, align 8
  %100 = load i64, i64* @ESP_OK, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %89
  %103 = load i32, i32* @TAG, align 4
  %104 = call i32 @ESP_LOGI(i32 %103, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %116

105:                                              ; preds = %89
  %106 = load i64, i64* %12, align 8
  %107 = load i64, i64* @ESP_ERR_TIMEOUT, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = load i32, i32* @TAG, align 4
  %111 = call i32 @ESP_LOGW(i32 %110, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %115

112:                                              ; preds = %105
  %113 = load i32, i32* @TAG, align 4
  %114 = call i32 @ESP_LOGW(i32 %113, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %115

115:                                              ; preds = %112, %109
  br label %116

116:                                              ; preds = %115, %102
  %117 = load i32, i32* @i2c_port, align 4
  %118 = call i32 @i2c_driver_delete(i32 %117)
  store i32 0, i32* %3, align 4
  br label %119

119:                                              ; preds = %116, %18
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @arg_parse(i32, i8**, i8**) #1

declare dso_local i32 @arg_print_errors(i32, i32, i8*) #1

declare dso_local i32 @i2c_master_driver_initialize(...) #1

declare dso_local i32 @i2c_driver_install(i32, i32, i32, i32, i32) #1

declare dso_local i32 @i2c_cmd_link_create(...) #1

declare dso_local i32 @i2c_master_start(i32) #1

declare dso_local i32 @i2c_master_write_byte(i32, i32, i32) #1

declare dso_local i32 @i2c_master_stop(i32) #1

declare dso_local i64 @i2c_master_cmd_begin(i32, i32, i32) #1

declare dso_local i32 @i2c_cmd_link_delete(i32) #1

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i32 @ESP_LOGW(i32, i8*) #1

declare dso_local i32 @i2c_driver_delete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
