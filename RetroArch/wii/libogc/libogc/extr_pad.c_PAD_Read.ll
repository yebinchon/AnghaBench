; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_pad.c_PAD_Read.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_pad.c_PAD_Read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8* }

@__pad_pendingbits = common dso_local global i32 0, align 4
@PAD_ERR_NOT_READY = common dso_local global i8* null, align 8
@__pad_resettingbits = common dso_local global i32 0, align 4
@__pad_resettingchan = common dso_local global i32 0, align 4
@__pad_enabledbits = common dso_local global i32 0, align 4
@PAD_ERR_NO_CONTROLLER = common dso_local global i8* null, align 8
@PAD_ERR_TRANSFER = common dso_local global i8* null, align 8
@SI_ERROR_NO_RESPONSE = common dso_local global i32 0, align 4
@__pad_waitingbits = common dso_local global i32 0, align 4
@PAD_ERR_NONE = common dso_local global i8* null, align 8
@__pad_checkingbits = common dso_local global i32 0, align 4
@__pad_receivecheckcallback = common dso_local global i32 0, align 4
@SI_WIRELESS_STATE = common dso_local global i32 0, align 4
@__pad_cmdreadorigin = common dso_local global i32 0, align 4
@__pad_origin = common dso_local global i32* null, align 8
@__pad_originupdatecallback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PAD_Read(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @_CPU_ISR_Disable(i32 %10)
  store i32 0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %234, %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 4
  br i1 %14, label %15, label %237

15:                                               ; preds = %12
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @PAD_ENABLEDMASK(i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @__pad_pendingbits, align 4
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %15
  %23 = call i32 @PAD_Reset(i32 0)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 %26
  %28 = call i32 @memset(%struct.TYPE_5__* %27, i32 0, i32 16)
  %29 = load i8*, i8** @PAD_ERR_NOT_READY, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  store i8* %29, i8** %34, align 8
  br label %234

35:                                               ; preds = %15
  %36 = load i32, i32* @__pad_resettingbits, align 4
  %37 = load i32, i32* %4, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @__pad_resettingchan, align 4
  %42 = load i32, i32* %3, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %40, %35
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 %47
  %49 = call i32 @memset(%struct.TYPE_5__* %48, i32 0, i32 16)
  %50 = load i8*, i8** @PAD_ERR_NOT_READY, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  store i8* %50, i8** %55, align 8
  br label %233

56:                                               ; preds = %40
  %57 = load i32, i32* @__pad_enabledbits, align 4
  %58 = load i32, i32* %4, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %56
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i64 %64
  %66 = call i32 @memset(%struct.TYPE_5__* %65, i32 0, i32 16)
  %67 = load i8*, i8** @PAD_ERR_NO_CONTROLLER, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  store i8* %67, i8** %72, align 8
  br label %232

73:                                               ; preds = %56
  %74 = load i32, i32* %3, align 4
  %75 = call i64 @SI_IsChanBusy(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %73
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i64 %80
  %82 = call i32 @memset(%struct.TYPE_5__* %81, i32 0, i32 16)
  %83 = load i8*, i8** @PAD_ERR_TRANSFER, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %85 = load i32, i32* %3, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  store i8* %83, i8** %88, align 8
  br label %231

89:                                               ; preds = %73
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @SI_GetStatus(i32 %90)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @SI_ERROR_NO_RESPONSE, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %145

96:                                               ; preds = %89
  %97 = load i32, i32* %3, align 4
  %98 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %99 = bitcast i32* %98 to i8*
  %100 = bitcast i8* %99 to i32*
  %101 = call i32 @SI_GetResponse(i32 %97, i32* %100)
  %102 = load i32, i32* @__pad_waitingbits, align 4
  %103 = load i32, i32* %4, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %130, label %106

106:                                              ; preds = %96
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %108 = load i32, i32* %3, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i64 %109
  %111 = call i32 @memset(%struct.TYPE_5__* %110, i32 0, i32 16)
  %112 = load i8*, i8** @PAD_ERR_NONE, align 8
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %114 = load i32, i32* %3, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  store i8* %112, i8** %117, align 8
  %118 = load i32, i32* @__pad_checkingbits, align 4
  %119 = load i32, i32* %4, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %129, label %122

122:                                              ; preds = %106
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* @__pad_checkingbits, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* @__pad_checkingbits, align 4
  %126 = load i32, i32* %3, align 4
  %127 = load i32, i32* @__pad_receivecheckcallback, align 4
  %128 = call i32 @SI_GetTypeAsync(i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %122, %106
  br label %144

130:                                              ; preds = %96
  %131 = load i32, i32* %3, align 4
  %132 = call i32 @__pad_disable(i32 %131)
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %134 = load i32, i32* %3, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i64 %135
  %137 = call i32 @memset(%struct.TYPE_5__* %136, i32 0, i32 16)
  %138 = load i8*, i8** @PAD_ERR_NO_CONTROLLER, align 8
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %140 = load i32, i32* %3, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 1
  store i8* %138, i8** %143, align 8
  br label %144

144:                                              ; preds = %130, %129
  br label %230

145:                                              ; preds = %89
  %146 = load i32, i32* %3, align 4
  %147 = call i32 @SI_GetType(i32 %146)
  store i32 %147, i32* %8, align 4
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* @SI_WIRELESS_STATE, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %156, label %152

152:                                              ; preds = %145
  %153 = load i32, i32* %4, align 4
  %154 = load i32, i32* %5, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %5, align 4
  br label %156

156:                                              ; preds = %152, %145
  %157 = load i32, i32* %3, align 4
  %158 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %159 = call i32 @SI_GetResponse(i32 %157, i32* %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %156
  %162 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %163 = load i32, i32* %162, align 4
  %164 = and i32 %163, -2147483648
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %178

166:                                              ; preds = %161, %156
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %168 = load i32, i32* %3, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i64 %169
  %171 = call i32 @memset(%struct.TYPE_5__* %170, i32 0, i32 16)
  %172 = load i8*, i8** @PAD_ERR_TRANSFER, align 8
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %174 = load i32, i32* %3, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 1
  store i8* %172, i8** %177, align 8
  br label %229

178:                                              ; preds = %161
  %179 = load i32, i32* %3, align 4
  %180 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %182 = load i32, i32* %3, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i64 %183
  %185 = call i32 @__pad_makestatus(i32 %179, i32* %180, %struct.TYPE_5__* %184)
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %187 = load i32, i32* %3, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = and i32 %191, 8192
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %214

194:                                              ; preds = %178
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %196 = load i32, i32* %3, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i64 %197
  %199 = call i32 @memset(%struct.TYPE_5__* %198, i32 0, i32 16)
  %200 = load i8*, i8** @PAD_ERR_TRANSFER, align 8
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %202 = load i32, i32* %3, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 1
  store i8* %200, i8** %205, align 8
  %206 = load i32, i32* %3, align 4
  %207 = load i32*, i32** @__pad_origin, align 8
  %208 = load i32, i32* %3, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @__pad_originupdatecallback, align 4
  %213 = call i32 @SI_Transfer(i32 %206, i32* @__pad_cmdreadorigin, i32 1, i32 %211, i32 10, i32 %212, i32 0)
  br label %228

214:                                              ; preds = %178
  %215 = load i8*, i8** @PAD_ERR_NONE, align 8
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %217 = load i32, i32* %3, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 1
  store i8* %215, i8** %220, align 8
  %221 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %222 = load i32, i32* %3, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = and i32 %226, -129
  store i32 %227, i32* %225, align 8
  br label %228

228:                                              ; preds = %214, %194
  br label %229

229:                                              ; preds = %228, %166
  br label %230

230:                                              ; preds = %229, %144
  br label %231

231:                                              ; preds = %230, %77
  br label %232

232:                                              ; preds = %231, %61
  br label %233

233:                                              ; preds = %232, %44
  br label %234

234:                                              ; preds = %233, %22
  %235 = load i32, i32* %3, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %3, align 4
  br label %12

237:                                              ; preds = %12
  %238 = load i32, i32* %6, align 4
  %239 = call i32 @_CPU_ISR_Restore(i32 %238)
  %240 = load i32, i32* %5, align 4
  ret i32 %240
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @PAD_ENABLEDMASK(i32) #1

declare dso_local i32 @PAD_Reset(i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i64 @SI_IsChanBusy(i32) #1

declare dso_local i32 @SI_GetStatus(i32) #1

declare dso_local i32 @SI_GetResponse(i32, i32*) #1

declare dso_local i32 @SI_GetTypeAsync(i32, i32) #1

declare dso_local i32 @__pad_disable(i32) #1

declare dso_local i32 @SI_GetType(i32) #1

declare dso_local i32 @__pad_makestatus(i32, i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @SI_Transfer(i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
