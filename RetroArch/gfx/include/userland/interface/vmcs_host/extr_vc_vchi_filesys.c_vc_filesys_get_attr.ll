; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vc_vchi_filesys.c_vc_filesys_get_attr.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vc_vchi_filesys.c_vc_filesys_get_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64*, i64 }

@vc_filesys_client = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@FS_MAX_PATH = common dso_local global i32 0, align 4
@VC_FILESYS_GET_ATTR = common dso_local global i32 0, align 4
@FILESERV_RESP_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vc_filesys_get_attr(i8* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64* %1, i64** %4, align 8
  store i32 -1, i32* %5, align 4
  %6 = call i64 (...) @lock_obtain()
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %31

8:                                                ; preds = %2
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vc_filesys_client, i32 0, i32 0, i32 1), align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = load i8*, i8** %3, align 8
  %12 = load i32, i32* @FS_MAX_PATH, align 4
  %13 = call i32 @strncpy(i8* %10, i8* %11, i32 %12)
  %14 = load i32, i32* @VC_FILESYS_GET_ATTR, align 4
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vc_filesys_client, i32 0, i32 0, i32 1), align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = call i64 @strlen(i8* %16)
  %18 = add nsw i64 16, %17
  %19 = add nsw i64 %18, 1
  %20 = trunc i64 %19 to i32
  %21 = call i64 @vchi_msg_stub(%struct.TYPE_3__* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vc_filesys_client, i32 0, i32 0), i32 %14, i32 %20)
  %22 = load i64, i64* @FILESERV_RESP_OK, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %8
  store i32 0, i32* %5, align 4
  %25 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vc_filesys_client, i32 0, i32 0, i32 0), align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64*, i64** %4, align 8
  store i64 %27, i64* %28, align 8
  br label %29

29:                                               ; preds = %24, %8
  %30 = call i32 (...) @lock_release()
  br label %31

31:                                               ; preds = %29, %2
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i64 @lock_obtain(...) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i64 @vchi_msg_stub(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @lock_release(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
