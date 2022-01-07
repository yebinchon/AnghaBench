; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/eap_peer/extr_eap.c_eap_peer_config_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/eap_peer/extr_eap.c_eap_peer_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i64, i64, i64, i64, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_3__ = type { i64 }

@g_wpa_anonymous_identity = common dso_local global i64 0, align 8
@g_wpa_anonymous_identity_len = common dso_local global i64 0, align 8
@g_wpa_username = common dso_local global i64 0, align 8
@g_wpa_username_len = common dso_local global i64 0, align 8
@g_wpa_password = common dso_local global i64 0, align 8
@g_wpa_password_len = common dso_local global i64 0, align 8
@g_wpa_new_password = common dso_local global i64 0, align 8
@g_wpa_new_password_len = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_peer_config_init(%struct.eap_sm* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %9 = icmp ne %struct.eap_sm* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %206

11:                                               ; preds = %3
  %12 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %13 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 8
  store i32* null, i32** %14, align 8
  %15 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %16 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 7
  store i32* null, i32** %17, align 8
  %18 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %19 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 6
  store i32* null, i32** %20, align 8
  %21 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %22 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 5
  store i32* null, i32** %23, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %26 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 13
  store i32* %24, i32** %27, align 8
  %28 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %29 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i32*
  %35 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %36 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 12
  store i32* %34, i32** %37, align 8
  %38 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %39 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i32*
  %45 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %46 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 11
  store i32* %44, i32** %47, align 8
  %48 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %49 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 2
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i32*
  %55 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %56 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 10
  store i32* %54, i32** %57, align 8
  %58 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %59 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 9
  store i32* null, i32** %60, align 8
  %61 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %62 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i32 1400, i32* %63, align 8
  %64 = load i64, i64* @g_wpa_anonymous_identity, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %97

66:                                               ; preds = %11
  %67 = load i64, i64* @g_wpa_anonymous_identity_len, align 8
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %69, label %97

69:                                               ; preds = %66
  %70 = load i64, i64* @g_wpa_anonymous_identity_len, align 8
  %71 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %72 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  store i64 %70, i64* %73, align 8
  %74 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %75 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i64 @os_zalloc(i64 %77)
  %79 = inttoptr i64 %78 to i32*
  %80 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %81 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 8
  store i32* %79, i32** %82, align 8
  %83 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %84 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 8
  %86 = load i32*, i32** %85, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %69
  store i32 -2, i32* %4, align 4
  br label %206

89:                                               ; preds = %69
  %90 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %91 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 8
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* @g_wpa_anonymous_identity, align 8
  %95 = load i64, i64* @g_wpa_anonymous_identity_len, align 8
  %96 = call i32 @os_memcpy(i32* %93, i64 %94, i64 %95)
  br label %97

97:                                               ; preds = %89, %66, %11
  %98 = load i64, i64* @g_wpa_username, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %131

100:                                              ; preds = %97
  %101 = load i64, i64* @g_wpa_username_len, align 8
  %102 = icmp sgt i64 %101, 0
  br i1 %102, label %103, label %131

103:                                              ; preds = %100
  %104 = load i64, i64* @g_wpa_username_len, align 8
  %105 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %106 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  store i64 %104, i64* %107, align 8
  %108 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %109 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = call i64 @os_zalloc(i64 %111)
  %113 = inttoptr i64 %112 to i32*
  %114 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %115 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 7
  store i32* %113, i32** %116, align 8
  %117 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %118 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 7
  %120 = load i32*, i32** %119, align 8
  %121 = icmp eq i32* %120, null
  br i1 %121, label %122, label %123

122:                                              ; preds = %103
  store i32 -2, i32* %4, align 4
  br label %206

123:                                              ; preds = %103
  %124 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %125 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 7
  %127 = load i32*, i32** %126, align 8
  %128 = load i64, i64* @g_wpa_username, align 8
  %129 = load i64, i64* @g_wpa_username_len, align 8
  %130 = call i32 @os_memcpy(i32* %127, i64 %128, i64 %129)
  br label %131

131:                                              ; preds = %123, %100, %97
  %132 = load i64, i64* @g_wpa_password, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %168

134:                                              ; preds = %131
  %135 = load i64, i64* @g_wpa_password_len, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %168

137:                                              ; preds = %134
  %138 = load i64, i64* @g_wpa_password_len, align 8
  %139 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %140 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 3
  store i64 %138, i64* %141, align 8
  %142 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %143 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = call i64 @os_zalloc(i64 %145)
  %147 = inttoptr i64 %146 to i32*
  %148 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %149 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 6
  store i32* %147, i32** %150, align 8
  %151 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %152 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 6
  %154 = load i32*, i32** %153, align 8
  %155 = icmp eq i32* %154, null
  br i1 %155, label %156, label %157

156:                                              ; preds = %137
  store i32 -2, i32* %4, align 4
  br label %206

157:                                              ; preds = %137
  %158 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %159 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 6
  %161 = load i32*, i32** %160, align 8
  %162 = load i64, i64* @g_wpa_password, align 8
  %163 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %164 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = call i32 @os_memcpy(i32* %161, i64 %162, i64 %166)
  br label %168

168:                                              ; preds = %157, %134, %131
  %169 = load i64, i64* @g_wpa_new_password, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %205

171:                                              ; preds = %168
  %172 = load i64, i64* @g_wpa_new_password_len, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %205

174:                                              ; preds = %171
  %175 = load i64, i64* @g_wpa_new_password_len, align 8
  %176 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %177 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 4
  store i64 %175, i64* %178, align 8
  %179 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %180 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 4
  %182 = load i64, i64* %181, align 8
  %183 = call i64 @os_zalloc(i64 %182)
  %184 = inttoptr i64 %183 to i32*
  %185 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %186 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 5
  store i32* %184, i32** %187, align 8
  %188 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %189 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 5
  %191 = load i32*, i32** %190, align 8
  %192 = icmp eq i32* %191, null
  br i1 %192, label %193, label %194

193:                                              ; preds = %174
  store i32 -2, i32* %4, align 4
  br label %206

194:                                              ; preds = %174
  %195 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %196 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 5
  %198 = load i32*, i32** %197, align 8
  %199 = load i64, i64* @g_wpa_new_password, align 8
  %200 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %201 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 4
  %203 = load i64, i64* %202, align 8
  %204 = call i32 @os_memcpy(i32* %198, i64 %199, i64 %203)
  br label %205

205:                                              ; preds = %194, %171, %168
  store i32 0, i32* %4, align 4
  br label %206

206:                                              ; preds = %205, %193, %156, %122, %88, %10
  %207 = load i32, i32* %4, align 4
  ret i32 %207
}

declare dso_local i64 @os_zalloc(i64) #1

declare dso_local i32 @os_memcpy(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
