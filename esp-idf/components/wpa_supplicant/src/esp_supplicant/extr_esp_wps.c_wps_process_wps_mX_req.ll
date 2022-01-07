; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wps.c_wps_process_wps_mX_req.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wps.c_wps_process_wps_mX_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_sm = type { i32, i32, i32 }
%struct.wpabuf = type { i32 }
%struct.eap_expand = type { i32 }

@gWpsSm = common dso_local global %struct.wps_sm* null, align 8
@wps_process_wps_mX_req.wps_buf = internal global %struct.wpabuf* null, align 8
@ESP_FAIL = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"wps process mX req: len %d, tlen %d\00", align 1
@WPS_MSG_FLAG_LEN = common dso_local global i32 0, align 4
@WPS_MSG_FLAG_MORE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"rx frag msg id:%d, flag:%d, frag_len: %d, tot_len: %d, be_tot_len:%d\00", align 1
@ESP_OK = common dso_local global i64 0, align 8
@WPS_FRAGMENT = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"something is wrong, frag buf is not freed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_process_wps_mX_req(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.wps_sm*, align 8
  %9 = alloca %struct.eap_expand*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %15 = load %struct.wps_sm*, %struct.wps_sm** @gWpsSm, align 8
  store %struct.wps_sm* %15, %struct.wps_sm** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %14, align 4
  %16 = load %struct.wps_sm*, %struct.wps_sm** %8, align 8
  %17 = icmp ne %struct.wps_sm* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ESP_FAIL, align 4
  store i32 %19, i32* %4, align 4
  br label %162

20:                                               ; preds = %3
  %21 = load i32*, i32** %5, align 8
  %22 = bitcast i32* %21 to %struct.eap_expand*
  store %struct.eap_expand* %22, %struct.eap_expand** %9, align 8
  %23 = load i32, i32* @MSG_DEBUG, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 (i32, i8*, ...) @wpa_printf(i32 %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 4
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @WPS_MSG_FLAG_LEN, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %54

34:                                               ; preds = %20
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 4
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  store i32* %38, i32** %11, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = sub i64 %40, 7
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %13, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 4
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = and i32 %47, 255
  %49 = shl i32 %48, 8
  %50 = load i32, i32* %14, align 4
  %51 = ashr i32 %50, 8
  %52 = and i32 %51, 255
  %53 = or i32 %49, %52
  store i32 %53, i32* %10, align 4
  br label %63

54:                                               ; preds = %20
  %55 = load i32*, i32** %5, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 4
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  store i32* %57, i32** %11, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = sub i64 %59, 5
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %54, %34
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @WPS_MSG_FLAG_MORE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = load %struct.wpabuf*, %struct.wpabuf** @wps_process_wps_mX_req.wps_buf, align 8
  %70 = icmp ne %struct.wpabuf* %69, null
  br i1 %70, label %71, label %111

71:                                               ; preds = %68, %63
  %72 = load i32, i32* @MSG_DEBUG, align 4
  %73 = load %struct.wps_sm*, %struct.wps_sm** %8, align 8
  %74 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %14, align 4
  %80 = call i32 (i32, i8*, ...) @wpa_printf(i32 %72, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %76, i32 %77, i32 %78, i32 %79)
  %81 = load i64, i64* @ESP_OK, align 8
  %82 = load i32, i32* %10, align 4
  %83 = load i32*, i32** %11, align 8
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %12, align 4
  %86 = call i64 @wps_enrollee_process_msg_frag(%struct.wpabuf** @wps_process_wps_mX_req.wps_buf, i32 %82, i32* %83, i32 %84, i32 %85)
  %87 = icmp ne i64 %81, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %71
  %89 = load %struct.wpabuf*, %struct.wpabuf** @wps_process_wps_mX_req.wps_buf, align 8
  %90 = icmp ne %struct.wpabuf* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load %struct.wpabuf*, %struct.wpabuf** @wps_process_wps_mX_req.wps_buf, align 8
  %93 = call i32 @wpabuf_free(%struct.wpabuf* %92)
  store %struct.wpabuf* null, %struct.wpabuf** @wps_process_wps_mX_req.wps_buf, align 8
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i32, i32* @ESP_FAIL, align 4
  store i32 %95, i32* %4, align 4
  br label %162

96:                                               ; preds = %71
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* @WPS_MSG_FLAG_MORE, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %96
  %102 = load i32*, i32** %7, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i32, i32* @WPS_FRAGMENT, align 4
  %106 = load i32*, i32** %7, align 8
  store i32 %105, i32* %106, align 4
  br label %107

107:                                              ; preds = %104, %101
  %108 = load i64, i64* @ESP_OK, align 8
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %4, align 4
  br label %162

110:                                              ; preds = %96
  br label %123

111:                                              ; preds = %68
  %112 = load %struct.wpabuf*, %struct.wpabuf** @wps_process_wps_mX_req.wps_buf, align 8
  %113 = icmp ne %struct.wpabuf* %112, null
  br i1 %113, label %114, label %119

114:                                              ; preds = %111
  %115 = load i32, i32* @MSG_ERROR, align 4
  %116 = call i32 (i32, i8*, ...) @wpa_printf(i32 %115, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %117 = load %struct.wpabuf*, %struct.wpabuf** @wps_process_wps_mX_req.wps_buf, align 8
  %118 = call i32 @wpabuf_free(%struct.wpabuf* %117)
  store %struct.wpabuf* null, %struct.wpabuf** @wps_process_wps_mX_req.wps_buf, align 8
  br label %119

119:                                              ; preds = %114, %111
  %120 = load i32*, i32** %11, align 8
  %121 = load i32, i32* %10, align 4
  %122 = call %struct.wpabuf* @wpabuf_alloc_copy(i32* %120, i32 %121)
  store %struct.wpabuf* %122, %struct.wpabuf** @wps_process_wps_mX_req.wps_buf, align 8
  br label %123

123:                                              ; preds = %119, %110
  %124 = load %struct.wpabuf*, %struct.wpabuf** @wps_process_wps_mX_req.wps_buf, align 8
  %125 = icmp ne %struct.wpabuf* %124, null
  br i1 %125, label %128, label %126

126:                                              ; preds = %123
  %127 = load i32, i32* @ESP_FAIL, align 4
  store i32 %127, i32* %4, align 4
  br label %162

128:                                              ; preds = %123
  %129 = load %struct.wps_sm*, %struct.wps_sm** %8, align 8
  %130 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %129, i32 0, i32 1
  %131 = call i32 @ets_timer_disarm(i32* %130)
  %132 = load i32*, i32** %7, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %144

134:                                              ; preds = %128
  %135 = load %struct.wps_sm*, %struct.wps_sm** %8, align 8
  %136 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.eap_expand*, %struct.eap_expand** %9, align 8
  %139 = getelementptr inbounds %struct.eap_expand, %struct.eap_expand* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.wpabuf*, %struct.wpabuf** @wps_process_wps_mX_req.wps_buf, align 8
  %142 = call i32 @wps_enrollee_process_msg(i32 %137, i32 %140, %struct.wpabuf* %141)
  %143 = load i32*, i32** %7, align 8
  store i32 %142, i32* %143, align 4
  br label %153

144:                                              ; preds = %128
  %145 = load %struct.wps_sm*, %struct.wps_sm** %8, align 8
  %146 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.eap_expand*, %struct.eap_expand** %9, align 8
  %149 = getelementptr inbounds %struct.eap_expand, %struct.eap_expand* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.wpabuf*, %struct.wpabuf** @wps_process_wps_mX_req.wps_buf, align 8
  %152 = call i32 @wps_enrollee_process_msg(i32 %147, i32 %150, %struct.wpabuf* %151)
  br label %153

153:                                              ; preds = %144, %134
  %154 = load %struct.wpabuf*, %struct.wpabuf** @wps_process_wps_mX_req.wps_buf, align 8
  %155 = icmp ne %struct.wpabuf* %154, null
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load %struct.wpabuf*, %struct.wpabuf** @wps_process_wps_mX_req.wps_buf, align 8
  %158 = call i32 @wpabuf_free(%struct.wpabuf* %157)
  store %struct.wpabuf* null, %struct.wpabuf** @wps_process_wps_mX_req.wps_buf, align 8
  br label %159

159:                                              ; preds = %156, %153
  %160 = load i64, i64* @ESP_OK, align 8
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %4, align 4
  br label %162

162:                                              ; preds = %159, %126, %107, %94, %18
  %163 = load i32, i32* %4, align 4
  ret i32 %163
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @wps_enrollee_process_msg_frag(%struct.wpabuf**, i32, i32*, i32, i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc_copy(i32*, i32) #1

declare dso_local i32 @ets_timer_disarm(i32*) #1

declare dso_local i32 @wps_enrollee_process_msg(i32, i32, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
