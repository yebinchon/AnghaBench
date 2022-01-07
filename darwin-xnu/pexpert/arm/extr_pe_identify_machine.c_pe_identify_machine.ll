; ModuleID = '/home/carl/AnghaBench/darwin-xnu/pexpert/arm/extr_pe_identify_machine.c_pe_identify_machine.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/pexpert/arm/extr_pe_identify_machine.c_pe_identify_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }

@gPEClockFrequencyInfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@gPESoCDeviceType = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"s3c2410-io\00", align 1
@gTCFG0Value = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"integratorcp-io\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"olocreek-io\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"omap3430sdp-io\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"s5i3000-io\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"bcm2837-io\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"/cpus\00", align 1
@kSuccess = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"running\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"timebase-frequency\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"bus-frequency\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"memory-frequency\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"peripheral-frequency\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"fixed-frequency\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pe_identify_machine(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load i32*, i32** %2, align 8
  %15 = call i64 (...) @pe_arm_get_soc_base_phys()
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %290

18:                                               ; preds = %1
  %19 = call i32 @bzero(i8* bitcast (%struct.TYPE_2__* @gPEClockFrequencyInfo to i8*), i32 4)
  %20 = load i32, i32* @gPESoCDeviceType, align 4
  %21 = call i32 @strcmp(i32 %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %53, label %23

23:                                               ; preds = %18
  store i32 1610612736, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = sdiv i32 %24, 2
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = sdiv i32 %26, 2
  store i32 %27, i32* %8, align 4
  store i32 3355443, i32* %9, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = sdiv i32 %28, %29
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* @gTCFG0Value, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = mul nsw i32 4, %34
  %36 = sdiv i32 %33, %35
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %6, align 4
  %38 = ashr i32 %37, 17
  %39 = mul nsw i32 %38, 15625
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = ashr i32 %40, 17
  %42 = mul nsw i32 %41, 15625
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = ashr i32 %43, 17
  %45 = mul nsw i32 %44, 15625
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = mul nsw i32 %46, 125
  %48 = add nsw i32 %47, 2
  %49 = ashr i32 %48, 2
  %50 = mul nsw i32 %49, 125
  %51 = add nsw i32 %50, 16384
  %52 = ashr i32 %51, 15
  store i32 %52, i32* %9, align 4
  br label %103

53:                                               ; preds = %18
  %54 = load i32, i32* @gPESoCDeviceType, align 4
  %55 = call i32 @strcmp(i32 %54, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %53
  store i32 200000000, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = sdiv i32 %58, 2
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = sdiv i32 %60, 2
  store i32 %61, i32* %8, align 4
  store i32 100000, i32* %9, align 4
  br label %102

62:                                               ; preds = %53
  %63 = load i32, i32* @gPESoCDeviceType, align 4
  %64 = call i32 @strcmp(i32 %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %62
  store i32 1000000000, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = sdiv i32 %67, 8
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = sdiv i32 %69, 2
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %9, align 4
  br label %101

72:                                               ; preds = %62
  %73 = load i32, i32* @gPESoCDeviceType, align 4
  %74 = call i32 @strcmp(i32 %73, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  store i32 332000000, i32* %6, align 4
  store i32 19200000, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %9, align 4
  br label %100

79:                                               ; preds = %72
  %80 = load i32, i32* @gPESoCDeviceType, align 4
  %81 = call i32 @strcmp(i32 %80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %79
  store i32 400000000, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = sdiv i32 %84, 4
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = sdiv i32 %86, 2
  store i32 %87, i32* %8, align 4
  store i32 100000, i32* %9, align 4
  br label %99

88:                                               ; preds = %79
  %89 = load i32, i32* @gPESoCDeviceType, align 4
  %90 = call i32 @strcmp(i32 %89, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %88
  store i32 1200000000, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = sdiv i32 %93, 4
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = sdiv i32 %95, 2
  store i32 %96, i32* %8, align 4
  store i32 1000000, i32* %9, align 4
  br label %98

97:                                               ; preds = %88
  store i32 1, i32* %10, align 4
  br label %98

98:                                               ; preds = %97, %92
  br label %99

99:                                               ; preds = %98, %83
  br label %100

100:                                              ; preds = %99, %76
  br label %101

101:                                              ; preds = %100, %66
  br label %102

102:                                              ; preds = %101, %57
  br label %103

103:                                              ; preds = %102, %23
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %260

106:                                              ; preds = %103
  store i32 24000000, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 0), align 8
  store i32 100000000, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 1), align 4
  store i32 400000000, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 2), align 8
  %107 = call i32 @DTLookupEntry(i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32* %4)
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* @kSuccess, align 4
  %110 = icmp eq i32 %108, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 @assert(i32 %111)
  %113 = load i32, i32* %4, align 4
  %114 = call i32 @DTInitEntryIterator(i32 %113, i32* %3)
  store i32 %114, i32* %13, align 4
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* @kSuccess, align 4
  %117 = icmp eq i32 %115, %116
  %118 = zext i1 %117 to i32
  %119 = call i32 @assert(i32 %118)
  br label %120

120:                                              ; preds = %258, %136, %106
  %121 = load i32, i32* @kSuccess, align 4
  %122 = call i32 @DTIterateEntries(i32* %3, i32* %5)
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %259

124:                                              ; preds = %120
  %125 = load i32, i32* @kSuccess, align 4
  %126 = load i32, i32* %5, align 4
  %127 = bitcast i64** %11 to i8**
  %128 = call i32 @DTGetProperty(i32 %126, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %127, i32* %12)
  %129 = icmp ne i32 %125, %128
  br i1 %129, label %136, label %130

130:                                              ; preds = %124
  %131 = load i64*, i64** %11, align 8
  %132 = bitcast i64* %131 to i8*
  %133 = load i32, i32* %12, align 4
  %134 = call i64 @strncmp(i8* %132, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %130, %124
  br label %120

137:                                              ; preds = %130
  %138 = load i32, i32* %5, align 4
  %139 = bitcast i64** %11 to i8**
  %140 = call i32 @DTGetProperty(i32 %138, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8** %139, i32* %12)
  %141 = load i32, i32* @kSuccess, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %155

143:                                              ; preds = %137
  %144 = load i32, i32* %12, align 4
  %145 = icmp eq i32 %144, 8
  br i1 %145, label %146, label %150

146:                                              ; preds = %143
  %147 = load i64*, i64** %11, align 8
  %148 = load i64, i64* %147, align 8
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 0), align 8
  br label %154

150:                                              ; preds = %143
  %151 = load i64*, i64** %11, align 8
  %152 = load i64, i64* %151, align 8
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 0), align 8
  br label %154

154:                                              ; preds = %150, %146
  br label %155

155:                                              ; preds = %154, %137
  %156 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 0), align 8
  store i32 %156, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 3), align 4
  %157 = load i32, i32* %5, align 4
  %158 = bitcast i64** %11 to i8**
  %159 = call i32 @DTGetProperty(i32 %157, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8** %158, i32* %12)
  %160 = load i32, i32* @kSuccess, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %172

162:                                              ; preds = %155
  %163 = load i32, i32* %12, align 4
  %164 = icmp eq i32 %163, 8
  br i1 %164, label %165, label %168

165:                                              ; preds = %162
  %166 = load i64*, i64** %11, align 8
  %167 = load i64, i64* %166, align 8
  store i64 %167, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 4), align 8
  br label %171

168:                                              ; preds = %162
  %169 = load i64*, i64** %11, align 8
  %170 = load i64, i64* %169, align 8
  store i64 %170, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 4), align 8
  br label %171

171:                                              ; preds = %168, %165
  br label %172

172:                                              ; preds = %171, %155
  %173 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 4), align 8
  store i64 %173, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 5), align 8
  %174 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 4), align 8
  store i64 %174, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 6), align 8
  %175 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 4), align 8
  %176 = icmp ult i64 %175, 4294967296
  br i1 %176, label %177, label %180

177:                                              ; preds = %172
  %178 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 4), align 8
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 1), align 4
  br label %181

180:                                              ; preds = %172
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 1), align 4
  br label %181

181:                                              ; preds = %180, %177
  %182 = load i32, i32* %5, align 4
  %183 = bitcast i64** %11 to i8**
  %184 = call i32 @DTGetProperty(i32 %182, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8** %183, i32* %12)
  %185 = load i32, i32* @kSuccess, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %197

187:                                              ; preds = %181
  %188 = load i32, i32* %12, align 4
  %189 = icmp eq i32 %188, 8
  br i1 %189, label %190, label %193

190:                                              ; preds = %187
  %191 = load i64*, i64** %11, align 8
  %192 = load i64, i64* %191, align 8
  store i64 %192, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 7), align 8
  br label %196

193:                                              ; preds = %187
  %194 = load i64*, i64** %11, align 8
  %195 = load i64, i64* %194, align 8
  store i64 %195, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 7), align 8
  br label %196

196:                                              ; preds = %193, %190
  br label %197

197:                                              ; preds = %196, %181
  %198 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 7), align 8
  store i64 %198, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 8), align 8
  %199 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 7), align 8
  store i64 %199, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 9), align 8
  %200 = load i32, i32* %5, align 4
  %201 = bitcast i64** %11 to i8**
  %202 = call i32 @DTGetProperty(i32 %200, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i8** %201, i32* %12)
  %203 = load i32, i32* @kSuccess, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %205, label %215

205:                                              ; preds = %197
  %206 = load i32, i32* %12, align 4
  %207 = icmp eq i32 %206, 8
  br i1 %207, label %208, label %211

208:                                              ; preds = %205
  %209 = load i64*, i64** %11, align 8
  %210 = load i64, i64* %209, align 8
  store i64 %210, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 10), align 8
  br label %214

211:                                              ; preds = %205
  %212 = load i64*, i64** %11, align 8
  %213 = load i64, i64* %212, align 8
  store i64 %213, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 10), align 8
  br label %214

214:                                              ; preds = %211, %208
  br label %215

215:                                              ; preds = %214, %197
  %216 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 10), align 8
  store i64 %216, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 11), align 8
  %217 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 10), align 8
  store i64 %217, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 12), align 8
  %218 = load i32, i32* %5, align 4
  %219 = bitcast i64** %11 to i8**
  %220 = call i32 @DTGetProperty(i32 %218, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8** %219, i32* %12)
  %221 = load i32, i32* @kSuccess, align 4
  %222 = icmp eq i32 %220, %221
  br i1 %222, label %223, label %233

223:                                              ; preds = %215
  %224 = load i32, i32* %12, align 4
  %225 = icmp eq i32 %224, 8
  br i1 %225, label %226, label %229

226:                                              ; preds = %223
  %227 = load i64*, i64** %11, align 8
  %228 = load i64, i64* %227, align 8
  store i64 %228, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 13), align 8
  br label %232

229:                                              ; preds = %223
  %230 = load i64*, i64** %11, align 8
  %231 = load i64, i64* %230, align 8
  store i64 %231, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 13), align 8
  br label %232

232:                                              ; preds = %229, %226
  br label %233

233:                                              ; preds = %232, %215
  %234 = load i32, i32* %5, align 4
  %235 = bitcast i64** %11 to i8**
  %236 = call i32 @DTGetProperty(i32 %234, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i8** %235, i32* %12)
  %237 = load i32, i32* @kSuccess, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %249

239:                                              ; preds = %233
  %240 = load i32, i32* %12, align 4
  %241 = icmp eq i32 %240, 8
  br i1 %241, label %242, label %245

242:                                              ; preds = %239
  %243 = load i64*, i64** %11, align 8
  %244 = load i64, i64* %243, align 8
  store i64 %244, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 14), align 8
  br label %248

245:                                              ; preds = %239
  %246 = load i64*, i64** %11, align 8
  %247 = load i64, i64* %246, align 8
  store i64 %247, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 14), align 8
  br label %248

248:                                              ; preds = %245, %242
  br label %249

249:                                              ; preds = %248, %233
  %250 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 14), align 8
  store i64 %250, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 15), align 8
  %251 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 14), align 8
  store i64 %251, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 16), align 8
  %252 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 14), align 8
  %253 = icmp ult i64 %252, 4294967296
  br i1 %253, label %254, label %257

254:                                              ; preds = %249
  %255 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 14), align 8
  %256 = trunc i64 %255 to i32
  store i32 %256, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 2), align 8
  br label %258

257:                                              ; preds = %249
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 2), align 8
  br label %258

258:                                              ; preds = %257, %254
  br label %120

259:                                              ; preds = %120
  br label %281

260:                                              ; preds = %103
  %261 = load i32, i32* %9, align 4
  store i32 %261, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 0), align 8
  %262 = load i32, i32* %9, align 4
  %263 = sext i32 %262 to i64
  store i64 %263, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 13), align 8
  %264 = load i32, i32* %7, align 4
  %265 = sext i32 %264 to i64
  store i64 %265, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 4), align 8
  %266 = load i32, i32* %6, align 4
  %267 = sext i32 %266 to i64
  store i64 %267, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 14), align 8
  %268 = load i32, i32* %8, align 4
  %269 = sext i32 %268 to i64
  store i64 %269, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 10), align 8
  %270 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 4), align 8
  store i64 %270, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 5), align 8
  %271 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 4), align 8
  store i64 %271, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 6), align 8
  %272 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 14), align 8
  store i64 %272, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 15), align 8
  %273 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 14), align 8
  store i64 %273, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 16), align 8
  %274 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 10), align 8
  store i64 %274, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 11), align 8
  %275 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 10), align 8
  store i64 %275, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 12), align 8
  %276 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 0), align 8
  store i32 %276, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 3), align 4
  %277 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 4), align 8
  %278 = trunc i64 %277 to i32
  store i32 %278, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 1), align 4
  %279 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 14), align 8
  %280 = trunc i64 %279 to i32
  store i32 %280, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 2), align 8
  br label %281

281:                                              ; preds = %260, %259
  %282 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 1), align 4
  store i32 %282, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 17), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 18), align 4
  %283 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 2), align 8
  %284 = mul nsw i32 2, %283
  %285 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 1), align 4
  %286 = sdiv i32 %284, %285
  store i32 %286, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 19), align 8
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 20), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 21), align 8
  %287 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 1), align 4
  %288 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 3), align 4
  %289 = sdiv i32 %287, %288
  store i32 %289, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gPEClockFrequencyInfo, i32 0, i32 22), align 4
  br label %290

290:                                              ; preds = %281, %17
  ret void
}

declare dso_local i64 @pe_arm_get_soc_base_phys(...) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @DTLookupEntry(i32*, i8*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @DTInitEntryIterator(i32, i32*) #1

declare dso_local i32 @DTIterateEntries(i32*, i32*) #1

declare dso_local i32 @DTGetProperty(i32, i8*, i8**, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
