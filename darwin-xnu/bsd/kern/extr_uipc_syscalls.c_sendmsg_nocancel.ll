; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_syscalls.c_sendmsg_nocancel.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_syscalls.c_sendmsg_nocancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.sendmsg_nocancel_args = type { i32, i32, i32 }
%struct.user32_msghdr = type { i64, i32, i32, i64, i32, i32, i64 }
%struct.user64_msghdr = type { i64, i32, i32, i64, i32, i32, i64 }
%struct.user_msghdr = type { i64, i64, i64, i32, i32, i32, i32 }
%struct.user_iovec = type { i32 }
%struct.socket = type { i32 }

@DBG_FNC_SENDMSG = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@fd = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4
@UIO_MAXIOV = common dso_local global i64 0, align 8
@EMSGSIZE = common dso_local global i32 0, align 4
@UIO_USERSPACE64 = common dso_local global i32 0, align 4
@UIO_USERSPACE32 = common dso_local global i32 0, align 4
@UIO_WRITE = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sendmsg_nocancel(%struct.proc* %0, %struct.sendmsg_nocancel_args* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.proc*, align 8
  %6 = alloca %struct.sendmsg_nocancel_args*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.user32_msghdr, align 8
  %9 = alloca %struct.user64_msghdr, align 8
  %10 = alloca %struct.user_msghdr, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.user_iovec*, align 8
  %16 = alloca %struct.socket*, align 8
  store %struct.proc* %0, %struct.proc** %5, align 8
  store %struct.sendmsg_nocancel_args* %1, %struct.sendmsg_nocancel_args** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %14, align 8
  %17 = load i32, i32* @DBG_FNC_SENDMSG, align 4
  %18 = load i32, i32* @DBG_FUNC_START, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @KERNEL_DEBUG(i32 %19, i32 0, i32 0, i32 0, i32 0, i32 0)
  %21 = load i32, i32* @fd, align 4
  %22 = load %struct.sendmsg_nocancel_args*, %struct.sendmsg_nocancel_args** %6, align 8
  %23 = getelementptr inbounds %struct.sendmsg_nocancel_args, %struct.sendmsg_nocancel_args* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @AUDIT_ARG(i32 %21, i32 %24)
  %26 = load %struct.proc*, %struct.proc** %5, align 8
  %27 = call i64 @IS_64BIT_PROCESS(%struct.proc* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = ptrtoint %struct.user64_msghdr* %9 to i64
  store i64 %30, i64* %11, align 8
  store i32 40, i32* %12, align 4
  br label %33

31:                                               ; preds = %3
  %32 = ptrtoint %struct.user32_msghdr* %8 to i64
  store i64 %32, i64* %11, align 8
  store i32 40, i32* %12, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = load %struct.sendmsg_nocancel_args*, %struct.sendmsg_nocancel_args** %6, align 8
  %35 = getelementptr inbounds %struct.sendmsg_nocancel_args, %struct.sendmsg_nocancel_args* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* %11, align 8
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @copyin(i32 %36, i64 %37, i32 %38)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %33
  %43 = load i32, i32* @DBG_FNC_SENDMSG, align 4
  %44 = load i32, i32* @DBG_FUNC_END, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @KERNEL_DEBUG(i32 %45, i32 %46, i32 0, i32 0, i32 0, i32 0)
  %48 = load i32, i32* %13, align 4
  store i32 %48, i32* %4, align 4
  br label %214

49:                                               ; preds = %33
  %50 = load %struct.proc*, %struct.proc** %5, align 8
  %51 = call i64 @IS_64BIT_PROCESS(%struct.proc* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %75

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.user64_msghdr, %struct.user64_msghdr* %9, i32 0, i32 6
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 1
  store i64 %55, i64* %56, align 8
  %57 = getelementptr inbounds %struct.user64_msghdr, %struct.user64_msghdr* %9, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 6
  store i32 %58, i32* %59, align 4
  %60 = getelementptr inbounds %struct.user64_msghdr, %struct.user64_msghdr* %9, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 5
  store i32 %61, i32* %62, align 8
  %63 = getelementptr inbounds %struct.user64_msghdr, %struct.user64_msghdr* %9, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 0
  store i64 %64, i64* %65, align 8
  %66 = getelementptr inbounds %struct.user64_msghdr, %struct.user64_msghdr* %9, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 2
  store i64 %67, i64* %68, align 8
  %69 = getelementptr inbounds %struct.user64_msghdr, %struct.user64_msghdr* %9, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 4
  store i32 %70, i32* %71, align 4
  %72 = getelementptr inbounds %struct.user64_msghdr, %struct.user64_msghdr* %9, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 3
  store i32 %73, i32* %74, align 8
  br label %97

75:                                               ; preds = %49
  %76 = getelementptr inbounds %struct.user32_msghdr, %struct.user32_msghdr* %8, i32 0, i32 6
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 1
  store i64 %77, i64* %78, align 8
  %79 = getelementptr inbounds %struct.user32_msghdr, %struct.user32_msghdr* %8, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 6
  store i32 %80, i32* %81, align 4
  %82 = getelementptr inbounds %struct.user32_msghdr, %struct.user32_msghdr* %8, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 5
  store i32 %83, i32* %84, align 8
  %85 = getelementptr inbounds %struct.user32_msghdr, %struct.user32_msghdr* %8, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 0
  store i64 %86, i64* %87, align 8
  %88 = getelementptr inbounds %struct.user32_msghdr, %struct.user32_msghdr* %8, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 2
  store i64 %89, i64* %90, align 8
  %91 = getelementptr inbounds %struct.user32_msghdr, %struct.user32_msghdr* %8, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 4
  store i32 %92, i32* %93, align 4
  %94 = getelementptr inbounds %struct.user32_msghdr, %struct.user32_msghdr* %8, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 3
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
  %107 = load i32, i32* @DBG_FNC_SENDMSG, align 4
  %108 = load i32, i32* @DBG_FUNC_END, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @EMSGSIZE, align 4
  %111 = call i32 @KERNEL_DEBUG(i32 %109, i32 %110, i32 0, i32 0, i32 0, i32 0)
  %112 = load i32, i32* @EMSGSIZE, align 4
  store i32 %112, i32* %4, align 4
  br label %214

113:                                              ; preds = %101
  %114 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.proc*, %struct.proc** %5, align 8
  %117 = call i64 @IS_64BIT_PROCESS(%struct.proc* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %113
  %120 = load i32, i32* @UIO_USERSPACE64, align 4
  br label %123

121:                                              ; preds = %113
  %122 = load i32, i32* @UIO_USERSPACE32, align 4
  br label %123

123:                                              ; preds = %121, %119
  %124 = phi i32 [ %120, %119 ], [ %122, %121 ]
  %125 = load i32, i32* @UIO_WRITE, align 4
  %126 = call i32* @uio_create(i64 %115, i32 0, i32 %124, i32 %125)
  store i32* %126, i32** %14, align 8
  %127 = load i32*, i32** %14, align 8
  %128 = icmp eq i32* %127, null
  br i1 %128, label %129, label %131

129:                                              ; preds = %123
  %130 = load i32, i32* @ENOBUFS, align 4
  store i32 %130, i32* %13, align 4
  br label %201

131:                                              ; preds = %123
  %132 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %171

135:                                              ; preds = %131
  %136 = load i32*, i32** %14, align 8
  %137 = call %struct.user_iovec* @uio_iovsaddr(i32* %136)
  store %struct.user_iovec* %137, %struct.user_iovec** %15, align 8
  %138 = load %struct.user_iovec*, %struct.user_iovec** %15, align 8
  %139 = icmp eq %struct.user_iovec* %138, null
  br i1 %139, label %140, label %142

140:                                              ; preds = %135
  %141 = load i32, i32* @ENOBUFS, align 4
  store i32 %141, i32* %13, align 4
  br label %201

142:                                              ; preds = %135
  %143 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.proc*, %struct.proc** %5, align 8
  %146 = call i64 @IS_64BIT_PROCESS(%struct.proc* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %142
  %149 = load i32, i32* @UIO_USERSPACE64, align 4
  br label %152

150:                                              ; preds = %142
  %151 = load i32, i32* @UIO_USERSPACE32, align 4
  br label %152

152:                                              ; preds = %150, %148
  %153 = phi i32 [ %149, %148 ], [ %151, %150 ]
  %154 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.user_iovec*, %struct.user_iovec** %15, align 8
  %157 = call i32 @copyin_user_iovec_array(i64 %144, i32 %153, i64 %155, %struct.user_iovec* %156)
  store i32 %157, i32* %13, align 4
  %158 = load i32, i32* %13, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %152
  br label %201

161:                                              ; preds = %152
  %162 = load %struct.user_iovec*, %struct.user_iovec** %15, align 8
  %163 = call i64 @CAST_USER_ADDR_T(%struct.user_iovec* %162)
  %164 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 2
  store i64 %163, i64* %164, align 8
  %165 = load i32*, i32** %14, align 8
  %166 = call i32 @uio_calculateresid(i32* %165)
  store i32 %166, i32* %13, align 4
  %167 = load i32, i32* %13, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %161
  br label %201

170:                                              ; preds = %161
  br label %173

171:                                              ; preds = %131
  %172 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 2
  store i64 0, i64* %172, align 8
  br label %173

173:                                              ; preds = %171, %170
  %174 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %10, i32 0, i32 1
  store i64 0, i64* %174, align 8
  %175 = load %struct.sendmsg_nocancel_args*, %struct.sendmsg_nocancel_args** %6, align 8
  %176 = getelementptr inbounds %struct.sendmsg_nocancel_args, %struct.sendmsg_nocancel_args* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @file_socket(i32 %177, %struct.socket** %16)
  store i32 %178, i32* %13, align 4
  %179 = load i32, i32* %13, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %173
  br label %201

182:                                              ; preds = %173
  %183 = load %struct.socket*, %struct.socket** %16, align 8
  %184 = icmp eq %struct.socket* %183, null
  br i1 %184, label %185, label %187

185:                                              ; preds = %182
  %186 = load i32, i32* @EBADF, align 4
  store i32 %186, i32* %13, align 4
  br label %196

187:                                              ; preds = %182
  %188 = load %struct.proc*, %struct.proc** %5, align 8
  %189 = load %struct.socket*, %struct.socket** %16, align 8
  %190 = load i32*, i32** %14, align 8
  %191 = load %struct.sendmsg_nocancel_args*, %struct.sendmsg_nocancel_args** %6, align 8
  %192 = getelementptr inbounds %struct.sendmsg_nocancel_args, %struct.sendmsg_nocancel_args* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load i32*, i32** %7, align 8
  %195 = call i32 @sendit(%struct.proc* %188, %struct.socket* %189, %struct.user_msghdr* %10, i32* %190, i32 %193, i32* %194)
  store i32 %195, i32* %13, align 4
  br label %196

196:                                              ; preds = %187, %185
  %197 = load %struct.sendmsg_nocancel_args*, %struct.sendmsg_nocancel_args** %6, align 8
  %198 = getelementptr inbounds %struct.sendmsg_nocancel_args, %struct.sendmsg_nocancel_args* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @file_drop(i32 %199)
  br label %201

201:                                              ; preds = %196, %181, %169, %160, %140, %129
  %202 = load i32*, i32** %14, align 8
  %203 = icmp ne i32* %202, null
  br i1 %203, label %204, label %207

204:                                              ; preds = %201
  %205 = load i32*, i32** %14, align 8
  %206 = call i32 @uio_free(i32* %205)
  br label %207

207:                                              ; preds = %204, %201
  %208 = load i32, i32* @DBG_FNC_SENDMSG, align 4
  %209 = load i32, i32* @DBG_FUNC_END, align 4
  %210 = or i32 %208, %209
  %211 = load i32, i32* %13, align 4
  %212 = call i32 @KERNEL_DEBUG(i32 %210, i32 %211, i32 0, i32 0, i32 0, i32 0)
  %213 = load i32, i32* %13, align 4
  store i32 %213, i32* %4, align 4
  br label %214

214:                                              ; preds = %207, %106, %42
  %215 = load i32, i32* %4, align 4
  ret i32 %215
}

declare dso_local i32 @KERNEL_DEBUG(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @AUDIT_ARG(i32, i32) #1

declare dso_local i64 @IS_64BIT_PROCESS(%struct.proc*) #1

declare dso_local i32 @copyin(i32, i64, i32) #1

declare dso_local i32* @uio_create(i64, i32, i32, i32) #1

declare dso_local %struct.user_iovec* @uio_iovsaddr(i32*) #1

declare dso_local i32 @copyin_user_iovec_array(i64, i32, i64, %struct.user_iovec*) #1

declare dso_local i64 @CAST_USER_ADDR_T(%struct.user_iovec*) #1

declare dso_local i32 @uio_calculateresid(i32*) #1

declare dso_local i32 @file_socket(i32, %struct.socket**) #1

declare dso_local i32 @sendit(%struct.proc*, %struct.socket*, %struct.user_msghdr*, i32*, i32, i32*) #1

declare dso_local i32 @file_drop(i32) #1

declare dso_local i32 @uio_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
