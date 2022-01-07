; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_data_common.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_data_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.socket*, i32 }
%struct.cfil_info = type { i32, %struct.cfi_buf, %struct.cfi_buf }
%struct.cfi_buf = type { i64, i64, i64, i64, i32, i32 }
%struct.sockaddr = type { i32 }
%struct.mbuf = type { %struct.mbuf*, i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"so %llx cfil detached\00", align 1
@CFIF_DROP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"so %llx drop set\00", align 1
@EPIPE = common dso_local global i32 0, align 4
@cfil_udp_gc_mbuf_num_max = common dso_local global i64 0, align 8
@cfil_udp_gc_mbuf_cnt_max = common dso_local global i64 0, align 8
@MAX_CONTENT_FILTER = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfil_data_common(%struct.socket* %0, %struct.cfil_info* %1, i32 %2, %struct.sockaddr* %3, %struct.mbuf* %4, %struct.mbuf* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.socket*, align 8
  %10 = alloca %struct.cfil_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sockaddr*, align 8
  %13 = alloca %struct.mbuf*, align 8
  %14 = alloca %struct.mbuf*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.cfi_buf*, align 8
  %22 = alloca %struct.mbuf*, align 8
  store %struct.socket* %0, %struct.socket** %9, align 8
  store %struct.cfil_info* %1, %struct.cfil_info** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.sockaddr* %3, %struct.sockaddr** %12, align 8
  store %struct.mbuf* %4, %struct.mbuf** %13, align 8
  store %struct.mbuf* %5, %struct.mbuf** %14, align 8
  store i32 %6, i32* %15, align 4
  store i64 0, i64* %16, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store %struct.mbuf* null, %struct.mbuf** %22, align 8
  %23 = load %struct.cfil_info*, %struct.cfil_info** %10, align 8
  %24 = icmp eq %struct.cfil_info* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %7
  %26 = load i32, i32* @LOG_ERR, align 4
  %27 = load %struct.socket*, %struct.socket** %9, align 8
  %28 = call i64 @VM_KERNEL_ADDRPERM(%struct.socket* %27)
  %29 = trunc i64 %28 to i32
  %30 = call i32 (i32, i8*, ...) @CFIL_LOG(i32 %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %29)
  store i64 0, i64* %16, align 8
  br label %208

31:                                               ; preds = %7
  %32 = load %struct.cfil_info*, %struct.cfil_info** %10, align 8
  %33 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @CFIF_DROP, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %31
  %39 = load i32, i32* @LOG_ERR, align 4
  %40 = load %struct.socket*, %struct.socket** %9, align 8
  %41 = call i64 @VM_KERNEL_ADDRPERM(%struct.socket* %40)
  %42 = trunc i64 %41 to i32
  %43 = call i32 (i32, i8*, ...) @CFIL_LOG(i32 %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @EPIPE, align 4
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %16, align 8
  br label %208

46:                                               ; preds = %31
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %49 = bitcast %struct.mbuf* %48 to %struct.socket*
  %50 = call i32 @cfil_data_length(%struct.socket* %49, i32* %18, i32* %19)
  store i32 %50, i32* %17, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load %struct.cfil_info*, %struct.cfil_info** %10, align 8
  %55 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %54, i32 0, i32 2
  store %struct.cfi_buf* %55, %struct.cfi_buf** %21, align 8
  br label %59

56:                                               ; preds = %47
  %57 = load %struct.cfil_info*, %struct.cfil_info** %10, align 8
  %58 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %57, i32 0, i32 1
  store %struct.cfi_buf* %58, %struct.cfi_buf** %21, align 8
  br label %59

59:                                               ; preds = %56, %53
  %60 = load i32, i32* %17, align 4
  %61 = zext i32 %60 to i64
  %62 = load %struct.cfi_buf*, %struct.cfi_buf** %21, align 8
  %63 = getelementptr inbounds %struct.cfi_buf, %struct.cfi_buf* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, %61
  store i64 %65, i64* %63, align 8
  %66 = load i32, i32* %18, align 4
  %67 = sext i32 %66 to i64
  %68 = load %struct.cfi_buf*, %struct.cfi_buf** %21, align 8
  %69 = getelementptr inbounds %struct.cfi_buf, %struct.cfi_buf* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, %67
  store i64 %71, i64* %69, align 8
  %72 = load i32, i32* %19, align 4
  %73 = sext i32 %72 to i64
  %74 = load %struct.cfi_buf*, %struct.cfi_buf** %21, align 8
  %75 = getelementptr inbounds %struct.cfi_buf, %struct.cfi_buf* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, %73
  store i64 %77, i64* %75, align 8
  %78 = load %struct.socket*, %struct.socket** %9, align 8
  %79 = call i64 @IS_UDP(%struct.socket* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %112

81:                                               ; preds = %59
  %82 = load %struct.cfi_buf*, %struct.cfi_buf** %21, align 8
  %83 = getelementptr inbounds %struct.cfi_buf, %struct.cfi_buf* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @cfil_udp_gc_mbuf_num_max, align 8
  %86 = icmp sgt i64 %84, %85
  br i1 %86, label %93, label %87

87:                                               ; preds = %81
  %88 = load %struct.cfi_buf*, %struct.cfi_buf** %21, align 8
  %89 = getelementptr inbounds %struct.cfi_buf, %struct.cfi_buf* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @cfil_udp_gc_mbuf_cnt_max, align 8
  %92 = icmp sgt i64 %90, %91
  br i1 %92, label %93, label %111

93:                                               ; preds = %87, %81
  %94 = load %struct.cfi_buf*, %struct.cfi_buf** %21, align 8
  %95 = getelementptr inbounds %struct.cfi_buf, %struct.cfi_buf* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  %98 = load i32, i32* %18, align 4
  %99 = sext i32 %98 to i64
  %100 = load %struct.cfi_buf*, %struct.cfi_buf** %21, align 8
  %101 = getelementptr inbounds %struct.cfi_buf, %struct.cfi_buf* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = sub nsw i64 %102, %99
  store i64 %103, i64* %101, align 8
  %104 = load i32, i32* %19, align 4
  %105 = sext i32 %104 to i64
  %106 = load %struct.cfi_buf*, %struct.cfi_buf** %21, align 8
  %107 = getelementptr inbounds %struct.cfi_buf, %struct.cfi_buf* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = sub nsw i64 %108, %105
  store i64 %109, i64* %107, align 8
  %110 = load i32, i32* @EPIPE, align 4
  store i32 %110, i32* %8, align 4
  br label %213

111:                                              ; preds = %87
  br label %112

112:                                              ; preds = %111, %59
  %113 = load %struct.cfi_buf*, %struct.cfi_buf** %21, align 8
  %114 = call i32 @cfil_info_buf_verify(%struct.cfi_buf* %113)
  %115 = load %struct.cfi_buf*, %struct.cfi_buf** %21, align 8
  %116 = getelementptr inbounds %struct.cfi_buf, %struct.cfi_buf* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.cfi_buf*, %struct.cfi_buf** %21, align 8
  %119 = getelementptr inbounds %struct.cfi_buf, %struct.cfi_buf* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = icmp sle i64 %117, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %112
  %123 = load %struct.socket*, %struct.socket** %9, align 8
  %124 = load %struct.cfil_info*, %struct.cfil_info** %10, align 8
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* %17, align 4
  %127 = call i32 @cfil_update_entry_offsets(%struct.socket* %123, %struct.cfil_info* %124, i32 %125, i32 %126)
  br label %184

128:                                              ; preds = %112
  store i32 1, i32* %20, align 4
  br label %129

129:                                              ; preds = %180, %128
  %130 = load i32, i32* %20, align 4
  %131 = load i32, i32* @MAX_CONTENT_FILTER, align 4
  %132 = icmp sle i32 %130, %131
  br i1 %132, label %133, label %183

133:                                              ; preds = %129
  %134 = load %struct.cfil_info*, %struct.cfil_info** %10, align 8
  %135 = load i32, i32* %20, align 4
  %136 = call i64 @IS_ENTRY_ATTACHED(%struct.cfil_info* %134, i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %175

138:                                              ; preds = %133
  %139 = load %struct.socket*, %struct.socket** %9, align 8
  %140 = call i64 @IS_UDP(%struct.socket* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %166

142:                                              ; preds = %138
  %143 = load %struct.cfil_info*, %struct.cfil_info** %10, align 8
  %144 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %145 = bitcast %struct.mbuf* %144 to %struct.socket*
  %146 = call i32 @cfil_udp_save_socket_state(%struct.cfil_info* %143, %struct.socket* %145)
  %147 = load i32, i32* %11, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %142
  br label %152

150:                                              ; preds = %142
  %151 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  br label %152

152:                                              ; preds = %150, %149
  %153 = phi %struct.sockaddr* [ null, %149 ], [ %151, %150 ]
  %154 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %155 = bitcast %struct.mbuf* %154 to %struct.socket*
  %156 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %157 = bitcast %struct.mbuf* %156 to %struct.socket*
  %158 = call %struct.socket* @sbconcat_mbufs(i32* null, %struct.sockaddr* %153, %struct.socket* %155, %struct.socket* %157)
  %159 = bitcast %struct.socket* %158 to %struct.mbuf*
  store %struct.mbuf* %159, %struct.mbuf** %22, align 8
  %160 = load %struct.mbuf*, %struct.mbuf** %22, align 8
  %161 = icmp eq %struct.mbuf* %160, null
  br i1 %161, label %162, label %164

162:                                              ; preds = %152
  %163 = load i32, i32* @ENOBUFS, align 4
  store i32 %163, i32* %8, align 4
  br label %213

164:                                              ; preds = %152
  %165 = load %struct.mbuf*, %struct.mbuf** %22, align 8
  store %struct.mbuf* %165, %struct.mbuf** %13, align 8
  br label %166

166:                                              ; preds = %164, %138
  %167 = load %struct.socket*, %struct.socket** %9, align 8
  %168 = load %struct.cfil_info*, %struct.cfil_info** %10, align 8
  %169 = load i32, i32* %20, align 4
  %170 = load i32, i32* %11, align 4
  %171 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %172 = bitcast %struct.mbuf* %171 to %struct.socket*
  %173 = load i32, i32* %17, align 4
  %174 = call i64 @cfil_data_filter(%struct.socket* %167, %struct.cfil_info* %168, i32 %169, i32 %170, %struct.socket* %172, i32 %173)
  store i64 %174, i64* %16, align 8
  br label %175

175:                                              ; preds = %166, %133
  %176 = load i64, i64* %16, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %175
  br label %183

179:                                              ; preds = %175
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %20, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %20, align 4
  br label %129

183:                                              ; preds = %178, %129
  br label %184

184:                                              ; preds = %183, %122
  %185 = load i64, i64* %16, align 8
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %207

187:                                              ; preds = %184
  %188 = load i32, i32* %17, align 4
  %189 = load %struct.cfi_buf*, %struct.cfi_buf** %21, align 8
  %190 = getelementptr inbounds %struct.cfi_buf, %struct.cfi_buf* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 8
  %192 = add i32 %191, %188
  store i32 %192, i32* %190, align 8
  %193 = load i32, i32* %18, align 4
  %194 = sext i32 %193 to i64
  %195 = load %struct.cfi_buf*, %struct.cfi_buf** %21, align 8
  %196 = getelementptr inbounds %struct.cfi_buf, %struct.cfi_buf* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = sub nsw i64 %197, %194
  store i64 %198, i64* %196, align 8
  %199 = load i32, i32* %19, align 4
  %200 = sext i32 %199 to i64
  %201 = load %struct.cfi_buf*, %struct.cfi_buf** %21, align 8
  %202 = getelementptr inbounds %struct.cfi_buf, %struct.cfi_buf* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = sub nsw i64 %203, %200
  store i64 %204, i64* %202, align 8
  %205 = load %struct.cfi_buf*, %struct.cfi_buf** %21, align 8
  %206 = call i32 @cfil_info_buf_verify(%struct.cfi_buf* %205)
  br label %207

207:                                              ; preds = %187, %184
  br label %208

208:                                              ; preds = %207, %38, %25
  %209 = load %struct.cfil_info*, %struct.cfil_info** %10, align 8
  %210 = call i32 @CFIL_INFO_VERIFY(%struct.cfil_info* %209)
  %211 = load i64, i64* %16, align 8
  %212 = trunc i64 %211 to i32
  store i32 %212, i32* %8, align 4
  br label %213

213:                                              ; preds = %208, %162, %93
  %214 = load i32, i32* %8, align 4
  ret i32 %214
}

declare dso_local i32 @CFIL_LOG(i32, i8*, ...) #1

declare dso_local i64 @VM_KERNEL_ADDRPERM(%struct.socket*) #1

declare dso_local i32 @cfil_data_length(%struct.socket*, i32*, i32*) #1

declare dso_local i64 @IS_UDP(%struct.socket*) #1

declare dso_local i32 @cfil_info_buf_verify(%struct.cfi_buf*) #1

declare dso_local i32 @cfil_update_entry_offsets(%struct.socket*, %struct.cfil_info*, i32, i32) #1

declare dso_local i64 @IS_ENTRY_ATTACHED(%struct.cfil_info*, i32) #1

declare dso_local i32 @cfil_udp_save_socket_state(%struct.cfil_info*, %struct.socket*) #1

declare dso_local %struct.socket* @sbconcat_mbufs(i32*, %struct.sockaddr*, %struct.socket*, %struct.socket*) #1

declare dso_local i64 @cfil_data_filter(%struct.socket*, %struct.cfil_info*, i32, i32, %struct.socket*, i32) #1

declare dso_local i32 @CFIL_INFO_VERIFY(%struct.cfil_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
