; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_service_inject_queue.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_service_inject_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.socket = type { i32, i32, i32 }
%struct.cfil_info = type { i32, %struct.cfi_buf, %struct.cfi_buf }
%struct.cfi_buf = type { i32, i32, i32, %struct.cfil_queue }
%struct.cfil_queue = type { i32 }

@CFIF_RETRY_INJECT_OUT = common dso_local global i32 0, align 4
@CFIF_RETRY_INJECT_IN = common dso_local global i32 0, align 4
@M_SKIPCFIL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@cfil_stats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CFIF_SHUT_WR = common dso_local global i32 0, align 4
@SHUT_WR = common dso_local global i32 0, align 4
@CFIF_CLOSE_WAIT = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"so %llx waking\00", align 1
@LOG_DEBUG = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@remote_addr_ptr = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.cfil_info*, i32)* @cfil_service_inject_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfil_service_inject_queue(%struct.socket* %0, %struct.cfil_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.cfil_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.socket*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.cfi_buf*, align 8
  %14 = alloca %struct.cfil_queue*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.cfil_info* %1, %struct.cfil_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %17 = load %struct.cfil_info*, %struct.cfil_info** %6, align 8
  %18 = icmp eq %struct.cfil_info* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %229

20:                                               ; preds = %3
  %21 = load %struct.socket*, %struct.socket** %5, align 8
  %22 = call i32 @socket_lock_assert_owned(%struct.socket* %21)
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load %struct.cfil_info*, %struct.cfil_info** %6, align 8
  %27 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %26, i32 0, i32 2
  store %struct.cfi_buf* %27, %struct.cfi_buf** %13, align 8
  %28 = load i32, i32* @CFIF_RETRY_INJECT_OUT, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.cfil_info*, %struct.cfil_info** %6, align 8
  %31 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %43

34:                                               ; preds = %20
  %35 = load %struct.cfil_info*, %struct.cfil_info** %6, align 8
  %36 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %35, i32 0, i32 1
  store %struct.cfi_buf* %36, %struct.cfi_buf** %13, align 8
  %37 = load i32, i32* @CFIF_RETRY_INJECT_IN, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.cfil_info*, %struct.cfil_info** %6, align 8
  %40 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %34, %25
  %44 = load %struct.cfi_buf*, %struct.cfi_buf** %13, align 8
  %45 = getelementptr inbounds %struct.cfi_buf, %struct.cfi_buf* %44, i32 0, i32 3
  store %struct.cfil_queue* %45, %struct.cfil_queue** %14, align 8
  %46 = load %struct.cfil_queue*, %struct.cfil_queue** %14, align 8
  %47 = call i64 @cfil_queue_empty(%struct.cfil_queue* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %229

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %125, %50
  %52 = load %struct.cfil_queue*, %struct.cfil_queue** %14, align 8
  %53 = call %struct.socket* @cfil_queue_first(%struct.cfil_queue* %52)
  store %struct.socket* %53, %struct.socket** %8, align 8
  %54 = icmp ne %struct.socket* %53, null
  br i1 %54, label %55, label %128

55:                                               ; preds = %51
  %56 = load %struct.socket*, %struct.socket** %8, align 8
  %57 = call i32 @cfil_data_length(%struct.socket* %56, i32* %10, i32* %11)
  store i32 %57, i32* %9, align 4
  %58 = load %struct.cfil_queue*, %struct.cfil_queue** %14, align 8
  %59 = load %struct.socket*, %struct.socket** %8, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @cfil_queue_remove(%struct.cfil_queue* %58, %struct.socket* %59, i32 %60)
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.cfi_buf*, %struct.cfi_buf** %13, align 8
  %64 = getelementptr inbounds %struct.cfi_buf, %struct.cfi_buf* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = add i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.cfi_buf*, %struct.cfi_buf** %13, align 8
  %69 = getelementptr inbounds %struct.cfi_buf, %struct.cfi_buf* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.cfi_buf*, %struct.cfi_buf** %13, align 8
  %74 = getelementptr inbounds %struct.cfi_buf, %struct.cfi_buf* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load %struct.cfi_buf*, %struct.cfi_buf** %13, align 8
  %78 = call i32 @cfil_info_buf_verify(%struct.cfi_buf* %77)
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %55
  %82 = load %struct.socket*, %struct.socket** %5, align 8
  %83 = load %struct.socket*, %struct.socket** %8, align 8
  %84 = call i32 @sosend_reinject(%struct.socket* %82, i32* null, %struct.socket* %83, i32* null, i32 0)
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %128

88:                                               ; preds = %81
  store i32 1, i32* %15, align 4
  br label %116

89:                                               ; preds = %55
  %90 = load i32, i32* @M_SKIPCFIL, align 4
  %91 = load %struct.socket*, %struct.socket** %8, align 8
  %92 = getelementptr inbounds %struct.socket, %struct.socket* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load %struct.socket*, %struct.socket** %5, align 8
  %96 = call i32 @IS_UDP(%struct.socket* %95)
  %97 = load i32, i32* @TRUE, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %89
  %100 = load %struct.socket*, %struct.socket** %5, align 8
  %101 = getelementptr inbounds %struct.socket, %struct.socket* %100, i32 0, i32 1
  %102 = load %struct.socket*, %struct.socket** %8, align 8
  %103 = call i64 @sbappendchain(i32* %101, %struct.socket* %102, i32 0)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  store i32 1, i32* %15, align 4
  br label %106

106:                                              ; preds = %105, %99
  br label %115

107:                                              ; preds = %89
  %108 = load %struct.socket*, %struct.socket** %5, align 8
  %109 = getelementptr inbounds %struct.socket, %struct.socket* %108, i32 0, i32 1
  %110 = load %struct.socket*, %struct.socket** %8, align 8
  %111 = call i64 @sbappendstream(i32* %109, %struct.socket* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  store i32 1, i32* %15, align 4
  br label %114

114:                                              ; preds = %113, %107
  br label %115

115:                                              ; preds = %114, %106
  br label %116

116:                                              ; preds = %115, %88
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @OSAddAtomic64(i32 %120, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfil_stats, i32 0, i32 5))
  br label %125

122:                                              ; preds = %116
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @OSAddAtomic64(i32 %123, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfil_stats, i32 0, i32 4))
  br label %125

125:                                              ; preds = %122, %119
  %126 = load i32, i32* %16, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %16, align 4
  br label %51

128:                                              ; preds = %87, %51
  %129 = load i32, i32* %15, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %142

131:                                              ; preds = %128
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* @TRUE, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  %136 = load %struct.socket*, %struct.socket** %5, align 8
  %137 = call i32 @sowwakeup(%struct.socket* %136)
  br label %141

138:                                              ; preds = %131
  %139 = load %struct.socket*, %struct.socket** %5, align 8
  %140 = call i32 @sorwakeup(%struct.socket* %139)
  br label %141

141:                                              ; preds = %138, %135
  br label %142

142:                                              ; preds = %141, %128
  %143 = load i32, i32* %12, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %178

145:                                              ; preds = %142
  %146 = load %struct.cfil_info*, %struct.cfil_info** %6, align 8
  %147 = icmp ne %struct.cfil_info* %146, null
  br i1 %147, label %148, label %178

148:                                              ; preds = %145
  %149 = load i32, i32* %12, align 4
  %150 = load i32, i32* @ENOBUFS, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %148
  %153 = call i32 @OSIncrementAtomic(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfil_stats, i32 0, i32 3))
  br label %154

154:                                              ; preds = %152, %148
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* @ENOMEM, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %154
  %159 = call i32 @OSIncrementAtomic(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfil_stats, i32 0, i32 2))
  br label %160

160:                                              ; preds = %158, %154
  %161 = load i32, i32* %7, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %160
  %164 = load i32, i32* @CFIF_RETRY_INJECT_OUT, align 4
  %165 = load %struct.cfil_info*, %struct.cfil_info** %6, align 8
  %166 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = or i32 %167, %164
  store i32 %168, i32* %166, align 4
  %169 = call i32 @OSIncrementAtomic(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfil_stats, i32 0, i32 1))
  br label %177

170:                                              ; preds = %160
  %171 = load i32, i32* @CFIF_RETRY_INJECT_IN, align 4
  %172 = load %struct.cfil_info*, %struct.cfil_info** %6, align 8
  %173 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = or i32 %174, %171
  store i32 %175, i32* %173, align 4
  %176 = call i32 @OSIncrementAtomic(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfil_stats, i32 0, i32 0))
  br label %177

177:                                              ; preds = %170, %163
  br label %178

178:                                              ; preds = %177, %145, %142
  %179 = load %struct.cfil_info*, %struct.cfil_info** %6, align 8
  %180 = icmp ne %struct.cfil_info* %179, null
  br i1 %180, label %181, label %201

181:                                              ; preds = %178
  %182 = load %struct.cfil_info*, %struct.cfil_info** %6, align 8
  %183 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @CFIF_SHUT_WR, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %201

188:                                              ; preds = %181
  %189 = load %struct.socket*, %struct.socket** %5, align 8
  %190 = load i32, i32* @SHUT_WR, align 4
  %191 = call i32 @cfil_sock_notify_shutdown(%struct.socket* %189, i32 %190)
  %192 = load %struct.socket*, %struct.socket** %5, align 8
  %193 = getelementptr inbounds %struct.socket, %struct.socket* %192, i32 0, i32 0
  %194 = call i64 @cfil_sock_data_pending(i32* %193)
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %188
  %197 = load %struct.socket*, %struct.socket** %5, align 8
  %198 = load i32, i32* @SHUT_WR, align 4
  %199 = call i32 @soshutdownlock_final(%struct.socket* %197, i32 %198)
  br label %200

200:                                              ; preds = %196, %188
  br label %201

201:                                              ; preds = %200, %181, %178
  %202 = load %struct.cfil_info*, %struct.cfil_info** %6, align 8
  %203 = icmp ne %struct.cfil_info* %202, null
  br i1 %203, label %204, label %225

204:                                              ; preds = %201
  %205 = load %struct.cfil_info*, %struct.cfil_info** %6, align 8
  %206 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @CFIF_CLOSE_WAIT, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %225

211:                                              ; preds = %204
  %212 = load %struct.socket*, %struct.socket** %5, align 8
  %213 = call i64 @cfil_filters_attached(%struct.socket* %212)
  %214 = icmp eq i64 %213, 0
  br i1 %214, label %215, label %224

215:                                              ; preds = %211
  %216 = load i32, i32* @LOG_INFO, align 4
  %217 = load %struct.socket*, %struct.socket** %5, align 8
  %218 = call i64 @VM_KERNEL_ADDRPERM(%struct.socket* %217)
  %219 = trunc i64 %218 to i32
  %220 = call i32 (i32, i8*, ...) @CFIL_LOG(i32 %216, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %219)
  %221 = load %struct.cfil_info*, %struct.cfil_info** %6, align 8
  %222 = ptrtoint %struct.cfil_info* %221 to i32
  %223 = call i32 @wakeup(i32 %222)
  br label %224

224:                                              ; preds = %215, %211
  br label %225

225:                                              ; preds = %224, %204, %201
  %226 = load %struct.cfil_info*, %struct.cfil_info** %6, align 8
  %227 = call i32 @CFIL_INFO_VERIFY(%struct.cfil_info* %226)
  %228 = load i32, i32* %12, align 4
  store i32 %228, i32* %4, align 4
  br label %229

229:                                              ; preds = %225, %49, %19
  %230 = load i32, i32* %4, align 4
  ret i32 %230
}

declare dso_local i32 @socket_lock_assert_owned(%struct.socket*) #1

declare dso_local i64 @cfil_queue_empty(%struct.cfil_queue*) #1

declare dso_local %struct.socket* @cfil_queue_first(%struct.cfil_queue*) #1

declare dso_local i32 @cfil_data_length(%struct.socket*, i32*, i32*) #1

declare dso_local i32 @cfil_queue_remove(%struct.cfil_queue*, %struct.socket*, i32) #1

declare dso_local i32 @cfil_info_buf_verify(%struct.cfi_buf*) #1

declare dso_local i32 @sosend_reinject(%struct.socket*, i32*, %struct.socket*, i32*, i32) #1

declare dso_local i32 @IS_UDP(%struct.socket*) #1

declare dso_local i64 @sbappendchain(i32*, %struct.socket*, i32) #1

declare dso_local i64 @sbappendstream(i32*, %struct.socket*) #1

declare dso_local i32 @OSAddAtomic64(i32, i32*) #1

declare dso_local i32 @sowwakeup(%struct.socket*) #1

declare dso_local i32 @sorwakeup(%struct.socket*) #1

declare dso_local i32 @OSIncrementAtomic(i32*) #1

declare dso_local i32 @cfil_sock_notify_shutdown(%struct.socket*, i32) #1

declare dso_local i64 @cfil_sock_data_pending(i32*) #1

declare dso_local i32 @soshutdownlock_final(%struct.socket*, i32) #1

declare dso_local i64 @cfil_filters_attached(%struct.socket*) #1

declare dso_local i32 @CFIL_LOG(i32, i8*, ...) #1

declare dso_local i64 @VM_KERNEL_ADDRPERM(%struct.socket*) #1

declare dso_local i32 @wakeup(i32) #1

declare dso_local i32 @CFIL_INFO_VERIFY(%struct.cfil_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
