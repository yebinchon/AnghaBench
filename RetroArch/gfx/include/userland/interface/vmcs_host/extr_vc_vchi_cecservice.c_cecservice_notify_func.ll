; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vc_vchi_cecservice.c_cecservice_notify_func.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vc_vchi_cecservice.c_cecservice_notify_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32, i32 (i32, i32, i32, i32, i32, i32)*, i64, i64, i32*, i32*, i32 }

@.str = private unnamed_addr constant [33 x i8] c"CEC service async thread started\00", align 1
@cecservice_notify_available_event = common dso_local global i32 0, align 4
@max_notify_strings = common dso_local global i32 0, align 4
@VCOS_SUCCESS = common dso_local global i64 0, align 8
@VCHI_FLAGS_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"CEC service callback [%s]: 0x%x, 0x%x, 0x%x, 0x%x\00", align 1
@cecservice_notify_strings = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [68 x i8] c"CEC service: No callback handler specified, callback [%s] swallowed\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"CEC service async thread exiting\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @cecservice_notify_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cecservice_notify_func(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %4, align 8
  %14 = call i32 (i8*, ...) @vc_cec_log_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %1, %167
  %16 = call i64 @vcos_event_wait(i32* @cecservice_notify_available_event)
  store i64 %16, i64* %5, align 8
  %17 = load i32, i32* @max_notify_strings, align 4
  %18 = sub nsw i32 %17, 1
  store i32 %18, i32* %6, align 4
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @VCOS_SUCCESS, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %32, label %22

22:                                               ; preds = %15
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27, %22, %15
  br label %168

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %165, %33
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 7
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 6
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* @VCHI_FLAGS_NONE, align 4
  %46 = call i64 @vchi_msg_dequeue(i32 %39, i32* %42, i32 8, i32* %44, i32 %45)
  store i64 %46, i64* %3, align 8
  %47 = load i64, i64* %3, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %34
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = icmp ult i64 %53, 20
  br i1 %54, label %55, label %63

55:                                               ; preds = %49, %34
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = icmp eq i64 %59, 20
  %61 = zext i1 %60 to i32
  %62 = call i32 @vcos_assert(i32 %61)
  br label %167

63:                                               ; preds = %49
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 6
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @VC_VTOH32(i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 6
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @VC_VTOH32(i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 6
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @VC_VTOH32(i32 %80)
  store i32 %81, i32* %9, align 4
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 6
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 3
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @VC_VTOH32(i32 %86)
  store i32 %87, i32* %10, align 4
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 6
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 4
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @VC_VTOH32(i32 %92)
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @CEC_CB_REASON(i32 %94)
  %96 = icmp eq i32 %95, 135
  br i1 %96, label %97, label %107

97:                                               ; preds = %63
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 5
  store i64 %99, i64* %101, align 8
  %102 = load i32, i32* %9, align 4
  %103 = and i32 %102, 65535
  %104 = sext i32 %103 to i64
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 4
  store i64 %104, i64* %106, align 8
  br label %107

107:                                              ; preds = %97, %63
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @CEC_CB_REASON(i32 %108)
  switch i32 %109, label %120 [
    i32 133, label %110
    i32 128, label %111
    i32 130, label %112
    i32 137, label %113
    i32 136, label %114
    i32 132, label %115
    i32 131, label %116
    i32 135, label %117
    i32 129, label %118
    i32 134, label %119
  ]

110:                                              ; preds = %107
  store i32 0, i32* %6, align 4
  br label %120

111:                                              ; preds = %107
  store i32 1, i32* %6, align 4
  br label %120

112:                                              ; preds = %107
  store i32 2, i32* %6, align 4
  br label %120

113:                                              ; preds = %107
  store i32 3, i32* %6, align 4
  br label %120

114:                                              ; preds = %107
  store i32 4, i32* %6, align 4
  br label %120

115:                                              ; preds = %107
  store i32 5, i32* %6, align 4
  br label %120

116:                                              ; preds = %107
  store i32 6, i32* %6, align 4
  br label %120

117:                                              ; preds = %107
  store i32 7, i32* %6, align 4
  br label %120

118:                                              ; preds = %107
  store i32 8, i32* %6, align 4
  br label %120

119:                                              ; preds = %107
  store i32 9, i32* %6, align 4
  br label %120

120:                                              ; preds = %107, %119, %118, %117, %116, %115, %114, %113, %112, %111, %110
  %121 = load i32*, i32** @cecservice_notify_strings, align 8
  %122 = load i32, i32* %6, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* %11, align 4
  %130 = call i32 (i8*, ...) @vc_cec_log_info(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %125, i32 %126, i32 %127, i32 %128, i32 %129)
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 3
  %133 = load i32 (i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32)** %132, align 8
  %134 = icmp ne i32 (i32, i32, i32, i32, i32, i32)* %133, null
  br i1 %134, label %135, label %148

135:                                              ; preds = %120
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 3
  %138 = load i32 (i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32)** %137, align 8
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* %11, align 4
  %147 = call i32 %138(i32 %141, i32 %142, i32 %143, i32 %144, i32 %145, i32 %146)
  br label %155

148:                                              ; preds = %120
  %149 = load i32*, i32** @cecservice_notify_strings, align 8
  %150 = load i32, i32* %6, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = call i32 (i8*, ...) @vc_cec_log_info(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i32 %153)
  br label %155

155:                                              ; preds = %148, %135
  br label %156

156:                                              ; preds = %155
  %157 = load i64, i64* %3, align 8
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %156
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = sext i32 %162 to i64
  %164 = icmp uge i64 %163, 20
  br label %165

165:                                              ; preds = %159, %156
  %166 = phi i1 [ false, %156 ], [ %164, %159 ]
  br i1 %166, label %34, label %167

167:                                              ; preds = %165, %55
  br label %15

168:                                              ; preds = %32
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %168
  %174 = call i32 (i8*, ...) @vc_cec_log_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %175

175:                                              ; preds = %173, %168
  ret i8* null
}

declare dso_local i32 @vc_cec_log_info(i8*, ...) #1

declare dso_local i64 @vcos_event_wait(i32*) #1

declare dso_local i64 @vchi_msg_dequeue(i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i32 @VC_VTOH32(i32) #1

declare dso_local i32 @CEC_CB_REASON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
