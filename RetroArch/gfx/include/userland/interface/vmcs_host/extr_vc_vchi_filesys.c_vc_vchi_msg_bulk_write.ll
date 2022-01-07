; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vc_vchi_filesys.c_vc_vchi_msg_bulk_write.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vc_vchi_filesys.c_vc_vchi_msg_bulk_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i64, i64*, i64 }

@FILESERV_MAX_BULK = common dso_local global i64 0, align 8
@vc_filesys_client = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@FILESERV_MAX_DATA = common dso_local global i64 0, align 8
@VCHI_FLAGS_BLOCK_UNTIL_QUEUED = common dso_local global i32 0, align 4
@VCOS_SUCCESS = common dso_local global i64 0, align 8
@FILESERV_RESP_ERROR = common dso_local global i64 0, align 8
@VCHI_BULK_GRANULARITY = common dso_local global i32 0, align 4
@FILESERV_BULK_READ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i64, i64, i32*)* @vc_vchi_msg_bulk_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc_vchi_msg_bulk_write(%struct.TYPE_5__* %0, i64 %1, i64 %2, i32* %3) #0 {
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
  %15 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i32 -1, i32* %15, align 4
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* @FILESERV_MAX_BULK, align 8
  %18 = icmp sle i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @vcos_verify(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %166

23:                                               ; preds = %4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vc_filesys_client, i32 0, i32 0), align 4
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = and i64 %27, 2147483647
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %10, align 8
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vc_filesys_client, i32 0, i32 0), align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vc_filesys_client, i32 0, i32 0), align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 2
  store i64 %37, i64* %41, align 8
  store i32 24, i32* %11, align 4
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* @FILESERV_MAX_DATA, align 8
  %44 = icmp sle i64 %42, %43
  br i1 %44, label %45, label %95

45:                                               ; preds = %23
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @memcpy(i64 %48, i32* %49, i64 %50)
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 3
  store i64 0, i64* %55, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vc_filesys_client, i32 0, i32 2), align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = load i32, i32* @VCHI_FLAGS_BLOCK_UNTIL_QUEUED, align 4
  %66 = call i64 @vchi_msg_queue(i32 %61, %struct.TYPE_5__* %62, i64 %64, i32 %65, i32* null)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %45
  store i32 -1, i32* %5, align 4
  br label %166

69:                                               ; preds = %45
  %70 = call i64 @vcos_event_wait(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vc_filesys_client, i32 0, i32 1))
  %71 = load i64, i64* @VCOS_SUCCESS, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %94

73:                                               ; preds = %69
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @FILESERV_RESP_ERROR, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %94

79:                                               ; preds = %73
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 2
  %82 = load i64*, i64** %81, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %8, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %79
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 2
  %90 = load i64*, i64** %89, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 0
  %92 = load i64, i64* %91, align 8
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %15, align 4
  br label %94

94:                                               ; preds = %87, %79, %73, %69
  br label %164

95:                                               ; preds = %23
  %96 = load i32*, i32** %9, align 8
  %97 = call i64 @VCHI_BULK_ALIGN_NBYTES(i32* %96)
  store i64 %97, i64* %12, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 2
  %100 = load i64*, i64** %99, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 3
  store i64 0, i64* %101, align 8
  %102 = load i64, i64* %8, align 8
  %103 = load i32, i32* @VCHI_BULK_GRANULARITY, align 4
  %104 = sub nsw i32 %103, 1
  %105 = xor i32 %104, -1
  %106 = sext i32 %105 to i64
  %107 = and i64 %102, %106
  store i64 %107, i64* %14, align 8
  %108 = load i64, i64* %8, align 8
  %109 = load i64, i64* %14, align 8
  %110 = sub nsw i64 %108, %109
  store i64 %110, i64* %13, align 8
  %111 = load i64, i64* %13, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %129

113:                                              ; preds = %95
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* %12, align 8
  %118 = add nsw i64 %116, %117
  %119 = load i32*, i32** %9, align 8
  %120 = load i64, i64* %14, align 8
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  %122 = load i64, i64* %13, align 8
  %123 = call i32 @memcpy(i64 %118, i32* %121, i64 %122)
  %124 = load i64, i64* %13, align 8
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %126, %124
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %11, align 4
  br label %129

129:                                              ; preds = %113, %95
  %130 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vc_filesys_client, i32 0, i32 2), align 4
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = load i32, i32* @VCHI_FLAGS_BLOCK_UNTIL_QUEUED, align 4
  %135 = call i64 @vchi_msg_queue(i32 %130, %struct.TYPE_5__* %131, i64 %133, i32 %134, i32* null)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %129
  store i32 -1, i32* %5, align 4
  br label %166

138:                                              ; preds = %129
  %139 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vc_filesys_client, i32 0, i32 2), align 4
  %140 = load i32*, i32** %9, align 8
  %141 = load i64, i64* %14, align 8
  %142 = load i32, i32* @VCHI_FLAGS_BLOCK_UNTIL_QUEUED, align 4
  %143 = call i64 @vchi_bulk_queue_transmit(i32 %139, i32* %140, i64 %141, i32 %142, i32* null)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %138
  store i32 -1, i32* %5, align 4
  br label %166

146:                                              ; preds = %138
  %147 = call i64 @vcos_event_wait(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vc_filesys_client, i32 0, i32 1))
  %148 = load i64, i64* @VCOS_SUCCESS, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %163

150:                                              ; preds = %146
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @FILESERV_BULK_READ, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %163

156:                                              ; preds = %150
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 2
  %159 = load i64*, i64** %158, align 8
  %160 = getelementptr inbounds i64, i64* %159, i64 0
  %161 = load i64, i64* %160, align 8
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %15, align 4
  br label %163

163:                                              ; preds = %156, %150, %146
  br label %164

164:                                              ; preds = %163, %94
  %165 = load i32, i32* %15, align 4
  store i32 %165, i32* %5, align 4
  br label %166

166:                                              ; preds = %164, %145, %137, %68, %22
  %167 = load i32, i32* %5, align 4
  ret i32 %167
}

declare dso_local i32 @vcos_verify(i32) #1

declare dso_local i32 @memcpy(i64, i32*, i64) #1

declare dso_local i64 @vchi_msg_queue(i32, %struct.TYPE_5__*, i64, i32, i32*) #1

declare dso_local i64 @vcos_event_wait(i32*) #1

declare dso_local i64 @VCHI_BULK_ALIGN_NBYTES(i32*) #1

declare dso_local i64 @vchi_bulk_queue_transmit(i32, i32*, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
