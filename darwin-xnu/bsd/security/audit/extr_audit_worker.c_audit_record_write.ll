; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/security/audit/extr_audit_worker.c_audit_record_write.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/security/audit/extr_audit_worker.c_audit_record_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.vnode = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.vfsstatfs }
%struct.vfsstatfs = type { i32, i32, i64 }
%struct.vfs_context = type { i32 }

@audit_record_write.last_lowspace_trigger = internal global %struct.timeval zeroinitializer, align 4
@audit_record_write.last_fail = internal global %struct.timeval zeroinitializer, align 4
@audit_record_write.cur_lowspace_trigger = internal global i32 0, align 4
@audit_record_write.cur_fail = internal global i32 0, align 4
@VFS_KERNEL_EVENT = common dso_local global i32 0, align 4
@audit_fstat = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@AUDIT_HARD_LIMIT_FREE_BLOCKS = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@audit_qctrl = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@AUDIT_TRIGGER_LOW_SPACE = common dso_local global i32 0, align 4
@audit_file_rotate_wait = common dso_local global i32 0, align 4
@AUDIT_TRIGGER_ROTATE_KERNEL = common dso_local global i32 0, align 4
@audit_fail_stop = common dso_local global i64 0, align 8
@audit_q_len = common dso_local global i32 0, align 4
@audit_pre_q_len = common dso_local global i32 0, align 4
@MAX_AUDIT_RECORD_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"audit_record_write: free space below size of audit queue, failing stop\0A\00", align 1
@audit_in_failure = common dso_local global i32 0, align 4
@UIO_WRITE = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@IO_APPEND = common dso_local global i32 0, align 4
@IO_UNIT = common dso_local global i32 0, align 4
@MNT_WAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Audit store overflow; record queue drained.\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Audit log space exhausted and fail-stop set.\00", align 1
@AUDIT_TRIGGER_NO_SPACE = common dso_local global i32 0, align 4
@audit_suspended = common dso_local global i32 0, align 4
@audit_panic_on_write_fail = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"audit_worker: write error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnode*, %struct.vfs_context*, i8*, i64)* @audit_record_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audit_record_write(%struct.vnode* %0, %struct.vfs_context* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.vfs_context*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.vfsstatfs*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.vnode* %0, %struct.vnode** %5, align 8
  store %struct.vfs_context* %1, %struct.vfs_context** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = call i32 (...) @AUDIT_WORKER_SX_ASSERT()
  %14 = load %struct.vnode*, %struct.vnode** %5, align 8
  %15 = icmp eq %struct.vnode* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %194

17:                                               ; preds = %4
  %18 = load %struct.vnode*, %struct.vnode** %5, align 8
  %19 = call i64 @vnode_getwithref(%struct.vnode* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %194

22:                                               ; preds = %17
  %23 = load %struct.vnode*, %struct.vnode** %5, align 8
  %24 = getelementptr inbounds %struct.vnode, %struct.vnode* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store %struct.vfsstatfs* %26, %struct.vfsstatfs** %9, align 8
  %27 = load %struct.vnode*, %struct.vnode** %5, align 8
  %28 = getelementptr inbounds %struct.vnode, %struct.vnode* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load %struct.vfs_context*, %struct.vfs_context** %6, align 8
  %31 = load i32, i32* @VFS_KERNEL_EVENT, align 4
  %32 = call i32 @vfs_update_vfsstat(%struct.TYPE_4__* %29, %struct.vfs_context* %30, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  br label %174

36:                                               ; preds = %22
  %37 = load %struct.vnode*, %struct.vnode** %5, align 8
  %38 = load %struct.vfs_context*, %struct.vfs_context** %6, align 8
  %39 = call i32 @vnode_size(%struct.vnode* %37, i64* %12, %struct.vfs_context* %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %174

43:                                               ; preds = %36
  %44 = load i64, i64* %12, align 8
  store i64 %44, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @audit_fstat, i32 0, i32 1), align 8
  %45 = load %struct.vfsstatfs*, %struct.vfsstatfs** %9, align 8
  %46 = getelementptr inbounds %struct.vfsstatfs, %struct.vfsstatfs* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @AUDIT_HARD_LIMIT_FREE_BLOCKS, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* @ENOSPC, align 4
  store i32 %51, i32* %10, align 4
  br label %162

52:                                               ; preds = %43
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @audit_qctrl, i32 0, i32 0), align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %74

55:                                               ; preds = %52
  %56 = load %struct.vfsstatfs*, %struct.vfsstatfs** %9, align 8
  %57 = getelementptr inbounds %struct.vfsstatfs, %struct.vfsstatfs* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @audit_qctrl, i32 0, i32 0), align 4
  %60 = sdiv i32 100, %59
  %61 = sdiv i32 %58, %60
  store i32 %61, i32* %11, align 4
  %62 = load %struct.vfsstatfs*, %struct.vfsstatfs** %9, align 8
  %63 = getelementptr inbounds %struct.vfsstatfs, %struct.vfsstatfs* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %55
  %68 = call i64 @ppsratecheck(%struct.timeval* @audit_record_write.last_lowspace_trigger, i32* @audit_record_write.cur_lowspace_trigger, i32 1)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, i32* @AUDIT_TRIGGER_LOW_SPACE, align 4
  %72 = call i32 @audit_send_trigger(i32 %71)
  br label %73

73:                                               ; preds = %70, %67, %55
  br label %74

74:                                               ; preds = %73, %52
  %75 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @audit_fstat, i32 0, i32 0), align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %74
  %78 = load i32, i32* @audit_file_rotate_wait, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = load i64, i64* %12, align 8
  %82 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @audit_fstat, i32 0, i32 0), align 8
  %83 = icmp sge i64 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = call i32 (...) @AUDIT_WORKER_SX_ASSERT()
  store i32 1, i32* @audit_file_rotate_wait, align 4
  %86 = load i32, i32* @AUDIT_TRIGGER_ROTATE_KERNEL, align 4
  %87 = call i32 @audit_send_trigger(i32 %86)
  br label %88

88:                                               ; preds = %84, %80, %77, %74
  %89 = load i64, i64* @audit_fail_stop, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %120

91:                                               ; preds = %88
  %92 = load i32, i32* @audit_q_len, align 4
  %93 = load i32, i32* @audit_pre_q_len, align 4
  %94 = add nsw i32 %92, %93
  %95 = add nsw i32 %94, 1
  %96 = load i32, i32* @MAX_AUDIT_RECORD_SIZE, align 4
  %97 = mul nsw i32 %95, %96
  %98 = sext i32 %97 to i64
  %99 = load %struct.vfsstatfs*, %struct.vfsstatfs** %9, align 8
  %100 = getelementptr inbounds %struct.vfsstatfs, %struct.vfsstatfs* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = udiv i64 %98, %101
  %103 = load %struct.vfsstatfs*, %struct.vfsstatfs** %9, align 8
  %104 = getelementptr inbounds %struct.vfsstatfs, %struct.vfsstatfs* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = icmp uge i64 %102, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %91
  %109 = call i64 @ppsratecheck(%struct.timeval* @audit_record_write.last_fail, i32* @audit_record_write.cur_fail, i32 1)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  br label %113

113:                                              ; preds = %111, %108
  store i32 1, i32* @audit_in_failure, align 4
  br label %119

114:                                              ; preds = %91
  %115 = load i32, i32* @audit_in_failure, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  br label %118

118:                                              ; preds = %117, %114
  br label %119

119:                                              ; preds = %118, %113
  br label %120

120:                                              ; preds = %119, %88
  %121 = load i32, i32* @UIO_WRITE, align 4
  %122 = load %struct.vnode*, %struct.vnode** %5, align 8
  %123 = load i8*, i8** %7, align 8
  %124 = load i64, i64* %8, align 8
  %125 = load i32, i32* @UIO_SYSSPACE, align 4
  %126 = load i32, i32* @IO_APPEND, align 4
  %127 = load i32, i32* @IO_UNIT, align 4
  %128 = or i32 %126, %127
  %129 = load %struct.vfs_context*, %struct.vfs_context** %6, align 8
  %130 = call i32 @vfs_context_ucred(%struct.vfs_context* %129)
  %131 = load %struct.vfs_context*, %struct.vfs_context** %6, align 8
  %132 = call i32 @vfs_context_proc(%struct.vfs_context* %131)
  %133 = call i32 @vn_rdwr(i32 %121, %struct.vnode* %122, i8* %123, i64 %124, i64 0, i32 %125, i32 %128, i32 %130, i32* null, i32 %132)
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* @ENOSPC, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %120
  br label %162

138:                                              ; preds = %120
  %139 = load i32, i32* %10, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  br label %174

142:                                              ; preds = %138
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* @audit_in_failure, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %159

146:                                              ; preds = %143
  %147 = load i32, i32* @audit_q_len, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %146
  %150 = load i32, i32* @audit_pre_q_len, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %149
  %153 = load %struct.vnode*, %struct.vnode** %5, align 8
  %154 = load i32, i32* @MNT_WAIT, align 4
  %155 = load %struct.vfs_context*, %struct.vfs_context** %6, align 8
  %156 = call i32 @VNOP_FSYNC(%struct.vnode* %153, i32 %154, %struct.vfs_context* %155)
  %157 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %158

158:                                              ; preds = %152, %149, %146
  br label %159

159:                                              ; preds = %158, %143
  %160 = load %struct.vnode*, %struct.vnode** %5, align 8
  %161 = call i32 @vnode_put(%struct.vnode* %160)
  br label %194

162:                                              ; preds = %137, %50
  %163 = load i64, i64* @audit_fail_stop, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %162
  %166 = load %struct.vnode*, %struct.vnode** %5, align 8
  %167 = load i32, i32* @MNT_WAIT, align 4
  %168 = load %struct.vfs_context*, %struct.vfs_context** %6, align 8
  %169 = call i32 @VNOP_FSYNC(%struct.vnode* %166, i32 %167, %struct.vfs_context* %168)
  %170 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %171

171:                                              ; preds = %165, %162
  %172 = load i32, i32* @AUDIT_TRIGGER_NO_SPACE, align 4
  %173 = call i32 @audit_send_trigger(i32 %172)
  store i32 1, i32* @audit_suspended, align 4
  br label %174

174:                                              ; preds = %171, %141, %42, %35
  %175 = load i64, i64* @audit_panic_on_write_fail, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %184

177:                                              ; preds = %174
  %178 = load %struct.vnode*, %struct.vnode** %5, align 8
  %179 = load i32, i32* @MNT_WAIT, align 4
  %180 = load %struct.vfs_context*, %struct.vfs_context** %6, align 8
  %181 = call i32 @VNOP_FSYNC(%struct.vnode* %178, i32 %179, %struct.vfs_context* %180)
  %182 = load i32, i32* %10, align 4
  %183 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %182)
  br label %191

184:                                              ; preds = %174
  %185 = call i64 @ppsratecheck(%struct.timeval* @audit_record_write.last_fail, i32* @audit_record_write.cur_fail, i32 1)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %184
  %188 = load i32, i32* %10, align 4
  %189 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %188)
  br label %190

190:                                              ; preds = %187, %184
  br label %191

191:                                              ; preds = %190, %177
  %192 = load %struct.vnode*, %struct.vnode** %5, align 8
  %193 = call i32 @vnode_put(%struct.vnode* %192)
  br label %194

194:                                              ; preds = %191, %159, %21, %16
  ret void
}

declare dso_local i32 @AUDIT_WORKER_SX_ASSERT(...) #1

declare dso_local i64 @vnode_getwithref(%struct.vnode*) #1

declare dso_local i32 @vfs_update_vfsstat(%struct.TYPE_4__*, %struct.vfs_context*, i32) #1

declare dso_local i32 @vnode_size(%struct.vnode*, i64*, %struct.vfs_context*) #1

declare dso_local i64 @ppsratecheck(%struct.timeval*, i32*, i32) #1

declare dso_local i32 @audit_send_trigger(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @vn_rdwr(i32, %struct.vnode*, i8*, i64, i64, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @vfs_context_ucred(%struct.vfs_context*) #1

declare dso_local i32 @vfs_context_proc(%struct.vfs_context*) #1

declare dso_local i32 @VNOP_FSYNC(%struct.vnode*, i32, %struct.vfs_context*) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @vnode_put(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
