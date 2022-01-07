; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket2.c_pru_sanitize.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket2.c_pru_sanitize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pr_usrreqs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@pru_abort_notsupp = common dso_local global i32 0, align 4
@pru_accept_notsupp = common dso_local global i32 0, align 4
@pru_attach_notsupp = common dso_local global i32 0, align 4
@pru_bind_notsupp = common dso_local global i32 0, align 4
@pru_connect_notsupp = common dso_local global i32 0, align 4
@pru_connect2_notsupp = common dso_local global i32 0, align 4
@pru_connectx_notsupp = common dso_local global i32 0, align 4
@pru_control_notsupp = common dso_local global i32 0, align 4
@pru_detach_notsupp = common dso_local global i32 0, align 4
@pru_disconnect_notsupp = common dso_local global i32 0, align 4
@pru_disconnectx_notsupp = common dso_local global i32 0, align 4
@pru_listen_notsupp = common dso_local global i32 0, align 4
@pru_peeraddr_notsupp = common dso_local global i32 0, align 4
@pru_rcvd_notsupp = common dso_local global i32 0, align 4
@pru_rcvoob_notsupp = common dso_local global i32 0, align 4
@pru_send_notsupp = common dso_local global i32 0, align 4
@pru_send_list_notsupp = common dso_local global i32 0, align 4
@pru_sense_null = common dso_local global i32 0, align 4
@pru_shutdown_notsupp = common dso_local global i32 0, align 4
@pru_sockaddr_notsupp = common dso_local global i32 0, align 4
@pru_sopoll_notsupp = common dso_local global i32 0, align 4
@pru_soreceive_notsupp = common dso_local global i32 0, align 4
@pru_soreceive_list_notsupp = common dso_local global i32 0, align 4
@pru_sosend_notsupp = common dso_local global i32 0, align 4
@pru_sosend_list_notsupp = common dso_local global i32 0, align 4
@pru_socheckopt_null = common dso_local global i32 0, align 4
@pru_preconnect_null = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pru_sanitize(%struct.pr_usrreqs* %0) #0 {
  %2 = alloca %struct.pr_usrreqs*, align 8
  store %struct.pr_usrreqs* %0, %struct.pr_usrreqs** %2, align 8
  %3 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %2, align 8
  %4 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %3, i32 0, i32 26
  %5 = load i32, i32* %4, align 4
  %6 = sext i32 %5 to i64
  %7 = inttoptr i64 %6 to i8*
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @pru_abort_notsupp, align 4
  %11 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %2, align 8
  %12 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %11, i32 0, i32 26
  store i32 %10, i32* %12, align 4
  br label %13

13:                                               ; preds = %9, %1
  %14 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %2, align 8
  %15 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %14, i32 0, i32 25
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i8*
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load i32, i32* @pru_accept_notsupp, align 4
  %22 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %2, align 8
  %23 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %22, i32 0, i32 25
  store i32 %21, i32* %23, align 4
  br label %24

24:                                               ; preds = %20, %13
  %25 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %2, align 8
  %26 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %25, i32 0, i32 24
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load i32, i32* @pru_attach_notsupp, align 4
  %33 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %2, align 8
  %34 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %33, i32 0, i32 24
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %31, %24
  %36 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %2, align 8
  %37 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %36, i32 0, i32 23
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load i32, i32* @pru_bind_notsupp, align 4
  %44 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %2, align 8
  %45 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %44, i32 0, i32 23
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %42, %35
  %47 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %2, align 8
  %48 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %47, i32 0, i32 22
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i8*
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load i32, i32* @pru_connect_notsupp, align 4
  %55 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %2, align 8
  %56 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %55, i32 0, i32 22
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %53, %46
  %58 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %2, align 8
  %59 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %58, i32 0, i32 21
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to i8*
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load i32, i32* @pru_connect2_notsupp, align 4
  %66 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %2, align 8
  %67 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %66, i32 0, i32 21
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %64, %57
  %69 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %2, align 8
  %70 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %69, i32 0, i32 20
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to i8*
  %74 = icmp eq i8* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %68
  %76 = load i32, i32* @pru_connectx_notsupp, align 4
  %77 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %2, align 8
  %78 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %77, i32 0, i32 20
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %75, %68
  %80 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %2, align 8
  %81 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %80, i32 0, i32 19
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to i8*
  %85 = icmp eq i8* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %79
  %87 = load i32, i32* @pru_control_notsupp, align 4
  %88 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %2, align 8
  %89 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %88, i32 0, i32 19
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %86, %79
  %91 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %2, align 8
  %92 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %91, i32 0, i32 18
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = inttoptr i64 %94 to i8*
  %96 = icmp eq i8* %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %90
  %98 = load i32, i32* @pru_detach_notsupp, align 4
  %99 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %2, align 8
  %100 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %99, i32 0, i32 18
  store i32 %98, i32* %100, align 4
  br label %101

101:                                              ; preds = %97, %90
  %102 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %2, align 8
  %103 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %102, i32 0, i32 17
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = inttoptr i64 %105 to i8*
  %107 = icmp eq i8* %106, null
  br i1 %107, label %108, label %112

108:                                              ; preds = %101
  %109 = load i32, i32* @pru_disconnect_notsupp, align 4
  %110 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %2, align 8
  %111 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %110, i32 0, i32 17
  store i32 %109, i32* %111, align 4
  br label %112

112:                                              ; preds = %108, %101
  %113 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %2, align 8
  %114 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %113, i32 0, i32 16
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = inttoptr i64 %116 to i8*
  %118 = icmp eq i8* %117, null
  br i1 %118, label %119, label %123

119:                                              ; preds = %112
  %120 = load i32, i32* @pru_disconnectx_notsupp, align 4
  %121 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %2, align 8
  %122 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %121, i32 0, i32 16
  store i32 %120, i32* %122, align 4
  br label %123

123:                                              ; preds = %119, %112
  %124 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %2, align 8
  %125 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %124, i32 0, i32 15
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = inttoptr i64 %127 to i8*
  %129 = icmp eq i8* %128, null
  br i1 %129, label %130, label %134

130:                                              ; preds = %123
  %131 = load i32, i32* @pru_listen_notsupp, align 4
  %132 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %2, align 8
  %133 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %132, i32 0, i32 15
  store i32 %131, i32* %133, align 4
  br label %134

134:                                              ; preds = %130, %123
  %135 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %2, align 8
  %136 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %135, i32 0, i32 14
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = inttoptr i64 %138 to i8*
  %140 = icmp eq i8* %139, null
  br i1 %140, label %141, label %145

141:                                              ; preds = %134
  %142 = load i32, i32* @pru_peeraddr_notsupp, align 4
  %143 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %2, align 8
  %144 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %143, i32 0, i32 14
  store i32 %142, i32* %144, align 4
  br label %145

145:                                              ; preds = %141, %134
  %146 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %2, align 8
  %147 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %146, i32 0, i32 13
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  %150 = inttoptr i64 %149 to i8*
  %151 = icmp eq i8* %150, null
  br i1 %151, label %152, label %156

152:                                              ; preds = %145
  %153 = load i32, i32* @pru_rcvd_notsupp, align 4
  %154 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %2, align 8
  %155 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %154, i32 0, i32 13
  store i32 %153, i32* %155, align 4
  br label %156

156:                                              ; preds = %152, %145
  %157 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %2, align 8
  %158 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %157, i32 0, i32 12
  %159 = load i32, i32* %158, align 4
  %160 = sext i32 %159 to i64
  %161 = inttoptr i64 %160 to i8*
  %162 = icmp eq i8* %161, null
  br i1 %162, label %163, label %167

163:                                              ; preds = %156
  %164 = load i32, i32* @pru_rcvoob_notsupp, align 4
  %165 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %2, align 8
  %166 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %165, i32 0, i32 12
  store i32 %164, i32* %166, align 4
  br label %167

167:                                              ; preds = %163, %156
  %168 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %2, align 8
  %169 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %168, i32 0, i32 11
  %170 = load i32, i32* %169, align 4
  %171 = sext i32 %170 to i64
  %172 = inttoptr i64 %171 to i8*
  %173 = icmp eq i8* %172, null
  br i1 %173, label %174, label %178

174:                                              ; preds = %167
  %175 = load i32, i32* @pru_send_notsupp, align 4
  %176 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %2, align 8
  %177 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %176, i32 0, i32 11
  store i32 %175, i32* %177, align 4
  br label %178

178:                                              ; preds = %174, %167
  %179 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %2, align 8
  %180 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %179, i32 0, i32 10
  %181 = load i32, i32* %180, align 4
  %182 = sext i32 %181 to i64
  %183 = inttoptr i64 %182 to i8*
  %184 = icmp eq i8* %183, null
  br i1 %184, label %185, label %189

185:                                              ; preds = %178
  %186 = load i32, i32* @pru_send_list_notsupp, align 4
  %187 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %2, align 8
  %188 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %187, i32 0, i32 10
  store i32 %186, i32* %188, align 4
  br label %189

189:                                              ; preds = %185, %178
  %190 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %2, align 8
  %191 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %190, i32 0, i32 9
  %192 = load i32, i32* %191, align 4
  %193 = sext i32 %192 to i64
  %194 = inttoptr i64 %193 to i8*
  %195 = icmp eq i8* %194, null
  br i1 %195, label %196, label %200

196:                                              ; preds = %189
  %197 = load i32, i32* @pru_sense_null, align 4
  %198 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %2, align 8
  %199 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %198, i32 0, i32 9
  store i32 %197, i32* %199, align 4
  br label %200

200:                                              ; preds = %196, %189
  %201 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %2, align 8
  %202 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %201, i32 0, i32 8
  %203 = load i32, i32* %202, align 4
  %204 = sext i32 %203 to i64
  %205 = inttoptr i64 %204 to i8*
  %206 = icmp eq i8* %205, null
  br i1 %206, label %207, label %211

207:                                              ; preds = %200
  %208 = load i32, i32* @pru_shutdown_notsupp, align 4
  %209 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %2, align 8
  %210 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %209, i32 0, i32 8
  store i32 %208, i32* %210, align 4
  br label %211

211:                                              ; preds = %207, %200
  %212 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %2, align 8
  %213 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %212, i32 0, i32 7
  %214 = load i32, i32* %213, align 4
  %215 = sext i32 %214 to i64
  %216 = inttoptr i64 %215 to i8*
  %217 = icmp eq i8* %216, null
  br i1 %217, label %218, label %222

218:                                              ; preds = %211
  %219 = load i32, i32* @pru_sockaddr_notsupp, align 4
  %220 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %2, align 8
  %221 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %220, i32 0, i32 7
  store i32 %219, i32* %221, align 4
  br label %222

222:                                              ; preds = %218, %211
  %223 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %2, align 8
  %224 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %223, i32 0, i32 6
  %225 = load i32, i32* %224, align 4
  %226 = sext i32 %225 to i64
  %227 = inttoptr i64 %226 to i8*
  %228 = icmp eq i8* %227, null
  br i1 %228, label %229, label %233

229:                                              ; preds = %222
  %230 = load i32, i32* @pru_sopoll_notsupp, align 4
  %231 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %2, align 8
  %232 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %231, i32 0, i32 6
  store i32 %230, i32* %232, align 4
  br label %233

233:                                              ; preds = %229, %222
  %234 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %2, align 8
  %235 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %234, i32 0, i32 5
  %236 = load i32, i32* %235, align 4
  %237 = sext i32 %236 to i64
  %238 = inttoptr i64 %237 to i8*
  %239 = icmp eq i8* %238, null
  br i1 %239, label %240, label %244

240:                                              ; preds = %233
  %241 = load i32, i32* @pru_soreceive_notsupp, align 4
  %242 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %2, align 8
  %243 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %242, i32 0, i32 5
  store i32 %241, i32* %243, align 4
  br label %244

244:                                              ; preds = %240, %233
  %245 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %2, align 8
  %246 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 4
  %248 = sext i32 %247 to i64
  %249 = inttoptr i64 %248 to i8*
  %250 = icmp eq i8* %249, null
  br i1 %250, label %251, label %255

251:                                              ; preds = %244
  %252 = load i32, i32* @pru_soreceive_list_notsupp, align 4
  %253 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %2, align 8
  %254 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %253, i32 0, i32 4
  store i32 %252, i32* %254, align 4
  br label %255

255:                                              ; preds = %251, %244
  %256 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %2, align 8
  %257 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %256, i32 0, i32 3
  %258 = load i32, i32* %257, align 4
  %259 = sext i32 %258 to i64
  %260 = inttoptr i64 %259 to i8*
  %261 = icmp eq i8* %260, null
  br i1 %261, label %262, label %266

262:                                              ; preds = %255
  %263 = load i32, i32* @pru_sosend_notsupp, align 4
  %264 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %2, align 8
  %265 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %264, i32 0, i32 3
  store i32 %263, i32* %265, align 4
  br label %266

266:                                              ; preds = %262, %255
  %267 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %2, align 8
  %268 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 4
  %270 = sext i32 %269 to i64
  %271 = inttoptr i64 %270 to i8*
  %272 = icmp eq i8* %271, null
  br i1 %272, label %273, label %277

273:                                              ; preds = %266
  %274 = load i32, i32* @pru_sosend_list_notsupp, align 4
  %275 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %2, align 8
  %276 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %275, i32 0, i32 2
  store i32 %274, i32* %276, align 4
  br label %277

277:                                              ; preds = %273, %266
  %278 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %2, align 8
  %279 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = sext i32 %280 to i64
  %282 = inttoptr i64 %281 to i8*
  %283 = icmp eq i8* %282, null
  br i1 %283, label %284, label %288

284:                                              ; preds = %277
  %285 = load i32, i32* @pru_socheckopt_null, align 4
  %286 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %2, align 8
  %287 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %286, i32 0, i32 1
  store i32 %285, i32* %287, align 4
  br label %288

288:                                              ; preds = %284, %277
  %289 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %2, align 8
  %290 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = sext i32 %291 to i64
  %293 = inttoptr i64 %292 to i8*
  %294 = icmp eq i8* %293, null
  br i1 %294, label %295, label %299

295:                                              ; preds = %288
  %296 = load i32, i32* @pru_preconnect_null, align 4
  %297 = load %struct.pr_usrreqs*, %struct.pr_usrreqs** %2, align 8
  %298 = getelementptr inbounds %struct.pr_usrreqs, %struct.pr_usrreqs* %297, i32 0, i32 0
  store i32 %296, i32* %298, align 4
  br label %299

299:                                              ; preds = %295, %288
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
