; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vc_vchi_filesys.c_vc_vchi_msg_bulk_read.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vc_vchi_filesys.c_vc_vchi_msg_bulk_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i64, i64*, i32* }

@FILESERV_MAX_BULK = common dso_local global i64 0, align 8
@vc_filesys_client = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@VCHI_FLAGS_BLOCK_UNTIL_QUEUED = common dso_local global i32 0, align 4
@VCOS_SUCCESS = common dso_local global i64 0, align 8
@FILESERV_RESP_ERROR = common dso_local global i64 0, align 8
@FILESERV_RESP_OK = common dso_local global i64 0, align 8
@FILESERV_MAX_DATA = common dso_local global i64 0, align 8
@FILESERV_BULK_WRITE = common dso_local global i64 0, align 8
@VCHI_FLAGS_BLOCK_UNTIL_OP_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i64, i64, i32*)* @vc_vchi_msg_bulk_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc_vchi_msg_bulk_read(%struct.TYPE_5__* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @FILESERV_MAX_BULK, align 8
  %19 = icmp sle i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @vcos_verify(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %153

24:                                               ; preds = %4
  %25 = load i32*, i32** %9, align 8
  %26 = call i64 @VCHI_BULK_ALIGN_NBYTES(i32* %25)
  store i64 %26, i64* %12, align 8
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vc_filesys_client, i32 0, i32 0), align 4
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* %10, align 8
  %31 = and i64 %30, 2147483647
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %10, align 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vc_filesys_client, i32 0, i32 0), align 4
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vc_filesys_client, i32 0, i32 0), align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 2
  store i64 %40, i64* %44, align 8
  %45 = load i64, i64* %12, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 3
  store i64 %45, i64* %49, align 8
  store i32 24, i32* %11, align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vc_filesys_client, i32 0, i32 1), align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = load i32, i32* @VCHI_FLAGS_BLOCK_UNTIL_QUEUED, align 4
  %55 = call i64 @vchi_msg_queue(i32 %50, %struct.TYPE_5__* %51, i64 %53, i32 %54, i32* null)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %24
  store i32 -1, i32* %5, align 4
  br label %153

58:                                               ; preds = %24
  %59 = call i64 @vcos_event_wait(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vc_filesys_client, i32 0, i32 2))
  %60 = load i64, i64* @VCOS_SUCCESS, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %58
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @FILESERV_RESP_ERROR, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %62, %58
  store i32 -1, i32* %5, align 4
  br label %153

69:                                               ; preds = %62
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 0
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %13, align 8
  %75 = load i64, i64* %13, align 8
  %76 = load i64, i64* @FILESERV_MAX_BULK, align 8
  %77 = icmp sle i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @vcos_verify(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %69
  store i32 -1, i32* %5, align 4
  br label %153

82:                                               ; preds = %69
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @FILESERV_RESP_OK, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %105

88:                                               ; preds = %82
  %89 = load i64, i64* %13, align 8
  %90 = load i64, i64* @FILESERV_MAX_DATA, align 8
  %91 = icmp sle i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = call i32 @vcos_verify(i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %88
  store i32 -1, i32* %5, align 4
  br label %153

96:                                               ; preds = %88
  %97 = load i32*, i32** %9, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* %13, align 8
  %102 = call i32 @memcpy(i32* %97, i32* %100, i64 %101)
  %103 = load i64, i64* %13, align 8
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %5, align 4
  br label %153

105:                                              ; preds = %82
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @FILESERV_BULK_WRITE, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %149

111:                                              ; preds = %105
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 2
  %114 = load i64*, i64** %113, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 1
  %116 = load i64, i64* %115, align 8
  store i64 %116, i64* %15, align 8
  %117 = load i64, i64* %13, align 8
  %118 = load i64, i64* %12, align 8
  %119 = sub nsw i64 %117, %118
  %120 = load i64, i64* %15, align 8
  %121 = sub nsw i64 %119, %120
  store i64 %121, i64* %16, align 8
  %122 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vc_filesys_client, i32 0, i32 1), align 4
  %123 = load i32*, i32** %9, align 8
  %124 = load i64, i64* %16, align 8
  %125 = load i32, i32* @VCHI_FLAGS_BLOCK_UNTIL_OP_COMPLETE, align 4
  %126 = call i64 @vchi_bulk_queue_receive(i32 %122, i32* %123, i64 %124, i32 %125, i32* null)
  store i64 %126, i64* %14, align 8
  %127 = load i64, i64* %14, align 8
  %128 = icmp eq i64 %127, 0
  %129 = zext i1 %128 to i32
  %130 = call i32 @vcos_verify(i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %111
  store i32 -1, i32* %5, align 4
  br label %153

133:                                              ; preds = %111
  %134 = load i64, i64* %16, align 8
  %135 = load i32*, i32** %9, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 %134
  store i32* %136, i32** %9, align 8
  %137 = load i64, i64* %15, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %133
  %140 = load i32*, i32** %9, align 8
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 3
  %143 = load i32*, i32** %142, align 8
  %144 = load i64, i64* %12, align 8
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  %146 = load i64, i64* %15, align 8
  %147 = call i32 @memcpy(i32* %140, i32* %145, i64 %146)
  br label %148

148:                                              ; preds = %139, %133
  br label %150

149:                                              ; preds = %105
  store i32 -1, i32* %5, align 4
  br label %153

150:                                              ; preds = %148
  %151 = load i64, i64* %13, align 8
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %5, align 4
  br label %153

153:                                              ; preds = %150, %149, %132, %96, %95, %81, %68, %57, %23
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

declare dso_local i32 @vcos_verify(i32) #1

declare dso_local i64 @VCHI_BULK_ALIGN_NBYTES(i32*) #1

declare dso_local i64 @vchi_msg_queue(i32, %struct.TYPE_5__*, i64, i32, i32*) #1

declare dso_local i64 @vcos_event_wait(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i64 @vchi_bulk_queue_receive(i32, i32*, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
