; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_acct.c_acct_process.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_acct.c_acct_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.session = type { i32 }
%struct.tty = type { i32 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__*, %struct.TYPE_13__, i32 }
%struct.TYPE_11__ = type { %struct.rusage }
%struct.rusage = type { i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.acct = type { i32, i32, i32, i32, i32, i8*, i8*, i32, i8*, i8*, i32 }
%struct.timeval = type { i32, i32 }

@acctp = common dso_local global %struct.vnode* null, align 8
@NULLVP = common dso_local global %struct.vnode* null, align 8
@hz = common dso_local global i32 0, align 4
@tick = common dso_local global i32 0, align 4
@P_CONTROLT = common dso_local global i32 0, align 4
@SESSION_NULL = common dso_local global %struct.session* null, align 8
@TTY_NULL = common dso_local global %struct.tty* null, align 8
@NODEV = common dso_local global i32 0, align 4
@UIO_WRITE = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@IO_APPEND = common dso_local global i32 0, align 4
@IO_UNIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acct_process(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.acct, align 8
  %5 = alloca %struct.rusage, align 4
  %6 = alloca %struct.rusage*, align 8
  %7 = alloca %struct.timeval, align 4
  %8 = alloca %struct.timeval, align 4
  %9 = alloca %struct.timeval, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.vnode*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.session*, align 8
  %15 = alloca %struct.tty*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %16 = call i32 (...) @ACCT_SUBSYS_LOCK()
  %17 = load %struct.vnode*, %struct.vnode** @acctp, align 8
  store %struct.vnode* %17, %struct.vnode** %12, align 8
  %18 = load %struct.vnode*, %struct.vnode** %12, align 8
  %19 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %20 = icmp eq %struct.vnode* %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = call i32 (...) @ACCT_SUBSYS_UNLOCK()
  store i32 0, i32* %2, align 4
  br label %179

23:                                               ; preds = %1
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.acct, %struct.acct* %4, i32 0, i32 10
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @bcopy(i32 %26, i32 %28, i32 4)
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %31 = call i32 @calcru(%struct.TYPE_12__* %30, %struct.timeval* %7, %struct.timeval* %8, i32* null)
  %32 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @encode_comp_t(i32 %33, i32 %35)
  %37 = getelementptr inbounds %struct.acct, %struct.acct* %4, i32 0, i32 9
  store i8* %36, i8** %37, align 8
  %38 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @encode_comp_t(i32 %39, i32 %41)
  %43 = getelementptr inbounds %struct.acct, %struct.acct* %4, i32 0, i32 8
  store i8* %42, i8** %43, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds %struct.acct, %struct.acct* %4, i32 0, i32 7
  store i32 %47, i32* %48, align 8
  %49 = call i32 @microtime(%struct.timeval* %9)
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 3
  %52 = call i32 @timevalsub(%struct.timeval* %9, %struct.TYPE_13__* %51)
  %53 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @encode_comp_t(i32 %54, i32 %56)
  %58 = getelementptr inbounds %struct.acct, %struct.acct* %4, i32 0, i32 6
  store i8* %57, i8** %58, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %60 = call i32 @proc_lock(%struct.TYPE_12__* %59)
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = bitcast %struct.rusage* %5 to i8*
  %66 = bitcast %struct.rusage* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %65, i8* align 4 %66, i64 20, i1 false)
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %68 = call i32 @proc_unlock(%struct.TYPE_12__* %67)
  store %struct.rusage* %5, %struct.rusage** %6, align 8
  %69 = bitcast %struct.timeval* %9 to i8*
  %70 = bitcast %struct.timeval* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %69, i8* align 4 %70, i64 8, i1 false)
  %71 = call i32 @timevaladd(%struct.timeval* %9, %struct.timeval* %8)
  %72 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @hz, align 4
  %75 = mul nsw i32 %73, %74
  %76 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @tick, align 4
  %79 = sdiv i32 %77, %78
  %80 = add nsw i32 %75, %79
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %98

83:                                               ; preds = %23
  %84 = load %struct.rusage*, %struct.rusage** %6, align 8
  %85 = getelementptr inbounds %struct.rusage, %struct.rusage* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.rusage*, %struct.rusage** %6, align 8
  %88 = getelementptr inbounds %struct.rusage, %struct.rusage* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %86, %89
  %91 = load %struct.rusage*, %struct.rusage** %6, align 8
  %92 = getelementptr inbounds %struct.rusage, %struct.rusage* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %90, %93
  %95 = load i32, i32* %10, align 4
  %96 = sdiv i32 %94, %95
  %97 = getelementptr inbounds %struct.acct, %struct.acct* %4, i32 0, i32 0
  store i32 %96, i32* %97, align 8
  br label %100

98:                                               ; preds = %23
  %99 = getelementptr inbounds %struct.acct, %struct.acct* %4, i32 0, i32 0
  store i32 0, i32* %99, align 8
  br label %100

100:                                              ; preds = %98, %83
  %101 = load %struct.rusage*, %struct.rusage** %6, align 8
  %102 = getelementptr inbounds %struct.rusage, %struct.rusage* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.rusage*, %struct.rusage** %6, align 8
  %105 = getelementptr inbounds %struct.rusage, %struct.rusage* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %103, %106
  %108 = call i8* @encode_comp_t(i32 %107, i32 0)
  %109 = getelementptr inbounds %struct.acct, %struct.acct* %4, i32 0, i32 5
  store i8* %108, i8** %109, align 8
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %111 = call i32 @kauth_cred_proc_ref(%struct.TYPE_12__* %110)
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %13, align 4
  %113 = call i32 @kauth_cred_getruid(i32 %112)
  %114 = getelementptr inbounds %struct.acct, %struct.acct* %4, i32 0, i32 4
  store i32 %113, i32* %114, align 8
  %115 = load i32, i32* %13, align 4
  %116 = call i32 @kauth_cred_getrgid(i32 %115)
  %117 = getelementptr inbounds %struct.acct, %struct.acct* %4, i32 0, i32 3
  store i32 %116, i32* %117, align 4
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %119 = call %struct.session* @proc_session(%struct.TYPE_12__* %118)
  store %struct.session* %119, %struct.session** %14, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @P_CONTROLT, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %144

126:                                              ; preds = %100
  %127 = load %struct.session*, %struct.session** %14, align 8
  %128 = load %struct.session*, %struct.session** @SESSION_NULL, align 8
  %129 = icmp ne %struct.session* %127, %128
  br i1 %129, label %130, label %144

130:                                              ; preds = %126
  %131 = load %struct.session*, %struct.session** %14, align 8
  %132 = call %struct.tty* @SESSION_TP(%struct.session* %131)
  store %struct.tty* %132, %struct.tty** %15, align 8
  %133 = load %struct.tty*, %struct.tty** @TTY_NULL, align 8
  %134 = icmp ne %struct.tty* %132, %133
  br i1 %134, label %135, label %144

135:                                              ; preds = %130
  %136 = load %struct.tty*, %struct.tty** %15, align 8
  %137 = call i32 @tty_lock(%struct.tty* %136)
  %138 = load %struct.tty*, %struct.tty** %15, align 8
  %139 = getelementptr inbounds %struct.tty, %struct.tty* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = getelementptr inbounds %struct.acct, %struct.acct* %4, i32 0, i32 2
  store i32 %140, i32* %141, align 8
  %142 = load %struct.tty*, %struct.tty** %15, align 8
  %143 = call i32 @tty_unlock(%struct.tty* %142)
  br label %147

144:                                              ; preds = %130, %126, %100
  %145 = load i32, i32* @NODEV, align 4
  %146 = getelementptr inbounds %struct.acct, %struct.acct* %4, i32 0, i32 2
  store i32 %145, i32* %146, align 8
  br label %147

147:                                              ; preds = %144, %135
  %148 = load %struct.session*, %struct.session** %14, align 8
  %149 = load %struct.session*, %struct.session** @SESSION_NULL, align 8
  %150 = icmp ne %struct.session* %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load %struct.session*, %struct.session** %14, align 8
  %153 = call i32 @session_rele(%struct.session* %152)
  br label %154

154:                                              ; preds = %151, %147
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = getelementptr inbounds %struct.acct, %struct.acct* %4, i32 0, i32 1
  store i32 %157, i32* %158, align 4
  %159 = load %struct.vnode*, %struct.vnode** %12, align 8
  %160 = call i32 @vnode_getwithref(%struct.vnode* %159)
  store i32 %160, i32* %11, align 4
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %175

162:                                              ; preds = %154
  %163 = load i32, i32* @UIO_WRITE, align 4
  %164 = load %struct.vnode*, %struct.vnode** %12, align 8
  %165 = ptrtoint %struct.acct* %4 to i32
  %166 = load i32, i32* @UIO_SYSSPACE, align 4
  %167 = load i32, i32* @IO_APPEND, align 4
  %168 = load i32, i32* @IO_UNIT, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* %13, align 4
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %172 = call i32 @vn_rdwr(i32 %163, %struct.vnode* %164, i32 %165, i32 72, i32 0, i32 %166, i32 %169, i32 %170, i32* null, %struct.TYPE_12__* %171)
  store i32 %172, i32* %11, align 4
  %173 = load %struct.vnode*, %struct.vnode** %12, align 8
  %174 = call i32 @vnode_put(%struct.vnode* %173)
  br label %175

175:                                              ; preds = %162, %154
  %176 = call i32 @kauth_cred_unref(i32* %13)
  %177 = call i32 (...) @ACCT_SUBSYS_UNLOCK()
  %178 = load i32, i32* %11, align 4
  store i32 %178, i32* %2, align 4
  br label %179

179:                                              ; preds = %175, %21
  %180 = load i32, i32* %2, align 4
  ret i32 %180
}

declare dso_local i32 @ACCT_SUBSYS_LOCK(...) #1

declare dso_local i32 @ACCT_SUBSYS_UNLOCK(...) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @calcru(%struct.TYPE_12__*, %struct.timeval*, %struct.timeval*, i32*) #1

declare dso_local i8* @encode_comp_t(i32, i32) #1

declare dso_local i32 @microtime(%struct.timeval*) #1

declare dso_local i32 @timevalsub(%struct.timeval*, %struct.TYPE_13__*) #1

declare dso_local i32 @proc_lock(%struct.TYPE_12__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @proc_unlock(%struct.TYPE_12__*) #1

declare dso_local i32 @timevaladd(%struct.timeval*, %struct.timeval*) #1

declare dso_local i32 @kauth_cred_proc_ref(%struct.TYPE_12__*) #1

declare dso_local i32 @kauth_cred_getruid(i32) #1

declare dso_local i32 @kauth_cred_getrgid(i32) #1

declare dso_local %struct.session* @proc_session(%struct.TYPE_12__*) #1

declare dso_local %struct.tty* @SESSION_TP(%struct.session*) #1

declare dso_local i32 @tty_lock(%struct.tty*) #1

declare dso_local i32 @tty_unlock(%struct.tty*) #1

declare dso_local i32 @session_rele(%struct.session*) #1

declare dso_local i32 @vnode_getwithref(%struct.vnode*) #1

declare dso_local i32 @vn_rdwr(i32, %struct.vnode*, i32, i32, i32, i32, i32, i32, i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @vnode_put(%struct.vnode*) #1

declare dso_local i32 @kauth_cred_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
