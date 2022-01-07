; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vc_vchi_filesys.c_vc_filesys_write_sectors.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vc_vchi_filesys.c_vc_filesys_write_sectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i64*, i64, i64 }

@FS_MAX_PATH = common dso_local global i32 0, align 4
@vc_filesys_client = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@VCHI_BULK_ALIGN = common dso_local global i32 0, align 4
@VC_FILESYS_WRITE_SECTORS = common dso_local global i32 0, align 4
@FILESERV_MAX_BULK_SECTOR = common dso_local global i64 0, align 8
@FILESERV_SECTOR_LENGTH = common dso_local global i64 0, align 8
@VCHI_FLAGS_BLOCK_UNTIL_DATA_READ = common dso_local global i32 0, align 4
@FILESERV_MAX_BULK = common dso_local global i32 0, align 4
@VCOS_SUCCESS = common dso_local global i64 0, align 8
@FILESERV_RESP_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vc_filesys_write_sectors(i8* %0, i64 %1, i8* %2, i64 %3, i64* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64* %4, i64** %10, align 8
  store i64 0, i64* %11, align 8
  %16 = load i8*, i8** %8, align 8
  store i8* %16, i8** %12, align 8
  store i32 -1, i32* %14, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = call i64 @strlen(i8* %17)
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %13, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = call i64 @strlen(i8* %20)
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* @FS_MAX_PATH, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %122

25:                                               ; preds = %5
  %26 = call i64 (...) @lock_obtain()
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %122

28:                                               ; preds = %25
  %29 = load i64, i64* %7, align 8
  %30 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vc_filesys_client, i32 0, i32 0, i32 0), align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  store i64 %29, i64* %31, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vc_filesys_client, i32 0, i32 0, i32 0), align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 1
  store i64 %32, i64* %34, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = ptrtoint i8* %35 to i64
  %37 = load i32, i32* @VCHI_BULK_ALIGN, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = and i64 %36, %39
  store i64 %40, i64* %11, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vc_filesys_client, i32 0, i32 0, i32 0), align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 2
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vc_filesys_client, i32 0, i32 0, i32 2), align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* @FS_MAX_PATH, align 4
  %48 = call i32 @strncpy(i8* %45, i8* %46, i32 %47)
  %49 = load i32, i32* @VC_FILESYS_WRITE_SECTORS, align 4
  %50 = load i32, i32* %13, align 4
  %51 = add nsw i32 16, %50
  %52 = add nsw i32 %51, 1
  %53 = call i64 @vchi_msg_stub_noblock(%struct.TYPE_3__* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vc_filesys_client, i32 0, i32 0), i32 %49, i32 %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %120

55:                                               ; preds = %28
  %56 = load i64, i64* %11, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load i64, i64* %11, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = sub i64 0, %59
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8* %62, i8** %12, align 8
  br label %63

63:                                               ; preds = %58, %55
  br label %64

64:                                               ; preds = %89, %63
  %65 = load i64, i64* %9, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %97

67:                                               ; preds = %64
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* @FILESERV_MAX_BULK_SECTOR, align 8
  %70 = icmp sgt i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i64, i64* @FILESERV_MAX_BULK_SECTOR, align 8
  br label %75

73:                                               ; preds = %67
  %74 = load i64, i64* %9, align 8
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i64 [ %72, %71 ], [ %74, %73 ]
  store i64 %76, i64* %15, align 8
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vc_filesys_client, i32 0, i32 2), align 4
  %78 = load i8*, i8** %12, align 8
  %79 = load i64, i64* %15, align 8
  %80 = load i64, i64* @FILESERV_SECTOR_LENGTH, align 8
  %81 = mul nsw i64 %79, %80
  %82 = load i64, i64* %11, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @VCHI_BULK_ROUND_UP(i64 %83)
  %85 = load i32, i32* @VCHI_FLAGS_BLOCK_UNTIL_DATA_READ, align 4
  %86 = call i64 @vchi_bulk_queue_transmit(i32 %77, i8* %78, i32 %84, i32 %85, i32* null)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %75
  br label %97

89:                                               ; preds = %75
  %90 = load i32, i32* @FILESERV_MAX_BULK, align 4
  %91 = load i8*, i8** %12, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  store i8* %93, i8** %12, align 8
  %94 = load i64, i64* %15, align 8
  %95 = load i64, i64* %9, align 8
  %96 = sub nsw i64 %95, %94
  store i64 %96, i64* %9, align 8
  br label %64

97:                                               ; preds = %88, %64
  %98 = call i64 @vcos_event_wait(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vc_filesys_client, i32 0, i32 1))
  %99 = load i64, i64* @VCOS_SUCCESS, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %97
  %102 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vc_filesys_client, i32 0, i32 0, i32 1), align 8
  %103 = load i64, i64* @FILESERV_RESP_OK, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %101
  %106 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vc_filesys_client, i32 0, i32 0, i32 0), align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64*, i64** %10, align 8
  store i64 %108, i64* %109, align 8
  store i32 0, i32* %14, align 4
  br label %119

110:                                              ; preds = %101, %97
  %111 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vc_filesys_client, i32 0, i32 0, i32 0), align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64*, i64** %10, align 8
  store i64 %113, i64* %114, align 8
  %115 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vc_filesys_client, i32 0, i32 0, i32 0), align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 0
  %117 = load i64, i64* %116, align 8
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %14, align 4
  br label %119

119:                                              ; preds = %110, %105
  br label %120

120:                                              ; preds = %119, %28
  %121 = call i32 (...) @lock_release()
  br label %122

122:                                              ; preds = %120, %25, %5
  %123 = load i32, i32* %14, align 4
  ret i32 %123
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @lock_obtain(...) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i64 @vchi_msg_stub_noblock(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i64 @vchi_bulk_queue_transmit(i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @VCHI_BULK_ROUND_UP(i64) #1

declare dso_local i64 @vcos_event_wait(i32*) #1

declare dso_local i32 @lock_release(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
