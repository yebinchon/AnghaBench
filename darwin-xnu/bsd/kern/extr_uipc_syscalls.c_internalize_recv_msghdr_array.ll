; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_syscalls.c_internalize_recv_msghdr_array.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_syscalls.c_internalize_recv_msghdr_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_msghdr_x = type { i64, i64, i64, i64, i64, i32, i32, i32 }
%struct.recv_msg_elem = type { i32, i32* }
%struct.user_iovec = type { i32 }
%struct.user64_msghdr_x = type { i64, i32, i32, i64, i64, i32, i64, i64 }
%struct.user32_msghdr_x = type { i64, i32, i32, i64, i64, i32, i64, i64 }

@UIO_USERSPACE64 = common dso_local global i32 0, align 4
@UIO_MAXIOV = common dso_local global i64 0, align 8
@EMSGSIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SOCK_MSG_SA = common dso_local global i32 0, align 4
@SOCK_MSG_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @internalize_recv_msghdr_array(i8* %0, i32 %1, i32 %2, i64 %3, %struct.user_msghdr_x* %4, %struct.recv_msg_elem* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.user_msghdr_x*, align 8
  %12 = alloca %struct.recv_msg_elem*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.user_iovec*, align 8
  %16 = alloca %struct.user_msghdr_x*, align 8
  %17 = alloca %struct.recv_msg_elem*, align 8
  %18 = alloca %struct.user64_msghdr_x*, align 8
  %19 = alloca %struct.user32_msghdr_x*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store %struct.user_msghdr_x* %4, %struct.user_msghdr_x** %11, align 8
  store %struct.recv_msg_elem* %5, %struct.recv_msg_elem** %12, align 8
  store i32 0, i32* %13, align 4
  store i64 0, i64* %14, align 8
  br label %20

20:                                               ; preds = %225, %6
  %21 = load i64, i64* %14, align 8
  %22 = load i64, i64* %10, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %228

24:                                               ; preds = %20
  %25 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %11, align 8
  %26 = load i64, i64* %14, align 8
  %27 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %25, i64 %26
  store %struct.user_msghdr_x* %27, %struct.user_msghdr_x** %16, align 8
  %28 = load %struct.recv_msg_elem*, %struct.recv_msg_elem** %12, align 8
  %29 = load i64, i64* %14, align 8
  %30 = getelementptr inbounds %struct.recv_msg_elem, %struct.recv_msg_elem* %28, i64 %29
  store %struct.recv_msg_elem* %30, %struct.recv_msg_elem** %17, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @UIO_USERSPACE64, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %79

34:                                               ; preds = %24
  %35 = load i8*, i8** %7, align 8
  %36 = bitcast i8* %35 to %struct.user64_msghdr_x*
  %37 = load i64, i64* %14, align 8
  %38 = getelementptr inbounds %struct.user64_msghdr_x, %struct.user64_msghdr_x* %36, i64 %37
  store %struct.user64_msghdr_x* %38, %struct.user64_msghdr_x** %18, align 8
  %39 = load %struct.user64_msghdr_x*, %struct.user64_msghdr_x** %18, align 8
  %40 = getelementptr inbounds %struct.user64_msghdr_x, %struct.user64_msghdr_x* %39, i32 0, i32 7
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %16, align 8
  %43 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %42, i32 0, i32 4
  store i64 %41, i64* %43, align 8
  %44 = load %struct.user64_msghdr_x*, %struct.user64_msghdr_x** %18, align 8
  %45 = getelementptr inbounds %struct.user64_msghdr_x, %struct.user64_msghdr_x* %44, i32 0, i32 6
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %16, align 8
  %48 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %47, i32 0, i32 3
  store i64 %46, i64* %48, align 8
  %49 = load %struct.user64_msghdr_x*, %struct.user64_msghdr_x** %18, align 8
  %50 = getelementptr inbounds %struct.user64_msghdr_x, %struct.user64_msghdr_x* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %16, align 8
  %53 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %52, i32 0, i32 6
  store i32 %51, i32* %53, align 4
  %54 = load %struct.user64_msghdr_x*, %struct.user64_msghdr_x** %18, align 8
  %55 = getelementptr inbounds %struct.user64_msghdr_x, %struct.user64_msghdr_x* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %16, align 8
  %58 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load %struct.user64_msghdr_x*, %struct.user64_msghdr_x** %18, align 8
  %60 = getelementptr inbounds %struct.user64_msghdr_x, %struct.user64_msghdr_x* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %16, align 8
  %63 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %62, i32 0, i32 2
  store i64 %61, i64* %63, align 8
  %64 = load %struct.user64_msghdr_x*, %struct.user64_msghdr_x** %18, align 8
  %65 = getelementptr inbounds %struct.user64_msghdr_x, %struct.user64_msghdr_x* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %16, align 8
  %68 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  %69 = load %struct.user64_msghdr_x*, %struct.user64_msghdr_x** %18, align 8
  %70 = getelementptr inbounds %struct.user64_msghdr_x, %struct.user64_msghdr_x* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %16, align 8
  %73 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %72, i32 0, i32 7
  store i32 %71, i32* %73, align 8
  %74 = load %struct.user64_msghdr_x*, %struct.user64_msghdr_x** %18, align 8
  %75 = getelementptr inbounds %struct.user64_msghdr_x, %struct.user64_msghdr_x* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %16, align 8
  %78 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %77, i32 0, i32 5
  store i32 %76, i32* %78, align 8
  br label %124

79:                                               ; preds = %24
  %80 = load i8*, i8** %7, align 8
  %81 = bitcast i8* %80 to %struct.user32_msghdr_x*
  %82 = load i64, i64* %14, align 8
  %83 = getelementptr inbounds %struct.user32_msghdr_x, %struct.user32_msghdr_x* %81, i64 %82
  store %struct.user32_msghdr_x* %83, %struct.user32_msghdr_x** %19, align 8
  %84 = load %struct.user32_msghdr_x*, %struct.user32_msghdr_x** %19, align 8
  %85 = getelementptr inbounds %struct.user32_msghdr_x, %struct.user32_msghdr_x* %84, i32 0, i32 7
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %16, align 8
  %88 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %87, i32 0, i32 4
  store i64 %86, i64* %88, align 8
  %89 = load %struct.user32_msghdr_x*, %struct.user32_msghdr_x** %19, align 8
  %90 = getelementptr inbounds %struct.user32_msghdr_x, %struct.user32_msghdr_x* %89, i32 0, i32 6
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %16, align 8
  %93 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %92, i32 0, i32 3
  store i64 %91, i64* %93, align 8
  %94 = load %struct.user32_msghdr_x*, %struct.user32_msghdr_x** %19, align 8
  %95 = getelementptr inbounds %struct.user32_msghdr_x, %struct.user32_msghdr_x* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %16, align 8
  %98 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %97, i32 0, i32 6
  store i32 %96, i32* %98, align 4
  %99 = load %struct.user32_msghdr_x*, %struct.user32_msghdr_x** %19, align 8
  %100 = getelementptr inbounds %struct.user32_msghdr_x, %struct.user32_msghdr_x* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %16, align 8
  %103 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  %104 = load %struct.user32_msghdr_x*, %struct.user32_msghdr_x** %19, align 8
  %105 = getelementptr inbounds %struct.user32_msghdr_x, %struct.user32_msghdr_x* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %16, align 8
  %108 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %107, i32 0, i32 2
  store i64 %106, i64* %108, align 8
  %109 = load %struct.user32_msghdr_x*, %struct.user32_msghdr_x** %19, align 8
  %110 = getelementptr inbounds %struct.user32_msghdr_x, %struct.user32_msghdr_x* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %16, align 8
  %113 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %112, i32 0, i32 1
  store i64 %111, i64* %113, align 8
  %114 = load %struct.user32_msghdr_x*, %struct.user32_msghdr_x** %19, align 8
  %115 = getelementptr inbounds %struct.user32_msghdr_x, %struct.user32_msghdr_x* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %16, align 8
  %118 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %117, i32 0, i32 7
  store i32 %116, i32* %118, align 8
  %119 = load %struct.user32_msghdr_x*, %struct.user32_msghdr_x** %19, align 8
  %120 = getelementptr inbounds %struct.user32_msghdr_x, %struct.user32_msghdr_x* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %16, align 8
  %123 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %122, i32 0, i32 5
  store i32 %121, i32* %123, align 8
  br label %124

124:                                              ; preds = %79, %34
  %125 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %16, align 8
  %126 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp sle i64 %127, 0
  br i1 %128, label %135, label %129

129:                                              ; preds = %124
  %130 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %16, align 8
  %131 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @UIO_MAXIOV, align 8
  %134 = icmp sgt i64 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %129, %124
  %136 = load i32, i32* @EMSGSIZE, align 4
  store i32 %136, i32* %13, align 4
  br label %229

137:                                              ; preds = %129
  %138 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %16, align 8
  %139 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* %9, align 4
  %143 = call i32* @uio_create(i64 %140, i32 0, i32 %141, i32 %142)
  %144 = load %struct.recv_msg_elem*, %struct.recv_msg_elem** %17, align 8
  %145 = getelementptr inbounds %struct.recv_msg_elem, %struct.recv_msg_elem* %144, i32 0, i32 1
  store i32* %143, i32** %145, align 8
  %146 = load %struct.recv_msg_elem*, %struct.recv_msg_elem** %17, align 8
  %147 = getelementptr inbounds %struct.recv_msg_elem, %struct.recv_msg_elem* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = icmp eq i32* %148, null
  br i1 %149, label %150, label %152

150:                                              ; preds = %137
  %151 = load i32, i32* @ENOMEM, align 4
  store i32 %151, i32* %13, align 4
  br label %229

152:                                              ; preds = %137
  %153 = load %struct.recv_msg_elem*, %struct.recv_msg_elem** %17, align 8
  %154 = getelementptr inbounds %struct.recv_msg_elem, %struct.recv_msg_elem* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = call %struct.user_iovec* @uio_iovsaddr(i32* %155)
  store %struct.user_iovec* %156, %struct.user_iovec** %15, align 8
  %157 = load %struct.user_iovec*, %struct.user_iovec** %15, align 8
  %158 = icmp eq %struct.user_iovec* %157, null
  br i1 %158, label %159, label %161

159:                                              ; preds = %152
  %160 = load i32, i32* @ENOMEM, align 4
  store i32 %160, i32* %13, align 4
  br label %229

161:                                              ; preds = %152
  %162 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %16, align 8
  %163 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %162, i32 0, i32 6
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %8, align 4
  %166 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %16, align 8
  %167 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.user_iovec*, %struct.user_iovec** %15, align 8
  %170 = call i32 @copyin_user_iovec_array(i32 %164, i32 %165, i64 %168, %struct.user_iovec* %169)
  store i32 %170, i32* %13, align 4
  %171 = load i32, i32* %13, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %161
  br label %229

174:                                              ; preds = %161
  %175 = load %struct.user_iovec*, %struct.user_iovec** %15, align 8
  %176 = call i32 @CAST_USER_ADDR_T(%struct.user_iovec* %175)
  %177 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %16, align 8
  %178 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %177, i32 0, i32 6
  store i32 %176, i32* %178, align 4
  %179 = load %struct.recv_msg_elem*, %struct.recv_msg_elem** %17, align 8
  %180 = getelementptr inbounds %struct.recv_msg_elem, %struct.recv_msg_elem* %179, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = call i32 @uio_calculateresid(i32* %181)
  store i32 %182, i32* %13, align 4
  %183 = load i32, i32* %13, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %174
  br label %229

186:                                              ; preds = %174
  %187 = load %struct.recv_msg_elem*, %struct.recv_msg_elem** %17, align 8
  %188 = getelementptr inbounds %struct.recv_msg_elem, %struct.recv_msg_elem* %187, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  %190 = call i32 @uio_resid(i32* %189)
  %191 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %16, align 8
  %192 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %191, i32 0, i32 5
  store i32 %190, i32* %192, align 8
  %193 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %16, align 8
  %194 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %193, i32 0, i32 4
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %208

197:                                              ; preds = %186
  %198 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %16, align 8
  %199 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %198, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %197
  %203 = load i32, i32* @SOCK_MSG_SA, align 4
  %204 = load %struct.recv_msg_elem*, %struct.recv_msg_elem** %17, align 8
  %205 = getelementptr inbounds %struct.recv_msg_elem, %struct.recv_msg_elem* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = or i32 %206, %203
  store i32 %207, i32* %205, align 8
  br label %208

208:                                              ; preds = %202, %197, %186
  %209 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %16, align 8
  %210 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %224

213:                                              ; preds = %208
  %214 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %16, align 8
  %215 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %224

218:                                              ; preds = %213
  %219 = load i32, i32* @SOCK_MSG_CONTROL, align 4
  %220 = load %struct.recv_msg_elem*, %struct.recv_msg_elem** %17, align 8
  %221 = getelementptr inbounds %struct.recv_msg_elem, %struct.recv_msg_elem* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = or i32 %222, %219
  store i32 %223, i32* %221, align 8
  br label %224

224:                                              ; preds = %218, %213, %208
  br label %225

225:                                              ; preds = %224
  %226 = load i64, i64* %14, align 8
  %227 = add nsw i64 %226, 1
  store i64 %227, i64* %14, align 8
  br label %20

228:                                              ; preds = %20
  br label %229

229:                                              ; preds = %228, %185, %173, %159, %150, %135
  %230 = load i32, i32* %13, align 4
  ret i32 %230
}

declare dso_local i32* @uio_create(i64, i32, i32, i32) #1

declare dso_local %struct.user_iovec* @uio_iovsaddr(i32*) #1

declare dso_local i32 @copyin_user_iovec_array(i32, i32, i64, %struct.user_iovec*) #1

declare dso_local i32 @CAST_USER_ADDR_T(%struct.user_iovec*) #1

declare dso_local i32 @uio_calculateresid(i32*) #1

declare dso_local i32 @uio_resid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
