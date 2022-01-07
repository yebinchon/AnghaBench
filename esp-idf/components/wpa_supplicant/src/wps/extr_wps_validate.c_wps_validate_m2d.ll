; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_validate.c_wps_validate_m2d.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_validate.c_wps_validate_m2d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wps_parse_attr = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"WPS-STRICT: No TLVs in M2D\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"WPS-STRICT: Failed to parse attributes in M2D\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"WPS-STRICT: Invalid M2D\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_validate_m2d(%struct.wpabuf* %0) #0 {
  %2 = alloca %struct.wpabuf*, align 8
  %3 = alloca %struct.wps_parse_attr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.wpabuf* %0, %struct.wpabuf** %2, align 8
  %6 = call i64 @os_zalloc(i32 104)
  %7 = inttoptr i64 %6 to %struct.wps_parse_attr*
  store %struct.wps_parse_attr* %7, %struct.wps_parse_attr** %3, align 8
  %8 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %9 = icmp eq %struct.wps_parse_attr* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -99, i32* %5, align 4
  br label %171

11:                                               ; preds = %1
  %12 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %13 = icmp eq %struct.wpabuf* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, i32* @MSG_INFO, align 4
  %16 = call i32 @wpa_printf(i32 %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %171

17:                                               ; preds = %11
  %18 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %19 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %20 = call i64 @wps_parse_msg(%struct.wpabuf* %18, %struct.wps_parse_attr* %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @MSG_INFO, align 4
  %24 = call i32 @wpa_printf(i32 %23, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %171

25:                                               ; preds = %17
  %26 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %27 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %4, align 4
  %31 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %32 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %31, i32 0, i32 24
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @wps_validate_version(i32 %33, i32 1)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %167, label %36

36:                                               ; preds = %25
  %37 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %38 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %37, i32 0, i32 23
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @wps_validate_msg_type(i32 %39, i32 1)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %167, label %42

42:                                               ; preds = %36
  %43 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %44 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %43, i32 0, i32 22
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @wps_validate_enrollee_nonce(i32 %45, i32 1)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %167, label %48

48:                                               ; preds = %42
  %49 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %50 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %49, i32 0, i32 21
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @wps_validate_registrar_nonce(i32 %51, i32 1)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %167, label %54

54:                                               ; preds = %48
  %55 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %56 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %55, i32 0, i32 20
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @wps_validate_uuid_r(i32 %57, i32 1)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %167, label %60

60:                                               ; preds = %54
  %61 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %62 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %61, i32 0, i32 19
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @wps_validate_auth_type_flags(i32 %63, i32 1)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %167, label %66

66:                                               ; preds = %60
  %67 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %68 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %67, i32 0, i32 18
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @wps_validate_encr_type_flags(i32 %69, i32 1)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %167, label %72

72:                                               ; preds = %66
  %73 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %74 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %73, i32 0, i32 17
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @wps_validate_conn_type_flags(i32 %75, i32 1)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %167, label %78

78:                                               ; preds = %72
  %79 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %80 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %79, i32 0, i32 16
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %4, align 4
  %83 = call i64 @wps_validate_config_methods(i32 %81, i32 %82, i32 1)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %167, label %85

85:                                               ; preds = %78
  %86 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %87 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %86, i32 0, i32 15
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %90 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %89, i32 0, i32 14
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @wps_validate_manufacturer(i32 %88, i32 %91, i32 1)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %167, label %94

94:                                               ; preds = %85
  %95 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %96 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %95, i32 0, i32 13
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %99 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %98, i32 0, i32 12
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @wps_validate_model_name(i32 %97, i32 %100, i32 1)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %167, label %103

103:                                              ; preds = %94
  %104 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %105 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %104, i32 0, i32 11
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %108 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %107, i32 0, i32 10
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @wps_validate_model_number(i32 %106, i32 %109, i32 1)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %167, label %112

112:                                              ; preds = %103
  %113 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %114 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %113, i32 0, i32 9
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %117 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %116, i32 0, i32 8
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @wps_validate_serial_number(i32 %115, i32 %118, i32 1)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %167, label %121

121:                                              ; preds = %112
  %122 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %123 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %122, i32 0, i32 7
  %124 = load i32, i32* %123, align 8
  %125 = call i64 @wps_validate_primary_dev_type(i32 %124, i32 1)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %167, label %127

127:                                              ; preds = %121
  %128 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %129 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %132 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 8
  %134 = call i64 @wps_validate_dev_name(i32 %130, i32 %133, i32 1)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %167, label %136

136:                                              ; preds = %127
  %137 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %138 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 4
  %140 = call i64 @wps_validate_rf_bands(i32 %139, i32 1)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %167, label %142

142:                                              ; preds = %136
  %143 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %144 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = call i64 @wps_validate_assoc_state(i32 %145, i32 1)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %167, label %148

148:                                              ; preds = %142
  %149 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %150 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @wps_validate_config_error(i32 %151, i32 1)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %167, label %154

154:                                              ; preds = %148
  %155 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %156 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = call i64 @wps_validate_os_version(i32 %157, i32 1)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %167, label %160

160:                                              ; preds = %154
  %161 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %162 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %4, align 4
  %165 = call i64 @wps_validate_version2(i32* %163, i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %160, %154, %148, %142, %136, %127, %121, %112, %103, %94, %85, %78, %72, %66, %60, %54, %48, %42, %36, %25
  %168 = load i32, i32* @MSG_INFO, align 4
  %169 = call i32 @wpa_printf(i32 %168, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %171

170:                                              ; preds = %160
  store i32 0, i32* %5, align 4
  br label %171

171:                                              ; preds = %170, %167, %22, %14, %10
  %172 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %173 = icmp ne %struct.wps_parse_attr* %172, null
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  %175 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %176 = call i32 @os_free(%struct.wps_parse_attr* %175)
  br label %177

177:                                              ; preds = %174, %171
  %178 = load i32, i32* %5, align 4
  ret i32 %178
}

declare dso_local i64 @os_zalloc(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @wps_parse_msg(%struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i64 @wps_validate_version(i32, i32) #1

declare dso_local i64 @wps_validate_msg_type(i32, i32) #1

declare dso_local i64 @wps_validate_enrollee_nonce(i32, i32) #1

declare dso_local i64 @wps_validate_registrar_nonce(i32, i32) #1

declare dso_local i64 @wps_validate_uuid_r(i32, i32) #1

declare dso_local i64 @wps_validate_auth_type_flags(i32, i32) #1

declare dso_local i64 @wps_validate_encr_type_flags(i32, i32) #1

declare dso_local i64 @wps_validate_conn_type_flags(i32, i32) #1

declare dso_local i64 @wps_validate_config_methods(i32, i32, i32) #1

declare dso_local i64 @wps_validate_manufacturer(i32, i32, i32) #1

declare dso_local i64 @wps_validate_model_name(i32, i32, i32) #1

declare dso_local i64 @wps_validate_model_number(i32, i32, i32) #1

declare dso_local i64 @wps_validate_serial_number(i32, i32, i32) #1

declare dso_local i64 @wps_validate_primary_dev_type(i32, i32) #1

declare dso_local i64 @wps_validate_dev_name(i32, i32, i32) #1

declare dso_local i64 @wps_validate_rf_bands(i32, i32) #1

declare dso_local i64 @wps_validate_assoc_state(i32, i32) #1

declare dso_local i64 @wps_validate_config_error(i32, i32) #1

declare dso_local i64 @wps_validate_os_version(i32, i32) #1

declare dso_local i64 @wps_validate_version2(i32*, i32) #1

declare dso_local i32 @os_free(%struct.wps_parse_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
