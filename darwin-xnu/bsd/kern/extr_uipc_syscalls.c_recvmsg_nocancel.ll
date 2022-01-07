; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_syscalls.c_recvmsg_nocancel.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_syscalls.c_recvmsg_nocancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.recvmsg_nocancel_args = type { i32, i32, i32 }
%struct.user32_msghdr = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.user64_msghdr = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.user_msghdr = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.user_iovec = type { i32 }

@DBG_FNC_RECVMSG = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@fd = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4
@UIO_MAXIOV = common dso_local global i64 0, align 8
@EMSGSIZE = common dso_local global i32 0, align 4
@UIO_USERSPACE64 = common dso_local global i32 0, align 4
@UIO_USERSPACE32 = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @recvmsg_nocancel(%struct.proc* %0, %struct.recvmsg_nocancel_args* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.proc*, align 8
  %6 = alloca %struct.recvmsg_nocancel_args*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.user32_msghdr, align 8
  %9 = alloca %struct.user64_msghdr, align 8
  %10 = alloca %struct.user_msghdr, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.user_iovec*, align 8
  store %struct.proc* %0, %struct.proc** %5, align 8
  store %struct.recvmsg_nocancel_args* %1, %struct.recvmsg_nocancel_args** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %15, align 8
  %17 = load i32, i32* @DBG_FNC_RECVMSG, align 4
  %18 = load i32, i32* @DBG_FUNC_START, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @KERNEL_DEBUG(i32 %19, i32 0, i32 0, i32 0, i32 0, i32 0)
  %21 = load i32, i32* @fd, align 4
  %22 = load %struct.recvmsg_nocancel_args*, %struct.recvmsg_nocancel_args** %6, align 8
  %23 = getelementptr inbounds %struct.recvmsg_nocancel_args, %struct.recvmsg_nocancel_args* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @AUDIT_ARG(i32 %21, i32 %24)
  %26 = load %struct.proc*, %struct.proc** %5, align 8
  %27 = call i64 @IS_64BIT_PROCESS(%struct.proc* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = ptrtoint %struct.user64_msghdr* %9 to i64
  store i64 %30, i64* %11, align 8
  store i32 32, i32* %12, align 4
  br label %33

31:                                               ; preds = %3
  %32 = ptrtoint %struct.user32_msghdr* %8 to i64
  store i64 %32, i64* %11, align 8
  store i32 32, i32* %12, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = load %struct.recvmsg_nocancel_args*, %struct.recvmsg_nocancel_args** %6, align 8
  %35 = getelementptr inbounds %struct.recvmsg_nocancel_args, %struct.recvmsg_nocancel_args* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* %11, align 8
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @copyin(i32 %36, i64 %37, i32 %38)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %33
  %43 = load i32, i32* @DBG_FNC_RECVMSG, align 4
  %44 = load i32, i32* @DBG_FUNC_END, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %14, align 4
  %47 = call i32 @KERNEL_DEBUG(i32 %45, i32 %46, i32 0, i32 0, i32 0, i32 0)
  %48 = load i32, i32* %14, align 4
  store i32 %48, i32* %4, align 4
  br label %252

49:                                               ; preds = %33
  %50 = load %struct.proc*, %struct.proc** %5, align 8
  %51 = call i64 @IS_64BIT_PROCESS(%struct.proc* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %75

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.user64_msghdr, %struct.user64_msghdr* %9, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 6
  store i32 %55, i32* %56, align 4
  %57 = getelementptr inbounds %struct.user64_msghdr, %struct.user64_msghdr* %9, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 5
  store i32 %58, i32* %59, align 8
  %60 = getelementptr inbounds %struct.user64_msghdr, %struct.user64_msghdr* %9, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 4
  store i32 %61, i32* %62, align 4
  %63 = getelementptr inbounds %struct.user64_msghdr, %struct.user64_msghdr* %9, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 0
  store i64 %64, i64* %65, align 8
  %66 = getelementptr inbounds %struct.user64_msghdr, %struct.user64_msghdr* %9, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 3
  store i32 %67, i32* %68, align 8
  %69 = getelementptr inbounds %struct.user64_msghdr, %struct.user64_msghdr* %9, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 2
  store i32 %70, i32* %71, align 4
  %72 = getelementptr inbounds %struct.user64_msghdr, %struct.user64_msghdr* %9, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 1
  store i32 %73, i32* %74, align 8
  br label %97

75:                                               ; preds = %49
  %76 = getelementptr inbounds %struct.user32_msghdr, %struct.user32_msghdr* %8, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 6
  store i32 %77, i32* %78, align 4
  %79 = getelementptr inbounds %struct.user32_msghdr, %struct.user32_msghdr* %8, i32 0, i32 5
  %80 = load i32, i32* %79, align 8
  %81 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 5
  store i32 %80, i32* %81, align 8
  %82 = getelementptr inbounds %struct.user32_msghdr, %struct.user32_msghdr* %8, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 4
  store i32 %83, i32* %84, align 4
  %85 = getelementptr inbounds %struct.user32_msghdr, %struct.user32_msghdr* %8, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 0
  store i64 %86, i64* %87, align 8
  %88 = getelementptr inbounds %struct.user32_msghdr, %struct.user32_msghdr* %8, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 3
  store i32 %89, i32* %90, align 8
  %91 = getelementptr inbounds %struct.user32_msghdr, %struct.user32_msghdr* %8, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 2
  store i32 %92, i32* %93, align 4
  %94 = getelementptr inbounds %struct.user32_msghdr, %struct.user32_msghdr* %8, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 1
  store i32 %95, i32* %96, align 8
  br label %97

97:                                               ; preds = %75, %53
  %98 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp sle i64 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @UIO_MAXIOV, align 8
  %105 = icmp sgt i64 %103, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %101, %97
  %107 = load i32, i32* @DBG_FNC_RECVMSG, align 4
  %108 = load i32, i32* @DBG_FUNC_END, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @EMSGSIZE, align 4
  %111 = call i32 @KERNEL_DEBUG(i32 %109, i32 %110, i32 0, i32 0, i32 0, i32 0)
  %112 = load i32, i32* @EMSGSIZE, align 4
  store i32 %112, i32* %4, align 4
  br label %252

113:                                              ; preds = %101
  %114 = load %struct.recvmsg_nocancel_args*, %struct.recvmsg_nocancel_args** %6, align 8
  %115 = getelementptr inbounds %struct.recvmsg_nocancel_args, %struct.recvmsg_nocancel_args* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 6
  store i32 %116, i32* %117, align 4
  %118 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.proc*, %struct.proc** %5, align 8
  %121 = call i64 @IS_64BIT_PROCESS(%struct.proc* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %113
  %124 = load i32, i32* @UIO_USERSPACE64, align 4
  br label %127

125:                                              ; preds = %113
  %126 = load i32, i32* @UIO_USERSPACE32, align 4
  br label %127

127:                                              ; preds = %125, %123
  %128 = phi i32 [ %124, %123 ], [ %126, %125 ]
  %129 = load i32, i32* @UIO_READ, align 4
  %130 = call i32* @uio_create(i64 %119, i32 0, i32 %128, i32 %129)
  store i32* %130, i32** %15, align 8
  %131 = load i32*, i32** %15, align 8
  %132 = icmp eq i32* %131, null
  br i1 %132, label %133, label %135

133:                                              ; preds = %127
  %134 = load i32, i32* @ENOMEM, align 4
  store i32 %134, i32* %14, align 4
  br label %239

135:                                              ; preds = %127
  %136 = load i32*, i32** %15, align 8
  %137 = call %struct.user_iovec* @uio_iovsaddr(i32* %136)
  store %struct.user_iovec* %137, %struct.user_iovec** %16, align 8
  %138 = load %struct.user_iovec*, %struct.user_iovec** %16, align 8
  %139 = icmp eq %struct.user_iovec* %138, null
  br i1 %139, label %140, label %142

140:                                              ; preds = %135
  %141 = load i32, i32* @ENOMEM, align 4
  store i32 %141, i32* %14, align 4
  br label %239

142:                                              ; preds = %135
  %143 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  store i32 %144, i32* %13, align 4
  %145 = load %struct.user_iovec*, %struct.user_iovec** %16, align 8
  %146 = call i32 @CAST_USER_ADDR_T(%struct.user_iovec* %145)
  %147 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 3
  store i32 %146, i32* %147, align 8
  %148 = load i32, i32* %13, align 4
  %149 = load %struct.proc*, %struct.proc** %5, align 8
  %150 = call i64 @IS_64BIT_PROCESS(%struct.proc* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %142
  %153 = load i32, i32* @UIO_USERSPACE64, align 4
  br label %156

154:                                              ; preds = %142
  %155 = load i32, i32* @UIO_USERSPACE32, align 4
  br label %156

156:                                              ; preds = %154, %152
  %157 = phi i32 [ %153, %152 ], [ %155, %154 ]
  %158 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.user_iovec*, %struct.user_iovec** %16, align 8
  %161 = call i32 @copyin_user_iovec_array(i32 %148, i32 %157, i64 %159, %struct.user_iovec* %160)
  store i32 %161, i32* %14, align 4
  %162 = load i32, i32* %14, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %156
  br label %239

165:                                              ; preds = %156
  %166 = load i32*, i32** %15, align 8
  %167 = call i32 @uio_calculateresid(i32* %166)
  store i32 %167, i32* %14, align 4
  %168 = load i32, i32* %14, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %165
  br label %239

171:                                              ; preds = %165
  %172 = load %struct.proc*, %struct.proc** %5, align 8
  %173 = load %struct.recvmsg_nocancel_args*, %struct.recvmsg_nocancel_args** %6, align 8
  %174 = getelementptr inbounds %struct.recvmsg_nocancel_args, %struct.recvmsg_nocancel_args* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i32*, i32** %15, align 8
  %177 = load i32*, i32** %7, align 8
  %178 = call i32 @recvit(%struct.proc* %172, i32 %175, %struct.user_msghdr* %10, i32* %176, i32 0, i32* %177)
  store i32 %178, i32* %14, align 4
  %179 = load i32, i32* %14, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %238, label %181

181:                                              ; preds = %171
  %182 = load i32, i32* %13, align 4
  %183 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 3
  store i32 %182, i32* %183, align 8
  %184 = load %struct.proc*, %struct.proc** %5, align 8
  %185 = call i64 @IS_64BIT_PROCESS(%struct.proc* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %209

187:                                              ; preds = %181
  %188 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 6
  %189 = load i32, i32* %188, align 4
  %190 = getelementptr inbounds %struct.user64_msghdr, %struct.user64_msghdr* %9, i32 0, i32 6
  store i32 %189, i32* %190, align 4
  %191 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 5
  %192 = load i32, i32* %191, align 8
  %193 = getelementptr inbounds %struct.user64_msghdr, %struct.user64_msghdr* %9, i32 0, i32 5
  store i32 %192, i32* %193, align 8
  %194 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 4
  %195 = load i32, i32* %194, align 4
  %196 = getelementptr inbounds %struct.user64_msghdr, %struct.user64_msghdr* %9, i32 0, i32 4
  store i32 %195, i32* %196, align 4
  %197 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = getelementptr inbounds %struct.user64_msghdr, %struct.user64_msghdr* %9, i32 0, i32 0
  store i64 %198, i64* %199, align 8
  %200 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  %202 = getelementptr inbounds %struct.user64_msghdr, %struct.user64_msghdr* %9, i32 0, i32 3
  store i32 %201, i32* %202, align 8
  %203 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = getelementptr inbounds %struct.user64_msghdr, %struct.user64_msghdr* %9, i32 0, i32 2
  store i32 %204, i32* %205, align 4
  %206 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = getelementptr inbounds %struct.user64_msghdr, %struct.user64_msghdr* %9, i32 0, i32 1
  store i32 %207, i32* %208, align 8
  br label %231

209:                                              ; preds = %181
  %210 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 6
  %211 = load i32, i32* %210, align 4
  %212 = getelementptr inbounds %struct.user32_msghdr, %struct.user32_msghdr* %8, i32 0, i32 6
  store i32 %211, i32* %212, align 4
  %213 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 5
  %214 = load i32, i32* %213, align 8
  %215 = getelementptr inbounds %struct.user32_msghdr, %struct.user32_msghdr* %8, i32 0, i32 5
  store i32 %214, i32* %215, align 8
  %216 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 4
  %217 = load i32, i32* %216, align 4
  %218 = getelementptr inbounds %struct.user32_msghdr, %struct.user32_msghdr* %8, i32 0, i32 4
  store i32 %217, i32* %218, align 4
  %219 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = getelementptr inbounds %struct.user32_msghdr, %struct.user32_msghdr* %8, i32 0, i32 0
  store i64 %220, i64* %221, align 8
  %222 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 3
  %223 = load i32, i32* %222, align 8
  %224 = getelementptr inbounds %struct.user32_msghdr, %struct.user32_msghdr* %8, i32 0, i32 3
  store i32 %223, i32* %224, align 8
  %225 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 2
  %226 = load i32, i32* %225, align 4
  %227 = getelementptr inbounds %struct.user32_msghdr, %struct.user32_msghdr* %8, i32 0, i32 2
  store i32 %226, i32* %227, align 4
  %228 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = getelementptr inbounds %struct.user32_msghdr, %struct.user32_msghdr* %8, i32 0, i32 1
  store i32 %229, i32* %230, align 8
  br label %231

231:                                              ; preds = %209, %187
  %232 = load i64, i64* %11, align 8
  %233 = load %struct.recvmsg_nocancel_args*, %struct.recvmsg_nocancel_args** %6, align 8
  %234 = getelementptr inbounds %struct.recvmsg_nocancel_args, %struct.recvmsg_nocancel_args* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* %12, align 4
  %237 = call i32 @copyout(i64 %232, i32 %235, i32 %236)
  store i32 %237, i32* %14, align 4
  br label %238

238:                                              ; preds = %231, %171
  br label %239

239:                                              ; preds = %238, %170, %164, %140, %133
  %240 = load i32*, i32** %15, align 8
  %241 = icmp ne i32* %240, null
  br i1 %241, label %242, label %245

242:                                              ; preds = %239
  %243 = load i32*, i32** %15, align 8
  %244 = call i32 @uio_free(i32* %243)
  br label %245

245:                                              ; preds = %242, %239
  %246 = load i32, i32* @DBG_FNC_RECVMSG, align 4
  %247 = load i32, i32* @DBG_FUNC_END, align 4
  %248 = or i32 %246, %247
  %249 = load i32, i32* %14, align 4
  %250 = call i32 @KERNEL_DEBUG(i32 %248, i32 %249, i32 0, i32 0, i32 0, i32 0)
  %251 = load i32, i32* %14, align 4
  store i32 %251, i32* %4, align 4
  br label %252

252:                                              ; preds = %245, %106, %42
  %253 = load i32, i32* %4, align 4
  ret i32 %253
}

declare dso_local i32 @KERNEL_DEBUG(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @AUDIT_ARG(i32, i32) #1

declare dso_local i64 @IS_64BIT_PROCESS(%struct.proc*) #1

declare dso_local i32 @copyin(i32, i64, i32) #1

declare dso_local i32* @uio_create(i64, i32, i32, i32) #1

declare dso_local %struct.user_iovec* @uio_iovsaddr(i32*) #1

declare dso_local i32 @CAST_USER_ADDR_T(%struct.user_iovec*) #1

declare dso_local i32 @copyin_user_iovec_array(i32, i32, i64, %struct.user_iovec*) #1

declare dso_local i32 @uio_calculateresid(i32*) #1

declare dso_local i32 @recvit(%struct.proc*, i32, %struct.user_msghdr*, i32*, i32, i32*) #1

declare dso_local i32 @copyout(i64, i32, i32) #1

declare dso_local i32 @uio_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
