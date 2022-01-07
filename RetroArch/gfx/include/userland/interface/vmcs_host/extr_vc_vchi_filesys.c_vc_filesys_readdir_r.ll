; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vc_vchi_filesys.c_vc_filesys_readdir_r.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vc_vchi_filesys.c_vc_filesys_readdir_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64* }
%struct.dirent = type { i32 }

@vc_filesys_client = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@VC_FILESYS_READDIR = common dso_local global i32 0, align 4
@FILESERV_RESP_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dirent* @vc_filesys_readdir_r(i8* %0, %struct.dirent* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dirent*, align 8
  %5 = alloca %struct.dirent*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.dirent* %1, %struct.dirent** %4, align 8
  store %struct.dirent* null, %struct.dirent** %5, align 8
  %6 = call i64 (...) @lock_obtain()
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %2
  %9 = load i8*, i8** %3, align 8
  %10 = ptrtoint i8* %9 to i64
  %11 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vc_filesys_client, i32 0, i32 0, i32 1), align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  store i64 %10, i64* %12, align 8
  %13 = load i32, i32* @VC_FILESYS_READDIR, align 4
  %14 = call i64 @vchi_msg_stub(%struct.TYPE_3__* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vc_filesys_client, i32 0, i32 0), i32 %13, i32 4)
  %15 = load i64, i64* @FILESERV_RESP_OK, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %8
  %18 = load %struct.dirent*, %struct.dirent** %4, align 8
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vc_filesys_client, i32 0, i32 0, i32 0), align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @fs_host_direntbytestream_interp(%struct.dirent* %18, i8* %20)
  %22 = load %struct.dirent*, %struct.dirent** %4, align 8
  store %struct.dirent* %22, %struct.dirent** %5, align 8
  br label %23

23:                                               ; preds = %17, %8
  %24 = call i32 (...) @lock_release()
  br label %25

25:                                               ; preds = %23, %2
  %26 = load %struct.dirent*, %struct.dirent** %5, align 8
  ret %struct.dirent* %26
}

declare dso_local i64 @lock_obtain(...) #1

declare dso_local i64 @vchi_msg_stub(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @fs_host_direntbytestream_interp(%struct.dirent*, i8*) #1

declare dso_local i32 @lock_release(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
