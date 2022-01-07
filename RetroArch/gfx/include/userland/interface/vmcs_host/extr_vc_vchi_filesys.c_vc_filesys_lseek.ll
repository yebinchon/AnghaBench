; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vc_vchi_filesys.c_vc_filesys_lseek.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vc_vchi_filesys.c_vc_filesys_lseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8** }

@vc_filesys_client = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@VC_FILESYS_LSEEK = common dso_local global i32 0, align 4
@FILESERV_RESP_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vc_filesys_lseek(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 -1, i64* %7, align 8
  %8 = call i64 (...) @lock_obtain()
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %36

10:                                               ; preds = %3
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to i8*
  %14 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vc_filesys_client, i32 0, i32 0, i32 0), align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  store i8* %13, i8** %15, align 8
  %16 = load i64, i64* %5, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vc_filesys_client, i32 0, i32 0, i32 0), align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i8*
  %23 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vc_filesys_client, i32 0, i32 0, i32 0), align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 2
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* @VC_FILESYS_LSEEK, align 4
  %26 = call i64 @vchi_msg_stub(%struct.TYPE_3__* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vc_filesys_client, i32 0, i32 0), i32 %25, i32 12)
  %27 = load i64, i64* @FILESERV_RESP_OK, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %10
  %30 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vc_filesys_client, i32 0, i32 0, i32 0), align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  %32 = load i8*, i8** %31, align 8
  %33 = ptrtoint i8* %32 to i64
  store i64 %33, i64* %7, align 8
  br label %34

34:                                               ; preds = %29, %10
  %35 = call i32 (...) @lock_release()
  br label %36

36:                                               ; preds = %34, %3
  %37 = load i64, i64* %7, align 8
  ret i64 %37
}

declare dso_local i64 @lock_obtain(...) #1

declare dso_local i64 @vchi_msg_stub(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @lock_release(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
