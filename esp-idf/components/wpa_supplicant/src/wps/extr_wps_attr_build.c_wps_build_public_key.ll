; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_attr_build.c_wps_build_public_key.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_attr_build.c_wps_build_public_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { i32, %struct.wpabuf*, %struct.wpabuf*, i64, %struct.wpabuf*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i64, i64, i64, i32*, i64 }
%struct.wpabuf = type { i32 }

@WPS_CALC_KEY_NO_CALC = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"WPS:  * Public Key\00", align 1
@DEV_PW_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"WPS: Using pre-configured DH keys\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"WPS: Generate new DH keys\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"build public key start\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"build public key finish\0A\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"WPS: Failed to initialize Diffie-Hellman handshake\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"WPS: DH Private Key\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"WPS: DH own Public Key\00", align 1
@WPS_CALC_KEY_PRE_CALC = common dso_local global i64 0, align 8
@ATTR_PUBLIC_KEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_build_public_key(%struct.wps_data* %0, %struct.wpabuf* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wps_data*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.wpabuf*, align 8
  store %struct.wps_data* %0, %struct.wps_data** %5, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* @WPS_CALC_KEY_NO_CALC, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %129

12:                                               ; preds = %3
  %13 = load i32, i32* @MSG_DEBUG, align 4
  %14 = call i32 @wpa_printf(i32 %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %16 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %15, i32 0, i32 4
  %17 = load %struct.wpabuf*, %struct.wpabuf** %16, align 8
  %18 = call i32 @wpabuf_free(%struct.wpabuf* %17)
  %19 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %20 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @DEV_PW_DEFAULT, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %61

24:                                               ; preds = %12
  %25 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %26 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %25, i32 0, i32 6
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 6
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %61

31:                                               ; preds = %24
  %32 = load i32, i32* @MSG_DEBUG, align 4
  %33 = call i32 @wpa_printf(i32 %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %35 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %34, i32 0, i32 6
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 6
  %38 = load i64, i64* %37, align 8
  %39 = call i8* @wpabuf_dup(i64 %38)
  %40 = bitcast i8* %39 to %struct.wpabuf*
  %41 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %42 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %41, i32 0, i32 4
  store %struct.wpabuf* %40, %struct.wpabuf** %42, align 8
  %43 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %44 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %43, i32 0, i32 6
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 5
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %49 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %48, i32 0, i32 5
  store i32* %47, i32** %49, align 8
  %50 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %51 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %50, i32 0, i32 6
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 5
  store i32* null, i32** %53, align 8
  %54 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %55 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %54, i32 0, i32 6
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = call i8* @wpabuf_dup(i64 %58)
  %60 = bitcast i8* %59 to %struct.wpabuf*
  store %struct.wpabuf* %60, %struct.wpabuf** %8, align 8
  br label %81

61:                                               ; preds = %24, %12
  %62 = load i32, i32* @MSG_DEBUG, align 4
  %63 = call i32 @wpa_printf(i32 %62, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %64 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %65 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %64, i32 0, i32 4
  store %struct.wpabuf* null, %struct.wpabuf** %65, align 8
  %66 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %67 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %66, i32 0, i32 5
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @dh5_free(i32* %68)
  %70 = load i32, i32* @MSG_DEBUG, align 4
  %71 = call i32 @wpa_printf(i32 %70, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %72 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %73 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %72, i32 0, i32 4
  %74 = call i32* @dh5_init(%struct.wpabuf** %73, %struct.wpabuf** %8)
  %75 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %76 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %75, i32 0, i32 5
  store i32* %74, i32** %76, align 8
  %77 = load i32, i32* @MSG_DEBUG, align 4
  %78 = call i32 @wpa_printf(i32 %77, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %79 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %80 = call %struct.wpabuf* @wpabuf_zeropad(%struct.wpabuf* %79, i32 192)
  store %struct.wpabuf* %80, %struct.wpabuf** %8, align 8
  br label %81

81:                                               ; preds = %61, %31
  %82 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %83 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %82, i32 0, i32 5
  %84 = load i32*, i32** %83, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %94, label %86

86:                                               ; preds = %81
  %87 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %88 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %87, i32 0, i32 4
  %89 = load %struct.wpabuf*, %struct.wpabuf** %88, align 8
  %90 = icmp eq %struct.wpabuf* %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %86
  %92 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %93 = icmp eq %struct.wpabuf* %92, null
  br i1 %93, label %94, label %99

94:                                               ; preds = %91, %86, %81
  %95 = load i32, i32* @MSG_DEBUG, align 4
  %96 = call i32 @wpa_printf(i32 %95, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0))
  %97 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %98 = call i32 @wpabuf_free(%struct.wpabuf* %97)
  store i32 -1, i32* %4, align 4
  br label %158

99:                                               ; preds = %91
  %100 = load i32, i32* @MSG_DEBUG, align 4
  %101 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %102 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %101, i32 0, i32 4
  %103 = load %struct.wpabuf*, %struct.wpabuf** %102, align 8
  %104 = call i32 @wpa_hexdump_buf_key(i32 %100, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), %struct.wpabuf* %103)
  %105 = load i32, i32* @MSG_DEBUG, align 4
  %106 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %107 = call i32 @wpa_hexdump_buf(i32 %105, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), %struct.wpabuf* %106)
  %108 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %109 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %99
  %113 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %114 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %113, i32 0, i32 2
  %115 = load %struct.wpabuf*, %struct.wpabuf** %114, align 8
  %116 = call i32 @wpabuf_free(%struct.wpabuf* %115)
  %117 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %118 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %119 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %118, i32 0, i32 2
  store %struct.wpabuf* %117, %struct.wpabuf** %119, align 8
  br label %128

120:                                              ; preds = %99
  %121 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %122 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %121, i32 0, i32 1
  %123 = load %struct.wpabuf*, %struct.wpabuf** %122, align 8
  %124 = call i32 @wpabuf_free(%struct.wpabuf* %123)
  %125 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %126 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %127 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %126, i32 0, i32 1
  store %struct.wpabuf* %125, %struct.wpabuf** %127, align 8
  br label %128

128:                                              ; preds = %120, %112
  br label %129

129:                                              ; preds = %128, %3
  %130 = load i64, i64* %7, align 8
  %131 = load i64, i64* @WPS_CALC_KEY_PRE_CALC, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %157

133:                                              ; preds = %129
  %134 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %135 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %133
  %139 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %140 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %139, i32 0, i32 2
  %141 = load %struct.wpabuf*, %struct.wpabuf** %140, align 8
  store %struct.wpabuf* %141, %struct.wpabuf** %8, align 8
  br label %146

142:                                              ; preds = %133
  %143 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %144 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %143, i32 0, i32 1
  %145 = load %struct.wpabuf*, %struct.wpabuf** %144, align 8
  store %struct.wpabuf* %145, %struct.wpabuf** %8, align 8
  br label %146

146:                                              ; preds = %142, %138
  %147 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %148 = load i32, i32* @ATTR_PUBLIC_KEY, align 4
  %149 = call i32 @wpabuf_put_be16(%struct.wpabuf* %147, i32 %148)
  %150 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %151 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %152 = call i32 @wpabuf_len(%struct.wpabuf* %151)
  %153 = call i32 @wpabuf_put_be16(%struct.wpabuf* %150, i32 %152)
  %154 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %155 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %156 = call i32 @wpabuf_put_buf(%struct.wpabuf* %154, %struct.wpabuf* %155)
  br label %157

157:                                              ; preds = %146, %129
  store i32 0, i32* %4, align 4
  br label %158

158:                                              ; preds = %157, %94
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i8* @wpabuf_dup(i64) #1

declare dso_local i32 @dh5_free(i32*) #1

declare dso_local i32* @dh5_init(%struct.wpabuf**, %struct.wpabuf**) #1

declare dso_local %struct.wpabuf* @wpabuf_zeropad(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpa_hexdump_buf_key(i32, i8*, %struct.wpabuf*) #1

declare dso_local i32 @wpa_hexdump_buf(i32, i8*, %struct.wpabuf*) #1

declare dso_local i32 @wpabuf_put_be16(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_put_buf(%struct.wpabuf*, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
