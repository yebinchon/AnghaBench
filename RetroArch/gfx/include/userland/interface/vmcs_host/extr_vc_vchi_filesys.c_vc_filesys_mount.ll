; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vc_vchi_filesys.c_vc_filesys_mount.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vc_vchi_filesys.c_vc_filesys_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64*, i64 }

@FILESERV_MAX_DATA = common dso_local global i32 0, align 4
@vc_filesys_client = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@VCHI_BULK_GRANULARITY = common dso_local global i32 0, align 4
@VC_FILESYS_MOUNT = common dso_local global i32 0, align 4
@FILESERV_RESP_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vc_filesys_mount(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 -1, i32* %7, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @strlen(i8* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @strlen(i8* %15)
  store i32 %16, i32* %10, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @strlen(i8* %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = add nsw i32 %19, %20
  %22 = load i32, i32* %11, align 4
  %23 = add nsw i32 %21, %22
  %24 = add nsw i32 %23, 3
  %25 = load i32, i32* @FILESERV_MAX_DATA, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %107

27:                                               ; preds = %3
  %28 = call i64 (...) @lock_obtain()
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %107

30:                                               ; preds = %27
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vc_filesys_client, i32 0, i32 0, i32 1), align 8
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** %12, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @memcpy(i8* %33, i8* %34, i32 %35)
  %37 = load i8*, i8** %12, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  store i8 0, i8* %40, align 1
  %41 = load i8*, i8** %12, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8*, i8** %5, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @memcpy(i8* %45, i8* %46, i32 %47)
  %49 = load i8*, i8** %12, align 8
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %49, i64 %54
  store i8 0, i8* %55, align 1
  %56 = load i8*, i8** %12, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = getelementptr inbounds i8, i8* %62, i64 2
  %64 = load i8*, i8** %6, align 8
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @memcpy(i8* %63, i8* %64, i32 %65)
  %67 = load i8*, i8** %12, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %68, %69
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %70, %71
  %73 = add nsw i32 %72, 2
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %67, i64 %74
  store i8 0, i8* %75, align 1
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %76, %77
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %78, %79
  %81 = add nsw i32 %80, 3
  %82 = load i64, i64* null, align 8
  %83 = trunc i64 %82 to i32
  %84 = add nsw i32 %81, %83
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @VCHI_BULK_GRANULARITY, align 4
  %87 = sub nsw i32 %86, 1
  %88 = add nsw i32 %85, %87
  %89 = load i32, i32* @VCHI_BULK_GRANULARITY, align 4
  %90 = sub nsw i32 %89, 1
  %91 = xor i32 %90, -1
  %92 = and i32 %88, %91
  %93 = load i32, i32* @VCHI_BULK_GRANULARITY, align 4
  %94 = add nsw i32 %92, %93
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* @VC_FILESYS_MOUNT, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i64 @vchi_msg_stub(%struct.TYPE_5__* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vc_filesys_client, i32 0, i32 0), i32 %95, i32 %96)
  %98 = load i64, i64* @FILESERV_RESP_OK, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %30
  %101 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vc_filesys_client, i32 0, i32 0, i32 0), align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 0
  %103 = load i64, i64* %102, align 8
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %100, %30
  %106 = call i32 (...) @lock_release()
  br label %107

107:                                              ; preds = %105, %27, %3
  %108 = load i32, i32* %7, align 4
  ret i32 %108
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @lock_obtain(...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @vchi_msg_stub(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @lock_release(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
