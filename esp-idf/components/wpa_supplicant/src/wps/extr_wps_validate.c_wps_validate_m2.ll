; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_validate.c_wps_validate_m2.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_validate.c_wps_validate_m2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wps_parse_attr = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"WPS-STRICT: No TLVs in M2\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"WPS-STRICT: Failed to parse attributes in M2\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"WPS-STRICT: Invalid M2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_validate_m2(%struct.wpabuf* %0) #0 {
  %2 = alloca %struct.wpabuf*, align 8
  %3 = alloca %struct.wps_parse_attr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.wpabuf* %0, %struct.wpabuf** %2, align 8
  %6 = call i64 @os_zalloc(i32 128)
  %7 = inttoptr i64 %6 to %struct.wps_parse_attr*
  store %struct.wps_parse_attr* %7, %struct.wps_parse_attr** %3, align 8
  %8 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %9 = icmp eq %struct.wps_parse_attr* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -99, i32* %5, align 4
  br label %192

11:                                               ; preds = %1
  %12 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %13 = icmp eq %struct.wpabuf* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, i32* @MSG_INFO, align 4
  %16 = call i32 @wpa_printf(i32 %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %192

17:                                               ; preds = %11
  %18 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %19 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %20 = call i64 @wps_parse_msg(%struct.wpabuf* %18, %struct.wps_parse_attr* %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @MSG_INFO, align 4
  %24 = call i32 @wpa_printf(i32 %23, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %192

25:                                               ; preds = %17
  %26 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %27 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %4, align 4
  %31 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %32 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %31, i32 0, i32 28
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @wps_validate_version(i32 %33, i32 1)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %188, label %36

36:                                               ; preds = %25
  %37 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %38 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %37, i32 0, i32 27
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @wps_validate_msg_type(i32 %39, i32 1)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %188, label %42

42:                                               ; preds = %36
  %43 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %44 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %43, i32 0, i32 26
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @wps_validate_enrollee_nonce(i32 %45, i32 1)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %188, label %48

48:                                               ; preds = %42
  %49 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %50 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %49, i32 0, i32 25
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @wps_validate_registrar_nonce(i32 %51, i32 1)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %188, label %54

54:                                               ; preds = %48
  %55 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %56 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %55, i32 0, i32 24
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @wps_validate_uuid_r(i32 %57, i32 1)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %188, label %60

60:                                               ; preds = %54
  %61 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %62 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %61, i32 0, i32 23
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %65 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %64, i32 0, i32 22
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @wps_validate_public_key(i32 %63, i32 %66, i32 1)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %188, label %69

69:                                               ; preds = %60
  %70 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %71 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %70, i32 0, i32 21
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @wps_validate_auth_type_flags(i32 %72, i32 1)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %188, label %75

75:                                               ; preds = %69
  %76 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %77 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %76, i32 0, i32 20
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @wps_validate_encr_type_flags(i32 %78, i32 1)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %188, label %81

81:                                               ; preds = %75
  %82 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %83 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %82, i32 0, i32 19
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @wps_validate_conn_type_flags(i32 %84, i32 1)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %188, label %87

87:                                               ; preds = %81
  %88 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %89 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %88, i32 0, i32 18
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %4, align 4
  %92 = call i64 @wps_validate_config_methods(i32 %90, i32 %91, i32 1)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %188, label %94

94:                                               ; preds = %87
  %95 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %96 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %95, i32 0, i32 17
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %99 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %98, i32 0, i32 16
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @wps_validate_manufacturer(i32 %97, i32 %100, i32 1)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %188, label %103

103:                                              ; preds = %94
  %104 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %105 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %104, i32 0, i32 15
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %108 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %107, i32 0, i32 14
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @wps_validate_model_name(i32 %106, i32 %109, i32 1)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %188, label %112

112:                                              ; preds = %103
  %113 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %114 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %113, i32 0, i32 13
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %117 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %116, i32 0, i32 12
  %118 = load i32, i32* %117, align 8
  %119 = call i64 @wps_validate_model_number(i32 %115, i32 %118, i32 1)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %188, label %121

121:                                              ; preds = %112
  %122 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %123 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %122, i32 0, i32 11
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %126 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %125, i32 0, i32 10
  %127 = load i32, i32* %126, align 8
  %128 = call i64 @wps_validate_serial_number(i32 %124, i32 %127, i32 1)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %188, label %130

130:                                              ; preds = %121
  %131 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %132 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %131, i32 0, i32 9
  %133 = load i32, i32* %132, align 4
  %134 = call i64 @wps_validate_primary_dev_type(i32 %133, i32 1)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %188, label %136

136:                                              ; preds = %130
  %137 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %138 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %137, i32 0, i32 8
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %141 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %140, i32 0, i32 7
  %142 = load i32, i32* %141, align 4
  %143 = call i64 @wps_validate_dev_name(i32 %139, i32 %142, i32 1)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %188, label %145

145:                                              ; preds = %136
  %146 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %147 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %146, i32 0, i32 6
  %148 = load i32, i32* %147, align 8
  %149 = call i64 @wps_validate_rf_bands(i32 %148, i32 1)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %188, label %151

151:                                              ; preds = %145
  %152 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %153 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 4
  %155 = call i64 @wps_validate_assoc_state(i32 %154, i32 1)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %188, label %157

157:                                              ; preds = %151
  %158 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %159 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = call i64 @wps_validate_config_error(i32 %160, i32 1)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %188, label %163

163:                                              ; preds = %157
  %164 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %165 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = call i64 @wps_validate_dev_password_id(i32 %166, i32 1)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %188, label %169

169:                                              ; preds = %163
  %170 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %171 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = call i64 @wps_validate_os_version(i32 %172, i32 1)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %188, label %175

175:                                              ; preds = %169
  %176 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %177 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %4, align 4
  %180 = call i64 @wps_validate_version2(i32* %178, i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %188, label %182

182:                                              ; preds = %175
  %183 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %184 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = call i64 @wps_validate_authenticator(i32 %185, i32 1)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %182, %175, %169, %163, %157, %151, %145, %136, %130, %121, %112, %103, %94, %87, %81, %75, %69, %60, %54, %48, %42, %36, %25
  %189 = load i32, i32* @MSG_INFO, align 4
  %190 = call i32 @wpa_printf(i32 %189, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %192

191:                                              ; preds = %182
  store i32 0, i32* %5, align 4
  br label %192

192:                                              ; preds = %191, %188, %22, %14, %10
  %193 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %194 = icmp ne %struct.wps_parse_attr* %193, null
  br i1 %194, label %195, label %198

195:                                              ; preds = %192
  %196 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %197 = call i32 @os_free(%struct.wps_parse_attr* %196)
  br label %198

198:                                              ; preds = %195, %192
  %199 = load i32, i32* %5, align 4
  ret i32 %199
}

declare dso_local i64 @os_zalloc(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @wps_parse_msg(%struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i64 @wps_validate_version(i32, i32) #1

declare dso_local i64 @wps_validate_msg_type(i32, i32) #1

declare dso_local i64 @wps_validate_enrollee_nonce(i32, i32) #1

declare dso_local i64 @wps_validate_registrar_nonce(i32, i32) #1

declare dso_local i64 @wps_validate_uuid_r(i32, i32) #1

declare dso_local i64 @wps_validate_public_key(i32, i32, i32) #1

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

declare dso_local i64 @wps_validate_dev_password_id(i32, i32) #1

declare dso_local i64 @wps_validate_os_version(i32, i32) #1

declare dso_local i64 @wps_validate_version2(i32*, i32) #1

declare dso_local i64 @wps_validate_authenticator(i32, i32) #1

declare dso_local i32 @os_free(%struct.wps_parse_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
