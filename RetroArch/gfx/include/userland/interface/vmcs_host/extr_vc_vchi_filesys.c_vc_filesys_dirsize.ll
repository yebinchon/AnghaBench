; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vc_vchi_filesys.c_vc_filesys_dirsize.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vc_vchi_filesys.c_vc_filesys_dirsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i64 }

@vc_filesys_client = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@FS_MAX_PATH = common dso_local global i32 0, align 4
@VC_FILESYS_DIRSIZE = common dso_local global i32 0, align 4
@FILESERV_RESP_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vc_filesys_dirsize(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 -1, i32* %7, align 4
  %8 = call i64 (...) @lock_obtain()
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %54

10:                                               ; preds = %3
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vc_filesys_client, i32 0, i32 0, i32 1), align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* @FS_MAX_PATH, align 4
  %15 = call i32 @strncpy(i8* %12, i8* %13, i32 %14)
  %16 = load i32, i32* @VC_FILESYS_DIRSIZE, align 4
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vc_filesys_client, i32 0, i32 0, i32 1), align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = call i64 @strlen(i8* %18)
  %20 = add nsw i64 16, %19
  %21 = add nsw i64 %20, 1
  %22 = trunc i64 %21 to i32
  %23 = call i64 @vchi_msg_stub(%struct.TYPE_3__* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vc_filesys_client, i32 0, i32 0), i32 %16, i32 %22)
  %24 = load i64, i64* @FILESERV_RESP_OK, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %52

26:                                               ; preds = %10
  %27 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vc_filesys_client, i32 0, i32 0, i32 0), align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %7, align 4
  %30 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vc_filesys_client, i32 0, i32 0, i32 0), align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 32
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %7, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %26
  %39 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vc_filesys_client, i32 0, i32 0, i32 0), align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %5, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %38, %26
  %44 = load i32*, i32** %6, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vc_filesys_client, i32 0, i32 0, i32 0), align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %6, align 8
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %46, %43
  br label %52

52:                                               ; preds = %51, %10
  %53 = call i32 (...) @lock_release()
  br label %54

54:                                               ; preds = %52, %3
  %55 = load i32, i32* %7, align 4
  ret i32 %55
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
