; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/i2c/i2c_tools/main/extr_cmd_i2ctools.c_do_i2cget_cmd.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/i2c/i2c_tools/main/extr_cmd_i2ctools.c_do_i2cget_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_7__ = type { i32*, i64 }
%struct.TYPE_6__ = type { i32*, i64 }
%struct.TYPE_5__ = type { i32* }

@i2cget_args = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@i2c_port = common dso_local global i32 0, align 4
@I2C_MODE_MASTER = common dso_local global i32 0, align 4
@I2C_MASTER_RX_BUF_DISABLE = common dso_local global i32 0, align 4
@I2C_MASTER_TX_BUF_DISABLE = common dso_local global i32 0, align 4
@WRITE_BIT = common dso_local global i32 0, align 4
@ACK_CHECK_EN = common dso_local global i32 0, align 4
@READ_BIT = common dso_local global i32 0, align 4
@ACK_VAL = common dso_local global i32 0, align 4
@NACK_VAL = common dso_local global i32 0, align 4
@portTICK_RATE_MS = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"0x%02x \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@ESP_ERR_TIMEOUT = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"Bus is busy\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Read failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @do_i2cget_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_i2cget_cmd(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @arg_parse(i32 %14, i8** %15, i8** bitcast (%struct.TYPE_8__* @i2cget_args to i8**))
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load i32, i32* @stderr, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i2cget_args, i32 0, i32 3), align 8
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @arg_print_errors(i32 %20, i32 %21, i8* %24)
  store i32 0, i32* %3, align 4
  br label %164

26:                                               ; preds = %2
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i2cget_args, i32 0, i32 2), align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i2cget_args, i32 0, i32 1), align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %26
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i2cget_args, i32 0, i32 1), align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %36, %26
  store i32 1, i32* %9, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i2cget_args, i32 0, i32 0), align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i2cget_args, i32 0, i32 0), align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %47, %42
  %54 = load i32, i32* %9, align 4
  %55 = call i32* @malloc(i32 %54)
  store i32* %55, i32** %10, align 8
  %56 = call i32 (...) @i2c_master_driver_initialize()
  %57 = load i32, i32* @i2c_port, align 4
  %58 = load i32, i32* @I2C_MODE_MASTER, align 4
  %59 = load i32, i32* @I2C_MASTER_RX_BUF_DISABLE, align 4
  %60 = load i32, i32* @I2C_MASTER_TX_BUF_DISABLE, align 4
  %61 = call i32 @i2c_driver_install(i32 %57, i32 %58, i32 %59, i32 %60, i32 0)
  %62 = call i32 (...) @i2c_cmd_link_create()
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @i2c_master_start(i32 %63)
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, -1
  br i1 %66, label %67, label %81

67:                                               ; preds = %53
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %7, align 4
  %70 = shl i32 %69, 1
  %71 = load i32, i32* @WRITE_BIT, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @ACK_CHECK_EN, align 4
  %74 = call i32 @i2c_master_write_byte(i32 %68, i32 %72, i32 %73)
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @ACK_CHECK_EN, align 4
  %78 = call i32 @i2c_master_write_byte(i32 %75, i32 %76, i32 %77)
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @i2c_master_start(i32 %79)
  br label %81

81:                                               ; preds = %67, %53
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %7, align 4
  %84 = shl i32 %83, 1
  %85 = load i32, i32* @READ_BIT, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @ACK_CHECK_EN, align 4
  %88 = call i32 @i2c_master_write_byte(i32 %82, i32 %86, i32 %87)
  %89 = load i32, i32* %9, align 4
  %90 = icmp sgt i32 %89, 1
  br i1 %90, label %91, label %98

91:                                               ; preds = %81
  %92 = load i32, i32* %11, align 4
  %93 = load i32*, i32** %10, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sub nsw i32 %94, 1
  %96 = load i32, i32* @ACK_VAL, align 4
  %97 = call i32 @i2c_master_read(i32 %92, i32* %93, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %91, %81
  %99 = load i32, i32* %11, align 4
  %100 = load i32*, i32** %10, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = getelementptr inbounds i32, i32* %103, i64 -1
  %105 = load i32, i32* @NACK_VAL, align 4
  %106 = call i32 @i2c_master_read_byte(i32 %99, i32* %104, i32 %105)
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @i2c_master_stop(i32 %107)
  %109 = load i32, i32* @i2c_port, align 4
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* @portTICK_RATE_MS, align 4
  %112 = sdiv i32 1000, %111
  %113 = call i64 @i2c_master_cmd_begin(i32 %109, i32 %110, i32 %112)
  store i64 %113, i64* %12, align 8
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @i2c_cmd_link_delete(i32 %114)
  %116 = load i64, i64* %12, align 8
  %117 = load i64, i64* @ESP_OK, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %148

119:                                              ; preds = %98
  store i32 0, i32* %13, align 4
  br label %120

120:                                              ; preds = %138, %119
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* %9, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %141

124:                                              ; preds = %120
  %125 = load i32*, i32** %10, align 8
  %126 = load i32, i32* %13, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* %13, align 4
  %132 = add nsw i32 %131, 1
  %133 = srem i32 %132, 16
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %124
  %136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %137

137:                                              ; preds = %135, %124
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %13, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %13, align 4
  br label %120

141:                                              ; preds = %120
  %142 = load i32, i32* %9, align 4
  %143 = srem i32 %142, 16
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %141
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %147

147:                                              ; preds = %145, %141
  br label %159

148:                                              ; preds = %98
  %149 = load i64, i64* %12, align 8
  %150 = load i64, i64* @ESP_ERR_TIMEOUT, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %148
  %153 = load i32, i32* @TAG, align 4
  %154 = call i32 @ESP_LOGW(i32 %153, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %158

155:                                              ; preds = %148
  %156 = load i32, i32* @TAG, align 4
  %157 = call i32 @ESP_LOGW(i32 %156, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %158

158:                                              ; preds = %155, %152
  br label %159

159:                                              ; preds = %158, %147
  %160 = load i32*, i32** %10, align 8
  %161 = call i32 @free(i32* %160)
  %162 = load i32, i32* @i2c_port, align 4
  %163 = call i32 @i2c_driver_delete(i32 %162)
  store i32 0, i32* %3, align 4
  br label %164

164:                                              ; preds = %159, %19
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i32 @arg_parse(i32, i8**, i8**) #1

declare dso_local i32 @arg_print_errors(i32, i32, i8*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @i2c_master_driver_initialize(...) #1

declare dso_local i32 @i2c_driver_install(i32, i32, i32, i32, i32) #1

declare dso_local i32 @i2c_cmd_link_create(...) #1

declare dso_local i32 @i2c_master_start(i32) #1

declare dso_local i32 @i2c_master_write_byte(i32, i32, i32) #1

declare dso_local i32 @i2c_master_read(i32, i32*, i32, i32) #1

declare dso_local i32 @i2c_master_read_byte(i32, i32*, i32) #1

declare dso_local i32 @i2c_master_stop(i32) #1

declare dso_local i64 @i2c_master_cmd_begin(i32, i32, i32) #1

declare dso_local i32 @i2c_cmd_link_delete(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ESP_LOGW(i32, i8*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @i2c_driver_delete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
