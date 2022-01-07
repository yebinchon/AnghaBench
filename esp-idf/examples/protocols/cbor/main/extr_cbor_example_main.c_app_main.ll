; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/cbor/main/extr_cbor_example_main.c_app_main.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/cbor/main/extr_cbor_example_main.c_app_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"chip\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"esp32\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"unicore\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"ip\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"2019-07-10 09:00:00+0000\00", align 1
@TAG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"encoded buffer size %d\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"convert CBOR to JSON\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"decode CBOR manually\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @app_main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [100 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds [100 x i32], [100 x i32]* %4, i64 0, i64 0
  %9 = call i32 @cbor_encoder_init(i32* %1, i32* %8, i32 400, i32 0)
  %10 = call i32 @cbor_encoder_create_array(i32* %1, i32* %5, i32 5)
  %11 = call i32 @cbor_encoder_create_map(i32* %5, i32* %6, i32 3)
  %12 = call i32 @cbor_encode_text_stringz(i32* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @cbor_encode_text_stringz(i32* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 @cbor_encode_text_stringz(i32* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %15 = call i32 @cbor_encode_boolean(i32* %6, i32 0)
  %16 = call i32 @cbor_encode_text_stringz(i32* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %17 = call i32 @cbor_encoder_create_array(i32* %6, i32* %7, i32 4)
  %18 = call i32 @cbor_encode_uint(i32* %7, i32 192)
  %19 = call i32 @cbor_encode_uint(i32* %7, i32 168)
  %20 = call i32 @cbor_encode_uint(i32* %7, i32 1)
  %21 = call i32 @cbor_encode_uint(i32* %7, i32 100)
  %22 = call i32 @cbor_encoder_close_container(i32* %6, i32* %7)
  %23 = call i32 @cbor_encoder_close_container(i32* %5, i32* %6)
  %24 = call i32 @cbor_encode_float(i32* %5, double 3.140000e+00)
  %25 = call i32 @cbor_encode_simple_value(i32* %5, i32 99)
  %26 = call i32 @cbor_encode_text_stringz(i32* %5, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %27 = call i32 @cbor_encode_undefined(i32* %5)
  %28 = call i32 @cbor_encoder_close_container(i32* %1, i32* %5)
  %29 = load i32, i32* @TAG, align 4
  %30 = getelementptr inbounds [100 x i32], [100 x i32]* %4, i64 0, i64 0
  %31 = call i32 @cbor_encoder_get_buffer_size(i32* %1, i32* %30)
  %32 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %31)
  %33 = getelementptr inbounds [100 x i32], [100 x i32]* %4, i64 0, i64 0
  %34 = call i32 @cbor_parser_init(i32* %33, i32 400, i32 0, i32* %2, i32* %3)
  %35 = load i32, i32* @TAG, align 4
  %36 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %37 = load i32, i32* @stdout, align 4
  %38 = call i32 @cbor_value_to_json(i32 %37, i32* %3, i32 0)
  %39 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0))
  %40 = load i32, i32* @TAG, align 4
  %41 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %42 = call i32 @example_dump_cbor_buffer(i32* %3, i32 0)
  ret void
}

declare dso_local i32 @cbor_encoder_init(i32*, i32*, i32, i32) #1

declare dso_local i32 @cbor_encoder_create_array(i32*, i32*, i32) #1

declare dso_local i32 @cbor_encoder_create_map(i32*, i32*, i32) #1

declare dso_local i32 @cbor_encode_text_stringz(i32*, i8*) #1

declare dso_local i32 @cbor_encode_boolean(i32*, i32) #1

declare dso_local i32 @cbor_encode_uint(i32*, i32) #1

declare dso_local i32 @cbor_encoder_close_container(i32*, i32*) #1

declare dso_local i32 @cbor_encode_float(i32*, double) #1

declare dso_local i32 @cbor_encode_simple_value(i32*, i32) #1

declare dso_local i32 @cbor_encode_undefined(i32*) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @cbor_encoder_get_buffer_size(i32*, i32*) #1

declare dso_local i32 @cbor_parser_init(i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @cbor_value_to_json(i32, i32*, i32) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @example_dump_cbor_buffer(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
